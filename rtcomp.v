`include "define.h" 
module rtcomp (
	addr,
	ivch,

	ircpid_p0, 
	ircpid_p1, 
	ircpid_p2, 
	ircpid_p3, 
	ircpid_p4, 

	en,
	port,
	ovch,

	my_id,

clk,
rst_
);

input	[`ENTRYW_P1+`ENTRYW:0]	addr;
	input	[`ENTRYW:0]	ivch;
	input			en;
	output	[`PORTW:0]	port;
	output	[`VCHW:0]	ovch;

input    [`NODEW:0]   ircpid_p0; 
input    [`NODEW:0]   ircpid_p1; 
input    [`NODEW:0]   ircpid_p2; 
input    [`NODEW:0]   ircpid_p3; 
input    [`NODEW:0]   ircpid_p4; 

input	[`NODEW:0]	my_id;
input	clk;
input	rst_;


//wire	[`PORTW:0]	port0;
reg 	[`PORTW:0]	port0;
reg		[`PORTW:0]	port1;
wire	[`VCHW:0]	ovch0;
reg		[`VCHW:0]	ovch1;

wire   [`NODEW:0]   ircpid_p0; 
wire   [`NODEW:0]   ircpid_p1; 
wire   [`NODEW:0]   ircpid_p2; 
wire   [`NODEW:0]   ircpid_p3; 
wire   [`NODEW:0]   ircpid_p4; 


reg 	[`NODEW:0]	port_list	[0:`NODE]; 

wire	[`NODEW:0]	src_flt; 
wire	[`NODEW:0]	dst_flt; 
wire 				sltd;

wire	[`NODEW:0]		dst_id;
reg     [`NODEW:0]      cntr_dn;
reg     [`NODEW:0]      cntr_up;
wire	[`ARRAYW:0]	delta_x1;	/* For torus */
wire	[`ARRAYW:0]	delta_x3;	/* For torus */


assign	dst_flt = addr[`DST_MSB:`DST_LSB];           // reconsider
assign	src_flt = addr[`SRC_MSB:`SRC_LSB];

assign	port	= en ? port0 : port1;
assign	ovch	= en ? ovch0 : ovch1;

always @ (posedge clk) begin
	if (rst_ == `Enable_) begin
		port1	<= 0;
		ovch1	<= 0;
	end else if (en) begin
		port1	<= port0;
		ovch1	<= ovch0;
	end
end

assign	sltd	=	(addr[`SRC_MSB:`SRC_LSB] < addr[`DST_MSB:`DST_LSB]) ? 1 : 0;

always @(posedge clk) begin 
	if(rst_ == `Enable_) begin 
		port_list[ircpid_p0] 	<=	`NODEW'b0; 
		port_list[ircpid_p1] 	<=	`NODEW'b0; 
		port_list[ircpid_p2] 	<=	`NODEW'b0; 
		port_list[ircpid_p3] 	<=	`NODEW'b0; 
		port_list[ircpid_p4] 	<=	`NODEW'b0; 
	end else if (en) begin 
		port_list[ircpid_p0] 	<=	ircpid_p0 ; 
		port_list[ircpid_p1] 	<=	ircpid_p1 ; 
		port_list[ircpid_p2] 	<=	ircpid_p2 ; 
		port_list[ircpid_p3] 	<=	ircpid_p3 ; 
		port_list[ircpid_p4] 	<=	ircpid_p4 ; 
	end 
end 

 
always @(posedge clk) begin 
	if( rst_ == `Enable_ ) begin 
		cntr_dn	<=	`NODEW_P1'b11001;
		cntr_up	<=	`NODEW_P1'b0;
	end
	else if( (addr[`DST_MSB:`DST_LSB]) == my_id ) begin
		port0	<=	`PORTW'b0;
		end
		else if( sltd == 1 )begin
			if((( port_list[cntr_dn] + `NODEW_P1'b0 ) == port_list[cntr_dn] ) && (cntr_dn >= `NODEW'b0 )) begin
				port0	<=	port_list[cntr_dn];
				end else begin
					cntr_dn	<=	cntr_dn - `NODE'b0001;
					end 
				end else begin
					if(( port_list[cntr_up] + `NODEW_P1'b0) == port_list[cntr_up] && (cntr_dn >= `NODEW_P1'b11001 )) begin
						port0	<=	port_list[cntr_up];
						end else begin
							cntr_up	<=	cntr_up + `NODE'b0001;
							end
						end
					end

/* The same virtual channel is used. */
assign ovch0	= ivch;
endmodule
