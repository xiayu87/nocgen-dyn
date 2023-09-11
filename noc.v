`include "define.h" 
module noc ( 

        /* n1 */ 
        n1_idata_p0,  
        n1_ivalid_p0, 
        n1_ipid_p0,   
        n1_ivch_p0,   
        n1_ordy_p0,   
        n1_odata_p0,  
        n1_ovalid_p0, 

        /* n2 */ 
        n2_idata_p0,  
        n2_ivalid_p0, 
        n2_ipid_p0,   
        n2_ivch_p0,   
        n2_ordy_p0,   
        n2_odata_p0,  
        n2_ovalid_p0, 

        /* n3 */ 
        n3_idata_p0,  
        n3_ivalid_p0, 
        n3_ipid_p0,   
        n3_ivch_p0,   
        n3_ordy_p0,   
        n3_odata_p0,  
        n3_ovalid_p0, 

        /* n4 */ 
        n4_idata_p0,  
        n4_ivalid_p0, 
        n4_ipid_p0,   
        n4_ivch_p0,   
        n4_ordy_p0,   
        n4_odata_p0,  
        n4_ovalid_p0, 

        /* n5 */ 
        n5_idata_p0,  
        n5_ivalid_p0, 
        n5_ipid_p0,   
        n5_ivch_p0,   
        n5_ordy_p0,   
        n5_odata_p0,  
        n5_ovalid_p0, 

        /* n6 */ 
        n6_idata_p0,  
        n6_ivalid_p0, 
        n6_ipid_p0,   
        n6_ivch_p0,   
        n6_ordy_p0,   
        n6_odata_p0,  
        n6_ovalid_p0, 

        /* n7 */ 
        n7_idata_p0,  
        n7_ivalid_p0, 
        n7_ipid_p0,   
        n7_ivch_p0,   
        n7_ordy_p0,   
        n7_odata_p0,  
        n7_ovalid_p0, 

        /* n8 */ 
        n8_idata_p0,  
        n8_ivalid_p0, 
        n8_ipid_p0,   
        n8_ivch_p0,   
        n8_ordy_p0,   
        n8_odata_p0,  
        n8_ovalid_p0, 

        /* n9 */ 
        n9_idata_p0,  
        n9_ivalid_p0, 
        n9_ipid_p0,   
        n9_ivch_p0,   
        n9_ordy_p0,   
        n9_odata_p0,  
        n9_ovalid_p0, 

        /* n10 */ 
        n10_idata_p0,  
        n10_ivalid_p0, 
        n10_ipid_p0,   
        n10_ivch_p0,   
        n10_ordy_p0,   
        n10_odata_p0,  
        n10_ovalid_p0, 

        /* n11 */ 
        n11_idata_p0,  
        n11_ivalid_p0, 
        n11_ipid_p0,   
        n11_ivch_p0,   
        n11_ordy_p0,   
        n11_odata_p0,  
        n11_ovalid_p0, 

        /* n12 */ 
        n12_idata_p0,  
        n12_ivalid_p0, 
        n12_ipid_p0,   
        n12_ivch_p0,   
        n12_ordy_p0,   
        n12_odata_p0,  
        n12_ovalid_p0, 

        /* n13 */ 
        n13_idata_p0,  
        n13_ivalid_p0, 
        n13_ipid_p0,   
        n13_ivch_p0,   
        n13_ordy_p0,   
        n13_odata_p0,  
        n13_ovalid_p0, 

        /* n14 */ 
        n14_idata_p0,  
        n14_ivalid_p0, 
        n14_ipid_p0,   
        n14_ivch_p0,   
        n14_ordy_p0,   
        n14_odata_p0,  
        n14_ovalid_p0, 

        /* n15 */ 
        n15_idata_p0,  
        n15_ivalid_p0, 
        n15_ipid_p0,   
        n15_ivch_p0,   
        n15_ordy_p0,   
        n15_odata_p0,  
        n15_ovalid_p0, 

        /* n16 */ 
        n16_idata_p0,  
        n16_ivalid_p0, 
        n16_ipid_p0,   
        n16_ivch_p0,   
        n16_ordy_p0,   
        n16_odata_p0,  
        n16_ovalid_p0, 

        /* n17 */ 
        n17_idata_p0,  
        n17_ivalid_p0, 
        n17_ipid_p0,   
        n17_ivch_p0,   
        n17_ordy_p0,   
        n17_odata_p0,  
        n17_ovalid_p0, 

        /* n18 */ 
        n18_idata_p0,  
        n18_ivalid_p0, 
        n18_ipid_p0,   
        n18_ivch_p0,   
        n18_ordy_p0,   
        n18_odata_p0,  
        n18_ovalid_p0, 

        /* n19 */ 
        n19_idata_p0,  
        n19_ivalid_p0, 
        n19_ipid_p0,   
        n19_ivch_p0,   
        n19_ordy_p0,   
        n19_odata_p0,  
        n19_ovalid_p0, 

        /* n20 */ 
        n20_idata_p0,  
        n20_ivalid_p0, 
        n20_ipid_p0,   
        n20_ivch_p0,   
        n20_ordy_p0,   
        n20_odata_p0,  
        n20_ovalid_p0, 

        /* n21 */ 
        n21_idata_p0,  
        n21_ivalid_p0, 
        n21_ipid_p0,   
        n21_ivch_p0,   
        n21_ordy_p0,   
        n21_odata_p0,  
        n21_ovalid_p0, 

        /* n22 */ 
        n22_idata_p0,  
        n22_ivalid_p0, 
        n22_ipid_p0,   
        n22_ivch_p0,   
        n22_ordy_p0,   
        n22_odata_p0,  
        n22_ovalid_p0, 

        /* n23 */ 
        n23_idata_p0,  
        n23_ivalid_p0, 
        n23_ipid_p0,   
        n23_ivch_p0,   
        n23_ordy_p0,   
        n23_odata_p0,  
        n23_ovalid_p0, 

        /* n24 */ 
        n24_idata_p0,  
        n24_ivalid_p0, 
        n24_ipid_p0,   
        n24_ivch_p0,   
        n24_ordy_p0,   
        n24_odata_p0,  
        n24_ovalid_p0, 

        /* n25 */ 
        n25_idata_p0,  
        n25_ivalid_p0, 
        n25_ipid_p0,   
        n25_ivch_p0,   
        n25_ordy_p0,   
        n25_odata_p0,  
        n25_ovalid_p0, 

        clk, 
        rst_ 
);   

/* n1 */ 
input   [`DATAW:0]      n1_idata_p0;  
input                   n1_ivalid_p0; 
input   [`NODEW:0]      n1_ipid_p0;   
input   [`VCHW:0]       n1_ivch_p0;   
output  [`VCH:0]        n1_ordy_p0;   
output  [`DATAW:0]      n1_odata_p0;  
output                  n1_ovalid_p0; 

/* n2 */ 
input   [`DATAW:0]      n2_idata_p0;  
input                   n2_ivalid_p0; 
input   [`NODEW:0]      n2_ipid_p0;   
input   [`VCHW:0]       n2_ivch_p0;   
output  [`VCH:0]        n2_ordy_p0;   
output  [`DATAW:0]      n2_odata_p0;  
output                  n2_ovalid_p0; 

/* n3 */ 
input   [`DATAW:0]      n3_idata_p0;  
input                   n3_ivalid_p0; 
input   [`NODEW:0]      n3_ipid_p0;   
input   [`VCHW:0]       n3_ivch_p0;   
output  [`VCH:0]        n3_ordy_p0;   
output  [`DATAW:0]      n3_odata_p0;  
output                  n3_ovalid_p0; 

/* n4 */ 
input   [`DATAW:0]      n4_idata_p0;  
input                   n4_ivalid_p0; 
input   [`NODEW:0]      n4_ipid_p0;   
input   [`VCHW:0]       n4_ivch_p0;   
output  [`VCH:0]        n4_ordy_p0;   
output  [`DATAW:0]      n4_odata_p0;  
output                  n4_ovalid_p0; 

/* n5 */ 
input   [`DATAW:0]      n5_idata_p0;  
input                   n5_ivalid_p0; 
input   [`NODEW:0]      n5_ipid_p0;   
input   [`VCHW:0]       n5_ivch_p0;   
output  [`VCH:0]        n5_ordy_p0;   
output  [`DATAW:0]      n5_odata_p0;  
output                  n5_ovalid_p0; 

/* n6 */ 
input   [`DATAW:0]      n6_idata_p0;  
input                   n6_ivalid_p0; 
input   [`NODEW:0]      n6_ipid_p0;   
input   [`VCHW:0]       n6_ivch_p0;   
output  [`VCH:0]        n6_ordy_p0;   
output  [`DATAW:0]      n6_odata_p0;  
output                  n6_ovalid_p0; 

/* n7 */ 
input   [`DATAW:0]      n7_idata_p0;  
input                   n7_ivalid_p0; 
input   [`NODEW:0]      n7_ipid_p0;   
input   [`VCHW:0]       n7_ivch_p0;   
output  [`VCH:0]        n7_ordy_p0;   
output  [`DATAW:0]      n7_odata_p0;  
output                  n7_ovalid_p0; 

/* n8 */ 
input   [`DATAW:0]      n8_idata_p0;  
input                   n8_ivalid_p0; 
input   [`NODEW:0]      n8_ipid_p0;   
input   [`VCHW:0]       n8_ivch_p0;   
output  [`VCH:0]        n8_ordy_p0;   
output  [`DATAW:0]      n8_odata_p0;  
output                  n8_ovalid_p0; 

/* n9 */ 
input   [`DATAW:0]      n9_idata_p0;  
input                   n9_ivalid_p0; 
input   [`NODEW:0]      n9_ipid_p0;   
input   [`VCHW:0]       n9_ivch_p0;   
output  [`VCH:0]        n9_ordy_p0;   
output  [`DATAW:0]      n9_odata_p0;  
output                  n9_ovalid_p0; 

/* n10 */ 
input   [`DATAW:0]      n10_idata_p0;  
input                   n10_ivalid_p0; 
input   [`NODEW:0]      n10_ipid_p0;   
input   [`VCHW:0]       n10_ivch_p0;   
output  [`VCH:0]        n10_ordy_p0;   
output  [`DATAW:0]      n10_odata_p0;  
output                  n10_ovalid_p0; 

/* n11 */ 
input   [`DATAW:0]      n11_idata_p0;  
input                   n11_ivalid_p0; 
input   [`NODEW:0]      n11_ipid_p0;   
input   [`VCHW:0]       n11_ivch_p0;   
output  [`VCH:0]        n11_ordy_p0;   
output  [`DATAW:0]      n11_odata_p0;  
output                  n11_ovalid_p0; 

/* n12 */ 
input   [`DATAW:0]      n12_idata_p0;  
input                   n12_ivalid_p0; 
input   [`NODEW:0]      n12_ipid_p0;   
input   [`VCHW:0]       n12_ivch_p0;   
output  [`VCH:0]        n12_ordy_p0;   
output  [`DATAW:0]      n12_odata_p0;  
output                  n12_ovalid_p0; 

/* n13 */ 
input   [`DATAW:0]      n13_idata_p0;  
input                   n13_ivalid_p0; 
input   [`NODEW:0]      n13_ipid_p0;   
input   [`VCHW:0]       n13_ivch_p0;   
output  [`VCH:0]        n13_ordy_p0;   
output  [`DATAW:0]      n13_odata_p0;  
output                  n13_ovalid_p0; 

