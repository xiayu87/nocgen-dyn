`include "define.h" 
module inputc ( 
        idata,  
        ivalid, 
        ivcpid_p0, 
        ivcpid_p1, 
        ivcpid_p2, 
        ivcpid_p3, 
        ivcpid_p4, 
        ivch,   
        oack,   
        ordy,   
        olck,   

        odata,  
        ovalid, 
        ovch,   

        irdy_0, 
        irdy_1, 
        irdy_2, 
        irdy_3, 
        irdy_4, 
        ilck_0, 
        ilck_1, 
        ilck_2, 
        ilck_3, 
        ilck_4, 

        grt_0, 
        grt_1, 
        grt_2, 
        grt_3, 
        grt_4, 

        port,  
        req,   

        my_id, 

        clk, 
        rst_ 
);
parameter       ROUTERID= 0;
parameter       PCHID   = 0;

input   [`DATAW:0]      idata;  
input                   ivalid; 
input   [`NODEW:0]   ivcpid_p0; 
input   [`NODEW:0]   ivcpid_p1; 
input   [`NODEW:0]   ivcpid_p2; 
input   [`NODEW:0]   ivcpid_p3; 
input   [`NODEW:0]   ivcpid_p4; 
input   [`VCHW:0]       ivch;   
output  [`VCH:0]        oack;   
output  [`VCH:0]        ordy;   
output  [`VCH:0]        olck;   

output  [`DATAW:0]      odata;  
output                  ovalid; 
output  [`VCHW:0]       ovch;   

input   [`VCH:0]        irdy_0; 
input   [`VCH:0]        irdy_1; 
input   [`VCH:0]        irdy_2; 
input   [`VCH:0]        irdy_3; 
input   [`VCH:0]        irdy_4; 
input   [`VCH:0]        ilck_0; 
input   [`VCH:0]        ilck_1; 
input   [`VCH:0]        ilck_2; 
input   [`VCH:0]        ilck_3; 
input   [`VCH:0]        ilck_4; 

input                   grt_0; 
input                   grt_1; 
input                   grt_2; 
input                   grt_3; 
input                   grt_4; 

output  [`PORTW:0]      port;   
output                  req;    

input   [`NODEW:0]     my_id;

input   clk, rst_;              

wire    [`DATAW:0]      odata0; 
wire                    ovalid0;
wire    [`VCHW:0]       ovch0;  
wire    [`PORTW:0]      port0;  
wire                    req0;   
wire                    send0;  
wire    [`DATAW:0]      bdata0; 
wire    [`TYPEW:0]      btype0; 

wire    [`DATAW:0]      odata1; 
wire                    ovalid1;
wire    [`VCHW:0]       ovch1;  
wire    [`PORTW:0]      port1;  
wire                    req1;   
wire                    send1;  
wire    [`DATAW:0]      bdata1; 
wire    [`TYPEW:0]      btype1; 

wire    [`VCH:0]        vcsel;

assign  oack[0]        = send0;
assign  oack[1]        = send1;

/* 
 * VC mux 
 */ 
vcmux vcmux ( 
        .ovalid0 ( ovalid0 ),
        .ovalid1 ( ovalid1 ),

        .odata0  ( odata0 ),
        .odata1  ( odata1 ),

        .ovch0   ( ovch0 ),
        .ovch1   ( ovch1 ),

        .req0    ( req0 ),
        .req1    ( req1 ),

        .port0   ( port0 ),
        .port1   ( port1 ),

        .ovalid  ( ovalid ),
        .odata   ( odata  ),
        .ovch    ( ovch   ),
        .req     ( req    ),
        .port    ( port   ),
        .vcsel   ( vcsel  ),

        .clk     ( clk    ),
        .rst_    ( rst_   ) 
);

/* 
 * Input virtual channels 
 */ 
vc #( ROUTERID, PCHID, 0 ) vc_0 ( 
       .bdata ( bdata0  ), 
       .send  ( send0   ), 
       .olck  ( olck[0] ), 

       .irdy_0( irdy_0  ), 
       .irdy_1( irdy_1  ), 
       .irdy_2( irdy_2  ), 
       .irdy_3( irdy_3  ), 
       .irdy_4( irdy_4  ), 
       .ilck_0( ilck_0  ), 
       .ilck_1( ilck_1  ), 
       .ilck_2( ilck_2  ), 
       .ilck_3( ilck_3  ), 
       .ilck_4( ilck_4  ), 

       .grt_0 ( vcsel[0] ? grt_0 : `Disable ), 
       .grt_1 ( vcsel[0] ? grt_1 : `Disable ), 
       .grt_2 ( vcsel[0] ? grt_2 : `Disable ), 
       .grt_3 ( vcsel[0] ? grt_3 : `Disable ), 
       .grt_4 ( vcsel[0] ? grt_4 : `Disable ), 

       .req   ( req0    ),
       .port  ( port0   ),
       .ovch  ( ovch0   ),

       .clk ( clk  ), 
       .rst_( rst_ )  
);                  
vc #( ROUTERID, PCHID, 1 ) vc_1 ( 
       .bdata ( bdata1  ), 
       .send  ( send1   ), 
       .olck  ( olck[1] ), 

       .irdy_0( irdy_0  ), 
       .irdy_1( irdy_1  ), 
       .irdy_2( irdy_2  ), 
       .irdy_3( irdy_3  ), 
       .irdy_4( irdy_4  ), 
       .ilck_0( ilck_0  ), 
       .ilck_1( ilck_1  ), 
       .ilck_2( ilck_2  ), 
       .ilck_3( ilck_3  ), 
       .ilck_4( ilck_4  ), 

       .grt_0 ( vcsel[1] ? grt_0 : `Disable ), 
       .grt_1 ( vcsel[1] ? grt_1 : `Disable ), 
       .grt_2 ( vcsel[1] ? grt_2 : `Disable ), 
       .grt_3 ( vcsel[1] ? grt_3 : `Disable ), 
       .grt_4 ( vcsel[1] ? grt_4 : `Disable ), 

       .req   ( req1    ),
       .port  ( port1   ),
       .ovch  ( ovch1   ),

       .clk ( clk  ), 
       .rst_( rst_ )  
);                  

/*  
 * Data transmission 
 */ 
assign  odata0   = send0 && btype0 != `TYPE_NONE ? bdata0 : `DATAW_P1'b0; 
assign  odata1   = send1 && btype1 != `TYPE_NONE ? bdata1 : `DATAW_P1'b0; 

assign  ovalid0  = send0 && btype0 != `TYPE_NONE; 
assign  ovalid1  = send1 && btype1 != `TYPE_NONE; 

assign  btype0  = bdata0[`TYPE_MSB:`TYPE_LSB]; 
assign  btype1  = bdata1[`TYPE_MSB:`TYPE_LSB]; 

/* 
 * Routing computation logic 
 */ 
rtcomp rc0 ( 
        .addr   ( bdata0[`SRC_MSB:`DST_LSB] ),
        .ivch   ( bdata0[`VCH_MSB:`VCH_LSB] ),
        .en     ( btype0 == `TYPE_HEAD || btype0 == `TYPE_HEADTAIL ),
        .port   ( port0  ),
        .ovch   ( ovch0  ),

        .ircpid_p0 ( ivcpid_p0 ),
        .ircpid_p1 ( ivcpid_p1 ),
        .ircpid_p2 ( ivcpid_p2 ),
        .ircpid_p3 ( ivcpid_p3 ),
        .ircpid_p4 ( ivcpid_p4 ),

        .my_id ( my_id ),

        .clk    ( clk  ),
        .rst_   ( rst_ ) 
);
rtcomp rc1 ( 
        .addr   ( bdata1[`SRC_MSB:`DST_LSB] ),
        .ivch   ( bdata1[`VCH_MSB:`VCH_LSB] ),
        .en     ( btype1 == `TYPE_HEAD || btype1 == `TYPE_HEADTAIL ),
        .port   ( port1  ),
        .ovch   ( ovch1  ),

        .ircpid_p0 ( ivcpid_p0 ),
        .ircpid_p1 ( ivcpid_p1 ),
        .ircpid_p2 ( ivcpid_p2 ),
        .ircpid_p3 ( ivcpid_p3 ),
        .ircpid_p4 ( ivcpid_p4 ),

        .my_id ( my_id ),

        .clk    ( clk  ),
        .rst_   ( rst_ ) 
);

/* 
 * Input buffers 
 */ 
fifo    ibuf0 ( 
        .idata  ( ivch == 0 ? idata  : `DATAW_P1'b0 ), 
        .odata  ( bdata0 ), 

        .wr_en  ( ivch == 0 ? ivalid : `Disable ), 
        .rd_en  ( send0 ), 
        .empty  ( /* not used */ ), 
        .full   ( /* not used */ ), 
        .ordy   ( ordy[0]        ), 

        .clk    ( clk  ), 
        .rst_   ( rst_ )  
); 
fifo    ibuf1 ( 
        .idata  ( ivch == 1 ? idata  : `DATAW_P1'b0 ), 
        .odata  ( bdata1 ), 

        .wr_en  ( ivch == 1 ? ivalid : `Disable ), 
        .rd_en  ( send1 ), 
        .empty  ( /* not used */ ), 
        .full   ( /* not used */ ), 
        .ordy   ( ordy[1]        ), 

        .clk    ( clk  ), 
        .rst_   ( rst_ )  
); 
endmodule