/* n14 */ 
input   [`DATAW:0]      n14_idata_p0;  
input                   n14_ivalid_p0; 
input   [`NODEW:0]      n14_ipid_p0;   
input   [`VCHW:0]       n14_ivch_p0;   
output  [`VCH:0]        n14_ordy_p0;   
output  [`DATAW:0]      n14_odata_p0;  
output                  n14_ovalid_p0; 

/* n15 */ 
input   [`DATAW:0]      n15_idata_p0;  
input                   n15_ivalid_p0; 
input   [`NODEW:0]      n15_ipid_p0;   
input   [`VCHW:0]       n15_ivch_p0;   
output  [`VCH:0]        n15_ordy_p0;   
output  [`DATAW:0]      n15_odata_p0;  
output                  n15_ovalid_p0; 

/* n16 */ 
input   [`DATAW:0]      n16_idata_p0;  
input                   n16_ivalid_p0; 
input   [`NODEW:0]      n16_ipid_p0;   
input   [`VCHW:0]       n16_ivch_p0;   
output  [`VCH:0]        n16_ordy_p0;   
output  [`DATAW:0]      n16_odata_p0;  
output                  n16_ovalid_p0; 

/* n17 */ 
input   [`DATAW:0]      n17_idata_p0;  
input                   n17_ivalid_p0; 
input   [`NODEW:0]      n17_ipid_p0;   
input   [`VCHW:0]       n17_ivch_p0;   
output  [`VCH:0]        n17_ordy_p0;   
output  [`DATAW:0]      n17_odata_p0;  
output                  n17_ovalid_p0; 

/* n18 */ 
input   [`DATAW:0]      n18_idata_p0;  
input                   n18_ivalid_p0; 
input   [`NODEW:0]      n18_ipid_p0;   
input   [`VCHW:0]       n18_ivch_p0;   
output  [`VCH:0]        n18_ordy_p0;   
output  [`DATAW:0]      n18_odata_p0;  
output                  n18_ovalid_p0; 

/* n19 */ 
input   [`DATAW:0]      n19_idata_p0;  
input                   n19_ivalid_p0; 
input   [`NODEW:0]      n19_ipid_p0;   
input   [`VCHW:0]       n19_ivch_p0;   
output  [`VCH:0]        n19_ordy_p0;   
output  [`DATAW:0]      n19_odata_p0;  
output                  n19_ovalid_p0; 

/* n20 */ 
input   [`DATAW:0]      n20_idata_p0;  
input                   n20_ivalid_p0; 
input   [`NODEW:0]      n20_ipid_p0;   
input   [`VCHW:0]       n20_ivch_p0;   
output  [`VCH:0]        n20_ordy_p0;   
output  [`DATAW:0]      n20_odata_p0;  
output                  n20_ovalid_p0; 

/* n21 */ 
input   [`DATAW:0]      n21_idata_p0;  
input                   n21_ivalid_p0; 
input   [`NODEW:0]      n21_ipid_p0;   
input   [`VCHW:0]       n21_ivch_p0;   
output  [`VCH:0]        n21_ordy_p0;   
output  [`DATAW:0]      n21_odata_p0;  
output                  n21_ovalid_p0; 

/* n22 */ 
input   [`DATAW:0]      n22_idata_p0;  
input                   n22_ivalid_p0; 
input   [`NODEW:0]      n22_ipid_p0;   
input   [`VCHW:0]       n22_ivch_p0;   
output  [`VCH:0]        n22_ordy_p0;   
output  [`DATAW:0]      n22_odata_p0;  
output                  n22_ovalid_p0; 

/* n23 */ 
input   [`DATAW:0]      n23_idata_p0;  
input                   n23_ivalid_p0; 
input   [`NODEW:0]      n23_ipid_p0;   
input   [`VCHW:0]       n23_ivch_p0;   
output  [`VCH:0]        n23_ordy_p0;   
output  [`DATAW:0]      n23_odata_p0;  
output                  n23_ovalid_p0; 

/* n24 */ 
input   [`DATAW:0]      n24_idata_p0;  
input                   n24_ivalid_p0; 
input   [`NODEW:0]      n24_ipid_p0;   
input   [`VCHW:0]       n24_ivch_p0;   
output  [`VCH:0]        n24_ordy_p0;   
output  [`DATAW:0]      n24_odata_p0;  
output                  n24_ovalid_p0; 

/* n25 */ 
input   [`DATAW:0]      n25_idata_p0;  
input                   n25_ivalid_p0; 
input   [`NODEW:0]      n25_ipid_p0;   
input   [`VCHW:0]       n25_ivch_p0;   
output  [`VCH:0]        n25_ordy_p0;   
output  [`DATAW:0]      n25_odata_p0;  
output                  n25_ovalid_p0; 

input clk, rst_; 

/* n1 --> n2 */ 
wire    [`DATAW:0]      n1_odata_2;  
wire                    n1_ovalid_2; 
wire    [`VCH:0]        n2_oack_4;   
wire    [`VCH:0]        n2_olck_4;   
wire    [`VCHW:0]       n2_ovch_4;   
/* n1 --> n6 */ 
wire    [`DATAW:0]      n1_odata_3;  
wire                    n1_ovalid_3; 
wire    [`VCH:0]        n6_oack_1;   
wire    [`VCH:0]        n6_olck_1;   
wire    [`VCHW:0]       n6_ovch_1;   
/* n2 --> n1 */ 
wire    [`DATAW:0]      n2_odata_4;  
wire                    n2_ovalid_4; 
wire    [`VCH:0]        n1_oack_2;   
wire    [`VCH:0]        n1_olck_2;   
wire    [`VCHW:0]       n1_ovch_2;   
/* n2 --> n3 */ 
wire    [`DATAW:0]      n2_odata_2;  
wire                    n2_ovalid_2; 
wire    [`VCH:0]        n3_oack_4;   
wire    [`VCH:0]        n3_olck_4;   
wire    [`VCHW:0]       n3_ovch_4;   
/* n2 --> n7 */ 
wire    [`DATAW:0]      n2_odata_3;  
wire                    n2_ovalid_3; 
wire    [`VCH:0]        n7_oack_1;   
wire    [`VCH:0]        n7_olck_1;   
wire    [`VCHW:0]       n7_ovch_1;   
/* n3 --> n2 */ 
wire    [`DATAW:0]      n3_odata_4;  
wire                    n3_ovalid_4; 
wire    [`VCH:0]        n2_oack_2;   
wire    [`VCH:0]        n2_olck_2;   
wire    [`VCHW:0]       n2_ovch_2;   
/* n3 --> n4 */ 
wire    [`DATAW:0]      n3_odata_2;  
wire                    n3_ovalid_2; 
wire    [`VCH:0]        n4_oack_4;   
wire    [`VCH:0]        n4_olck_4;   
wire    [`VCHW:0]       n4_ovch_4;   
/* n3 --> n8 */ 
wire    [`DATAW:0]      n3_odata_3;  
wire                    n3_ovalid_3; 
wire    [`VCH:0]        n8_oack_1;   
wire    [`VCH:0]        n8_olck_1;   
wire    [`VCHW:0]       n8_ovch_1;   
/* n4 --> n3 */ 
wire    [`DATAW:0]      n4_odata_4;  
wire                    n4_ovalid_4; 
wire    [`VCH:0]        n3_oack_2;   
wire    [`VCH:0]        n3_olck_2;   
wire    [`VCHW:0]       n3_ovch_2;   
/* n4 --> n5 */ 
wire    [`DATAW:0]      n4_odata_2;  
wire                    n4_ovalid_2; 
wire    [`VCH:0]        n5_oack_4;   
wire    [`VCH:0]        n5_olck_4;   
wire    [`VCHW:0]       n5_ovch_4;   
/* n4 --> n9 */ 
wire    [`DATAW:0]      n4_odata_3;  
wire                    n4_ovalid_3; 
wire    [`VCH:0]        n9_oack_1;   
wire    [`VCH:0]        n9_olck_1;   
wire    [`VCHW:0]       n9_ovch_1;   
/* n5 --> n4 */ 
wire    [`DATAW:0]      n5_odata_4;  
wire                    n5_ovalid_4; 
wire    [`VCH:0]        n4_oack_2;   
wire    [`VCH:0]        n4_olck_2;   
wire    [`VCHW:0]       n4_ovch_2;   
/* n5 --> n10 */ 
wire    [`DATAW:0]      n5_odata_3;  
wire                    n5_ovalid_3; 
wire    [`VCH:0]        n10_oack_1;   
wire    [`VCH:0]        n10_olck_1;   
wire    [`VCHW:0]       n10_ovch_1;   
/* n6 --> n1 */ 
wire    [`DATAW:0]      n6_odata_1;  
wire                    n6_ovalid_1; 
wire    [`VCH:0]        n1_oack_3;   
wire    [`VCH:0]        n1_olck_3;   
wire    [`VCHW:0]       n1_ovch_3;   
/* n6 --> n7 */ 
wire    [`DATAW:0]      n6_odata_2;  
wire                    n6_ovalid_2; 
wire    [`VCH:0]        n7_oack_4;   
wire    [`VCH:0]        n7_olck_4;   
wire    [`VCHW:0]       n7_ovch_4;   
/* n6 --> n11 */ 
wire    [`DATAW:0]      n6_odata_3;  
wire                    n6_ovalid_3; 
wire    [`VCH:0]        n11_oack_1;   
wire    [`VCH:0]        n11_olck_1;   
wire    [`VCHW:0]       n11_ovch_1;   
/* n7 --> n2 */ 
wire    [`DATAW:0]      n7_odata_1;  
wire                    n7_ovalid_1; 
wire    [`VCH:0]        n2_oack_3;   
wire    [`VCH:0]        n2_olck_3;   
wire    [`VCHW:0]       n2_ovch_3;   
/* n7 --> n6 */ 
wire    [`DATAW:0]      n7_odata_4;  
wire                    n7_ovalid_4; 
wire    [`VCH:0]        n6_oack_2;   
wire    [`VCH:0]        n6_olck_2;   
wire    [`VCHW:0]       n6_ovch_2;   
/* n7 --> n8 */ 
wire    [`DATAW:0]      n7_odata_2;  
wire                    n7_ovalid_2; 
wire    [`VCH:0]        n8_oack_4;   
wire    [`VCH:0]        n8_olck_4;   
wire    [`VCHW:0]       n8_ovch_4;   
/* n7 --> n12 */ 
wire    [`DATAW:0]      n7_odata_3;  
wire                    n7_ovalid_3; 
wire    [`VCH:0]        n12_oack_1;   
wire    [`VCH:0]        n12_olck_1;   
wire    [`VCHW:0]       n12_ovch_1;   
/* n8 --> n3 */ 
wire    [`DATAW:0]      n8_odata_1;  
wire                    n8_ovalid_1; 
wire    [`VCH:0]        n3_oack_3;   
wire    [`VCH:0]        n3_olck_3;   
wire    [`VCHW:0]       n3_ovch_3;   
/* n8 --> n7 */ 
wire    [`DATAW:0]      n8_odata_4;  
wire                    n8_ovalid_4; 
wire    [`VCH:0]        n7_oack_2;   
wire    [`VCH:0]        n7_olck_2;   
wire    [`VCHW:0]       n7_ovch_2;   
/* n8 --> n9 */ 
wire    [`DATAW:0]      n8_odata_2;  
wire                    n8_ovalid_2; 
wire    [`VCH:0]        n9_oack_4;   
wire    [`VCH:0]        n9_olck_4;   
wire    [`VCHW:0]       n9_ovch_4;   
/* n8 --> n13 */ 
wire    [`DATAW:0]      n8_odata_3;  
wire                    n8_ovalid_3; 
wire    [`VCH:0]        n13_oack_1;   
wire    [`VCH:0]        n13_olck_1;   
wire    [`VCHW:0]       n13_ovch_1;   
/* n9 --> n4 */ 
wire    [`DATAW:0]      n9_odata_1;  
wire                    n9_ovalid_1; 
wire    [`VCH:0]        n4_oack_3;   
wire    [`VCH:0]        n4_olck_3;   
wire    [`VCHW:0]       n4_ovch_3;   
/* n9 --> n8 */ 
wire    [`DATAW:0]      n9_odata_4;  
wire                    n9_ovalid_4; 
wire    [`VCH:0]        n8_oack_2;   
wire    [`VCH:0]        n8_olck_2;   
wire    [`VCHW:0]       n8_ovch_2;   
/* n9 --> n10 */ 
wire    [`DATAW:0]      n9_odata_2;  
wire                    n9_ovalid_2; 
wire    [`VCH:0]        n10_oack_4;   
wire    [`VCH:0]        n10_olck_4;   
wire    [`VCHW:0]       n10_ovch_4;   
/* n9 --> n14 */ 
wire    [`DATAW:0]      n9_odata_3;  
wire                    n9_ovalid_3; 
wire    [`VCH:0]        n14_oack_1;   
wire    [`VCH:0]        n14_olck_1;   
wire    [`VCHW:0]       n14_ovch_1;   
/* n10 --> n5 */ 
wire    [`DATAW:0]      n10_odata_1;  
wire                    n10_ovalid_1; 
wire    [`VCH:0]        n5_oack_3;   
wire    [`VCH:0]        n5_olck_3;   
wire    [`VCHW:0]       n5_ovch_3;   
/* n10 --> n9 */ 
wire    [`DATAW:0]      n10_odata_4;  
wire                    n10_ovalid_4; 
wire    [`VCH:0]        n9_oack_2;   
wire    [`VCH:0]        n9_olck_2;   
wire    [`VCHW:0]       n9_ovch_2;   
/* n10 --> n15 */ 
wire    [`DATAW:0]      n10_odata_3;  
wire                    n10_ovalid_3; 
wire    [`VCH:0]        n15_oack_1;   
wire    [`VCH:0]        n15_olck_1;   
wire    [`VCHW:0]       n15_ovch_1;   
/* n11 --> n6 */ 
wire    [`DATAW:0]      n11_odata_1;  
wire                    n11_ovalid_1; 
wire    [`VCH:0]        n6_oack_3;   
wire    [`VCH:0]        n6_olck_3;   
wire    [`VCHW:0]       n6_ovch_3;   
/* n11 --> n12 */ 
wire    [`DATAW:0]      n11_odata_2;  
wire                    n11_ovalid_2; 
wire    [`VCH:0]        n12_oack_4;   
wire    [`VCH:0]        n12_olck_4;   
wire    [`VCHW:0]       n12_ovch_4;   
/* n11 --> n16 */ 
wire    [`DATAW:0]      n11_odata_3;  
wire                    n11_ovalid_3; 
wire    [`VCH:0]        n16_oack_1;   
wire    [`VCH:0]        n16_olck_1;   
wire    [`VCHW:0]       n16_ovch_1;   
/* n12 --> n7 */ 
wire    [`DATAW:0]      n12_odata_1;  
wire                    n12_ovalid_1; 
wire    [`VCH:0]        n7_oack_3;   
wire    [`VCH:0]        n7_olck_3;   
wire    [`VCHW:0]       n7_ovch_3;   
/* n12 --> n11 */ 
wire    [`DATAW:0]      n12_odata_4;  
wire                    n12_ovalid_4; 
wire    [`VCH:0]        n11_oack_2;   
wire    [`VCH:0]        n11_olck_2;   
wire    [`VCHW:0]       n11_ovch_2;   
/* n12 --> n13 */ 
wire    [`DATAW:0]      n12_odata_2;  
wire                    n12_ovalid_2; 
wire    [`VCH:0]        n13_oack_4;   
wire    [`VCH:0]        n13_olck_4;   
wire    [`VCHW:0]       n13_ovch_4;   
/* n12 --> n17 */ 
wire    [`DATAW:0]      n12_odata_3;  
wire                    n12_ovalid_3; 
wire    [`VCH:0]        n17_oack_1;   
wire    [`VCH:0]        n17_olck_1;   
wire    [`VCHW:0]       n17_ovch_1;   
/* n13 --> n8 */ 
wire    [`DATAW:0]      n13_odata_1;  
wire                    n13_ovalid_1; 
wire    [`VCH:0]        n8_oack_3;   
wire    [`VCH:0]        n8_olck_3;   
wire    [`VCHW:0]       n8_ovch_3;   
/* n13 --> n12 */ 
wire    [`DATAW:0]      n13_odata_4;  
wire                    n13_ovalid_4; 
wire    [`VCH:0]        n12_oack_2;   
wire    [`VCH:0]        n12_olck_2;   
wire    [`VCHW:0]       n12_ovch_2;   
/* n13 --> n14 */ 
wire    [`DATAW:0]      n13_odata_2;  
wire                    n13_ovalid_2; 
wire    [`VCH:0]        n14_oack_4;   
wire    [`VCH:0]        n14_olck_4;   
wire    [`VCHW:0]       n14_ovch_4;   
/* n13 --> n18 */ 
wire    [`DATAW:0]      n13_odata_3;  
wire                    n13_ovalid_3; 
wire    [`VCH:0]        n18_oack_1;   
wire    [`VCH:0]        n18_olck_1;   
wire    [`VCHW:0]       n18_ovch_1;   
/* n14 --> n9 */ 
wire    [`DATAW:0]      n14_odata_1;  
wire                    n14_ovalid_1; 
wire    [`VCH:0]        n9_oack_3;   
wire    [`VCH:0]        n9_olck_3;   
wire    [`VCHW:0]       n9_ovch_3;   
/* n14 --> n13 */ 
wire    [`DATAW:0]      n14_odata_4;  
wire                    n14_ovalid_4; 
wire    [`VCH:0]        n13_oack_2;   
wire    [`VCH:0]        n13_olck_2;   
wire    [`VCHW:0]       n13_ovch_2;   
/* n14 --> n15 */ 
wire    [`DATAW:0]      n14_odata_2;  
wire                    n14_ovalid_2; 
wire    [`VCH:0]        n15_oack_4;   
wire    [`VCH:0]        n15_olck_4;   
wire    [`VCHW:0]       n15_ovch_4;   
/* n14 --> n19 */ 
wire    [`DATAW:0]      n14_odata_3;  
wire                    n14_ovalid_3; 
wire    [`VCH:0]        n19_oack_1;   
wire    [`VCH:0]        n19_olck_1;   
wire    [`VCHW:0]       n19_ovch_1;   
/* n15 --> n10 */ 
wire    [`DATAW:0]      n15_odata_1;  
wire                    n15_ovalid_1; 
wire    [`VCH:0]        n10_oack_3;   
wire    [`VCH:0]        n10_olck_3;   
wire    [`VCHW:0]       n10_ovch_3;   
/* n15 --> n14 */ 
wire    [`DATAW:0]      n15_odata_4;  
wire                    n15_ovalid_4; 
wire    [`VCH:0]        n14_oack_2;   
wire    [`VCH:0]        n14_olck_2;   
wire    [`VCHW:0]       n14_ovch_2;   
/* n15 --> n20 */ 
wire    [`DATAW:0]      n15_odata_3;  
wire                    n15_ovalid_3; 
wire    [`VCH:0]        n20_oack_1;   
wire    [`VCH:0]        n20_olck_1;   
wire    [`VCHW:0]       n20_ovch_1;   
/* n16 --> n11 */ 
wire    [`DATAW:0]      n16_odata_1;  
wire                    n16_ovalid_1; 
wire    [`VCH:0]        n11_oack_3;   
wire    [`VCH:0]        n11_olck_3;   
wire    [`VCHW:0]       n11_ovch_3;   
/* n16 --> n17 */ 
wire    [`DATAW:0]      n16_odata_2;  
wire                    n16_ovalid_2; 
wire    [`VCH:0]        n17_oack_4;   
wire    [`VCH:0]        n17_olck_4;   
wire    [`VCHW:0]       n17_ovch_4;   
/* n16 --> n21 */ 
wire    [`DATAW:0]      n16_odata_3;  
wire                    n16_ovalid_3; 
wire    [`VCH:0]        n21_oack_1;   
wire    [`VCH:0]        n21_olck_1;   
wire    [`VCHW:0]       n21_ovch_1;   
/* n17 --> n12 */ 
wire    [`DATAW:0]      n17_odata_1;  
wire                    n17_ovalid_1; 
wire    [`VCH:0]        n12_oack_3;   
wire    [`VCH:0]        n12_olck_3;   
wire    [`VCHW:0]       n12_ovch_3;   
/* n17 --> n16 */ 
wire    [`DATAW:0]      n17_odata_4;  
wire                    n17_ovalid_4; 
wire    [`VCH:0]        n16_oack_2;   
wire    [`VCH:0]        n16_olck_2;   
wire    [`VCHW:0]       n16_ovch_2;   
/* n17 --> n18 */ 
wire    [`DATAW:0]      n17_odata_2;  
wire                    n17_ovalid_2; 
wire    [`VCH:0]        n18_oack_4;   
wire    [`VCH:0]        n18_olck_4;   
wire    [`VCHW:0]       n18_ovch_4;   
/* n17 --> n22 */ 
wire    [`DATAW:0]      n17_odata_3;  
wire                    n17_ovalid_3; 
wire    [`VCH:0]        n22_oack_1;   
wire    [`VCH:0]        n22_olck_1;   
wire    [`VCHW:0]       n22_ovch_1;   
/* n18 --> n13 */ 
wire    [`DATAW:0]      n18_odata_1;  
wire                    n18_ovalid_1; 
wire    [`VCH:0]        n13_oack_3;   
wire    [`VCH:0]        n13_olck_3;   
wire    [`VCHW:0]       n13_ovch_3;   
/* n18 --> n17 */ 
wire    [`DATAW:0]      n18_odata_4;  
wire                    n18_ovalid_4; 
wire    [`VCH:0]        n17_oack_2;   
wire    [`VCH:0]        n17_olck_2;   
wire    [`VCHW:0]       n17_ovch_2;   
/* n18 --> n19 */ 
wire    [`DATAW:0]      n18_odata_2;  
wire                    n18_ovalid_2; 
wire    [`VCH:0]        n19_oack_4;   
wire    [`VCH:0]        n19_olck_4;   
wire    [`VCHW:0]       n19_ovch_4;   
/* n18 --> n23 */ 
wire    [`DATAW:0]      n18_odata_3;  
wire                    n18_ovalid_3; 
wire    [`VCH:0]        n23_oack_1;   
wire    [`VCH:0]        n23_olck_1;   
wire    [`VCHW:0]       n23_ovch_1;   
/* n19 --> n14 */ 
wire    [`DATAW:0]      n19_odata_1;  
wire                    n19_ovalid_1; 
wire    [`VCH:0]        n14_oack_3;   
wire    [`VCH:0]        n14_olck_3;   
wire    [`VCHW:0]       n14_ovch_3;   
/* n19 --> n18 */ 
wire    [`DATAW:0]      n19_odata_4;  
wire                    n19_ovalid_4; 
wire    [`VCH:0]        n18_oack_2;   
wire    [`VCH:0]        n18_olck_2;   
wire    [`VCHW:0]       n18_ovch_2;   
/* n19 --> n20 */ 
wire    [`DATAW:0]      n19_odata_2;  
wire                    n19_ovalid_2; 
wire    [`VCH:0]        n20_oack_4;   
wire    [`VCH:0]        n20_olck_4;   
wire    [`VCHW:0]       n20_ovch_4;   
/* n19 --> n24 */ 
wire    [`DATAW:0]      n19_odata_3;  
wire                    n19_ovalid_3; 
wire    [`VCH:0]        n24_oack_1;   
wire    [`VCH:0]        n24_olck_1;   
wire    [`VCHW:0]       n24_ovch_1;   
/* n20 --> n15 */ 
wire    [`DATAW:0]      n20_odata_1;  
wire                    n20_ovalid_1; 
wire    [`VCH:0]        n15_oack_3;   
wire    [`VCH:0]        n15_olck_3;   
wire    [`VCHW:0]       n15_ovch_3;   
/* n20 --> n19 */ 
wire    [`DATAW:0]      n20_odata_4;  
wire                    n20_ovalid_4; 
wire    [`VCH:0]        n19_oack_2;   
wire    [`VCH:0]        n19_olck_2;   
wire    [`VCHW:0]       n19_ovch_2;   
/* n20 --> n25 */ 
wire    [`DATAW:0]      n20_odata_3;  
wire                    n20_ovalid_3; 
wire    [`VCH:0]        n25_oack_1;   
wire    [`VCH:0]        n25_olck_1;   
wire    [`VCHW:0]       n25_ovch_1;   
/* n21 --> n16 */ 
wire    [`DATAW:0]      n21_odata_1;  
wire                    n21_ovalid_1; 
wire    [`VCH:0]        n16_oack_3;   
wire    [`VCH:0]        n16_olck_3;   
wire    [`VCHW:0]       n16_ovch_3;   
/* n21 --> n22 */ 
wire    [`DATAW:0]      n21_odata_2;  
wire                    n21_ovalid_2; 
wire    [`VCH:0]        n22_oack_4;   
wire    [`VCH:0]        n22_olck_4;   
wire    [`VCHW:0]       n22_ovch_4;   
/* n22 --> n17 */ 
wire    [`DATAW:0]      n22_odata_1;  
wire                    n22_ovalid_1; 
wire    [`VCH:0]        n17_oack_3;   
wire    [`VCH:0]        n17_olck_3;   
wire    [`VCHW:0]       n17_ovch_3;   
/* n22 --> n21 */ 
wire    [`DATAW:0]      n22_odata_4;  
wire                    n22_ovalid_4; 
wire    [`VCH:0]        n21_oack_2;   
wire    [`VCH:0]        n21_olck_2;   
wire    [`VCHW:0]       n21_ovch_2;   
/* n22 --> n23 */ 
wire    [`DATAW:0]      n22_odata_2;  
wire                    n22_ovalid_2; 
wire    [`VCH:0]        n23_oack_4;   
wire    [`VCH:0]        n23_olck_4;   
wire    [`VCHW:0]       n23_ovch_4;   
/* n23 --> n18 */ 
wire    [`DATAW:0]      n23_odata_1;  
wire                    n23_ovalid_1; 
wire    [`VCH:0]        n18_oack_3;   
wire    [`VCH:0]        n18_olck_3;   
wire    [`VCHW:0]       n18_ovch_3;   
/* n23 --> n22 */ 
wire    [`DATAW:0]      n23_odata_4;  
wire                    n23_ovalid_4; 
wire    [`VCH:0]        n22_oack_2;   
wire    [`VCH:0]        n22_olck_2;   
wire    [`VCHW:0]       n22_ovch_2;   
/* n23 --> n24 */ 
wire    [`DATAW:0]      n23_odata_2;  
wire                    n23_ovalid_2; 
wire    [`VCH:0]        n24_oack_4;   
wire    [`VCH:0]        n24_olck_4;   
wire    [`VCHW:0]       n24_ovch_4;   
/* n24 --> n19 */ 
wire    [`DATAW:0]      n24_odata_1;  
wire                    n24_ovalid_1; 
wire    [`VCH:0]        n19_oack_3;   
wire    [`VCH:0]        n19_olck_3;   
wire    [`VCHW:0]       n19_ovch_3;   
/* n24 --> n23 */ 
wire    [`DATAW:0]      n24_odata_4;  
wire                    n24_ovalid_4; 
wire    [`VCH:0]        n23_oack_2;   
wire    [`VCH:0]        n23_olck_2;   
wire    [`VCHW:0]       n23_ovch_2;   
/* n24 --> n25 */ 
wire    [`DATAW:0]      n24_odata_2;  
wire                    n24_ovalid_2; 
wire    [`VCH:0]        n25_oack_4;   
wire    [`VCH:0]        n25_olck_4;   
wire    [`VCHW:0]       n25_ovch_4;   
/* n25 --> n20 */ 
wire    [`DATAW:0]      n25_odata_1;  
wire                    n25_ovalid_1; 
wire    [`VCH:0]        n20_oack_3;   
wire    [`VCH:0]        n20_olck_3;   
wire    [`VCHW:0]       n20_ovch_3;   
/* n25 --> n24 */ 
wire    [`DATAW:0]      n25_odata_4;  
wire                    n25_ovalid_4; 
wire    [`VCH:0]        n24_oack_2;   
wire    [`VCH:0]        n24_olck_2;   
wire    [`VCHW:0]       n24_ovch_2;   

router #( 1 ) n1 ( 
        .idata_0 ( n1_idata_p0  ), 
        .ivalid_0( n1_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n1_ivch_p0   ), 
        .ordy_0  ( n1_ordy_p0   ), 
        .odata_0 ( n1_odata_p0  ), 
        .ovalid_0( n1_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ipid_1  ( `NODEW_P1'bX    ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n2_odata_4   ), 
        .ivalid_2( n2_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b00010  ), 
        .ivch_2  ( n2_ovch_4    ), 
        .oack_2  ( n1_oack_2    ), 
        .olck_2  ( n1_olck_2    ), 
        .odata_2 ( n1_odata_2   ), 
        .ovalid_2( n1_ovalid_2  ), 
        .ovch_2  ( n1_ovch_2    ), 
        .iack_2  ( n2_oack_4    ), 
        .ilck_2  ( n2_olck_4    ), 

        .idata_3 ( n6_odata_1   ), 
        .ivalid_3( n6_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b00110  ), 
        .ivch_3  ( n6_ovch_1    ), 
        .oack_3  ( n1_oack_3    ), 
        .olck_3  ( n1_olck_3    ), 
        .odata_3 ( n1_odata_3   ), 
        .ovalid_3( n1_ovalid_3  ), 
        .ovch_3  ( n1_ovch_3    ), 
        .iack_3  ( n6_oack_1    ), 
        .ilck_3  ( n6_olck_1    ), 

        .idata_4 ( `DATAW_P1'b0 ),  
        .ivalid_4( 1'b0         ),  
        .ipid_4  ( `NODEW_P1'bX    ),  
        .ivch_4  ( `VCHW_P1'b0  ),  
        .iack_4  ( `VCH_P1'b0   ),  
        .ilck_4  ( `VCH_P1'b0   ),  

        .my_id ( `NODEW_P1'b0001 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 2 ) n2 ( 
        .idata_0 ( n2_idata_p0  ), 
        .ivalid_0( n2_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n2_ivch_p0   ), 
        .ordy_0  ( n2_ordy_p0   ), 
        .odata_0 ( n2_odata_p0  ), 
        .ovalid_0( n2_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ipid_1  ( `NODEW_P1'bX    ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n3_odata_4   ), 
        .ivalid_2( n3_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b00011  ), 
        .ivch_2  ( n3_ovch_4    ), 
        .oack_2  ( n2_oack_2    ), 
        .olck_2  ( n2_olck_2    ), 
        .odata_2 ( n2_odata_2   ), 
        .ovalid_2( n2_ovalid_2  ), 
        .ovch_2  ( n2_ovch_2    ), 
        .iack_2  ( n3_oack_4    ), 
        .ilck_2  ( n3_olck_4    ), 

        .idata_3 ( n7_odata_1   ), 
        .ivalid_3( n7_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b00111  ), 
        .ivch_3  ( n7_ovch_1    ), 
        .oack_3  ( n2_oack_3    ), 
        .olck_3  ( n2_olck_3    ), 
        .odata_3 ( n2_odata_3   ), 
        .ovalid_3( n2_ovalid_3  ), 
        .ovch_3  ( n2_ovch_3    ), 
        .iack_3  ( n7_oack_1    ), 
        .ilck_3  ( n7_olck_1    ), 

        .idata_4 ( n1_odata_2   ), 
        .ivalid_4( n1_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00001  ), 
        .ivch_4  ( n1_ovch_2    ), 
        .oack_4  ( n2_oack_4    ), 
        .olck_4  ( n2_olck_4    ), 
        .odata_4 ( n2_odata_4   ), 
        .ovalid_4( n2_ovalid_4  ), 
        .ovch_4  ( n2_ovch_4    ), 
        .iack_4  ( n1_oack_2    ), 
        .ilck_4  ( n1_olck_2    ), 

        .my_id ( `NODEW_P1'b0010 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 3 ) n3 ( 
        .idata_0 ( n3_idata_p0  ), 
        .ivalid_0( n3_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n3_ivch_p0   ), 
        .ordy_0  ( n3_ordy_p0   ), 
        .odata_0 ( n3_odata_p0  ), 
        .ovalid_0( n3_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ipid_1  ( `NODEW_P1'bX    ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n4_odata_4   ), 
        .ivalid_2( n4_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b00100  ), 
        .ivch_2  ( n4_ovch_4    ), 
        .oack_2  ( n3_oack_2    ), 
        .olck_2  ( n3_olck_2    ), 
        .odata_2 ( n3_odata_2   ), 
        .ovalid_2( n3_ovalid_2  ), 
        .ovch_2  ( n3_ovch_2    ), 
        .iack_2  ( n4_oack_4    ), 
        .ilck_2  ( n4_olck_4    ), 

        .idata_3 ( n8_odata_1   ), 
        .ivalid_3( n8_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01000  ), 
        .ivch_3  ( n8_ovch_1    ), 
        .oack_3  ( n3_oack_3    ), 
        .olck_3  ( n3_olck_3    ), 
        .odata_3 ( n3_odata_3   ), 
        .ovalid_3( n3_ovalid_3  ), 
        .ovch_3  ( n3_ovch_3    ), 
        .iack_3  ( n8_oack_1    ), 
        .ilck_3  ( n8_olck_1    ), 

        .idata_4 ( n2_odata_2   ), 
        .ivalid_4( n2_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00010  ), 
        .ivch_4  ( n2_ovch_2    ), 
        .oack_4  ( n3_oack_4    ), 
        .olck_4  ( n3_olck_4    ), 
        .odata_4 ( n3_odata_4   ), 
        .ovalid_4( n3_ovalid_4  ), 
        .ovch_4  ( n3_ovch_4    ), 
        .iack_4  ( n2_oack_2    ), 
        .ilck_4  ( n2_olck_2    ), 

        .my_id ( `NODEW_P1'b0011 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 4 ) n4 ( 
        .idata_0 ( n4_idata_p0  ), 
        .ivalid_0( n4_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n4_ivch_p0   ), 
        .ordy_0  ( n4_ordy_p0   ), 
        .odata_0 ( n4_odata_p0  ), 
        .ovalid_0( n4_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ipid_1  ( `NODEW_P1'bX    ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n5_odata_4   ), 
        .ivalid_2( n5_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b00101  ), 
        .ivch_2  ( n5_ovch_4    ), 
        .oack_2  ( n4_oack_2    ), 
        .olck_2  ( n4_olck_2    ), 
        .odata_2 ( n4_odata_2   ), 
        .ovalid_2( n4_ovalid_2  ), 
        .ovch_2  ( n4_ovch_2    ), 
        .iack_2  ( n5_oack_4    ), 
        .ilck_2  ( n5_olck_4    ), 

        .idata_3 ( n9_odata_1   ), 
        .ivalid_3( n9_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01001  ), 
        .ivch_3  ( n9_ovch_1    ), 
        .oack_3  ( n4_oack_3    ), 
        .olck_3  ( n4_olck_3    ), 
        .odata_3 ( n4_odata_3   ), 
        .ovalid_3( n4_ovalid_3  ), 
        .ovch_3  ( n4_ovch_3    ), 
        .iack_3  ( n9_oack_1    ), 
        .ilck_3  ( n9_olck_1    ), 

        .idata_4 ( n3_odata_2   ), 
        .ivalid_4( n3_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00011  ), 
        .ivch_4  ( n3_ovch_2    ), 
        .oack_4  ( n4_oack_4    ), 
        .olck_4  ( n4_olck_4    ), 
        .odata_4 ( n4_odata_4   ), 
        .ovalid_4( n4_ovalid_4  ), 
        .ovch_4  ( n4_ovch_4    ), 
        .iack_4  ( n3_oack_2    ), 
        .ilck_4  ( n3_olck_2    ), 

        .my_id ( `NODEW_P1'b0100 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 5 ) n5 ( 
        .idata_0 ( n5_idata_p0  ), 
        .ivalid_0( n5_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n5_ivch_p0   ), 
        .ordy_0  ( n5_ordy_p0   ), 
        .odata_0 ( n5_odata_p0  ), 
        .ovalid_0( n5_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ipid_1  ( `NODEW_P1'bX    ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ipid_2  ( `NODEW_P1'bX    ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n10_odata_1   ), 
        .ivalid_3( n10_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01010  ), 
        .ivch_3  ( n10_ovch_1    ), 
        .oack_3  ( n5_oack_3    ), 
        .olck_3  ( n5_olck_3    ), 
        .odata_3 ( n5_odata_3   ), 
        .ovalid_3( n5_ovalid_3  ), 
        .ovch_3  ( n5_ovch_3    ), 
        .iack_3  ( n10_oack_1    ), 
        .ilck_3  ( n10_olck_1    ), 

        .idata_4 ( n4_odata_2   ), 
        .ivalid_4( n4_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00100  ), 
        .ivch_4  ( n4_ovch_2    ), 
        .oack_4  ( n5_oack_4    ), 
        .olck_4  ( n5_olck_4    ), 
        .odata_4 ( n5_odata_4   ), 
        .ovalid_4( n5_ovalid_4  ), 
        .ovch_4  ( n5_ovch_4    ), 
        .iack_4  ( n4_oack_2    ), 
        .ilck_4  ( n4_olck_2    ), 

        .my_id ( `NODEW_P1'b0101 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 6 ) n6 ( 
        .idata_0 ( n6_idata_p0  ), 
        .ivalid_0( n6_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n6_ivch_p0   ), 
        .ordy_0  ( n6_ordy_p0   ), 
        .odata_0 ( n6_odata_p0  ), 
        .ovalid_0( n6_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n1_odata_3   ), 
        .ivalid_1( n1_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00001  ), 
        .ivch_1  ( n1_ovch_3    ), 
        .oack_1  ( n6_oack_1    ), 
        .olck_1  ( n6_olck_1    ), 
        .odata_1 ( n6_odata_1   ), 
        .ovalid_1( n6_ovalid_1  ), 
        .ovch_1  ( n6_ovch_1    ), 
        .iack_1  ( n1_oack_3    ), 
        .ilck_1  ( n1_olck_3    ), 

        .idata_2 ( n7_odata_4   ), 
        .ivalid_2( n7_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b00111  ), 
        .ivch_2  ( n7_ovch_4    ), 
        .oack_2  ( n6_oack_2    ), 
        .olck_2  ( n6_olck_2    ), 
        .odata_2 ( n6_odata_2   ), 
        .ovalid_2( n6_ovalid_2  ), 
        .ovch_2  ( n6_ovch_2    ), 
        .iack_2  ( n7_oack_4    ), 
        .ilck_2  ( n7_olck_4    ), 

        .idata_3 ( n11_odata_1   ), 
        .ivalid_3( n11_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01011  ), 
        .ivch_3  ( n11_ovch_1    ), 
        .oack_3  ( n6_oack_3    ), 
        .olck_3  ( n6_olck_3    ), 
        .odata_3 ( n6_odata_3   ), 
        .ovalid_3( n6_ovalid_3  ), 
        .ovch_3  ( n6_ovch_3    ), 
        .iack_3  ( n11_oack_1    ), 
        .ilck_3  ( n11_olck_1    ), 

        .idata_4 ( `DATAW_P1'b0 ),  
        .ivalid_4( 1'b0         ),  
        .ipid_4  ( `NODEW_P1'bX    ),  
        .ivch_4  ( `VCHW_P1'b0  ),  
        .iack_4  ( `VCH_P1'b0   ),  
        .ilck_4  ( `VCH_P1'b0   ),  

        .my_id ( `NODEW_P1'b0110 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 7 ) n7 ( 
        .idata_0 ( n7_idata_p0  ), 
        .ivalid_0( n7_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n7_ivch_p0   ), 
        .ordy_0  ( n7_ordy_p0   ), 
        .odata_0 ( n7_odata_p0  ), 
        .ovalid_0( n7_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n2_odata_3   ), 
        .ivalid_1( n2_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00010  ), 
        .ivch_1  ( n2_ovch_3    ), 
        .oack_1  ( n7_oack_1    ), 
        .olck_1  ( n7_olck_1    ), 
        .odata_1 ( n7_odata_1   ), 
        .ovalid_1( n7_ovalid_1  ), 
        .ovch_1  ( n7_ovch_1    ), 
        .iack_1  ( n2_oack_3    ), 
        .ilck_1  ( n2_olck_3    ), 

        .idata_2 ( n8_odata_4   ), 
        .ivalid_2( n8_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01000  ), 
        .ivch_2  ( n8_ovch_4    ), 
        .oack_2  ( n7_oack_2    ), 
        .olck_2  ( n7_olck_2    ), 
        .odata_2 ( n7_odata_2   ), 
        .ovalid_2( n7_ovalid_2  ), 
        .ovch_2  ( n7_ovch_2    ), 
        .iack_2  ( n8_oack_4    ), 
        .ilck_2  ( n8_olck_4    ), 

        .idata_3 ( n12_odata_1   ), 
        .ivalid_3( n12_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01100  ), 
        .ivch_3  ( n12_ovch_1    ), 
        .oack_3  ( n7_oack_3    ), 
        .olck_3  ( n7_olck_3    ), 
        .odata_3 ( n7_odata_3   ), 
        .ovalid_3( n7_ovalid_3  ), 
        .ovch_3  ( n7_ovch_3    ), 
        .iack_3  ( n12_oack_1    ), 
        .ilck_3  ( n12_olck_1    ), 

        .idata_4 ( n6_odata_2   ), 
        .ivalid_4( n6_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00110  ), 
        .ivch_4  ( n6_ovch_2    ), 
        .oack_4  ( n7_oack_4    ), 
        .olck_4  ( n7_olck_4    ), 
        .odata_4 ( n7_odata_4   ), 
        .ovalid_4( n7_ovalid_4  ), 
        .ovch_4  ( n7_ovch_4    ), 
        .iack_4  ( n6_oack_2    ), 
        .ilck_4  ( n6_olck_2    ), 

        .my_id ( `NODEW_P1'b0111 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 8 ) n8 ( 
        .idata_0 ( n8_idata_p0  ), 
        .ivalid_0( n8_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n8_ivch_p0   ), 
        .ordy_0  ( n8_ordy_p0   ), 
        .odata_0 ( n8_odata_p0  ), 
        .ovalid_0( n8_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n3_odata_3   ), 
        .ivalid_1( n3_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00011  ), 
        .ivch_1  ( n3_ovch_3    ), 
        .oack_1  ( n8_oack_1    ), 
        .olck_1  ( n8_olck_1    ), 
        .odata_1 ( n8_odata_1   ), 
        .ovalid_1( n8_ovalid_1  ), 
        .ovch_1  ( n8_ovch_1    ), 
        .iack_1  ( n3_oack_3    ), 
        .ilck_1  ( n3_olck_3    ), 

        .idata_2 ( n9_odata_4   ), 
        .ivalid_2( n9_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01001  ), 
        .ivch_2  ( n9_ovch_4    ), 
        .oack_2  ( n8_oack_2    ), 
        .olck_2  ( n8_olck_2    ), 
        .odata_2 ( n8_odata_2   ), 
        .ovalid_2( n8_ovalid_2  ), 
        .ovch_2  ( n8_ovch_2    ), 
        .iack_2  ( n9_oack_4    ), 
        .ilck_2  ( n9_olck_4    ), 

        .idata_3 ( n13_odata_1   ), 
        .ivalid_3( n13_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01101  ), 
        .ivch_3  ( n13_ovch_1    ), 
        .oack_3  ( n8_oack_3    ), 
        .olck_3  ( n8_olck_3    ), 
        .odata_3 ( n8_odata_3   ), 
        .ovalid_3( n8_ovalid_3  ), 
        .ovch_3  ( n8_ovch_3    ), 
        .iack_3  ( n13_oack_1    ), 
        .ilck_3  ( n13_olck_1    ), 

        .idata_4 ( n7_odata_2   ), 
        .ivalid_4( n7_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b00111  ), 
        .ivch_4  ( n7_ovch_2    ), 
        .oack_4  ( n8_oack_4    ), 
        .olck_4  ( n8_olck_4    ), 
        .odata_4 ( n8_odata_4   ), 
        .ovalid_4( n8_ovalid_4  ), 
        .ovch_4  ( n8_ovch_4    ), 
        .iack_4  ( n7_oack_2    ), 
        .ilck_4  ( n7_olck_2    ), 

        .my_id ( `NODEW_P1'b1000 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 9 ) n9 ( 
        .idata_0 ( n9_idata_p0  ), 
        .ivalid_0( n9_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n9_ivch_p0   ), 
        .ordy_0  ( n9_ordy_p0   ), 
        .odata_0 ( n9_odata_p0  ), 
        .ovalid_0( n9_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n4_odata_3   ), 
        .ivalid_1( n4_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00100  ), 
        .ivch_1  ( n4_ovch_3    ), 
        .oack_1  ( n9_oack_1    ), 
        .olck_1  ( n9_olck_1    ), 
        .odata_1 ( n9_odata_1   ), 
        .ovalid_1( n9_ovalid_1  ), 
        .ovch_1  ( n9_ovch_1    ), 
        .iack_1  ( n4_oack_3    ), 
        .ilck_1  ( n4_olck_3    ), 

        .idata_2 ( n10_odata_4   ), 
        .ivalid_2( n10_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01010  ), 
        .ivch_2  ( n10_ovch_4    ), 
        .oack_2  ( n9_oack_2    ), 
        .olck_2  ( n9_olck_2    ), 
        .odata_2 ( n9_odata_2   ), 
        .ovalid_2( n9_ovalid_2  ), 
        .ovch_2  ( n9_ovch_2    ), 
        .iack_2  ( n10_oack_4    ), 
        .ilck_2  ( n10_olck_4    ), 

        .idata_3 ( n14_odata_1   ), 
        .ivalid_3( n14_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01110  ), 
        .ivch_3  ( n14_ovch_1    ), 
        .oack_3  ( n9_oack_3    ), 
        .olck_3  ( n9_olck_3    ), 
        .odata_3 ( n9_odata_3   ), 
        .ovalid_3( n9_ovalid_3  ), 
        .ovch_3  ( n9_ovch_3    ), 
        .iack_3  ( n14_oack_1    ), 
        .ilck_3  ( n14_olck_1    ), 

        .idata_4 ( n8_odata_2   ), 
        .ivalid_4( n8_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01000  ), 
        .ivch_4  ( n8_ovch_2    ), 
        .oack_4  ( n9_oack_4    ), 
        .olck_4  ( n9_olck_4    ), 
        .odata_4 ( n9_odata_4   ), 
        .ovalid_4( n9_ovalid_4  ), 
        .ovch_4  ( n9_ovch_4    ), 
        .iack_4  ( n8_oack_2    ), 
        .ilck_4  ( n8_olck_2    ), 

        .my_id ( `NODEW_P1'b1001 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 10 ) n10 ( 
        .idata_0 ( n10_idata_p0  ), 
        .ivalid_0( n10_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n10_ivch_p0   ), 
        .ordy_0  ( n10_ordy_p0   ), 
        .odata_0 ( n10_odata_p0  ), 
        .ovalid_0( n10_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n5_odata_3   ), 
        .ivalid_1( n5_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00101  ), 
        .ivch_1  ( n5_ovch_3    ), 
        .oack_1  ( n10_oack_1    ), 
        .olck_1  ( n10_olck_1    ), 
        .odata_1 ( n10_odata_1   ), 
        .ovalid_1( n10_ovalid_1  ), 
        .ovch_1  ( n10_ovch_1    ), 
        .iack_1  ( n5_oack_3    ), 
        .ilck_1  ( n5_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ipid_2  ( `NODEW_P1'bX    ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n15_odata_1   ), 
        .ivalid_3( n15_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b01111  ), 
        .ivch_3  ( n15_ovch_1    ), 
        .oack_3  ( n10_oack_3    ), 
        .olck_3  ( n10_olck_3    ), 
        .odata_3 ( n10_odata_3   ), 
        .ovalid_3( n10_ovalid_3  ), 
        .ovch_3  ( n10_ovch_3    ), 
        .iack_3  ( n15_oack_1    ), 
        .ilck_3  ( n15_olck_1    ), 

        .idata_4 ( n9_odata_2   ), 
        .ivalid_4( n9_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01001  ), 
        .ivch_4  ( n9_ovch_2    ), 
        .oack_4  ( n10_oack_4    ), 
        .olck_4  ( n10_olck_4    ), 
        .odata_4 ( n10_odata_4   ), 
        .ovalid_4( n10_ovalid_4  ), 
        .ovch_4  ( n10_ovch_4    ), 
        .iack_4  ( n9_oack_2    ), 
        .ilck_4  ( n9_olck_2    ), 

        .my_id ( `NODEW_P1'b1010 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 11 ) n11 ( 
        .idata_0 ( n11_idata_p0  ), 
        .ivalid_0( n11_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n11_ivch_p0   ), 
        .ordy_0  ( n11_ordy_p0   ), 
        .odata_0 ( n11_odata_p0  ), 
        .ovalid_0( n11_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n6_odata_3   ), 
        .ivalid_1( n6_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00110  ), 
        .ivch_1  ( n6_ovch_3    ), 
        .oack_1  ( n11_oack_1    ), 
        .olck_1  ( n11_olck_1    ), 
        .odata_1 ( n11_odata_1   ), 
        .ovalid_1( n11_ovalid_1  ), 
        .ovch_1  ( n11_ovch_1    ), 
        .iack_1  ( n6_oack_3    ), 
        .ilck_1  ( n6_olck_3    ), 

        .idata_2 ( n12_odata_4   ), 
        .ivalid_2( n12_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01100  ), 
        .ivch_2  ( n12_ovch_4    ), 
        .oack_2  ( n11_oack_2    ), 
        .olck_2  ( n11_olck_2    ), 
        .odata_2 ( n11_odata_2   ), 
        .ovalid_2( n11_ovalid_2  ), 
        .ovch_2  ( n11_ovch_2    ), 
        .iack_2  ( n12_oack_4    ), 
        .ilck_2  ( n12_olck_4    ), 

        .idata_3 ( n16_odata_1   ), 
        .ivalid_3( n16_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10000  ), 
        .ivch_3  ( n16_ovch_1    ), 
        .oack_3  ( n11_oack_3    ), 
        .olck_3  ( n11_olck_3    ), 
        .odata_3 ( n11_odata_3   ), 
        .ovalid_3( n11_ovalid_3  ), 
        .ovch_3  ( n11_ovch_3    ), 
        .iack_3  ( n16_oack_1    ), 
        .ilck_3  ( n16_olck_1    ), 

        .idata_4 ( `DATAW_P1'b0 ),  
        .ivalid_4( 1'b0         ),  
        .ipid_4  ( `NODEW_P1'bX    ),  
        .ivch_4  ( `VCHW_P1'b0  ),  
        .iack_4  ( `VCH_P1'b0   ),  
        .ilck_4  ( `VCH_P1'b0   ),  

        .my_id ( `NODEW_P1'b1011 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 12 ) n12 ( 
        .idata_0 ( n12_idata_p0  ), 
        .ivalid_0( n12_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n12_ivch_p0   ), 
        .ordy_0  ( n12_ordy_p0   ), 
        .odata_0 ( n12_odata_p0  ), 
        .ovalid_0( n12_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n7_odata_3   ), 
        .ivalid_1( n7_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b00111  ), 
        .ivch_1  ( n7_ovch_3    ), 
        .oack_1  ( n12_oack_1    ), 
        .olck_1  ( n12_olck_1    ), 
        .odata_1 ( n12_odata_1   ), 
        .ovalid_1( n12_ovalid_1  ), 
        .ovch_1  ( n12_ovch_1    ), 
        .iack_1  ( n7_oack_3    ), 
        .ilck_1  ( n7_olck_3    ), 

        .idata_2 ( n13_odata_4   ), 
        .ivalid_2( n13_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01101  ), 
        .ivch_2  ( n13_ovch_4    ), 
        .oack_2  ( n12_oack_2    ), 
        .olck_2  ( n12_olck_2    ), 
        .odata_2 ( n12_odata_2   ), 
        .ovalid_2( n12_ovalid_2  ), 
        .ovch_2  ( n12_ovch_2    ), 
        .iack_2  ( n13_oack_4    ), 
        .ilck_2  ( n13_olck_4    ), 

        .idata_3 ( n17_odata_1   ), 
        .ivalid_3( n17_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10001  ), 
        .ivch_3  ( n17_ovch_1    ), 
        .oack_3  ( n12_oack_3    ), 
        .olck_3  ( n12_olck_3    ), 
        .odata_3 ( n12_odata_3   ), 
        .ovalid_3( n12_ovalid_3  ), 
        .ovch_3  ( n12_ovch_3    ), 
        .iack_3  ( n17_oack_1    ), 
        .ilck_3  ( n17_olck_1    ), 

        .idata_4 ( n11_odata_2   ), 
        .ivalid_4( n11_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01011  ), 
        .ivch_4  ( n11_ovch_2    ), 
        .oack_4  ( n12_oack_4    ), 
        .olck_4  ( n12_olck_4    ), 
        .odata_4 ( n12_odata_4   ), 
        .ovalid_4( n12_ovalid_4  ), 
        .ovch_4  ( n12_ovch_4    ), 
        .iack_4  ( n11_oack_2    ), 
        .ilck_4  ( n11_olck_2    ), 

        .my_id ( `NODEW_P1'b1100 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 13 ) n13 ( 
        .idata_0 ( n13_idata_p0  ), 
        .ivalid_0( n13_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n13_ivch_p0   ), 
        .ordy_0  ( n13_ordy_p0   ), 
        .odata_0 ( n13_odata_p0  ), 
        .ovalid_0( n13_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n8_odata_3   ), 
        .ivalid_1( n8_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01000  ), 
        .ivch_1  ( n8_ovch_3    ), 
        .oack_1  ( n13_oack_1    ), 
        .olck_1  ( n13_olck_1    ), 
        .odata_1 ( n13_odata_1   ), 
        .ovalid_1( n13_ovalid_1  ), 
        .ovch_1  ( n13_ovch_1    ), 
        .iack_1  ( n8_oack_3    ), 
        .ilck_1  ( n8_olck_3    ), 

        .idata_2 ( n14_odata_4   ), 
        .ivalid_2( n14_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01110  ), 
        .ivch_2  ( n14_ovch_4    ), 
        .oack_2  ( n13_oack_2    ), 
        .olck_2  ( n13_olck_2    ), 
        .odata_2 ( n13_odata_2   ), 
        .ovalid_2( n13_ovalid_2  ), 
        .ovch_2  ( n13_ovch_2    ), 
        .iack_2  ( n14_oack_4    ), 
        .ilck_2  ( n14_olck_4    ), 

        .idata_3 ( n18_odata_1   ), 
        .ivalid_3( n18_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10010  ), 
        .ivch_3  ( n18_ovch_1    ), 
        .oack_3  ( n13_oack_3    ), 
        .olck_3  ( n13_olck_3    ), 
        .odata_3 ( n13_odata_3   ), 
        .ovalid_3( n13_ovalid_3  ), 
        .ovch_3  ( n13_ovch_3    ), 
        .iack_3  ( n18_oack_1    ), 
        .ilck_3  ( n18_olck_1    ), 

        .idata_4 ( n12_odata_2   ), 
        .ivalid_4( n12_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01100  ), 
        .ivch_4  ( n12_ovch_2    ), 
        .oack_4  ( n13_oack_4    ), 
        .olck_4  ( n13_olck_4    ), 
        .odata_4 ( n13_odata_4   ), 
        .ovalid_4( n13_ovalid_4  ), 
        .ovch_4  ( n13_ovch_4    ), 
        .iack_4  ( n12_oack_2    ), 
        .ilck_4  ( n12_olck_2    ), 

        .my_id ( `NODEW_P1'b1101 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 14 ) n14 ( 
        .idata_0 ( n14_idata_p0  ), 
        .ivalid_0( n14_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n14_ivch_p0   ), 
        .ordy_0  ( n14_ordy_p0   ), 
        .odata_0 ( n14_odata_p0  ), 
        .ovalid_0( n14_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n9_odata_3   ), 
        .ivalid_1( n9_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01001  ), 
        .ivch_1  ( n9_ovch_3    ), 
        .oack_1  ( n14_oack_1    ), 
        .olck_1  ( n14_olck_1    ), 
        .odata_1 ( n14_odata_1   ), 
        .ovalid_1( n14_ovalid_1  ), 
        .ovch_1  ( n14_ovch_1    ), 
        .iack_1  ( n9_oack_3    ), 
        .ilck_1  ( n9_olck_3    ), 

        .idata_2 ( n15_odata_4   ), 
        .ivalid_2( n15_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b01111  ), 
        .ivch_2  ( n15_ovch_4    ), 
        .oack_2  ( n14_oack_2    ), 
        .olck_2  ( n14_olck_2    ), 
        .odata_2 ( n14_odata_2   ), 
        .ovalid_2( n14_ovalid_2  ), 
        .ovch_2  ( n14_ovch_2    ), 
        .iack_2  ( n15_oack_4    ), 
        .ilck_2  ( n15_olck_4    ), 

        .idata_3 ( n19_odata_1   ), 
        .ivalid_3( n19_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10011  ), 
        .ivch_3  ( n19_ovch_1    ), 
        .oack_3  ( n14_oack_3    ), 
        .olck_3  ( n14_olck_3    ), 
        .odata_3 ( n14_odata_3   ), 
        .ovalid_3( n14_ovalid_3  ), 
        .ovch_3  ( n14_ovch_3    ), 
        .iack_3  ( n19_oack_1    ), 
        .ilck_3  ( n19_olck_1    ), 

        .idata_4 ( n13_odata_2   ), 
        .ivalid_4( n13_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01101  ), 
        .ivch_4  ( n13_ovch_2    ), 
        .oack_4  ( n14_oack_4    ), 
        .olck_4  ( n14_olck_4    ), 
        .odata_4 ( n14_odata_4   ), 
        .ovalid_4( n14_ovalid_4  ), 
        .ovch_4  ( n14_ovch_4    ), 
        .iack_4  ( n13_oack_2    ), 
        .ilck_4  ( n13_olck_2    ), 

        .my_id ( `NODEW_P1'b1110 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 15 ) n15 ( 
        .idata_0 ( n15_idata_p0  ), 
        .ivalid_0( n15_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n15_ivch_p0   ), 
        .ordy_0  ( n15_ordy_p0   ), 
        .odata_0 ( n15_odata_p0  ), 
        .ovalid_0( n15_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n10_odata_3   ), 
        .ivalid_1( n10_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01010  ), 
        .ivch_1  ( n10_ovch_3    ), 
        .oack_1  ( n15_oack_1    ), 
        .olck_1  ( n15_olck_1    ), 
        .odata_1 ( n15_odata_1   ), 
        .ovalid_1( n15_ovalid_1  ), 
        .ovch_1  ( n15_ovch_1    ), 
        .iack_1  ( n10_oack_3    ), 
        .ilck_1  ( n10_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ipid_2  ( `NODEW_P1'bX    ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n20_odata_1   ), 
        .ivalid_3( n20_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10100  ), 
        .ivch_3  ( n20_ovch_1    ), 
        .oack_3  ( n15_oack_3    ), 
        .olck_3  ( n15_olck_3    ), 
        .odata_3 ( n15_odata_3   ), 
        .ovalid_3( n15_ovalid_3  ), 
        .ovch_3  ( n15_ovch_3    ), 
        .iack_3  ( n20_oack_1    ), 
        .ilck_3  ( n20_olck_1    ), 

        .idata_4 ( n14_odata_2   ), 
        .ivalid_4( n14_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b01110  ), 
        .ivch_4  ( n14_ovch_2    ), 
        .oack_4  ( n15_oack_4    ), 
        .olck_4  ( n15_olck_4    ), 
        .odata_4 ( n15_odata_4   ), 
        .ovalid_4( n15_ovalid_4  ), 
        .ovch_4  ( n15_ovch_4    ), 
        .iack_4  ( n14_oack_2    ), 
        .ilck_4  ( n14_olck_2    ), 

        .my_id ( `NODEW_P1'b1111 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 16 ) n16 ( 
        .idata_0 ( n16_idata_p0  ), 
        .ivalid_0( n16_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n16_ivch_p0   ), 
        .ordy_0  ( n16_ordy_p0   ), 
        .odata_0 ( n16_odata_p0  ), 
        .ovalid_0( n16_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n11_odata_3   ), 
        .ivalid_1( n11_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01011  ), 
        .ivch_1  ( n11_ovch_3    ), 
        .oack_1  ( n16_oack_1    ), 
        .olck_1  ( n16_olck_1    ), 
        .odata_1 ( n16_odata_1   ), 
        .ovalid_1( n16_ovalid_1  ), 
        .ovch_1  ( n16_ovch_1    ), 
        .iack_1  ( n11_oack_3    ), 
        .ilck_1  ( n11_olck_3    ), 

        .idata_2 ( n17_odata_4   ), 
        .ivalid_2( n17_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10001  ), 
        .ivch_2  ( n17_ovch_4    ), 
        .oack_2  ( n16_oack_2    ), 
        .olck_2  ( n16_olck_2    ), 
        .odata_2 ( n16_odata_2   ), 
        .ovalid_2( n16_ovalid_2  ), 
        .ovch_2  ( n16_ovch_2    ), 
        .iack_2  ( n17_oack_4    ), 
        .ilck_2  ( n17_olck_4    ), 

        .idata_3 ( n21_odata_1   ), 
        .ivalid_3( n21_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10101  ), 
        .ivch_3  ( n21_ovch_1    ), 
        .oack_3  ( n16_oack_3    ), 
        .olck_3  ( n16_olck_3    ), 
        .odata_3 ( n16_odata_3   ), 
        .ovalid_3( n16_ovalid_3  ), 
        .ovch_3  ( n16_ovch_3    ), 
        .iack_3  ( n21_oack_1    ), 
        .ilck_3  ( n21_olck_1    ), 

        .idata_4 ( `DATAW_P1'b0 ),  
        .ivalid_4( 1'b0         ),  
        .ipid_4  ( `NODEW_P1'bX    ),  
        .ivch_4  ( `VCHW_P1'b0  ),  
        .iack_4  ( `VCH_P1'b0   ),  
        .ilck_4  ( `VCH_P1'b0   ),  

        .my_id ( `NODEW_P1'b10000 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 17 ) n17 ( 
        .idata_0 ( n17_idata_p0  ), 
        .ivalid_0( n17_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n17_ivch_p0   ), 
        .ordy_0  ( n17_ordy_p0   ), 
        .odata_0 ( n17_odata_p0  ), 
        .ovalid_0( n17_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n12_odata_3   ), 
        .ivalid_1( n12_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01100  ), 
        .ivch_1  ( n12_ovch_3    ), 
        .oack_1  ( n17_oack_1    ), 
        .olck_1  ( n17_olck_1    ), 
        .odata_1 ( n17_odata_1   ), 
        .ovalid_1( n17_ovalid_1  ), 
        .ovch_1  ( n17_ovch_1    ), 
        .iack_1  ( n12_oack_3    ), 
        .ilck_1  ( n12_olck_3    ), 

        .idata_2 ( n18_odata_4   ), 
        .ivalid_2( n18_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10010  ), 
        .ivch_2  ( n18_ovch_4    ), 
        .oack_2  ( n17_oack_2    ), 
        .olck_2  ( n17_olck_2    ), 
        .odata_2 ( n17_odata_2   ), 
        .ovalid_2( n17_ovalid_2  ), 
        .ovch_2  ( n17_ovch_2    ), 
        .iack_2  ( n18_oack_4    ), 
        .ilck_2  ( n18_olck_4    ), 

        .idata_3 ( n22_odata_1   ), 
        .ivalid_3( n22_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10110  ), 
        .ivch_3  ( n22_ovch_1    ), 
        .oack_3  ( n17_oack_3    ), 
        .olck_3  ( n17_olck_3    ), 
        .odata_3 ( n17_odata_3   ), 
        .ovalid_3( n17_ovalid_3  ), 
        .ovch_3  ( n17_ovch_3    ), 
        .iack_3  ( n22_oack_1    ), 
        .ilck_3  ( n22_olck_1    ), 

        .idata_4 ( n16_odata_2   ), 
        .ivalid_4( n16_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10000  ), 
        .ivch_4  ( n16_ovch_2    ), 
        .oack_4  ( n17_oack_4    ), 
        .olck_4  ( n17_olck_4    ), 
        .odata_4 ( n17_odata_4   ), 
        .ovalid_4( n17_ovalid_4  ), 
        .ovch_4  ( n17_ovch_4    ), 
        .iack_4  ( n16_oack_2    ), 
        .ilck_4  ( n16_olck_2    ), 

        .my_id ( `NODEW_P1'b10001 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 18 ) n18 ( 
        .idata_0 ( n18_idata_p0  ), 
        .ivalid_0( n18_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n18_ivch_p0   ), 
        .ordy_0  ( n18_ordy_p0   ), 
        .odata_0 ( n18_odata_p0  ), 
        .ovalid_0( n18_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n13_odata_3   ), 
        .ivalid_1( n13_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01101  ), 
        .ivch_1  ( n13_ovch_3    ), 
        .oack_1  ( n18_oack_1    ), 
        .olck_1  ( n18_olck_1    ), 
        .odata_1 ( n18_odata_1   ), 
        .ovalid_1( n18_ovalid_1  ), 
        .ovch_1  ( n18_ovch_1    ), 
        .iack_1  ( n13_oack_3    ), 
        .ilck_1  ( n13_olck_3    ), 

        .idata_2 ( n19_odata_4   ), 
        .ivalid_2( n19_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10011  ), 
        .ivch_2  ( n19_ovch_4    ), 
        .oack_2  ( n18_oack_2    ), 
        .olck_2  ( n18_olck_2    ), 
        .odata_2 ( n18_odata_2   ), 
        .ovalid_2( n18_ovalid_2  ), 
        .ovch_2  ( n18_ovch_2    ), 
        .iack_2  ( n19_oack_4    ), 
        .ilck_2  ( n19_olck_4    ), 

        .idata_3 ( n23_odata_1   ), 
        .ivalid_3( n23_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b10111  ), 
        .ivch_3  ( n23_ovch_1    ), 
        .oack_3  ( n18_oack_3    ), 
        .olck_3  ( n18_olck_3    ), 
        .odata_3 ( n18_odata_3   ), 
        .ovalid_3( n18_ovalid_3  ), 
        .ovch_3  ( n18_ovch_3    ), 
        .iack_3  ( n23_oack_1    ), 
        .ilck_3  ( n23_olck_1    ), 

        .idata_4 ( n17_odata_2   ), 
        .ivalid_4( n17_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10001  ), 
        .ivch_4  ( n17_ovch_2    ), 
        .oack_4  ( n18_oack_4    ), 
        .olck_4  ( n18_olck_4    ), 
        .odata_4 ( n18_odata_4   ), 
        .ovalid_4( n18_ovalid_4  ), 
        .ovch_4  ( n18_ovch_4    ), 
        .iack_4  ( n17_oack_2    ), 
        .ilck_4  ( n17_olck_2    ), 

        .my_id ( `NODEW_P1'b10010 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 19 ) n19 ( 
        .idata_0 ( n19_idata_p0  ), 
        .ivalid_0( n19_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n19_ivch_p0   ), 
        .ordy_0  ( n19_ordy_p0   ), 
        .odata_0 ( n19_odata_p0  ), 
        .ovalid_0( n19_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n14_odata_3   ), 
        .ivalid_1( n14_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01110  ), 
        .ivch_1  ( n14_ovch_3    ), 
        .oack_1  ( n19_oack_1    ), 
        .olck_1  ( n19_olck_1    ), 
        .odata_1 ( n19_odata_1   ), 
        .ovalid_1( n19_ovalid_1  ), 
        .ovch_1  ( n19_ovch_1    ), 
        .iack_1  ( n14_oack_3    ), 
        .ilck_1  ( n14_olck_3    ), 

        .idata_2 ( n20_odata_4   ), 
        .ivalid_2( n20_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10100  ), 
        .ivch_2  ( n20_ovch_4    ), 
        .oack_2  ( n19_oack_2    ), 
        .olck_2  ( n19_olck_2    ), 
        .odata_2 ( n19_odata_2   ), 
        .ovalid_2( n19_ovalid_2  ), 
        .ovch_2  ( n19_ovch_2    ), 
        .iack_2  ( n20_oack_4    ), 
        .ilck_2  ( n20_olck_4    ), 

        .idata_3 ( n24_odata_1   ), 
        .ivalid_3( n24_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b11000  ), 
        .ivch_3  ( n24_ovch_1    ), 
        .oack_3  ( n19_oack_3    ), 
        .olck_3  ( n19_olck_3    ), 
        .odata_3 ( n19_odata_3   ), 
        .ovalid_3( n19_ovalid_3  ), 
        .ovch_3  ( n19_ovch_3    ), 
        .iack_3  ( n24_oack_1    ), 
        .ilck_3  ( n24_olck_1    ), 

        .idata_4 ( n18_odata_2   ), 
        .ivalid_4( n18_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10010  ), 
        .ivch_4  ( n18_ovch_2    ), 
        .oack_4  ( n19_oack_4    ), 
        .olck_4  ( n19_olck_4    ), 
        .odata_4 ( n19_odata_4   ), 
        .ovalid_4( n19_ovalid_4  ), 
        .ovch_4  ( n19_ovch_4    ), 
        .iack_4  ( n18_oack_2    ), 
        .ilck_4  ( n18_olck_2    ), 

        .my_id ( `NODEW_P1'b10011 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 20 ) n20 ( 
        .idata_0 ( n20_idata_p0  ), 
        .ivalid_0( n20_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n20_ivch_p0   ), 
        .ordy_0  ( n20_ordy_p0   ), 
        .odata_0 ( n20_odata_p0  ), 
        .ovalid_0( n20_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n15_odata_3   ), 
        .ivalid_1( n15_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b01111  ), 
        .ivch_1  ( n15_ovch_3    ), 
        .oack_1  ( n20_oack_1    ), 
        .olck_1  ( n20_olck_1    ), 
        .odata_1 ( n20_odata_1   ), 
        .ovalid_1( n20_ovalid_1  ), 
        .ovch_1  ( n20_ovch_1    ), 
        .iack_1  ( n15_oack_3    ), 
        .ilck_1  ( n15_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ipid_2  ( `NODEW_P1'bX    ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n25_odata_1   ), 
        .ivalid_3( n25_ovalid_1  ), 
        .ipid_3  ( `NODEW_P1'b11001  ), 
        .ivch_3  ( n25_ovch_1    ), 
        .oack_3  ( n20_oack_3    ), 
        .olck_3  ( n20_olck_3    ), 
        .odata_3 ( n20_odata_3   ), 
        .ovalid_3( n20_ovalid_3  ), 
        .ovch_3  ( n20_ovch_3    ), 
        .iack_3  ( n25_oack_1    ), 
        .ilck_3  ( n25_olck_1    ), 

        .idata_4 ( n19_odata_2   ), 
        .ivalid_4( n19_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10011  ), 
        .ivch_4  ( n19_ovch_2    ), 
        .oack_4  ( n20_oack_4    ), 
        .olck_4  ( n20_olck_4    ), 
        .odata_4 ( n20_odata_4   ), 
        .ovalid_4( n20_ovalid_4  ), 
        .ovch_4  ( n20_ovch_4    ), 
        .iack_4  ( n19_oack_2    ), 
        .ilck_4  ( n19_olck_2    ), 

        .my_id ( `NODEW_P1'b10100 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 21 ) n21 ( 
        .idata_0 ( n21_idata_p0  ), 
        .ivalid_0( n21_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n21_ivch_p0   ), 
        .ordy_0  ( n21_ordy_p0   ), 
        .odata_0 ( n21_odata_p0  ), 
        .ovalid_0( n21_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n16_odata_3   ), 
        .ivalid_1( n16_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b10000  ), 
        .ivch_1  ( n16_ovch_3    ), 
        .oack_1  ( n21_oack_1    ), 
        .olck_1  ( n21_olck_1    ), 
        .odata_1 ( n21_odata_1   ), 
        .ovalid_1( n21_ovalid_1  ), 
        .ovch_1  ( n21_ovch_1    ), 
        .iack_1  ( n16_oack_3    ), 
        .ilck_1  ( n16_olck_3    ), 

        .idata_2 ( n22_odata_4   ), 
        .ivalid_2( n22_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10110  ), 
        .ivch_2  ( n22_ovch_4    ), 
        .oack_2  ( n21_oack_2    ), 
        .olck_2  ( n21_olck_2    ), 
        .odata_2 ( n21_odata_2   ), 
        .ovalid_2( n21_ovalid_2  ), 
        .ovch_2  ( n21_ovch_2    ), 
        .iack_2  ( n22_oack_4    ), 
        .ilck_2  ( n22_olck_4    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ipid_3  ( `NODEW_P1'bX    ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .idata_4 ( `DATAW_P1'b0 ),  
        .ivalid_4( 1'b0         ),  
        .ipid_4  ( `NODEW_P1'bX    ),  
        .ivch_4  ( `VCHW_P1'b0  ),  
        .iack_4  ( `VCH_P1'b0   ),  
        .ilck_4  ( `VCH_P1'b0   ),  

        .my_id ( `NODEW_P1'b10101 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 22 ) n22 ( 
        .idata_0 ( n22_idata_p0  ), 
        .ivalid_0( n22_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n22_ivch_p0   ), 
        .ordy_0  ( n22_ordy_p0   ), 
        .odata_0 ( n22_odata_p0  ), 
        .ovalid_0( n22_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n17_odata_3   ), 
        .ivalid_1( n17_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b10001  ), 
        .ivch_1  ( n17_ovch_3    ), 
        .oack_1  ( n22_oack_1    ), 
        .olck_1  ( n22_olck_1    ), 
        .odata_1 ( n22_odata_1   ), 
        .ovalid_1( n22_ovalid_1  ), 
        .ovch_1  ( n22_ovch_1    ), 
        .iack_1  ( n17_oack_3    ), 
        .ilck_1  ( n17_olck_3    ), 

        .idata_2 ( n23_odata_4   ), 
        .ivalid_2( n23_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b10111  ), 
        .ivch_2  ( n23_ovch_4    ), 
        .oack_2  ( n22_oack_2    ), 
        .olck_2  ( n22_olck_2    ), 
        .odata_2 ( n22_odata_2   ), 
        .ovalid_2( n22_ovalid_2  ), 
        .ovch_2  ( n22_ovch_2    ), 
        .iack_2  ( n23_oack_4    ), 
        .ilck_2  ( n23_olck_4    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ipid_3  ( `NODEW_P1'bX    ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .idata_4 ( n21_odata_2   ), 
        .ivalid_4( n21_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10101  ), 
        .ivch_4  ( n21_ovch_2    ), 
        .oack_4  ( n22_oack_4    ), 
        .olck_4  ( n22_olck_4    ), 
        .odata_4 ( n22_odata_4   ), 
        .ovalid_4( n22_ovalid_4  ), 
        .ovch_4  ( n22_ovch_4    ), 
        .iack_4  ( n21_oack_2    ), 
        .ilck_4  ( n21_olck_2    ), 

        .my_id ( `NODEW_P1'b10110 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 23 ) n23 ( 
        .idata_0 ( n23_idata_p0  ), 
        .ivalid_0( n23_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n23_ivch_p0   ), 
        .ordy_0  ( n23_ordy_p0   ), 
        .odata_0 ( n23_odata_p0  ), 
        .ovalid_0( n23_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n18_odata_3   ), 
        .ivalid_1( n18_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b10010  ), 
        .ivch_1  ( n18_ovch_3    ), 
        .oack_1  ( n23_oack_1    ), 
        .olck_1  ( n23_olck_1    ), 
        .odata_1 ( n23_odata_1   ), 
        .ovalid_1( n23_ovalid_1  ), 
        .ovch_1  ( n23_ovch_1    ), 
        .iack_1  ( n18_oack_3    ), 
        .ilck_1  ( n18_olck_3    ), 

        .idata_2 ( n24_odata_4   ), 
        .ivalid_2( n24_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b11000  ), 
        .ivch_2  ( n24_ovch_4    ), 
        .oack_2  ( n23_oack_2    ), 
        .olck_2  ( n23_olck_2    ), 
        .odata_2 ( n23_odata_2   ), 
        .ovalid_2( n23_ovalid_2  ), 
        .ovch_2  ( n23_ovch_2    ), 
        .iack_2  ( n24_oack_4    ), 
        .ilck_2  ( n24_olck_4    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ipid_3  ( `NODEW_P1'bX    ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .idata_4 ( n22_odata_2   ), 
        .ivalid_4( n22_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10110  ), 
        .ivch_4  ( n22_ovch_2    ), 
        .oack_4  ( n23_oack_4    ), 
        .olck_4  ( n23_olck_4    ), 
        .odata_4 ( n23_odata_4   ), 
        .ovalid_4( n23_ovalid_4  ), 
        .ovch_4  ( n23_ovch_4    ), 
        .iack_4  ( n22_oack_2    ), 
        .ilck_4  ( n22_olck_2    ), 

        .my_id ( `NODEW_P1'b10111 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 24 ) n24 ( 
        .idata_0 ( n24_idata_p0  ), 
        .ivalid_0( n24_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n24_ivch_p0   ), 
        .ordy_0  ( n24_ordy_p0   ), 
        .odata_0 ( n24_odata_p0  ), 
        .ovalid_0( n24_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n19_odata_3   ), 
        .ivalid_1( n19_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b10011  ), 
        .ivch_1  ( n19_ovch_3    ), 
        .oack_1  ( n24_oack_1    ), 
        .olck_1  ( n24_olck_1    ), 
        .odata_1 ( n24_odata_1   ), 
        .ovalid_1( n24_ovalid_1  ), 
        .ovch_1  ( n24_ovch_1    ), 
        .iack_1  ( n19_oack_3    ), 
        .ilck_1  ( n19_olck_3    ), 

        .idata_2 ( n25_odata_4   ), 
        .ivalid_2( n25_ovalid_4  ), 
        .ipid_2  ( `NODEW_P1'b11001  ), 
        .ivch_2  ( n25_ovch_4    ), 
        .oack_2  ( n24_oack_2    ), 
        .olck_2  ( n24_olck_2    ), 
        .odata_2 ( n24_odata_2   ), 
        .ovalid_2( n24_ovalid_2  ), 
        .ovch_2  ( n24_ovch_2    ), 
        .iack_2  ( n25_oack_4    ), 
        .ilck_2  ( n25_olck_4    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ipid_3  ( `NODEW_P1'bX    ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .idata_4 ( n23_odata_2   ), 
        .ivalid_4( n23_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b10111  ), 
        .ivch_4  ( n23_ovch_2    ), 
        .oack_4  ( n24_oack_4    ), 
        .olck_4  ( n24_olck_4    ), 
        .odata_4 ( n24_odata_4   ), 
        .ovalid_4( n24_ovalid_4  ), 
        .ovch_4  ( n24_ovch_4    ), 
        .iack_4  ( n23_oack_2    ), 
        .ilck_4  ( n23_olck_2    ), 

        .my_id ( `NODEW_P1'b11000 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router #( 25 ) n25 ( 
        .idata_0 ( n25_idata_p0  ), 
        .ivalid_0( n25_ivalid_p0 ), 
        .ipid_0  (  `NODEW_P1'b00000  ),  
        .ivch_0  ( n25_ivch_p0   ), 
        .ordy_0  ( n25_ordy_p0   ), 
        .odata_0 ( n25_odata_p0  ), 
        .ovalid_0( n25_ovalid_p0 ), 
        .iack_0  ( `VCH_P1'b1  ),  
        .ilck_0  ( `VCH_P1'b0  ),  

        .idata_1 ( n20_odata_3   ), 
        .ivalid_1( n20_ovalid_3  ), 
        .ipid_1  ( `NODEW_P1'b10100  ), 
        .ivch_1  ( n20_ovch_3    ), 
        .oack_1  ( n25_oack_1    ), 
        .olck_1  ( n25_olck_1    ), 
        .odata_1 ( n25_odata_1   ), 
        .ovalid_1( n25_ovalid_1  ), 
        .ovch_1  ( n25_ovch_1    ), 
        .iack_1  ( n20_oack_3    ), 
        .ilck_1  ( n20_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ipid_2  ( `NODEW_P1'bX    ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ipid_3  ( `NODEW_P1'bX    ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .idata_4 ( n24_odata_2   ), 
        .ivalid_4( n24_ovalid_2  ), 
        .ipid_4  ( `NODEW_P1'b11000  ), 
        .ivch_4  ( n24_ovch_2    ), 
        .oack_4  ( n25_oack_4    ), 
        .olck_4  ( n25_olck_4    ), 
        .odata_4 ( n25_odata_4   ), 
        .ovalid_4( n25_ovalid_4  ), 
        .ovch_4  ( n25_ovch_4    ), 
        .iack_4  ( n24_oack_2    ), 
        .ilck_4  ( n24_olck_2    ), 

        .my_id ( `NODEW_P1'b11001 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

endmodule 
