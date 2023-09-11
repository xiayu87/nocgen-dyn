/* test module for noc.v */ 
`include "define.h"     
//`timescale 1ns/10ps 

module noc_test; 

parameter STEP  = 5.0; 
parameter ARRAY = 5; 

integer counter, stop, total_sent, total_recv; 
reg clk, rst_, ready; 

/* n1 */ 
reg     [`DATAW:0]      n1_idata_p0;  
reg                     n1_ivalid_p0; 
reg     [`NODEW:0]      n1_ipid_p0;   
reg     [`VCHW:0]       n1_ivch_p0;   
wire    [`VCH:0]        n1_ordy_p0;   
wire    [`DATAW:0]      n1_odata_p0;  
wire                    n1_ovalid_p0; 
integer                 n1_sent, n1_recv;

/* n2 */ 
reg     [`DATAW:0]      n2_idata_p0;  
reg                     n2_ivalid_p0; 
reg     [`NODEW:0]      n2_ipid_p0;   
reg     [`VCHW:0]       n2_ivch_p0;   
wire    [`VCH:0]        n2_ordy_p0;   
wire    [`DATAW:0]      n2_odata_p0;  
wire                    n2_ovalid_p0; 
integer                 n2_sent, n2_recv;

/* n3 */ 
reg     [`DATAW:0]      n3_idata_p0;  
reg                     n3_ivalid_p0; 
reg     [`NODEW:0]      n3_ipid_p0;   
reg     [`VCHW:0]       n3_ivch_p0;   
wire    [`VCH:0]        n3_ordy_p0;   
wire    [`DATAW:0]      n3_odata_p0;  
wire                    n3_ovalid_p0; 
integer                 n3_sent, n3_recv;

/* n4 */ 
reg     [`DATAW:0]      n4_idata_p0;  
reg                     n4_ivalid_p0; 
reg     [`NODEW:0]      n4_ipid_p0;   
reg     [`VCHW:0]       n4_ivch_p0;   
wire    [`VCH:0]        n4_ordy_p0;   
wire    [`DATAW:0]      n4_odata_p0;  
wire                    n4_ovalid_p0; 
integer                 n4_sent, n4_recv;

/* n5 */ 
reg     [`DATAW:0]      n5_idata_p0;  
reg                     n5_ivalid_p0; 
reg     [`NODEW:0]      n5_ipid_p0;   
reg     [`VCHW:0]       n5_ivch_p0;   
wire    [`VCH:0]        n5_ordy_p0;   
wire    [`DATAW:0]      n5_odata_p0;  
wire                    n5_ovalid_p0; 
integer                 n5_sent, n5_recv;

/* n6 */ 
reg     [`DATAW:0]      n6_idata_p0;  
reg                     n6_ivalid_p0; 
reg     [`NODEW:0]      n6_ipid_p0;   
reg     [`VCHW:0]       n6_ivch_p0;   
wire    [`VCH:0]        n6_ordy_p0;   
wire    [`DATAW:0]      n6_odata_p0;  
wire                    n6_ovalid_p0; 
integer                 n6_sent, n6_recv;

/* n7 */ 
reg     [`DATAW:0]      n7_idata_p0;  
reg                     n7_ivalid_p0; 
reg     [`NODEW:0]      n7_ipid_p0;   
reg     [`VCHW:0]       n7_ivch_p0;   
wire    [`VCH:0]        n7_ordy_p0;   
wire    [`DATAW:0]      n7_odata_p0;  
wire                    n7_ovalid_p0; 
integer                 n7_sent, n7_recv;

/* n8 */ 
reg     [`DATAW:0]      n8_idata_p0;  
reg                     n8_ivalid_p0; 
reg     [`NODEW:0]      n8_ipid_p0;   
reg     [`VCHW:0]       n8_ivch_p0;   
wire    [`VCH:0]        n8_ordy_p0;   
wire    [`DATAW:0]      n8_odata_p0;  
wire                    n8_ovalid_p0; 
integer                 n8_sent, n8_recv;

/* n9 */ 
reg     [`DATAW:0]      n9_idata_p0;  
reg                     n9_ivalid_p0; 
reg     [`NODEW:0]      n9_ipid_p0;   
reg     [`VCHW:0]       n9_ivch_p0;   
wire    [`VCH:0]        n9_ordy_p0;   
wire    [`DATAW:0]      n9_odata_p0;  
wire                    n9_ovalid_p0; 
integer                 n9_sent, n9_recv;

/* n10 */ 
reg     [`DATAW:0]      n10_idata_p0;  
reg                     n10_ivalid_p0; 
reg     [`NODEW:0]      n10_ipid_p0;   
reg     [`VCHW:0]       n10_ivch_p0;   
wire    [`VCH:0]        n10_ordy_p0;   
wire    [`DATAW:0]      n10_odata_p0;  
wire                    n10_ovalid_p0; 
integer                 n10_sent, n10_recv;

/* n11 */ 
reg     [`DATAW:0]      n11_idata_p0;  
reg                     n11_ivalid_p0; 
reg     [`NODEW:0]      n11_ipid_p0;   
reg     [`VCHW:0]       n11_ivch_p0;   
wire    [`VCH:0]        n11_ordy_p0;   
wire    [`DATAW:0]      n11_odata_p0;  
wire                    n11_ovalid_p0; 
integer                 n11_sent, n11_recv;

/* n12 */ 
reg     [`DATAW:0]      n12_idata_p0;  
reg                     n12_ivalid_p0; 
reg     [`NODEW:0]      n12_ipid_p0;   
reg     [`VCHW:0]       n12_ivch_p0;   
wire    [`VCH:0]        n12_ordy_p0;   
wire    [`DATAW:0]      n12_odata_p0;  
wire                    n12_ovalid_p0; 
integer                 n12_sent, n12_recv;

/* n13 */ 
reg     [`DATAW:0]      n13_idata_p0;  
reg                     n13_ivalid_p0; 
reg     [`NODEW:0]      n13_ipid_p0;   
reg     [`VCHW:0]       n13_ivch_p0;   
wire    [`VCH:0]        n13_ordy_p0;   
wire    [`DATAW:0]      n13_odata_p0;  
wire                    n13_ovalid_p0; 
integer                 n13_sent, n13_recv;

/* n14 */ 
reg     [`DATAW:0]      n14_idata_p0;  
reg                     n14_ivalid_p0; 
reg     [`NODEW:0]      n14_ipid_p0;   
reg     [`VCHW:0]       n14_ivch_p0;   
wire    [`VCH:0]        n14_ordy_p0;   
wire    [`DATAW:0]      n14_odata_p0;  
wire                    n14_ovalid_p0; 
integer                 n14_sent, n14_recv;

/* n15 */ 
reg     [`DATAW:0]      n15_idata_p0;  
reg                     n15_ivalid_p0; 
reg     [`NODEW:0]      n15_ipid_p0;   
reg     [`VCHW:0]       n15_ivch_p0;   
wire    [`VCH:0]        n15_ordy_p0;   
wire    [`DATAW:0]      n15_odata_p0;  
wire                    n15_ovalid_p0; 
integer                 n15_sent, n15_recv;

/* n16 */ 
reg     [`DATAW:0]      n16_idata_p0;  
reg                     n16_ivalid_p0; 
reg     [`NODEW:0]      n16_ipid_p0;   
reg     [`VCHW:0]       n16_ivch_p0;   
wire    [`VCH:0]        n16_ordy_p0;   
wire    [`DATAW:0]      n16_odata_p0;  
wire                    n16_ovalid_p0; 
integer                 n16_sent, n16_recv;

/* n17 */ 
reg     [`DATAW:0]      n17_idata_p0;  
reg                     n17_ivalid_p0; 
reg     [`NODEW:0]      n17_ipid_p0;   
reg     [`VCHW:0]       n17_ivch_p0;   
wire    [`VCH:0]        n17_ordy_p0;   
wire    [`DATAW:0]      n17_odata_p0;  
wire                    n17_ovalid_p0; 
integer                 n17_sent, n17_recv;

/* n18 */ 
reg     [`DATAW:0]      n18_idata_p0;  
reg                     n18_ivalid_p0; 
reg     [`NODEW:0]      n18_ipid_p0;   
reg     [`VCHW:0]       n18_ivch_p0;   
wire    [`VCH:0]        n18_ordy_p0;   
wire    [`DATAW:0]      n18_odata_p0;  
wire                    n18_ovalid_p0; 
integer                 n18_sent, n18_recv;

/* n19 */ 
reg     [`DATAW:0]      n19_idata_p0;  
reg                     n19_ivalid_p0; 
reg     [`NODEW:0]      n19_ipid_p0;   
reg     [`VCHW:0]       n19_ivch_p0;   
wire    [`VCH:0]        n19_ordy_p0;   
wire    [`DATAW:0]      n19_odata_p0;  
wire                    n19_ovalid_p0; 
integer                 n19_sent, n19_recv;

/* n20 */ 
reg     [`DATAW:0]      n20_idata_p0;  
reg                     n20_ivalid_p0; 
reg     [`NODEW:0]      n20_ipid_p0;   
reg     [`VCHW:0]       n20_ivch_p0;   
wire    [`VCH:0]        n20_ordy_p0;   
wire    [`DATAW:0]      n20_odata_p0;  
wire                    n20_ovalid_p0; 
integer                 n20_sent, n20_recv;

/* n21 */ 
reg     [`DATAW:0]      n21_idata_p0;  
reg                     n21_ivalid_p0; 
reg     [`NODEW:0]      n21_ipid_p0;   
reg     [`VCHW:0]       n21_ivch_p0;   
wire    [`VCH:0]        n21_ordy_p0;   
wire    [`DATAW:0]      n21_odata_p0;  
wire                    n21_ovalid_p0; 
integer                 n21_sent, n21_recv;

/* n22 */ 
reg     [`DATAW:0]      n22_idata_p0;  
reg                     n22_ivalid_p0; 
reg     [`NODEW:0]      n22_ipid_p0;   
reg     [`VCHW:0]       n22_ivch_p0;   
wire    [`VCH:0]        n22_ordy_p0;   
wire    [`DATAW:0]      n22_odata_p0;  
wire                    n22_ovalid_p0; 
integer                 n22_sent, n22_recv;

/* n23 */ 
reg     [`DATAW:0]      n23_idata_p0;  
reg                     n23_ivalid_p0; 
reg     [`NODEW:0]      n23_ipid_p0;   
reg     [`VCHW:0]       n23_ivch_p0;   
wire    [`VCH:0]        n23_ordy_p0;   
wire    [`DATAW:0]      n23_odata_p0;  
wire                    n23_ovalid_p0; 
integer                 n23_sent, n23_recv;

/* n24 */ 
reg     [`DATAW:0]      n24_idata_p0;  
reg                     n24_ivalid_p0; 
reg     [`NODEW:0]      n24_ipid_p0;   
reg     [`VCHW:0]       n24_ivch_p0;   
wire    [`VCH:0]        n24_ordy_p0;   
wire    [`DATAW:0]      n24_odata_p0;  
wire                    n24_ovalid_p0; 
integer                 n24_sent, n24_recv;

/* n25 */ 
reg     [`DATAW:0]      n25_idata_p0;  
reg                     n25_ivalid_p0; 
reg     [`NODEW:0]      n25_ipid_p0;   
reg     [`VCHW:0]       n25_ivch_p0;   
wire    [`VCH:0]        n25_ordy_p0;   
wire    [`DATAW:0]      n25_odata_p0;  
wire                    n25_ovalid_p0; 
integer                 n25_sent, n25_recv;

noc noc ( 
        /* n1 */ 
        .n1_idata_p0 ( n1_idata_p0  ), 
        .n1_ivalid_p0( n1_ivalid_p0 ), 
        .n1_ipid_p0  ( n1_ipid_p0    ),  
        .n1_ivch_p0  ( n1_ivch_p0   ), 
        .n1_ordy_p0  ( n1_ordy_p0   ), 
        .n1_odata_p0 ( n1_odata_p0  ), 
        .n1_ovalid_p0( n1_ovalid_p0 ), 

        /* n2 */ 
        .n2_idata_p0 ( n2_idata_p0  ), 
        .n2_ivalid_p0( n2_ivalid_p0 ), 
        .n2_ipid_p0  ( n2_ipid_p0    ),  
        .n2_ivch_p0  ( n2_ivch_p0   ), 
        .n2_ordy_p0  ( n2_ordy_p0   ), 
        .n2_odata_p0 ( n2_odata_p0  ), 
        .n2_ovalid_p0( n2_ovalid_p0 ), 

        /* n3 */ 
        .n3_idata_p0 ( n3_idata_p0  ), 
        .n3_ivalid_p0( n3_ivalid_p0 ), 
        .n3_ipid_p0  ( n3_ipid_p0    ),  
        .n3_ivch_p0  ( n3_ivch_p0   ), 
        .n3_ordy_p0  ( n3_ordy_p0   ), 
        .n3_odata_p0 ( n3_odata_p0  ), 
        .n3_ovalid_p0( n3_ovalid_p0 ), 

        /* n4 */ 
        .n4_idata_p0 ( n4_idata_p0  ), 
        .n4_ivalid_p0( n4_ivalid_p0 ), 
        .n4_ipid_p0  ( n4_ipid_p0    ),  
        .n4_ivch_p0  ( n4_ivch_p0   ), 
        .n4_ordy_p0  ( n4_ordy_p0   ), 
        .n4_odata_p0 ( n4_odata_p0  ), 
        .n4_ovalid_p0( n4_ovalid_p0 ), 

        /* n5 */ 
        .n5_idata_p0 ( n5_idata_p0  ), 
        .n5_ivalid_p0( n5_ivalid_p0 ), 
        .n5_ipid_p0  ( n5_ipid_p0    ),  
        .n5_ivch_p0  ( n5_ivch_p0   ), 
        .n5_ordy_p0  ( n5_ordy_p0   ), 
        .n5_odata_p0 ( n5_odata_p0  ), 
        .n5_ovalid_p0( n5_ovalid_p0 ), 

        /* n6 */ 
        .n6_idata_p0 ( n6_idata_p0  ), 
        .n6_ivalid_p0( n6_ivalid_p0 ), 
        .n6_ipid_p0  ( n6_ipid_p0    ),  
        .n6_ivch_p0  ( n6_ivch_p0   ), 
        .n6_ordy_p0  ( n6_ordy_p0   ), 
        .n6_odata_p0 ( n6_odata_p0  ), 
        .n6_ovalid_p0( n6_ovalid_p0 ), 

        /* n7 */ 
        .n7_idata_p0 ( n7_idata_p0  ), 
        .n7_ivalid_p0( n7_ivalid_p0 ), 
        .n7_ipid_p0  ( n7_ipid_p0    ),  
        .n7_ivch_p0  ( n7_ivch_p0   ), 
        .n7_ordy_p0  ( n7_ordy_p0   ), 
        .n7_odata_p0 ( n7_odata_p0  ), 
        .n7_ovalid_p0( n7_ovalid_p0 ), 

        /* n8 */ 
        .n8_idata_p0 ( n8_idata_p0  ), 
        .n8_ivalid_p0( n8_ivalid_p0 ), 
        .n8_ipid_p0  ( n8_ipid_p0    ),  
        .n8_ivch_p0  ( n8_ivch_p0   ), 
        .n8_ordy_p0  ( n8_ordy_p0   ), 
        .n8_odata_p0 ( n8_odata_p0  ), 
        .n8_ovalid_p0( n8_ovalid_p0 ), 

        /* n9 */ 
        .n9_idata_p0 ( n9_idata_p0  ), 
        .n9_ivalid_p0( n9_ivalid_p0 ), 
        .n9_ipid_p0  ( n9_ipid_p0    ),  
        .n9_ivch_p0  ( n9_ivch_p0   ), 
        .n9_ordy_p0  ( n9_ordy_p0   ), 
        .n9_odata_p0 ( n9_odata_p0  ), 
        .n9_ovalid_p0( n9_ovalid_p0 ), 

        /* n10 */ 
        .n10_idata_p0 ( n10_idata_p0  ), 
        .n10_ivalid_p0( n10_ivalid_p0 ), 
        .n10_ipid_p0  ( n10_ipid_p0    ),  
        .n10_ivch_p0  ( n10_ivch_p0   ), 
        .n10_ordy_p0  ( n10_ordy_p0   ), 
        .n10_odata_p0 ( n10_odata_p0  ), 
        .n10_ovalid_p0( n10_ovalid_p0 ), 

        /* n11 */ 
        .n11_idata_p0 ( n11_idata_p0  ), 
        .n11_ivalid_p0( n11_ivalid_p0 ), 
        .n11_ipid_p0  ( n11_ipid_p0    ),  
        .n11_ivch_p0  ( n11_ivch_p0   ), 
        .n11_ordy_p0  ( n11_ordy_p0   ), 
        .n11_odata_p0 ( n11_odata_p0  ), 
        .n11_ovalid_p0( n11_ovalid_p0 ), 

        /* n12 */ 
        .n12_idata_p0 ( n12_idata_p0  ), 
        .n12_ivalid_p0( n12_ivalid_p0 ), 
        .n12_ipid_p0  ( n12_ipid_p0    ),  
        .n12_ivch_p0  ( n12_ivch_p0   ), 
        .n12_ordy_p0  ( n12_ordy_p0   ), 
        .n12_odata_p0 ( n12_odata_p0  ), 
        .n12_ovalid_p0( n12_ovalid_p0 ), 

        /* n13 */ 
        .n13_idata_p0 ( n13_idata_p0  ), 
        .n13_ivalid_p0( n13_ivalid_p0 ), 
        .n13_ipid_p0  ( n13_ipid_p0    ),  
        .n13_ivch_p0  ( n13_ivch_p0   ), 
        .n13_ordy_p0  ( n13_ordy_p0   ), 
        .n13_odata_p0 ( n13_odata_p0  ), 
        .n13_ovalid_p0( n13_ovalid_p0 ), 

        /* n14 */ 
        .n14_idata_p0 ( n14_idata_p0  ), 
        .n14_ivalid_p0( n14_ivalid_p0 ), 
        .n14_ipid_p0  ( n14_ipid_p0    ),  
        .n14_ivch_p0  ( n14_ivch_p0   ), 
        .n14_ordy_p0  ( n14_ordy_p0   ), 
        .n14_odata_p0 ( n14_odata_p0  ), 
        .n14_ovalid_p0( n14_ovalid_p0 ), 

        /* n15 */ 
        .n15_idata_p0 ( n15_idata_p0  ), 
        .n15_ivalid_p0( n15_ivalid_p0 ), 
        .n15_ipid_p0  ( n15_ipid_p0    ),  
        .n15_ivch_p0  ( n15_ivch_p0   ), 
        .n15_ordy_p0  ( n15_ordy_p0   ), 
        .n15_odata_p0 ( n15_odata_p0  ), 
        .n15_ovalid_p0( n15_ovalid_p0 ), 

        /* n16 */ 
        .n16_idata_p0 ( n16_idata_p0  ), 
        .n16_ivalid_p0( n16_ivalid_p0 ), 
        .n16_ipid_p0  ( n16_ipid_p0    ),  
        .n16_ivch_p0  ( n16_ivch_p0   ), 
        .n16_ordy_p0  ( n16_ordy_p0   ), 
        .n16_odata_p0 ( n16_odata_p0  ), 
        .n16_ovalid_p0( n16_ovalid_p0 ), 

        /* n17 */ 
        .n17_idata_p0 ( n17_idata_p0  ), 
        .n17_ivalid_p0( n17_ivalid_p0 ), 
        .n17_ipid_p0  ( n17_ipid_p0    ),  
        .n17_ivch_p0  ( n17_ivch_p0   ), 
        .n17_ordy_p0  ( n17_ordy_p0   ), 
        .n17_odata_p0 ( n17_odata_p0  ), 
        .n17_ovalid_p0( n17_ovalid_p0 ), 

        /* n18 */ 
        .n18_idata_p0 ( n18_idata_p0  ), 
        .n18_ivalid_p0( n18_ivalid_p0 ), 
        .n18_ipid_p0  ( n18_ipid_p0    ),  
        .n18_ivch_p0  ( n18_ivch_p0   ), 
        .n18_ordy_p0  ( n18_ordy_p0   ), 
        .n18_odata_p0 ( n18_odata_p0  ), 
        .n18_ovalid_p0( n18_ovalid_p0 ), 

        /* n19 */ 
        .n19_idata_p0 ( n19_idata_p0  ), 
        .n19_ivalid_p0( n19_ivalid_p0 ), 
        .n19_ipid_p0  ( n19_ipid_p0    ),  
        .n19_ivch_p0  ( n19_ivch_p0   ), 
        .n19_ordy_p0  ( n19_ordy_p0   ), 
        .n19_odata_p0 ( n19_odata_p0  ), 
        .n19_ovalid_p0( n19_ovalid_p0 ), 

        /* n20 */ 
        .n20_idata_p0 ( n20_idata_p0  ), 
        .n20_ivalid_p0( n20_ivalid_p0 ), 
        .n20_ipid_p0  ( n20_ipid_p0    ),  
        .n20_ivch_p0  ( n20_ivch_p0   ), 
        .n20_ordy_p0  ( n20_ordy_p0   ), 
        .n20_odata_p0 ( n20_odata_p0  ), 
        .n20_ovalid_p0( n20_ovalid_p0 ), 

        /* n21 */ 
        .n21_idata_p0 ( n21_idata_p0  ), 
        .n21_ivalid_p0( n21_ivalid_p0 ), 
        .n21_ipid_p0  ( n21_ipid_p0    ),  
        .n21_ivch_p0  ( n21_ivch_p0   ), 
        .n21_ordy_p0  ( n21_ordy_p0   ), 
        .n21_odata_p0 ( n21_odata_p0  ), 
        .n21_ovalid_p0( n21_ovalid_p0 ), 

        /* n22 */ 
        .n22_idata_p0 ( n22_idata_p0  ), 
        .n22_ivalid_p0( n22_ivalid_p0 ), 
        .n22_ipid_p0  ( n22_ipid_p0    ),  
        .n22_ivch_p0  ( n22_ivch_p0   ), 
        .n22_ordy_p0  ( n22_ordy_p0   ), 
        .n22_odata_p0 ( n22_odata_p0  ), 
        .n22_ovalid_p0( n22_ovalid_p0 ), 

        /* n23 */ 
        .n23_idata_p0 ( n23_idata_p0  ), 
        .n23_ivalid_p0( n23_ivalid_p0 ), 
        .n23_ipid_p0  ( n23_ipid_p0    ),  
        .n23_ivch_p0  ( n23_ivch_p0   ), 
        .n23_ordy_p0  ( n23_ordy_p0   ), 
        .n23_odata_p0 ( n23_odata_p0  ), 
        .n23_ovalid_p0( n23_ovalid_p0 ), 

        /* n24 */ 
        .n24_idata_p0 ( n24_idata_p0  ), 
        .n24_ivalid_p0( n24_ivalid_p0 ), 
        .n24_ipid_p0  ( n24_ipid_p0    ),  
        .n24_ivch_p0  ( n24_ivch_p0   ), 
        .n24_ordy_p0  ( n24_ordy_p0   ), 
        .n24_odata_p0 ( n24_odata_p0  ), 
        .n24_ovalid_p0( n24_ovalid_p0 ), 

        /* n25 */ 
        .n25_idata_p0 ( n25_idata_p0  ), 
        .n25_ivalid_p0( n25_ivalid_p0 ), 
        .n25_ipid_p0  ( n25_ipid_p0    ),  
        .n25_ivch_p0  ( n25_ivch_p0   ), 
        .n25_ordy_p0  ( n25_ordy_p0   ), 
        .n25_odata_p0 ( n25_odata_p0  ), 
        .n25_ovalid_p0( n25_ovalid_p0 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

always #( STEP / 2) begin      
        clk <= ~clk;           
end                            
always #(STEP) begin           
        counter = counter + 1; 
end                            

initial begin                   
        /* Initialization */    
        #0                      
        counter = 0;            
        stop    = 200;          
        clk     <= `High;       
        ready   <= `Disable;    
        /* Send/recv counters */
        n1_sent = 0; n1_recv = 0; 
        n2_sent = 0; n2_recv = 0; 
        n3_sent = 0; n3_recv = 0; 
        n4_sent = 0; n4_recv = 0; 
        n5_sent = 0; n5_recv = 0; 
        n6_sent = 0; n6_recv = 0; 
        n7_sent = 0; n7_recv = 0; 
        n8_sent = 0; n8_recv = 0; 
        n9_sent = 0; n9_recv = 0; 
        n10_sent = 0; n10_recv = 0; 
        n11_sent = 0; n11_recv = 0; 
        n12_sent = 0; n12_recv = 0; 
        n13_sent = 0; n13_recv = 0; 
        n14_sent = 0; n14_recv = 0; 
        n15_sent = 0; n15_recv = 0; 
        n16_sent = 0; n16_recv = 0; 
        n17_sent = 0; n17_recv = 0; 
        n18_sent = 0; n18_recv = 0; 
        n19_sent = 0; n19_recv = 0; 
        n20_sent = 0; n20_recv = 0; 
        n21_sent = 0; n21_recv = 0; 
        n22_sent = 0; n22_recv = 0; 
        n23_sent = 0; n23_recv = 0; 
        n24_sent = 0; n24_recv = 0; 
        n25_sent = 0; n25_recv = 0; 
        #(STEP / 2)             
        noc_reset;              
        /* Now we can start simulation! */
        ready   <= `Enable;     

        /* Waiting for the end of the simulation */ 
        while (counter < stop) begin
                #(STEP);        
        end                     

        /* Statistics */ 
        total_sent = n1_sent + n2_sent + n3_sent + n4_sent + n5_sent + n6_sent + n7_sent + n8_sent + n9_sent + n10_sent + n11_sent + n12_sent + n13_sent + n14_sent + n15_sent + n16_sent + n17_sent + n18_sent + n19_sent + n20_sent + n21_sent + n22_sent + n23_sent + n24_sent + n25_sent;
        total_recv = n1_recv + n2_recv + n3_recv + n4_recv + n5_recv + n6_recv + n7_recv + n8_recv + n9_recv + n10_recv + n11_recv + n12_recv + n13_recv + n14_recv + n15_recv + n16_recv + n17_recv + n18_recv + n19_recv + n20_recv + n21_recv + n22_recv + n23_recv + n24_recv + n25_recv;
        $write("\n\n");    
        $write("*** statistics (%d) *** \n", counter); 
        $write("n1_sent %d \t n1_recv %d \n", n1_sent, n1_recv);
        $write("n2_sent %d \t n2_recv %d \n", n2_sent, n2_recv);
        $write("n3_sent %d \t n3_recv %d \n", n3_sent, n3_recv);
        $write("n4_sent %d \t n4_recv %d \n", n4_sent, n4_recv);
        $write("n5_sent %d \t n5_recv %d \n", n5_sent, n5_recv);
        $write("n6_sent %d \t n6_recv %d \n", n6_sent, n6_recv);
        $write("n7_sent %d \t n7_recv %d \n", n7_sent, n7_recv);
        $write("n8_sent %d \t n8_recv %d \n", n8_sent, n8_recv);
        $write("n9_sent %d \t n9_recv %d \n", n9_sent, n9_recv);
        $write("n10_sent %d \t n10_recv %d \n", n10_sent, n10_recv);
        $write("n11_sent %d \t n11_recv %d \n", n11_sent, n11_recv);
        $write("n12_sent %d \t n12_recv %d \n", n12_sent, n12_recv);
        $write("n13_sent %d \t n13_recv %d \n", n13_sent, n13_recv);
        $write("n14_sent %d \t n14_recv %d \n", n14_sent, n14_recv);
        $write("n15_sent %d \t n15_recv %d \n", n15_sent, n15_recv);
        $write("n16_sent %d \t n16_recv %d \n", n16_sent, n16_recv);
        $write("n17_sent %d \t n17_recv %d \n", n17_sent, n17_recv);
        $write("n18_sent %d \t n18_recv %d \n", n18_sent, n18_recv);
        $write("n19_sent %d \t n19_recv %d \n", n19_sent, n19_recv);
        $write("n20_sent %d \t n20_recv %d \n", n20_sent, n20_recv);
        $write("n21_sent %d \t n21_recv %d \n", n21_sent, n21_recv);
        $write("n22_sent %d \t n22_recv %d \n", n22_sent, n22_recv);
        $write("n23_sent %d \t n23_recv %d \n", n23_sent, n23_recv);
        $write("n24_sent %d \t n24_recv %d \n", n24_sent, n24_recv);
        $write("n25_sent %d \t n25_recv %d \n", n25_sent, n25_recv);
        $write("total_sent %d \t total_recv %d \n", total_sent, total_recv);
        $write("\n\n");    
        $finish;               
end                             

/* packet generator for n1 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 1 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_1(17, 0, 3);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_1(3, 0, 3);
        $write("*** send (src: 1 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_1(7, 1, 5);
        $write("*** send (src: 1 dst: 14 vch: 0 len: 5) *** \n");
        send_packet_1(14, 0, 5);
        $write("*** send (src: 1 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_1(0, 0, 3);
        $write("*** send (src: 1 dst: 20 vch: 1 len: 1) *** \n");
        send_packet_1(20, 1, 1);
        $write("*** send (src: 1 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_1(15, 0, 4);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_1(8, 1, 2);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 5) *** \n");
        send_packet_1(3, 0, 5);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_1(8, 1, 5);
        $write("*** send (src: 1 dst: 24 vch: 0 len: 5) *** \n");
        send_packet_1(24, 0, 5);
        $write("*** send (src: 1 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_1(20, 1, 3);
        $write("*** send (src: 1 dst: 9 vch: 1 len: 4) *** \n");
        send_packet_1(9, 1, 4);
        $write("*** send (src: 1 dst: 14 vch: 0 len: 3) *** \n");
        send_packet_1(14, 0, 3);
        $write("*** send (src: 1 dst: 6 vch: 0 len: 3) *** \n");
        send_packet_1(6, 0, 3);
        $write("*** send (src: 1 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_1(7, 1, 3);
        $write("*** send (src: 1 dst: 15 vch: 1 len: 4) *** \n");
        send_packet_1(15, 1, 4);
        $write("*** send (src: 1 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_1(0, 0, 2);
        $write("*** send (src: 1 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_1(18, 1, 4);
        $write("*** send (src: 1 dst: 9 vch: 1 len: 3) *** \n");
        send_packet_1(9, 1, 3);
        $write("*** send (src: 1 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_1(15, 0, 3);
        $write("*** send (src: 1 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_1(10, 0, 2);
        $write("*** send (src: 1 dst: 13 vch: 1 len: 1) *** \n");
        send_packet_1(13, 1, 1);
        $write("*** send (src: 1 dst: 15 vch: 1 len: 4) *** \n");
        send_packet_1(15, 1, 4);
        $write("*** send (src: 1 dst: 17 vch: 1 len: 4) *** \n");
        send_packet_1(17, 1, 4);
        $write("*** send (src: 1 dst: 21 vch: 0 len: 2) *** \n");
        send_packet_1(21, 0, 2);
        $write("*** send (src: 1 dst: 15 vch: 1 len: 1) *** \n");
        send_packet_1(15, 1, 1);
        $write("*** send (src: 1 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_1(6, 1, 4);
        $write("*** send (src: 1 dst: 17 vch: 0 len: 5) *** \n");
        send_packet_1(17, 0, 5);
        $write("*** send (src: 1 dst: 6 vch: 0 len: 4) *** \n");
        send_packet_1(6, 0, 4);
        $write("*** send (src: 1 dst: 5 vch: 1 len: 3) *** \n");
        send_packet_1(5, 1, 3);
        $write("*** send (src: 1 dst: 13 vch: 1 len: 2) *** \n");
        send_packet_1(13, 1, 2);
end 

/* packet generator for n2 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 2 dst: 19 vch: 1 len: 2) *** \n");
        send_packet_2(19, 1, 2);
        $write("*** send (src: 2 dst: 20 vch: 1 len: 2) *** \n");
        send_packet_2(20, 1, 2);
        $write("*** send (src: 2 dst: 19 vch: 0 len: 3) *** \n");
        send_packet_2(19, 0, 3);
        $write("*** send (src: 2 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_2(5, 0, 2);
        $write("*** send (src: 2 dst: 1 vch: 0 len: 4) *** \n");
        send_packet_2(1, 0, 4);
        $write("*** send (src: 2 dst: 12 vch: 0 len: 4) *** \n");
        send_packet_2(12, 0, 4);
        $write("*** send (src: 2 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_2(1, 1, 2);
        $write("*** send (src: 2 dst: 24 vch: 1 len: 4) *** \n");
        send_packet_2(24, 1, 4);
        $write("*** send (src: 2 dst: 0 vch: 1 len: 5) *** \n");
        send_packet_2(0, 1, 5);
        $write("*** send (src: 2 dst: 7 vch: 0 len: 3) *** \n");
        send_packet_2(7, 0, 3);
        $write("*** send (src: 2 dst: 14 vch: 0 len: 4) *** \n");
        send_packet_2(14, 0, 4);
        $write("*** send (src: 2 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_2(6, 0, 1);
        $write("*** send (src: 2 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_2(8, 1, 5);
        $write("*** send (src: 2 dst: 4 vch: 0 len: 2) *** \n");
        send_packet_2(4, 0, 2);
        $write("*** send (src: 2 dst: 20 vch: 0 len: 3) *** \n");
        send_packet_2(20, 0, 3);
        $write("*** send (src: 2 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_2(8, 0, 5);
        $write("*** send (src: 2 dst: 14 vch: 1 len: 4) *** \n");
        send_packet_2(14, 1, 4);
        $write("*** send (src: 2 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_2(14, 0, 2);
        $write("*** send (src: 2 dst: 3 vch: 1 len: 5) *** \n");
        send_packet_2(3, 1, 5);
        $write("*** send (src: 2 dst: 11 vch: 0 len: 4) *** \n");
        send_packet_2(11, 0, 4);
        $write("*** send (src: 2 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_2(8, 1, 5);
        $write("*** send (src: 2 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_2(10, 0, 2);
        $write("*** send (src: 2 dst: 13 vch: 1 len: 1) *** \n");
        send_packet_2(13, 1, 1);
        $write("*** send (src: 2 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_2(3, 0, 3);
        $write("*** send (src: 2 dst: 18 vch: 1 len: 2) *** \n");
        send_packet_2(18, 1, 2);
        $write("*** send (src: 2 dst: 1 vch: 0 len: 3) *** \n");
        send_packet_2(1, 0, 3);
        $write("*** send (src: 2 dst: 12 vch: 0 len: 1) *** \n");
        send_packet_2(12, 0, 1);
        $write("*** send (src: 2 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_2(11, 0, 2);
        $write("*** send (src: 2 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_2(3, 1, 3);
        $write("*** send (src: 2 dst: 22 vch: 1 len: 5) *** \n");
        send_packet_2(22, 1, 5);
        $write("*** send (src: 2 dst: 7 vch: 0 len: 1) *** \n");
        send_packet_2(7, 0, 1);
        $write("*** send (src: 2 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_2(6, 1, 5);
end 

/* packet generator for n3 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 3 dst: 13 vch: 0 len: 3) *** \n");
        send_packet_3(13, 0, 3);
        $write("*** send (src: 3 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_3(1, 1, 1);
        $write("*** send (src: 3 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_3(2, 0, 4);
        $write("*** send (src: 3 dst: 10 vch: 1 len: 2) *** \n");
        send_packet_3(10, 1, 2);
        $write("*** send (src: 3 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_3(4, 0, 3);
        $write("*** send (src: 3 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_3(8, 0, 3);
        $write("*** send (src: 3 dst: 14 vch: 1 len: 1) *** \n");
        send_packet_3(14, 1, 1);
        $write("*** send (src: 3 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_3(9, 0, 3);
        $write("*** send (src: 3 dst: 14 vch: 1 len: 2) *** \n");
        send_packet_3(14, 1, 2);
        $write("*** send (src: 3 dst: 22 vch: 0 len: 1) *** \n");
        send_packet_3(22, 0, 1);
        $write("*** send (src: 3 dst: 13 vch: 0 len: 2) *** \n");
        send_packet_3(13, 0, 2);
        $write("*** send (src: 3 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_3(1, 1, 5);
        $write("*** send (src: 3 dst: 18 vch: 0 len: 5) *** \n");
        send_packet_3(18, 0, 5);
        $write("*** send (src: 3 dst: 14 vch: 0 len: 5) *** \n");
        send_packet_3(14, 0, 5);
        $write("*** send (src: 3 dst: 16 vch: 0 len: 4) *** \n");
        send_packet_3(16, 0, 4);
        $write("*** send (src: 3 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_3(0, 0, 3);
        $write("*** send (src: 3 dst: 13 vch: 1 len: 1) *** \n");
        send_packet_3(13, 1, 1);
        $write("*** send (src: 3 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_3(2, 0, 2);
        $write("*** send (src: 3 dst: 12 vch: 1 len: 4) *** \n");
        send_packet_3(12, 1, 4);
        $write("*** send (src: 3 dst: 21 vch: 1 len: 1) *** \n");
        send_packet_3(21, 1, 1);
        $write("*** send (src: 3 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_3(4, 1, 1);
        $write("*** send (src: 3 dst: 16 vch: 0 len: 4) *** \n");
        send_packet_3(16, 0, 4);
        $write("*** send (src: 3 dst: 11 vch: 1 len: 1) *** \n");
        send_packet_3(11, 1, 1);
        $write("*** send (src: 3 dst: 5 vch: 1 len: 4) *** \n");
        send_packet_3(5, 1, 4);
        $write("*** send (src: 3 dst: 21 vch: 1 len: 2) *** \n");
        send_packet_3(21, 1, 2);
        $write("*** send (src: 3 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_3(1, 1, 3);
        $write("*** send (src: 3 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_3(22, 1, 2);
        $write("*** send (src: 3 dst: 21 vch: 1 len: 3) *** \n");
        send_packet_3(21, 1, 3);
        $write("*** send (src: 3 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_3(14, 0, 2);
        $write("*** send (src: 3 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_3(8, 0, 3);
        $write("*** send (src: 3 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_3(4, 1, 4);
        $write("*** send (src: 3 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_3(0, 0, 1);
end 

/* packet generator for n4 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 4 dst: 9 vch: 1 len: 4) *** \n");
        send_packet_4(9, 1, 4);
        $write("*** send (src: 4 dst: 17 vch: 1 len: 5) *** \n");
        send_packet_4(17, 1, 5);
        $write("*** send (src: 4 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_4(1, 1, 2);
        $write("*** send (src: 4 dst: 16 vch: 0 len: 5) *** \n");
        send_packet_4(16, 0, 5);
        $write("*** send (src: 4 dst: 8 vch: 1 len: 4) *** \n");
        send_packet_4(8, 1, 4);
        $write("*** send (src: 4 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_4(18, 1, 4);
        $write("*** send (src: 4 dst: 3 vch: 1 len: 5) *** \n");
        send_packet_4(3, 1, 5);
        $write("*** send (src: 4 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_4(6, 1, 5);
        $write("*** send (src: 4 dst: 17 vch: 0 len: 5) *** \n");
        send_packet_4(17, 0, 5);
        $write("*** send (src: 4 dst: 24 vch: 1 len: 5) *** \n");
        send_packet_4(24, 1, 5);
        $write("*** send (src: 4 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_4(18, 1, 4);
        $write("*** send (src: 4 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_4(5, 0, 1);
        $write("*** send (src: 4 dst: 12 vch: 0 len: 5) *** \n");
        send_packet_4(12, 0, 5);
        $write("*** send (src: 4 dst: 1 vch: 0 len: 3) *** \n");
        send_packet_4(1, 0, 3);
        $write("*** send (src: 4 dst: 15 vch: 0 len: 5) *** \n");
        send_packet_4(15, 0, 5);
        $write("*** send (src: 4 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_4(24, 0, 2);
        $write("*** send (src: 4 dst: 9 vch: 1 len: 3) *** \n");
        send_packet_4(9, 1, 3);
        $write("*** send (src: 4 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_4(20, 1, 3);
        $write("*** send (src: 4 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_4(19, 1, 5);
        $write("*** send (src: 4 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_4(16, 1, 1);
        $write("*** send (src: 4 dst: 10 vch: 0 len: 4) *** \n");
        send_packet_4(10, 0, 4);
        $write("*** send (src: 4 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_4(3, 0, 4);
        $write("*** send (src: 4 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_4(3, 1, 4);
        $write("*** send (src: 4 dst: 24 vch: 1 len: 4) *** \n");
        send_packet_4(24, 1, 4);
        $write("*** send (src: 4 dst: 24 vch: 0 len: 4) *** \n");
        send_packet_4(24, 0, 4);
        $write("*** send (src: 4 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_4(0, 1, 4);
        $write("*** send (src: 4 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_4(18, 1, 4);
        $write("*** send (src: 4 dst: 10 vch: 1 len: 2) *** \n");
        send_packet_4(10, 1, 2);
        $write("*** send (src: 4 dst: 24 vch: 1 len: 1) *** \n");
        send_packet_4(24, 1, 1);
        $write("*** send (src: 4 dst: 18 vch: 1 len: 2) *** \n");
        send_packet_4(18, 1, 2);
        $write("*** send (src: 4 dst: 14 vch: 1 len: 3) *** \n");
        send_packet_4(14, 1, 3);
        $write("*** send (src: 4 dst: 18 vch: 0 len: 5) *** \n");
        send_packet_4(18, 0, 5);
end 

/* packet generator for n5 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 5 dst: 7 vch: 1 len: 4) *** \n");
        send_packet_5(7, 1, 4);
        $write("*** send (src: 5 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_5(0, 1, 2);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_5(0, 0, 2);
        $write("*** send (src: 5 dst: 15 vch: 1 len: 5) *** \n");
        send_packet_5(15, 1, 5);
        $write("*** send (src: 5 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_5(8, 0, 5);
        $write("*** send (src: 5 dst: 9 vch: 1 len: 5) *** \n");
        send_packet_5(9, 1, 5);
        $write("*** send (src: 5 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_5(4, 1, 4);
        $write("*** send (src: 5 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_5(14, 0, 2);
        $write("*** send (src: 5 dst: 16 vch: 0 len: 2) *** \n");
        send_packet_5(16, 0, 2);
        $write("*** send (src: 5 dst: 14 vch: 1 len: 1) *** \n");
        send_packet_5(14, 1, 1);
        $write("*** send (src: 5 dst: 3 vch: 1 len: 5) *** \n");
        send_packet_5(3, 1, 5);
        $write("*** send (src: 5 dst: 17 vch: 0 len: 4) *** \n");
        send_packet_5(17, 0, 4);
        $write("*** send (src: 5 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_5(2, 1, 4);
        $write("*** send (src: 5 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_5(4, 1, 5);
        $write("*** send (src: 5 dst: 13 vch: 1 len: 3) *** \n");
        send_packet_5(13, 1, 3);
        $write("*** send (src: 5 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_5(16, 1, 1);
        $write("*** send (src: 5 dst: 3 vch: 0 len: 2) *** \n");
        send_packet_5(3, 0, 2);
        $write("*** send (src: 5 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_5(19, 1, 5);
        $write("*** send (src: 5 dst: 6 vch: 1 len: 1) *** \n");
        send_packet_5(6, 1, 1);
        $write("*** send (src: 5 dst: 17 vch: 0 len: 1) *** \n");
        send_packet_5(17, 0, 1);
        $write("*** send (src: 5 dst: 11 vch: 0 len: 3) *** \n");
        send_packet_5(11, 0, 3);
        $write("*** send (src: 5 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_5(24, 0, 2);
        $write("*** send (src: 5 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_5(4, 0, 5);
        $write("*** send (src: 5 dst: 16 vch: 0 len: 1) *** \n");
        send_packet_5(16, 0, 1);
        $write("*** send (src: 5 dst: 11 vch: 0 len: 1) *** \n");
        send_packet_5(11, 0, 1);
        $write("*** send (src: 5 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_5(17, 0, 3);
        $write("*** send (src: 5 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_5(0, 1, 2);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_5(0, 0, 1);
        $write("*** send (src: 5 dst: 20 vch: 1 len: 1) *** \n");
        send_packet_5(20, 1, 1);
        $write("*** send (src: 5 dst: 19 vch: 0 len: 5) *** \n");
        send_packet_5(19, 0, 5);
        $write("*** send (src: 5 dst: 17 vch: 0 len: 2) *** \n");
        send_packet_5(17, 0, 2);
        $write("*** send (src: 5 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_5(8, 1, 3);
end 

/* packet generator for n6 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 6 dst: 11 vch: 1 len: 2) *** \n");
        send_packet_6(11, 1, 2);
        $write("*** send (src: 6 dst: 22 vch: 0 len: 3) *** \n");
        send_packet_6(22, 0, 3);
        $write("*** send (src: 6 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_6(8, 1, 1);
        $write("*** send (src: 6 dst: 20 vch: 0 len: 5) *** \n");
        send_packet_6(20, 0, 5);
        $write("*** send (src: 6 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_6(3, 1, 1);
        $write("*** send (src: 6 dst: 7 vch: 0 len: 2) *** \n");
        send_packet_6(7, 0, 2);
        $write("*** send (src: 6 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_6(8, 0, 1);
        $write("*** send (src: 6 dst: 19 vch: 1 len: 3) *** \n");
        send_packet_6(19, 1, 3);
        $write("*** send (src: 6 dst: 16 vch: 0 len: 2) *** \n");
        send_packet_6(16, 0, 2);
        $write("*** send (src: 6 dst: 15 vch: 1 len: 2) *** \n");
        send_packet_6(15, 1, 2);
        $write("*** send (src: 6 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_6(12, 1, 5);
        $write("*** send (src: 6 dst: 11 vch: 1 len: 1) *** \n");
        send_packet_6(11, 1, 1);
        $write("*** send (src: 6 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_6(0, 0, 5);
        $write("*** send (src: 6 dst: 18 vch: 1 len: 3) *** \n");
        send_packet_6(18, 1, 3);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_6(4, 1, 1);
        $write("*** send (src: 6 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_6(0, 0, 2);
        $write("*** send (src: 6 dst: 22 vch: 1 len: 5) *** \n");
        send_packet_6(22, 1, 5);
        $write("*** send (src: 6 dst: 11 vch: 1 len: 4) *** \n");
        send_packet_6(11, 1, 4);
        $write("*** send (src: 6 dst: 24 vch: 1 len: 1) *** \n");
        send_packet_6(24, 1, 1);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_6(4, 1, 2);
        $write("*** send (src: 6 dst: 23 vch: 0 len: 4) *** \n");
        send_packet_6(23, 0, 4);
        $write("*** send (src: 6 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_6(17, 0, 3);
        $write("*** send (src: 6 dst: 20 vch: 1 len: 2) *** \n");
        send_packet_6(20, 1, 2);
        $write("*** send (src: 6 dst: 21 vch: 1 len: 5) *** \n");
        send_packet_6(21, 1, 5);
        $write("*** send (src: 6 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_6(24, 0, 2);
        $write("*** send (src: 6 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_6(7, 1, 5);
        $write("*** send (src: 6 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_6(1, 1, 1);
        $write("*** send (src: 6 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_6(15, 0, 3);
        $write("*** send (src: 6 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_6(12, 1, 5);
        $write("*** send (src: 6 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_6(19, 1, 5);
        $write("*** send (src: 6 dst: 15 vch: 1 len: 5) *** \n");
        send_packet_6(15, 1, 5);
        $write("*** send (src: 6 dst: 16 vch: 0 len: 3) *** \n");
        send_packet_6(16, 0, 3);
end 

/* packet generator for n7 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 7 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_7(8, 0, 3);
        $write("*** send (src: 7 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_7(0, 1, 4);
        $write("*** send (src: 7 dst: 6 vch: 0 len: 3) *** \n");
        send_packet_7(6, 0, 3);
        $write("*** send (src: 7 dst: 21 vch: 0 len: 5) *** \n");
        send_packet_7(21, 0, 5);
        $write("*** send (src: 7 dst: 14 vch: 0 len: 3) *** \n");
        send_packet_7(14, 0, 3);
        $write("*** send (src: 7 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_7(19, 1, 5);
        $write("*** send (src: 7 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_7(0, 1, 3);
        $write("*** send (src: 7 dst: 21 vch: 0 len: 1) *** \n");
        send_packet_7(21, 0, 1);
        $write("*** send (src: 7 dst: 10 vch: 1 len: 5) *** \n");
        send_packet_7(10, 1, 5);
        $write("*** send (src: 7 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_7(1, 1, 5);
        $write("*** send (src: 7 dst: 21 vch: 1 len: 3) *** \n");
        send_packet_7(21, 1, 3);
        $write("*** send (src: 7 dst: 4 vch: 0 len: 4) *** \n");
        send_packet_7(4, 0, 4);
        $write("*** send (src: 7 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_7(4, 1, 3);
        $write("*** send (src: 7 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_7(10, 1, 1);
        $write("*** send (src: 7 dst: 12 vch: 1 len: 1) *** \n");
        send_packet_7(12, 1, 1);
        $write("*** send (src: 7 dst: 19 vch: 0 len: 4) *** \n");
        send_packet_7(19, 0, 4);
        $write("*** send (src: 7 dst: 19 vch: 0 len: 3) *** \n");
        send_packet_7(19, 0, 3);
        $write("*** send (src: 7 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_7(2, 1, 2);
        $write("*** send (src: 7 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_7(3, 1, 4);
        $write("*** send (src: 7 dst: 17 vch: 1 len: 1) *** \n");
        send_packet_7(17, 1, 1);
        $write("*** send (src: 7 dst: 20 vch: 0 len: 3) *** \n");
        send_packet_7(20, 0, 3);
        $write("*** send (src: 7 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_7(3, 0, 4);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_7(1, 0, 5);
        $write("*** send (src: 7 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_7(12, 1, 2);
        $write("*** send (src: 7 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_7(0, 1, 4);
        $write("*** send (src: 7 dst: 13 vch: 1 len: 2) *** \n");
        send_packet_7(13, 1, 2);
        $write("*** send (src: 7 dst: 12 vch: 0 len: 5) *** \n");
        send_packet_7(12, 0, 5);
        $write("*** send (src: 7 dst: 19 vch: 0 len: 5) *** \n");
        send_packet_7(19, 0, 5);
        $write("*** send (src: 7 dst: 9 vch: 1 len: 2) *** \n");
        send_packet_7(9, 1, 2);
        $write("*** send (src: 7 dst: 22 vch: 1 len: 4) *** \n");
        send_packet_7(22, 1, 4);
        $write("*** send (src: 7 dst: 13 vch: 0 len: 5) *** \n");
        send_packet_7(13, 0, 5);
        $write("*** send (src: 7 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_7(12, 1, 2);
end 

/* packet generator for n8 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 8 dst: 14 vch: 1 len: 3) *** \n");
        send_packet_8(14, 1, 3);
        $write("*** send (src: 8 dst: 16 vch: 0 len: 2) *** \n");
        send_packet_8(16, 0, 2);
        $write("*** send (src: 8 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_8(5, 0, 4);
        $write("*** send (src: 8 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_8(0, 1, 4);
        $write("*** send (src: 8 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_8(5, 0, 5);
        $write("*** send (src: 8 dst: 19 vch: 0 len: 3) *** \n");
        send_packet_8(19, 0, 3);
        $write("*** send (src: 8 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_8(5, 1, 1);
        $write("*** send (src: 8 dst: 23 vch: 0 len: 5) *** \n");
        send_packet_8(23, 0, 5);
        $write("*** send (src: 8 dst: 16 vch: 0 len: 5) *** \n");
        send_packet_8(16, 0, 5);
        $write("*** send (src: 8 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_8(6, 1, 4);
        $write("*** send (src: 8 dst: 22 vch: 1 len: 5) *** \n");
        send_packet_8(22, 1, 5);
        $write("*** send (src: 8 dst: 15 vch: 1 len: 5) *** \n");
        send_packet_8(15, 1, 5);
        $write("*** send (src: 8 dst: 13 vch: 1 len: 3) *** \n");
        send_packet_8(13, 1, 3);
        $write("*** send (src: 8 dst: 10 vch: 0 len: 4) *** \n");
        send_packet_8(10, 0, 4);
        $write("*** send (src: 8 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_8(1, 1, 2);
        $write("*** send (src: 8 dst: 14 vch: 1 len: 2) *** \n");
        send_packet_8(14, 1, 2);
        $write("*** send (src: 8 dst: 11 vch: 1 len: 2) *** \n");
        send_packet_8(11, 1, 2);
        $write("*** send (src: 8 dst: 1 vch: 1 len: 4) *** \n");
        send_packet_8(1, 1, 4);
        $write("*** send (src: 8 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_8(5, 0, 1);
        $write("*** send (src: 8 dst: 10 vch: 1 len: 4) *** \n");
        send_packet_8(10, 1, 4);
        $write("*** send (src: 8 dst: 10 vch: 1 len: 2) *** \n");
        send_packet_8(10, 1, 2);
        $write("*** send (src: 8 dst: 20 vch: 1 len: 4) *** \n");
        send_packet_8(20, 1, 4);
        $write("*** send (src: 8 dst: 10 vch: 1 len: 5) *** \n");
        send_packet_8(10, 1, 5);
        $write("*** send (src: 8 dst: 6 vch: 0 len: 5) *** \n");
        send_packet_8(6, 0, 5);
        $write("*** send (src: 8 dst: 15 vch: 1 len: 1) *** \n");
        send_packet_8(15, 1, 1);
        $write("*** send (src: 8 dst: 18 vch: 0 len: 5) *** \n");
        send_packet_8(18, 0, 5);
        $write("*** send (src: 8 dst: 18 vch: 0 len: 3) *** \n");
        send_packet_8(18, 0, 3);
        $write("*** send (src: 8 dst: 15 vch: 1 len: 2) *** \n");
        send_packet_8(15, 1, 2);
        $write("*** send (src: 8 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_8(5, 1, 1);
        $write("*** send (src: 8 dst: 16 vch: 1 len: 4) *** \n");
        send_packet_8(16, 1, 4);
        $write("*** send (src: 8 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_8(12, 1, 5);
        $write("*** send (src: 8 dst: 3 vch: 0 len: 5) *** \n");
        send_packet_8(3, 0, 5);
end 

/* packet generator for n9 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 9 dst: 18 vch: 0 len: 3) *** \n");
        send_packet_9(18, 0, 3);
        $write("*** send (src: 9 dst: 18 vch: 1 len: 5) *** \n");
        send_packet_9(18, 1, 5);
        $write("*** send (src: 9 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_9(15, 0, 4);
        $write("*** send (src: 9 dst: 20 vch: 0 len: 3) *** \n");
        send_packet_9(20, 0, 3);
        $write("*** send (src: 9 dst: 11 vch: 1 len: 4) *** \n");
        send_packet_9(11, 1, 4);
        $write("*** send (src: 9 dst: 19 vch: 1 len: 4) *** \n");
        send_packet_9(19, 1, 4);
        $write("*** send (src: 9 dst: 10 vch: 1 len: 2) *** \n");
        send_packet_9(10, 1, 2);
        $write("*** send (src: 9 dst: 10 vch: 0 len: 1) *** \n");
        send_packet_9(10, 0, 1);
        $write("*** send (src: 9 dst: 21 vch: 0 len: 4) *** \n");
        send_packet_9(21, 0, 4);
        $write("*** send (src: 9 dst: 22 vch: 0 len: 5) *** \n");
        send_packet_9(22, 0, 5);
        $write("*** send (src: 9 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_9(14, 0, 2);
        $write("*** send (src: 9 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_9(3, 1, 2);
        $write("*** send (src: 9 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_9(1, 1, 3);
        $write("*** send (src: 9 dst: 19 vch: 1 len: 1) *** \n");
        send_packet_9(19, 1, 1);
        $write("*** send (src: 9 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_9(2, 1, 2);
        $write("*** send (src: 9 dst: 8 vch: 1 len: 4) *** \n");
        send_packet_9(8, 1, 4);
        $write("*** send (src: 9 dst: 6 vch: 0 len: 3) *** \n");
        send_packet_9(6, 0, 3);
        $write("*** send (src: 9 dst: 15 vch: 0 len: 5) *** \n");
        send_packet_9(15, 0, 5);
        $write("*** send (src: 9 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_9(0, 0, 2);
        $write("*** send (src: 9 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_9(14, 0, 2);
        $write("*** send (src: 9 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_9(0, 0, 1);
        $write("*** send (src: 9 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_9(8, 0, 1);
        $write("*** send (src: 9 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_9(8, 1, 5);
        $write("*** send (src: 9 dst: 20 vch: 0 len: 5) *** \n");
        send_packet_9(20, 0, 5);
        $write("*** send (src: 9 dst: 7 vch: 1 len: 2) *** \n");
        send_packet_9(7, 1, 2);
        $write("*** send (src: 9 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_9(2, 1, 3);
        $write("*** send (src: 9 dst: 17 vch: 1 len: 5) *** \n");
        send_packet_9(17, 1, 5);
        $write("*** send (src: 9 dst: 12 vch: 0 len: 3) *** \n");
        send_packet_9(12, 0, 3);
        $write("*** send (src: 9 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_9(19, 1, 5);
        $write("*** send (src: 9 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_9(1, 1, 1);
        $write("*** send (src: 9 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_9(1, 0, 1);
        $write("*** send (src: 9 dst: 10 vch: 0 len: 3) *** \n");
        send_packet_9(10, 0, 3);
end 

/* packet generator for n10 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 10 dst: 6 vch: 1 len: 3) *** \n");
        send_packet_10(6, 1, 3);
        $write("*** send (src: 10 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_10(20, 1, 3);
        $write("*** send (src: 10 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_10(15, 0, 3);
        $write("*** send (src: 10 dst: 21 vch: 0 len: 4) *** \n");
        send_packet_10(21, 0, 4);
        $write("*** send (src: 10 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_10(15, 0, 3);
        $write("*** send (src: 10 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_10(8, 0, 1);
        $write("*** send (src: 10 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_10(3, 1, 3);
        $write("*** send (src: 10 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_10(15, 0, 4);
        $write("*** send (src: 10 dst: 15 vch: 0 len: 5) *** \n");
        send_packet_10(15, 0, 5);
        $write("*** send (src: 10 dst: 22 vch: 0 len: 5) *** \n");
        send_packet_10(22, 0, 5);
        $write("*** send (src: 10 dst: 19 vch: 1 len: 3) *** \n");
        send_packet_10(19, 1, 3);
        $write("*** send (src: 10 dst: 13 vch: 1 len: 3) *** \n");
        send_packet_10(13, 1, 3);
        $write("*** send (src: 10 dst: 15 vch: 1 len: 4) *** \n");
        send_packet_10(15, 1, 4);
        $write("*** send (src: 10 dst: 20 vch: 0 len: 5) *** \n");
        send_packet_10(20, 0, 5);
        $write("*** send (src: 10 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_10(6, 1, 5);
        $write("*** send (src: 10 dst: 6 vch: 1 len: 3) *** \n");
        send_packet_10(6, 1, 3);
        $write("*** send (src: 10 dst: 23 vch: 0 len: 2) *** \n");
        send_packet_10(23, 0, 2);
        $write("*** send (src: 10 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_10(20, 1, 3);
        $write("*** send (src: 10 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_10(7, 0, 4);
        $write("*** send (src: 10 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_10(8, 1, 3);
        $write("*** send (src: 10 dst: 16 vch: 1 len: 5) *** \n");
        send_packet_10(16, 1, 5);
        $write("*** send (src: 10 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_10(12, 1, 5);
        $write("*** send (src: 10 dst: 14 vch: 1 len: 1) *** \n");
        send_packet_10(14, 1, 1);
        $write("*** send (src: 10 dst: 19 vch: 1 len: 3) *** \n");
        send_packet_10(19, 1, 3);
        $write("*** send (src: 10 dst: 12 vch: 0 len: 1) *** \n");
        send_packet_10(12, 0, 1);
        $write("*** send (src: 10 dst: 15 vch: 0 len: 1) *** \n");
        send_packet_10(15, 0, 1);
        $write("*** send (src: 10 dst: 23 vch: 1 len: 4) *** \n");
        send_packet_10(23, 1, 4);
        $write("*** send (src: 10 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_10(2, 1, 3);
        $write("*** send (src: 10 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_10(3, 0, 4);
        $write("*** send (src: 10 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_10(0, 1, 4);
        $write("*** send (src: 10 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_10(0, 1, 3);
        $write("*** send (src: 10 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_10(7, 1, 1);
end 

/* packet generator for n11 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 11 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_11(2, 1, 2);
        $write("*** send (src: 11 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_11(4, 0, 3);
        $write("*** send (src: 11 dst: 15 vch: 0 len: 2) *** \n");
        send_packet_11(15, 0, 2);
        $write("*** send (src: 11 dst: 6 vch: 1 len: 3) *** \n");
        send_packet_11(6, 1, 3);
        $write("*** send (src: 11 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_11(4, 0, 5);
        $write("*** send (src: 11 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_11(1, 1, 1);
        $write("*** send (src: 11 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_11(12, 1, 5);
        $write("*** send (src: 11 dst: 10 vch: 0 len: 4) *** \n");
        send_packet_11(10, 0, 4);
        $write("*** send (src: 11 dst: 17 vch: 1 len: 1) *** \n");
        send_packet_11(17, 1, 1);
        $write("*** send (src: 11 dst: 19 vch: 1 len: 2) *** \n");
        send_packet_11(19, 1, 2);
        $write("*** send (src: 11 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_11(15, 0, 3);
        $write("*** send (src: 11 dst: 7 vch: 0 len: 2) *** \n");
        send_packet_11(7, 0, 2);
        $write("*** send (src: 11 dst: 12 vch: 1 len: 1) *** \n");
        send_packet_11(12, 1, 1);
        $write("*** send (src: 11 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_11(0, 0, 2);
        $write("*** send (src: 11 dst: 20 vch: 1 len: 4) *** \n");
        send_packet_11(20, 1, 4);
        $write("*** send (src: 11 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_11(5, 0, 3);
        $write("*** send (src: 11 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_11(5, 0, 4);
        $write("*** send (src: 11 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_11(19, 1, 5);
        $write("*** send (src: 11 dst: 19 vch: 0 len: 5) *** \n");
        send_packet_11(19, 0, 5);
        $write("*** send (src: 11 dst: 14 vch: 1 len: 1) *** \n");
        send_packet_11(14, 1, 1);
        $write("*** send (src: 11 dst: 12 vch: 0 len: 5) *** \n");
        send_packet_11(12, 0, 5);
        $write("*** send (src: 11 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_11(1, 1, 5);
        $write("*** send (src: 11 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_11(15, 0, 4);
        $write("*** send (src: 11 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_11(2, 1, 4);
        $write("*** send (src: 11 dst: 13 vch: 1 len: 2) *** \n");
        send_packet_11(13, 1, 2);
        $write("*** send (src: 11 dst: 15 vch: 1 len: 1) *** \n");
        send_packet_11(15, 1, 1);
        $write("*** send (src: 11 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_11(3, 1, 3);
        $write("*** send (src: 11 dst: 24 vch: 1 len: 2) *** \n");
        send_packet_11(24, 1, 2);
        $write("*** send (src: 11 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_11(20, 1, 3);
        $write("*** send (src: 11 dst: 14 vch: 1 len: 4) *** \n");
        send_packet_11(14, 1, 4);
        $write("*** send (src: 11 dst: 14 vch: 0 len: 4) *** \n");
        send_packet_11(14, 0, 4);
        $write("*** send (src: 11 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_11(0, 0, 5);
end 

/* packet generator for n12 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 12 dst: 11 vch: 1 len: 5) *** \n");
        send_packet_12(11, 1, 5);
        $write("*** send (src: 12 dst: 23 vch: 0 len: 3) *** \n");
        send_packet_12(23, 0, 3);
        $write("*** send (src: 12 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_12(16, 1, 1);
        $write("*** send (src: 12 dst: 15 vch: 0 len: 1) *** \n");
        send_packet_12(15, 0, 1);
        $write("*** send (src: 12 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_12(7, 1, 1);
        $write("*** send (src: 12 dst: 9 vch: 1 len: 3) *** \n");
        send_packet_12(9, 1, 3);
        $write("*** send (src: 12 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_12(7, 0, 4);
        $write("*** send (src: 12 dst: 24 vch: 0 len: 4) *** \n");
        send_packet_12(24, 0, 4);
        $write("*** send (src: 12 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_12(7, 0, 4);
        $write("*** send (src: 12 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_12(2, 0, 4);
        $write("*** send (src: 12 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_12(6, 1, 4);
        $write("*** send (src: 12 dst: 18 vch: 0 len: 2) *** \n");
        send_packet_12(18, 0, 2);
        $write("*** send (src: 12 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_12(0, 1, 2);
        $write("*** send (src: 12 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_12(17, 0, 3);
        $write("*** send (src: 12 dst: 14 vch: 1 len: 3) *** \n");
        send_packet_12(14, 1, 3);
        $write("*** send (src: 12 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_12(0, 1, 3);
        $write("*** send (src: 12 dst: 21 vch: 1 len: 1) *** \n");
        send_packet_12(21, 1, 1);
        $write("*** send (src: 12 dst: 5 vch: 1 len: 2) *** \n");
        send_packet_12(5, 1, 2);
        $write("*** send (src: 12 dst: 19 vch: 0 len: 5) *** \n");
        send_packet_12(19, 0, 5);
        $write("*** send (src: 12 dst: 22 vch: 1 len: 5) *** \n");
        send_packet_12(22, 1, 5);
        $write("*** send (src: 12 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_12(4, 1, 4);
        $write("*** send (src: 12 dst: 22 vch: 1 len: 1) *** \n");
        send_packet_12(22, 1, 1);
        $write("*** send (src: 12 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_12(6, 1, 2);
        $write("*** send (src: 12 dst: 23 vch: 0 len: 4) *** \n");
        send_packet_12(23, 0, 4);
        $write("*** send (src: 12 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_12(1, 0, 5);
        $write("*** send (src: 12 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_12(2, 1, 5);
        $write("*** send (src: 12 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_12(6, 0, 1);
        $write("*** send (src: 12 dst: 17 vch: 1 len: 3) *** \n");
        send_packet_12(17, 1, 3);
        $write("*** send (src: 12 dst: 10 vch: 1 len: 3) *** \n");
        send_packet_12(10, 1, 3);
        $write("*** send (src: 12 dst: 13 vch: 1 len: 3) *** \n");
        send_packet_12(13, 1, 3);
        $write("*** send (src: 12 dst: 19 vch: 1 len: 4) *** \n");
        send_packet_12(19, 1, 4);
        $write("*** send (src: 12 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_12(10, 1, 1);
end 

/* packet generator for n13 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 13 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_13(1, 0, 5);
        $write("*** send (src: 13 dst: 24 vch: 1 len: 1) *** \n");
        send_packet_13(24, 1, 1);
        $write("*** send (src: 13 dst: 19 vch: 0 len: 1) *** \n");
        send_packet_13(19, 0, 1);
        $write("*** send (src: 13 dst: 20 vch: 1 len: 2) *** \n");
        send_packet_13(20, 1, 2);
        $write("*** send (src: 13 dst: 9 vch: 1 len: 2) *** \n");
        send_packet_13(9, 1, 2);
        $write("*** send (src: 13 dst: 14 vch: 1 len: 2) *** \n");
        send_packet_13(14, 1, 2);
        $write("*** send (src: 13 dst: 24 vch: 0 len: 3) *** \n");
        send_packet_13(24, 0, 3);
        $write("*** send (src: 13 dst: 19 vch: 0 len: 1) *** \n");
        send_packet_13(19, 0, 1);
        $write("*** send (src: 13 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_13(10, 1, 1);
        $write("*** send (src: 13 dst: 21 vch: 1 len: 1) *** \n");
        send_packet_13(21, 1, 1);
        $write("*** send (src: 13 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_13(8, 1, 5);
        $write("*** send (src: 13 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_13(4, 1, 1);
        $write("*** send (src: 13 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_13(6, 1, 5);
        $write("*** send (src: 13 dst: 12 vch: 0 len: 2) *** \n");
        send_packet_13(12, 0, 2);
        $write("*** send (src: 13 dst: 17 vch: 0 len: 2) *** \n");
        send_packet_13(17, 0, 2);
        $write("*** send (src: 13 dst: 19 vch: 0 len: 2) *** \n");
        send_packet_13(19, 0, 2);
        $write("*** send (src: 13 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_13(1, 1, 1);
        $write("*** send (src: 13 dst: 24 vch: 0 len: 3) *** \n");
        send_packet_13(24, 0, 3);
        $write("*** send (src: 13 dst: 17 vch: 1 len: 3) *** \n");
        send_packet_13(17, 1, 3);
        $write("*** send (src: 13 dst: 6 vch: 1 len: 1) *** \n");
        send_packet_13(6, 1, 1);
        $write("*** send (src: 13 dst: 2 vch: 0 len: 1) *** \n");
        send_packet_13(2, 0, 1);
        $write("*** send (src: 13 dst: 16 vch: 0 len: 2) *** \n");
        send_packet_13(16, 0, 2);
        $write("*** send (src: 13 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_13(4, 1, 1);
        $write("*** send (src: 13 dst: 2 vch: 0 len: 1) *** \n");
        send_packet_13(2, 0, 1);
        $write("*** send (src: 13 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_13(6, 1, 5);
        $write("*** send (src: 13 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_13(17, 0, 3);
        $write("*** send (src: 13 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_13(1, 0, 1);
        $write("*** send (src: 13 dst: 10 vch: 0 len: 5) *** \n");
        send_packet_13(10, 0, 5);
        $write("*** send (src: 13 dst: 17 vch: 1 len: 5) *** \n");
        send_packet_13(17, 1, 5);
        $write("*** send (src: 13 dst: 17 vch: 1 len: 2) *** \n");
        send_packet_13(17, 1, 2);
        $write("*** send (src: 13 dst: 12 vch: 0 len: 5) *** \n");
        send_packet_13(12, 0, 5);
        $write("*** send (src: 13 dst: 18 vch: 0 len: 1) *** \n");
        send_packet_13(18, 0, 1);
end 

/* packet generator for n14 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 14 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_14(18, 1, 4);
        $write("*** send (src: 14 dst: 8 vch: 0 len: 4) *** \n");
        send_packet_14(8, 0, 4);
        $write("*** send (src: 14 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_14(11, 0, 2);
        $write("*** send (src: 14 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_14(4, 0, 1);
        $write("*** send (src: 14 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_14(11, 0, 2);
        $write("*** send (src: 14 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_14(10, 0, 2);
        $write("*** send (src: 14 dst: 10 vch: 1 len: 2) *** \n");
        send_packet_14(10, 1, 2);
        $write("*** send (src: 14 dst: 21 vch: 1 len: 3) *** \n");
        send_packet_14(21, 1, 3);
        $write("*** send (src: 14 dst: 15 vch: 1 len: 2) *** \n");
        send_packet_14(15, 1, 2);
        $write("*** send (src: 14 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_14(20, 1, 3);
        $write("*** send (src: 14 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_14(2, 1, 5);
        $write("*** send (src: 14 dst: 17 vch: 1 len: 3) *** \n");
        send_packet_14(17, 1, 3);
        $write("*** send (src: 14 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_14(1, 1, 2);
        $write("*** send (src: 14 dst: 21 vch: 0 len: 1) *** \n");
        send_packet_14(21, 0, 1);
        $write("*** send (src: 14 dst: 5 vch: 1 len: 4) *** \n");
        send_packet_14(5, 1, 4);
        $write("*** send (src: 14 dst: 6 vch: 0 len: 4) *** \n");
        send_packet_14(6, 0, 4);
        $write("*** send (src: 14 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_14(5, 0, 4);
        $write("*** send (src: 14 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_14(5, 0, 2);
        $write("*** send (src: 14 dst: 10 vch: 1 len: 5) *** \n");
        send_packet_14(10, 1, 5);
        $write("*** send (src: 14 dst: 20 vch: 1 len: 3) *** \n");
        send_packet_14(20, 1, 3);
        $write("*** send (src: 14 dst: 18 vch: 1 len: 3) *** \n");
        send_packet_14(18, 1, 3);
        $write("*** send (src: 14 dst: 11 vch: 1 len: 4) *** \n");
        send_packet_14(11, 1, 4);
        $write("*** send (src: 14 dst: 16 vch: 0 len: 3) *** \n");
        send_packet_14(16, 0, 3);
        $write("*** send (src: 14 dst: 0 vch: 0 len: 4) *** \n");
        send_packet_14(0, 0, 4);
        $write("*** send (src: 14 dst: 18 vch: 1 len: 5) *** \n");
        send_packet_14(18, 1, 5);
        $write("*** send (src: 14 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_14(8, 0, 1);
        $write("*** send (src: 14 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_14(0, 0, 5);
        $write("*** send (src: 14 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_14(4, 1, 3);
        $write("*** send (src: 14 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_14(11, 0, 2);
        $write("*** send (src: 14 dst: 21 vch: 1 len: 1) *** \n");
        send_packet_14(21, 1, 1);
        $write("*** send (src: 14 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_14(2, 0, 5);
        $write("*** send (src: 14 dst: 22 vch: 1 len: 4) *** \n");
        send_packet_14(22, 1, 4);
end 

/* packet generator for n15 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 15 dst: 17 vch: 0 len: 5) *** \n");
        send_packet_15(17, 0, 5);
        $write("*** send (src: 15 dst: 17 vch: 1 len: 2) *** \n");
        send_packet_15(17, 1, 2);
        $write("*** send (src: 15 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_15(5, 0, 2);
        $write("*** send (src: 15 dst: 9 vch: 0 len: 5) *** \n");
        send_packet_15(9, 0, 5);
        $write("*** send (src: 15 dst: 20 vch: 0 len: 5) *** \n");
        send_packet_15(20, 0, 5);
        $write("*** send (src: 15 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_15(2, 1, 5);
        $write("*** send (src: 15 dst: 21 vch: 1 len: 4) *** \n");
        send_packet_15(21, 1, 4);
        $write("*** send (src: 15 dst: 20 vch: 0 len: 4) *** \n");
        send_packet_15(20, 0, 4);
        $write("*** send (src: 15 dst: 19 vch: 0 len: 1) *** \n");
        send_packet_15(19, 0, 1);
        $write("*** send (src: 15 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_15(2, 0, 4);
        $write("*** send (src: 15 dst: 12 vch: 1 len: 1) *** \n");
        send_packet_15(12, 1, 1);
        $write("*** send (src: 15 dst: 18 vch: 0 len: 2) *** \n");
        send_packet_15(18, 0, 2);
        $write("*** send (src: 15 dst: 23 vch: 1 len: 1) *** \n");
        send_packet_15(23, 1, 1);
        $write("*** send (src: 15 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_15(2, 0, 4);
        $write("*** send (src: 15 dst: 10 vch: 1 len: 4) *** \n");
        send_packet_15(10, 1, 4);
        $write("*** send (src: 15 dst: 3 vch: 0 len: 2) *** \n");
        send_packet_15(3, 0, 2);
        $write("*** send (src: 15 dst: 16 vch: 1 len: 2) *** \n");
        send_packet_15(16, 1, 2);
        $write("*** send (src: 15 dst: 17 vch: 0 len: 1) *** \n");
        send_packet_15(17, 0, 1);
        $write("*** send (src: 15 dst: 10 vch: 1 len: 3) *** \n");
        send_packet_15(10, 1, 3);
        $write("*** send (src: 15 dst: 23 vch: 0 len: 5) *** \n");
        send_packet_15(23, 0, 5);
        $write("*** send (src: 15 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_15(1, 1, 1);
        $write("*** send (src: 15 dst: 20 vch: 1 len: 4) *** \n");
        send_packet_15(20, 1, 4);
        $write("*** send (src: 15 dst: 11 vch: 1 len: 1) *** \n");
        send_packet_15(11, 1, 1);
        $write("*** send (src: 15 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_15(0, 1, 2);
        $write("*** send (src: 15 dst: 12 vch: 0 len: 3) *** \n");
        send_packet_15(12, 0, 3);
        $write("*** send (src: 15 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_15(8, 0, 2);
        $write("*** send (src: 15 dst: 21 vch: 1 len: 5) *** \n");
        send_packet_15(21, 1, 5);
        $write("*** send (src: 15 dst: 7 vch: 0 len: 1) *** \n");
        send_packet_15(7, 0, 1);
        $write("*** send (src: 15 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_15(3, 1, 4);
        $write("*** send (src: 15 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_15(0, 1, 2);
        $write("*** send (src: 15 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_15(2, 0, 2);
        $write("*** send (src: 15 dst: 9 vch: 0 len: 5) *** \n");
        send_packet_15(9, 0, 5);
end 

/* packet generator for n16 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 16 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_16(5, 0, 3);
        $write("*** send (src: 16 dst: 15 vch: 1 len: 2) *** \n");
        send_packet_16(15, 1, 2);
        $write("*** send (src: 16 dst: 21 vch: 0 len: 4) *** \n");
        send_packet_16(21, 0, 4);
        $write("*** send (src: 16 dst: 18 vch: 0 len: 5) *** \n");
        send_packet_16(18, 0, 5);
        $write("*** send (src: 16 dst: 23 vch: 1 len: 2) *** \n");
        send_packet_16(23, 1, 2);
        $write("*** send (src: 16 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_16(7, 1, 5);
        $write("*** send (src: 16 dst: 1 vch: 0 len: 4) *** \n");
        send_packet_16(1, 0, 4);
        $write("*** send (src: 16 dst: 21 vch: 1 len: 5) *** \n");
        send_packet_16(21, 1, 5);
        $write("*** send (src: 16 dst: 17 vch: 0 len: 2) *** \n");
        send_packet_16(17, 0, 2);
        $write("*** send (src: 16 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_16(3, 0, 3);
        $write("*** send (src: 16 dst: 22 vch: 1 len: 5) *** \n");
        send_packet_16(22, 1, 5);
        $write("*** send (src: 16 dst: 14 vch: 0 len: 3) *** \n");
        send_packet_16(14, 0, 3);
        $write("*** send (src: 16 dst: 21 vch: 1 len: 3) *** \n");
        send_packet_16(21, 1, 3);
        $write("*** send (src: 16 dst: 14 vch: 0 len: 5) *** \n");
        send_packet_16(14, 0, 5);
        $write("*** send (src: 16 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_16(7, 1, 3);
        $write("*** send (src: 16 dst: 20 vch: 0 len: 4) *** \n");
        send_packet_16(20, 0, 4);
        $write("*** send (src: 16 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_16(9, 0, 3);
        $write("*** send (src: 16 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_16(10, 0, 2);
        $write("*** send (src: 16 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_16(4, 0, 1);
        $write("*** send (src: 16 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_16(2, 0, 5);
        $write("*** send (src: 16 dst: 7 vch: 0 len: 1) *** \n");
        send_packet_16(7, 0, 1);
        $write("*** send (src: 16 dst: 11 vch: 1 len: 1) *** \n");
        send_packet_16(11, 1, 1);
        $write("*** send (src: 16 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_16(8, 1, 5);
        $write("*** send (src: 16 dst: 2 vch: 1 len: 1) *** \n");
        send_packet_16(2, 1, 1);
        $write("*** send (src: 16 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_16(17, 0, 3);
        $write("*** send (src: 16 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_16(3, 1, 2);
        $write("*** send (src: 16 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_16(8, 1, 5);
        $write("*** send (src: 16 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_16(11, 0, 2);
        $write("*** send (src: 16 dst: 12 vch: 1 len: 4) *** \n");
        send_packet_16(12, 1, 4);
        $write("*** send (src: 16 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_16(22, 1, 2);
        $write("*** send (src: 16 dst: 11 vch: 0 len: 3) *** \n");
        send_packet_16(11, 0, 3);
        $write("*** send (src: 16 dst: 24 vch: 1 len: 1) *** \n");
        send_packet_16(24, 1, 1);
end 

/* packet generator for n17 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 17 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_17(3, 1, 1);
        $write("*** send (src: 17 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_17(1, 0, 5);
        $write("*** send (src: 17 dst: 18 vch: 1 len: 5) *** \n");
        send_packet_17(18, 1, 5);
        $write("*** send (src: 17 dst: 16 vch: 1 len: 5) *** \n");
        send_packet_17(16, 1, 5);
        $write("*** send (src: 17 dst: 11 vch: 1 len: 2) *** \n");
        send_packet_17(11, 1, 2);
        $write("*** send (src: 17 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_17(0, 1, 2);
        $write("*** send (src: 17 dst: 19 vch: 1 len: 2) *** \n");
        send_packet_17(19, 1, 2);
        $write("*** send (src: 17 dst: 16 vch: 1 len: 5) *** \n");
        send_packet_17(16, 1, 5);
        $write("*** send (src: 17 dst: 2 vch: 0 len: 3) *** \n");
        send_packet_17(2, 0, 3);
        $write("*** send (src: 17 dst: 15 vch: 0 len: 3) *** \n");
        send_packet_17(15, 0, 3);
        $write("*** send (src: 17 dst: 14 vch: 0 len: 1) *** \n");
        send_packet_17(14, 0, 1);
        $write("*** send (src: 17 dst: 16 vch: 1 len: 2) *** \n");
        send_packet_17(16, 1, 2);
        $write("*** send (src: 17 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_17(4, 1, 5);
        $write("*** send (src: 17 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_17(1, 1, 3);
        $write("*** send (src: 17 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_17(12, 1, 5);
        $write("*** send (src: 17 dst: 11 vch: 0 len: 2) *** \n");
        send_packet_17(11, 0, 2);
        $write("*** send (src: 17 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_17(0, 1, 1);
        $write("*** send (src: 17 dst: 16 vch: 1 len: 5) *** \n");
        send_packet_17(16, 1, 5);
        $write("*** send (src: 17 dst: 22 vch: 1 len: 3) *** \n");
        send_packet_17(22, 1, 3);
        $write("*** send (src: 17 dst: 20 vch: 0 len: 3) *** \n");
        send_packet_17(20, 0, 3);
        $write("*** send (src: 17 dst: 13 vch: 0 len: 2) *** \n");
        send_packet_17(13, 0, 2);
        $write("*** send (src: 17 dst: 16 vch: 0 len: 4) *** \n");
        send_packet_17(16, 0, 4);
        $write("*** send (src: 17 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_17(3, 1, 1);
        $write("*** send (src: 17 dst: 19 vch: 1 len: 5) *** \n");
        send_packet_17(19, 1, 5);
        $write("*** send (src: 17 dst: 21 vch: 1 len: 2) *** \n");
        send_packet_17(21, 1, 2);
        $write("*** send (src: 17 dst: 21 vch: 1 len: 2) *** \n");
        send_packet_17(21, 1, 2);
        $write("*** send (src: 17 dst: 22 vch: 1 len: 3) *** \n");
        send_packet_17(22, 1, 3);
        $write("*** send (src: 17 dst: 23 vch: 0 len: 5) *** \n");
        send_packet_17(23, 0, 5);
        $write("*** send (src: 17 dst: 15 vch: 0 len: 2) *** \n");
        send_packet_17(15, 0, 2);
        $write("*** send (src: 17 dst: 19 vch: 0 len: 1) *** \n");
        send_packet_17(19, 0, 1);
        $write("*** send (src: 17 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_17(5, 0, 3);
        $write("*** send (src: 17 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_17(3, 0, 1);
end 

/* packet generator for n18 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 18 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_18(2, 1, 2);
        $write("*** send (src: 18 dst: 16 vch: 1 len: 3) *** \n");
        send_packet_18(16, 1, 3);
        $write("*** send (src: 18 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_18(4, 1, 1);
        $write("*** send (src: 18 dst: 16 vch: 0 len: 1) *** \n");
        send_packet_18(16, 0, 1);
        $write("*** send (src: 18 dst: 9 vch: 1 len: 2) *** \n");
        send_packet_18(9, 1, 2);
        $write("*** send (src: 18 dst: 7 vch: 0 len: 5) *** \n");
        send_packet_18(7, 0, 5);
        $write("*** send (src: 18 dst: 13 vch: 0 len: 3) *** \n");
        send_packet_18(13, 0, 3);
        $write("*** send (src: 18 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_18(0, 1, 3);
        $write("*** send (src: 18 dst: 22 vch: 0 len: 3) *** \n");
        send_packet_18(22, 0, 3);
        $write("*** send (src: 18 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_18(0, 0, 1);
        $write("*** send (src: 18 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_18(24, 0, 2);
        $write("*** send (src: 18 dst: 17 vch: 0 len: 1) *** \n");
        send_packet_18(17, 0, 1);
        $write("*** send (src: 18 dst: 14 vch: 1 len: 1) *** \n");
        send_packet_18(14, 1, 1);
        $write("*** send (src: 18 dst: 20 vch: 1 len: 5) *** \n");
        send_packet_18(20, 1, 5);
        $write("*** send (src: 18 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_18(3, 1, 4);
        $write("*** send (src: 18 dst: 14 vch: 0 len: 5) *** \n");
        send_packet_18(14, 0, 5);
        $write("*** send (src: 18 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_18(2, 1, 3);
        $write("*** send (src: 18 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_18(1, 1, 3);
        $write("*** send (src: 18 dst: 12 vch: 1 len: 3) *** \n");
        send_packet_18(12, 1, 3);
        $write("*** send (src: 18 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_18(24, 0, 2);
        $write("*** send (src: 18 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_18(16, 1, 1);
        $write("*** send (src: 18 dst: 11 vch: 0 len: 3) *** \n");
        send_packet_18(11, 0, 3);
        $write("*** send (src: 18 dst: 23 vch: 0 len: 3) *** \n");
        send_packet_18(23, 0, 3);
        $write("*** send (src: 18 dst: 24 vch: 0 len: 1) *** \n");
        send_packet_18(24, 0, 1);
        $write("*** send (src: 18 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_18(22, 1, 2);
        $write("*** send (src: 18 dst: 10 vch: 0 len: 1) *** \n");
        send_packet_18(10, 0, 1);
        $write("*** send (src: 18 dst: 11 vch: 0 len: 1) *** \n");
        send_packet_18(11, 0, 1);
        $write("*** send (src: 18 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_18(4, 0, 1);
        $write("*** send (src: 18 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_18(4, 1, 5);
        $write("*** send (src: 18 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_18(3, 0, 4);
        $write("*** send (src: 18 dst: 16 vch: 1 len: 4) *** \n");
        send_packet_18(16, 1, 4);
        $write("*** send (src: 18 dst: 23 vch: 1 len: 2) *** \n");
        send_packet_18(23, 1, 2);
end 

/* packet generator for n19 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 19 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_19(4, 0, 5);
        $write("*** send (src: 19 dst: 24 vch: 0 len: 5) *** \n");
        send_packet_19(24, 0, 5);
        $write("*** send (src: 19 dst: 18 vch: 1 len: 2) *** \n");
        send_packet_19(18, 1, 2);
        $write("*** send (src: 19 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_19(0, 0, 3);
        $write("*** send (src: 19 dst: 24 vch: 1 len: 2) *** \n");
        send_packet_19(24, 1, 2);
        $write("*** send (src: 19 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_19(3, 0, 1);
        $write("*** send (src: 19 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_19(1, 0, 5);
        $write("*** send (src: 19 dst: 12 vch: 1 len: 4) *** \n");
        send_packet_19(12, 1, 4);
        $write("*** send (src: 19 dst: 18 vch: 0 len: 1) *** \n");
        send_packet_19(18, 0, 1);
        $write("*** send (src: 19 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_19(12, 1, 2);
        $write("*** send (src: 19 dst: 6 vch: 0 len: 5) *** \n");
        send_packet_19(6, 0, 5);
        $write("*** send (src: 19 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_19(8, 1, 5);
        $write("*** send (src: 19 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_19(5, 1, 1);
        $write("*** send (src: 19 dst: 22 vch: 0 len: 1) *** \n");
        send_packet_19(22, 0, 1);
        $write("*** send (src: 19 dst: 12 vch: 1 len: 5) *** \n");
        send_packet_19(12, 1, 5);
        $write("*** send (src: 19 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_19(22, 1, 2);
        $write("*** send (src: 19 dst: 15 vch: 0 len: 1) *** \n");
        send_packet_19(15, 0, 1);
        $write("*** send (src: 19 dst: 18 vch: 0 len: 2) *** \n");
        send_packet_19(18, 0, 2);
        $write("*** send (src: 19 dst: 6 vch: 0 len: 5) *** \n");
        send_packet_19(6, 0, 5);
        $write("*** send (src: 19 dst: 12 vch: 0 len: 5) *** \n");
        send_packet_19(12, 0, 5);
        $write("*** send (src: 19 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_19(5, 0, 2);
        $write("*** send (src: 19 dst: 20 vch: 1 len: 1) *** \n");
        send_packet_19(20, 1, 1);
        $write("*** send (src: 19 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_19(0, 0, 1);
        $write("*** send (src: 19 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_19(22, 1, 2);
        $write("*** send (src: 19 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_19(2, 0, 2);
        $write("*** send (src: 19 dst: 20 vch: 0 len: 3) *** \n");
        send_packet_19(20, 0, 3);
        $write("*** send (src: 19 dst: 10 vch: 0 len: 4) *** \n");
        send_packet_19(10, 0, 4);
        $write("*** send (src: 19 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_19(5, 0, 1);
        $write("*** send (src: 19 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_19(3, 1, 4);
        $write("*** send (src: 19 dst: 18 vch: 1 len: 2) *** \n");
        send_packet_19(18, 1, 2);
        $write("*** send (src: 19 dst: 18 vch: 1 len: 3) *** \n");
        send_packet_19(18, 1, 3);
        $write("*** send (src: 19 dst: 16 vch: 1 len: 5) *** \n");
        send_packet_19(16, 1, 5);
end 

/* packet generator for n20 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 20 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_20(1, 0, 2);
        $write("*** send (src: 20 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_20(6, 1, 5);
        $write("*** send (src: 20 dst: 16 vch: 1 len: 2) *** \n");
        send_packet_20(16, 1, 2);
        $write("*** send (src: 20 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_20(5, 0, 5);
        $write("*** send (src: 20 dst: 8 vch: 0 len: 4) *** \n");
        send_packet_20(8, 0, 4);
        $write("*** send (src: 20 dst: 24 vch: 0 len: 1) *** \n");
        send_packet_20(24, 0, 1);
        $write("*** send (src: 20 dst: 5 vch: 1 len: 4) *** \n");
        send_packet_20(5, 1, 4);
        $write("*** send (src: 20 dst: 23 vch: 0 len: 1) *** \n");
        send_packet_20(23, 0, 1);
        $write("*** send (src: 20 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_20(22, 1, 2);
        $write("*** send (src: 20 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_20(3, 0, 3);
        $write("*** send (src: 20 dst: 0 vch: 1 len: 5) *** \n");
        send_packet_20(0, 1, 5);
        $write("*** send (src: 20 dst: 12 vch: 1 len: 1) *** \n");
        send_packet_20(12, 1, 1);
        $write("*** send (src: 20 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_20(9, 0, 3);
        $write("*** send (src: 20 dst: 15 vch: 0 len: 2) *** \n");
        send_packet_20(15, 0, 2);
        $write("*** send (src: 20 dst: 18 vch: 1 len: 4) *** \n");
        send_packet_20(18, 1, 4);
        $write("*** send (src: 20 dst: 24 vch: 0 len: 4) *** \n");
        send_packet_20(24, 0, 4);
        $write("*** send (src: 20 dst: 8 vch: 1 len: 4) *** \n");
        send_packet_20(8, 1, 4);
        $write("*** send (src: 20 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_20(5, 0, 5);
        $write("*** send (src: 20 dst: 18 vch: 1 len: 5) *** \n");
        send_packet_20(18, 1, 5);
        $write("*** send (src: 20 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_20(0, 0, 3);
        $write("*** send (src: 20 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_20(8, 0, 2);
        $write("*** send (src: 20 dst: 19 vch: 1 len: 4) *** \n");
        send_packet_20(19, 1, 4);
        $write("*** send (src: 20 dst: 23 vch: 0 len: 4) *** \n");
        send_packet_20(23, 0, 4);
        $write("*** send (src: 20 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_20(10, 0, 2);
        $write("*** send (src: 20 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_20(10, 0, 2);
        $write("*** send (src: 20 dst: 22 vch: 1 len: 2) *** \n");
        send_packet_20(22, 1, 2);
        $write("*** send (src: 20 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_20(4, 1, 2);
        $write("*** send (src: 20 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_20(16, 1, 1);
        $write("*** send (src: 20 dst: 13 vch: 0 len: 2) *** \n");
        send_packet_20(13, 0, 2);
        $write("*** send (src: 20 dst: 6 vch: 1 len: 1) *** \n");
        send_packet_20(6, 1, 1);
        $write("*** send (src: 20 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_20(10, 1, 1);
        $write("*** send (src: 20 dst: 19 vch: 1 len: 1) *** \n");
        send_packet_20(19, 1, 1);
end 

/* packet generator for n21 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 21 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_21(3, 1, 4);
        $write("*** send (src: 21 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_21(17, 0, 3);
        $write("*** send (src: 21 dst: 9 vch: 1 len: 5) *** \n");
        send_packet_21(9, 1, 5);
        $write("*** send (src: 21 dst: 17 vch: 0 len: 5) *** \n");
        send_packet_21(17, 0, 5);
        $write("*** send (src: 21 dst: 24 vch: 0 len: 2) *** \n");
        send_packet_21(24, 0, 2);
        $write("*** send (src: 21 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_21(3, 1, 3);
        $write("*** send (src: 21 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_21(8, 0, 3);
        $write("*** send (src: 21 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_21(3, 0, 1);
        $write("*** send (src: 21 dst: 18 vch: 0 len: 1) *** \n");
        send_packet_21(18, 0, 1);
        $write("*** send (src: 21 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_21(8, 0, 1);
        $write("*** send (src: 21 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_21(7, 1, 1);
        $write("*** send (src: 21 dst: 20 vch: 0 len: 5) *** \n");
        send_packet_21(20, 0, 5);
        $write("*** send (src: 21 dst: 18 vch: 1 len: 5) *** \n");
        send_packet_21(18, 1, 5);
        $write("*** send (src: 21 dst: 9 vch: 1 len: 4) *** \n");
        send_packet_21(9, 1, 4);
        $write("*** send (src: 21 dst: 22 vch: 0 len: 1) *** \n");
        send_packet_21(22, 0, 1);
        $write("*** send (src: 21 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_21(7, 1, 3);
        $write("*** send (src: 21 dst: 20 vch: 1 len: 1) *** \n");
        send_packet_21(20, 1, 1);
        $write("*** send (src: 21 dst: 11 vch: 1 len: 2) *** \n");
        send_packet_21(11, 1, 2);
        $write("*** send (src: 21 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_21(12, 1, 2);
        $write("*** send (src: 21 dst: 15 vch: 0 len: 5) *** \n");
        send_packet_21(15, 0, 5);
        $write("*** send (src: 21 dst: 20 vch: 0 len: 1) *** \n");
        send_packet_21(20, 0, 1);
        $write("*** send (src: 21 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_21(0, 0, 2);
        $write("*** send (src: 21 dst: 3 vch: 0 len: 5) *** \n");
        send_packet_21(3, 0, 5);
        $write("*** send (src: 21 dst: 24 vch: 0 len: 3) *** \n");
        send_packet_21(24, 0, 3);
        $write("*** send (src: 21 dst: 10 vch: 0 len: 3) *** \n");
        send_packet_21(10, 0, 3);
        $write("*** send (src: 21 dst: 19 vch: 1 len: 4) *** \n");
        send_packet_21(19, 1, 4);
        $write("*** send (src: 21 dst: 19 vch: 0 len: 3) *** \n");
        send_packet_21(19, 0, 3);
        $write("*** send (src: 21 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_21(4, 1, 2);
        $write("*** send (src: 21 dst: 3 vch: 0 len: 5) *** \n");
        send_packet_21(3, 0, 5);
        $write("*** send (src: 21 dst: 0 vch: 0 len: 4) *** \n");
        send_packet_21(0, 0, 4);
        $write("*** send (src: 21 dst: 2 vch: 0 len: 3) *** \n");
        send_packet_21(2, 0, 3);
        $write("*** send (src: 21 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_21(2, 0, 4);
end 

/* packet generator for n22 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 22 dst: 24 vch: 1 len: 5) *** \n");
        send_packet_22(24, 1, 5);
        $write("*** send (src: 22 dst: 20 vch: 1 len: 2) *** \n");
        send_packet_22(20, 1, 2);
        $write("*** send (src: 22 dst: 24 vch: 1 len: 1) *** \n");
        send_packet_22(24, 1, 1);
        $write("*** send (src: 22 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_22(2, 1, 2);
        $write("*** send (src: 22 dst: 15 vch: 0 len: 5) *** \n");
        send_packet_22(15, 0, 5);
        $write("*** send (src: 22 dst: 21 vch: 0 len: 1) *** \n");
        send_packet_22(21, 0, 1);
        $write("*** send (src: 22 dst: 21 vch: 1 len: 5) *** \n");
        send_packet_22(21, 1, 5);
        $write("*** send (src: 22 dst: 23 vch: 0 len: 1) *** \n");
        send_packet_22(23, 0, 1);
        $write("*** send (src: 22 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_22(10, 1, 1);
        $write("*** send (src: 22 dst: 17 vch: 1 len: 4) *** \n");
        send_packet_22(17, 1, 4);
        $write("*** send (src: 22 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_22(1, 0, 2);
        $write("*** send (src: 22 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_22(2, 0, 2);
        $write("*** send (src: 22 dst: 21 vch: 1 len: 4) *** \n");
        send_packet_22(21, 1, 4);
        $write("*** send (src: 22 dst: 16 vch: 1 len: 4) *** \n");
        send_packet_22(16, 1, 4);
        $write("*** send (src: 22 dst: 15 vch: 1 len: 4) *** \n");
        send_packet_22(15, 1, 4);
        $write("*** send (src: 22 dst: 24 vch: 1 len: 3) *** \n");
        send_packet_22(24, 1, 3);
        $write("*** send (src: 22 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_22(4, 1, 5);
        $write("*** send (src: 22 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_22(4, 1, 2);
        $write("*** send (src: 22 dst: 10 vch: 1 len: 1) *** \n");
        send_packet_22(10, 1, 1);
        $write("*** send (src: 22 dst: 17 vch: 0 len: 2) *** \n");
        send_packet_22(17, 0, 2);
        $write("*** send (src: 22 dst: 11 vch: 0 len: 4) *** \n");
        send_packet_22(11, 0, 4);
        $write("*** send (src: 22 dst: 13 vch: 0 len: 5) *** \n");
        send_packet_22(13, 0, 5);
        $write("*** send (src: 22 dst: 2 vch: 0 len: 1) *** \n");
        send_packet_22(2, 0, 1);
        $write("*** send (src: 22 dst: 21 vch: 1 len: 3) *** \n");
        send_packet_22(21, 1, 3);
        $write("*** send (src: 22 dst: 17 vch: 0 len: 4) *** \n");
        send_packet_22(17, 0, 4);
        $write("*** send (src: 22 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_22(15, 0, 4);
        $write("*** send (src: 22 dst: 10 vch: 1 len: 4) *** \n");
        send_packet_22(10, 1, 4);
        $write("*** send (src: 22 dst: 15 vch: 1 len: 5) *** \n");
        send_packet_22(15, 1, 5);
        $write("*** send (src: 22 dst: 17 vch: 1 len: 1) *** \n");
        send_packet_22(17, 1, 1);
        $write("*** send (src: 22 dst: 9 vch: 1 len: 5) *** \n");
        send_packet_22(9, 1, 5);
        $write("*** send (src: 22 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_22(9, 0, 3);
        $write("*** send (src: 22 dst: 16 vch: 1 len: 2) *** \n");
        send_packet_22(16, 1, 2);
end 

/* packet generator for n23 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 23 dst: 15 vch: 0 len: 4) *** \n");
        send_packet_23(15, 0, 4);
        $write("*** send (src: 23 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_23(12, 1, 2);
        $write("*** send (src: 23 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_23(1, 1, 2);
        $write("*** send (src: 23 dst: 9 vch: 1 len: 1) *** \n");
        send_packet_23(9, 1, 1);
        $write("*** send (src: 23 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_23(1, 0, 2);
        $write("*** send (src: 23 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_23(0, 0, 1);
        $write("*** send (src: 23 dst: 15 vch: 0 len: 1) *** \n");
        send_packet_23(15, 0, 1);
        $write("*** send (src: 23 dst: 9 vch: 0 len: 4) *** \n");
        send_packet_23(9, 0, 4);
        $write("*** send (src: 23 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_23(8, 0, 5);
        $write("*** send (src: 23 dst: 6 vch: 0 len: 2) *** \n");
        send_packet_23(6, 0, 2);
        $write("*** send (src: 23 dst: 14 vch: 1 len: 2) *** \n");
        send_packet_23(14, 1, 2);
        $write("*** send (src: 23 dst: 11 vch: 1 len: 5) *** \n");
        send_packet_23(11, 1, 5);
        $write("*** send (src: 23 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_23(4, 0, 3);
        $write("*** send (src: 23 dst: 9 vch: 0 len: 5) *** \n");
        send_packet_23(9, 0, 5);
        $write("*** send (src: 23 dst: 12 vch: 1 len: 1) *** \n");
        send_packet_23(12, 1, 1);
        $write("*** send (src: 23 dst: 13 vch: 0 len: 4) *** \n");
        send_packet_23(13, 0, 4);
        $write("*** send (src: 23 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_23(3, 0, 4);
        $write("*** send (src: 23 dst: 16 vch: 0 len: 4) *** \n");
        send_packet_23(16, 0, 4);
        $write("*** send (src: 23 dst: 22 vch: 0 len: 4) *** \n");
        send_packet_23(22, 0, 4);
        $write("*** send (src: 23 dst: 9 vch: 1 len: 4) *** \n");
        send_packet_23(9, 1, 4);
        $write("*** send (src: 23 dst: 14 vch: 0 len: 3) *** \n");
        send_packet_23(14, 0, 3);
        $write("*** send (src: 23 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_23(6, 1, 2);
        $write("*** send (src: 23 dst: 18 vch: 0 len: 1) *** \n");
        send_packet_23(18, 0, 1);
        $write("*** send (src: 23 dst: 13 vch: 1 len: 3) *** \n");
        send_packet_23(13, 1, 3);
        $write("*** send (src: 23 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_23(8, 0, 1);
        $write("*** send (src: 23 dst: 6 vch: 0 len: 2) *** \n");
        send_packet_23(6, 0, 2);
        $write("*** send (src: 23 dst: 21 vch: 1 len: 1) *** \n");
        send_packet_23(21, 1, 1);
        $write("*** send (src: 23 dst: 6 vch: 0 len: 4) *** \n");
        send_packet_23(6, 0, 4);
        $write("*** send (src: 23 dst: 13 vch: 0 len: 3) *** \n");
        send_packet_23(13, 0, 3);
        $write("*** send (src: 23 dst: 11 vch: 1 len: 4) *** \n");
        send_packet_23(11, 1, 4);
        $write("*** send (src: 23 dst: 14 vch: 0 len: 2) *** \n");
        send_packet_23(14, 0, 2);
        $write("*** send (src: 23 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_23(6, 1, 2);
end 

/* packet generator for n24 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 24 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_24(4, 1, 3);
        $write("*** send (src: 24 dst: 8 vch: 1 len: 4) *** \n");
        send_packet_24(8, 1, 4);
        $write("*** send (src: 24 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_24(5, 0, 4);
        $write("*** send (src: 24 dst: 14 vch: 1 len: 5) *** \n");
        send_packet_24(14, 1, 5);
        $write("*** send (src: 24 dst: 18 vch: 0 len: 3) *** \n");
        send_packet_24(18, 0, 3);
        $write("*** send (src: 24 dst: 16 vch: 0 len: 5) *** \n");
        send_packet_24(16, 0, 5);
        $write("*** send (src: 24 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_24(9, 0, 3);
        $write("*** send (src: 24 dst: 16 vch: 1 len: 1) *** \n");
        send_packet_24(16, 1, 1);
        $write("*** send (src: 24 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_24(1, 1, 1);
        $write("*** send (src: 24 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_24(5, 0, 4);
        $write("*** send (src: 24 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_24(6, 1, 2);
        $write("*** send (src: 24 dst: 14 vch: 1 len: 3) *** \n");
        send_packet_24(14, 1, 3);
        $write("*** send (src: 24 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_24(1, 0, 5);
        $write("*** send (src: 24 dst: 20 vch: 0 len: 1) *** \n");
        send_packet_24(20, 0, 1);
        $write("*** send (src: 24 dst: 11 vch: 0 len: 1) *** \n");
        send_packet_24(11, 0, 1);
        $write("*** send (src: 24 dst: 7 vch: 0 len: 1) *** \n");
        send_packet_24(7, 0, 1);
        $write("*** send (src: 24 dst: 10 vch: 0 len: 5) *** \n");
        send_packet_24(10, 0, 5);
        $write("*** send (src: 24 dst: 9 vch: 0 len: 3) *** \n");
        send_packet_24(9, 0, 3);
        $write("*** send (src: 24 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_24(4, 1, 1);
        $write("*** send (src: 24 dst: 22 vch: 1 len: 4) *** \n");
        send_packet_24(22, 1, 4);
        $write("*** send (src: 24 dst: 13 vch: 1 len: 5) *** \n");
        send_packet_24(13, 1, 5);
        $write("*** send (src: 24 dst: 16 vch: 0 len: 5) *** \n");
        send_packet_24(16, 0, 5);
        $write("*** send (src: 24 dst: 21 vch: 0 len: 5) *** \n");
        send_packet_24(21, 0, 5);
        $write("*** send (src: 24 dst: 8 vch: 0 len: 4) *** \n");
        send_packet_24(8, 0, 4);
        $write("*** send (src: 24 dst: 14 vch: 0 len: 4) *** \n");
        send_packet_24(14, 0, 4);
        $write("*** send (src: 24 dst: 16 vch: 0 len: 3) *** \n");
        send_packet_24(16, 0, 3);
        $write("*** send (src: 24 dst: 22 vch: 0 len: 4) *** \n");
        send_packet_24(22, 0, 4);
        $write("*** send (src: 24 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_24(3, 1, 1);
        $write("*** send (src: 24 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_24(8, 1, 1);
        $write("*** send (src: 24 dst: 23 vch: 0 len: 3) *** \n");
        send_packet_24(23, 0, 3);
        $write("*** send (src: 24 dst: 10 vch: 0 len: 2) *** \n");
        send_packet_24(10, 0, 2);
        $write("*** send (src: 24 dst: 23 vch: 1 len: 2) *** \n");
        send_packet_24(23, 1, 2);
end 

/* packet generator for n25 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 25 dst: 21 vch: 1 len: 4) *** \n");
        send_packet_25(21, 1, 4);
        $write("*** send (src: 25 dst: 24 vch: 1 len: 5) *** \n");
        send_packet_25(24, 1, 5);
        $write("*** send (src: 25 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_25(4, 0, 3);
        $write("*** send (src: 25 dst: 12 vch: 1 len: 2) *** \n");
        send_packet_25(12, 1, 2);
        $write("*** send (src: 25 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_25(6, 1, 4);
        $write("*** send (src: 25 dst: 7 vch: 0 len: 3) *** \n");
        send_packet_25(7, 0, 3);
        $write("*** send (src: 25 dst: 18 vch: 0 len: 3) *** \n");
        send_packet_25(18, 0, 3);
        $write("*** send (src: 25 dst: 21 vch: 1 len: 2) *** \n");
        send_packet_25(21, 1, 2);
        $write("*** send (src: 25 dst: 20 vch: 0 len: 1) *** \n");
        send_packet_25(20, 0, 1);
        $write("*** send (src: 25 dst: 15 vch: 1 len: 2) *** \n");
        send_packet_25(15, 1, 2);
        $write("*** send (src: 25 dst: 17 vch: 1 len: 4) *** \n");
        send_packet_25(17, 1, 4);
        $write("*** send (src: 25 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_25(0, 0, 1);
        $write("*** send (src: 25 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_25(8, 0, 2);
        $write("*** send (src: 25 dst: 20 vch: 1 len: 5) *** \n");
        send_packet_25(20, 1, 5);
        $write("*** send (src: 25 dst: 20 vch: 0 len: 1) *** \n");
        send_packet_25(20, 0, 1);
        $write("*** send (src: 25 dst: 23 vch: 1 len: 1) *** \n");
        send_packet_25(23, 1, 1);
        $write("*** send (src: 25 dst: 17 vch: 0 len: 3) *** \n");
        send_packet_25(17, 0, 3);
        $write("*** send (src: 25 dst: 17 vch: 0 len: 2) *** \n");
        send_packet_25(17, 0, 2);
        $write("*** send (src: 25 dst: 22 vch: 1 len: 4) *** \n");
        send_packet_25(22, 1, 4);
        $write("*** send (src: 25 dst: 13 vch: 0 len: 2) *** \n");
        send_packet_25(13, 0, 2);
        $write("*** send (src: 25 dst: 24 vch: 0 len: 5) *** \n");
        send_packet_25(24, 0, 5);
        $write("*** send (src: 25 dst: 20 vch: 1 len: 1) *** \n");
        send_packet_25(20, 1, 1);
        $write("*** send (src: 25 dst: 23 vch: 0 len: 2) *** \n");
        send_packet_25(23, 0, 2);
        $write("*** send (src: 25 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_25(1, 1, 3);
        $write("*** send (src: 25 dst: 18 vch: 0 len: 5) *** \n");
        send_packet_25(18, 0, 5);
        $write("*** send (src: 25 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_25(1, 0, 5);
        $write("*** send (src: 25 dst: 24 vch: 1 len: 3) *** \n");
        send_packet_25(24, 1, 3);
        $write("*** send (src: 25 dst: 2 vch: 0 len: 3) *** \n");
        send_packet_25(2, 0, 3);
        $write("*** send (src: 25 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_25(7, 1, 5);
        $write("*** send (src: 25 dst: 14 vch: 1 len: 2) *** \n");
        send_packet_25(14, 1, 2);
        $write("*** send (src: 25 dst: 13 vch: 0 len: 2) *** \n");
        send_packet_25(13, 0, 2);
        $write("*** send (src: 25 dst: 6 vch: 0 len: 4) *** \n");
        send_packet_25(6, 0, 4);
end 



/* Send/recv event monitor */ 
always @ (posedge clk) begin 
        if ( (n1_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n1 send %x \n", counter, n1_idata_p0); 
                n1_sent = n1_sent + 1;
        end 
        if ( (n2_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n2 send %x \n", counter, n2_idata_p0); 
                n2_sent = n2_sent + 1;
        end 
        if ( (n3_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n3 send %x \n", counter, n3_idata_p0); 
                n3_sent = n3_sent + 1;
        end 
        if ( (n4_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n4 send %x \n", counter, n4_idata_p0); 
                n4_sent = n4_sent + 1;
        end 
        if ( (n5_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n5 send %x \n", counter, n5_idata_p0); 
                n5_sent = n5_sent + 1;
        end 
        if ( (n6_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n6 send %x \n", counter, n6_idata_p0); 
                n6_sent = n6_sent + 1;
        end 
        if ( (n7_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n7 send %x \n", counter, n7_idata_p0); 
                n7_sent = n7_sent + 1;
        end 
        if ( (n8_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n8 send %x \n", counter, n8_idata_p0); 
                n8_sent = n8_sent + 1;
        end 
        if ( (n9_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n9 send %x \n", counter, n9_idata_p0); 
                n9_sent = n9_sent + 1;
        end 
        if ( (n10_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n10 send %x \n", counter, n10_idata_p0); 
                n10_sent = n10_sent + 1;
        end 
        if ( (n11_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n11 send %x \n", counter, n11_idata_p0); 
                n11_sent = n11_sent + 1;
        end 
        if ( (n12_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n12 send %x \n", counter, n12_idata_p0); 
                n12_sent = n12_sent + 1;
        end 
        if ( (n13_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n13 send %x \n", counter, n13_idata_p0); 
                n13_sent = n13_sent + 1;
        end 
        if ( (n14_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n14 send %x \n", counter, n14_idata_p0); 
                n14_sent = n14_sent + 1;
        end 
        if ( (n15_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n15 send %x \n", counter, n15_idata_p0); 
                n15_sent = n15_sent + 1;
        end 
        if ( (n16_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n16 send %x \n", counter, n16_idata_p0); 
                n16_sent = n16_sent + 1;
        end 
        if ( (n17_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n17 send %x \n", counter, n17_idata_p0); 
                n17_sent = n17_sent + 1;
        end 
        if ( (n18_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n18 send %x \n", counter, n18_idata_p0); 
                n18_sent = n18_sent + 1;
        end 
        if ( (n19_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n19 send %x \n", counter, n19_idata_p0); 
                n19_sent = n19_sent + 1;
        end 
        if ( (n20_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n20 send %x \n", counter, n20_idata_p0); 
                n20_sent = n20_sent + 1;
        end 
        if ( (n21_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n21 send %x \n", counter, n21_idata_p0); 
                n21_sent = n21_sent + 1;
        end 
        if ( (n22_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n22 send %x \n", counter, n22_idata_p0); 
                n22_sent = n22_sent + 1;
        end 
        if ( (n23_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n23 send %x \n", counter, n23_idata_p0); 
                n23_sent = n23_sent + 1;
        end 
        if ( (n24_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n24 send %x \n", counter, n24_idata_p0); 
                n24_sent = n24_sent + 1;
        end 
        if ( (n25_ivalid_p0 == `NODEW'b0) ? 0 : 1 == `Enable ) begin 
                $write("%d n25 send %x \n", counter, n25_idata_p0); 
                n25_sent = n25_sent + 1;
        end 
end 

always @ (posedge clk) begin 
        if ( n1_ovalid_p0 == `Enable ) begin 
                $write("        %d n1 recv %x \n", counter, n1_odata_p0); 
                n1_recv = n1_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n2_ovalid_p0 == `Enable ) begin 
                $write("        %d n2 recv %x \n", counter, n2_odata_p0); 
                n2_recv = n2_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n3_ovalid_p0 == `Enable ) begin 
                $write("        %d n3 recv %x \n", counter, n3_odata_p0); 
                n3_recv = n3_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n4_ovalid_p0 == `Enable ) begin 
                $write("        %d n4 recv %x \n", counter, n4_odata_p0); 
                n4_recv = n4_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n5_ovalid_p0 == `Enable ) begin 
                $write("        %d n5 recv %x \n", counter, n5_odata_p0); 
                n5_recv = n5_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n6_ovalid_p0 == `Enable ) begin 
                $write("        %d n6 recv %x \n", counter, n6_odata_p0); 
                n6_recv = n6_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n7_ovalid_p0 == `Enable ) begin 
                $write("        %d n7 recv %x \n", counter, n7_odata_p0); 
                n7_recv = n7_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n8_ovalid_p0 == `Enable ) begin 
                $write("        %d n8 recv %x \n", counter, n8_odata_p0); 
                n8_recv = n8_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n9_ovalid_p0 == `Enable ) begin 
                $write("        %d n9 recv %x \n", counter, n9_odata_p0); 
                n9_recv = n9_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n10_ovalid_p0 == `Enable ) begin 
                $write("        %d n10 recv %x \n", counter, n10_odata_p0); 
                n10_recv = n10_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n11_ovalid_p0 == `Enable ) begin 
                $write("        %d n11 recv %x \n", counter, n11_odata_p0); 
                n11_recv = n11_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n12_ovalid_p0 == `Enable ) begin 
                $write("        %d n12 recv %x \n", counter, n12_odata_p0); 
                n12_recv = n12_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n13_ovalid_p0 == `Enable ) begin 
                $write("        %d n13 recv %x \n", counter, n13_odata_p0); 
                n13_recv = n13_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n14_ovalid_p0 == `Enable ) begin 
                $write("        %d n14 recv %x \n", counter, n14_odata_p0); 
                n14_recv = n14_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n15_ovalid_p0 == `Enable ) begin 
                $write("        %d n15 recv %x \n", counter, n15_odata_p0); 
                n15_recv = n15_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n16_ovalid_p0 == `Enable ) begin 
                $write("        %d n16 recv %x \n", counter, n16_odata_p0); 
                n16_recv = n16_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n17_ovalid_p0 == `Enable ) begin 
                $write("        %d n17 recv %x \n", counter, n17_odata_p0); 
                n17_recv = n17_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n18_ovalid_p0 == `Enable ) begin 
                $write("        %d n18 recv %x \n", counter, n18_odata_p0); 
                n18_recv = n18_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n19_ovalid_p0 == `Enable ) begin 
                $write("        %d n19 recv %x \n", counter, n19_odata_p0); 
                n19_recv = n19_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n20_ovalid_p0 == `Enable ) begin 
                $write("        %d n20 recv %x \n", counter, n20_odata_p0); 
                n20_recv = n20_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n21_ovalid_p0 == `Enable ) begin 
                $write("        %d n21 recv %x \n", counter, n21_odata_p0); 
                n21_recv = n21_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n22_ovalid_p0 == `Enable ) begin 
                $write("        %d n22 recv %x \n", counter, n22_odata_p0); 
                n22_recv = n22_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n23_ovalid_p0 == `Enable ) begin 
                $write("        %d n23 recv %x \n", counter, n23_odata_p0); 
                n23_recv = n23_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n24_ovalid_p0 == `Enable ) begin 
                $write("        %d n24 recv %x \n", counter, n24_odata_p0); 
                n24_recv = n24_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n25_ovalid_p0 == `Enable ) begin 
                $write("        %d n25 recv %x \n", counter, n25_odata_p0); 
                n25_recv = n25_recv + 1; 
                stop     = counter + 200;
        end 
end 

/* Port 1 */ 
always @ (posedge clk) begin    
	if ( noc.n1.ovalid_1 == `Enable ) $write("                %d n1(1 %d) go thru %x \n", counter, noc.n1.ovch_1, noc.n1.odata_1); 
	if ( noc.n2.ovalid_1 == `Enable ) $write("                %d n2(1 %d) go thru %x \n", counter, noc.n2.ovch_1, noc.n2.odata_1); 
	if ( noc.n3.ovalid_1 == `Enable ) $write("                %d n3(1 %d) go thru %x \n", counter, noc.n3.ovch_1, noc.n3.odata_1); 
	if ( noc.n4.ovalid_1 == `Enable ) $write("                %d n4(1 %d) go thru %x \n", counter, noc.n4.ovch_1, noc.n4.odata_1); 
	if ( noc.n5.ovalid_1 == `Enable ) $write("                %d n5(1 %d) go thru %x \n", counter, noc.n5.ovch_1, noc.n5.odata_1); 
	if ( noc.n6.ovalid_1 == `Enable ) $write("                %d n6(1 %d) go thru %x \n", counter, noc.n6.ovch_1, noc.n6.odata_1); 
	if ( noc.n7.ovalid_1 == `Enable ) $write("                %d n7(1 %d) go thru %x \n", counter, noc.n7.ovch_1, noc.n7.odata_1); 
	if ( noc.n8.ovalid_1 == `Enable ) $write("                %d n8(1 %d) go thru %x \n", counter, noc.n8.ovch_1, noc.n8.odata_1); 
	if ( noc.n9.ovalid_1 == `Enable ) $write("                %d n9(1 %d) go thru %x \n", counter, noc.n9.ovch_1, noc.n9.odata_1); 
	if ( noc.n10.ovalid_1 == `Enable ) $write("                %d n10(1 %d) go thru %x \n", counter, noc.n10.ovch_1, noc.n10.odata_1); 
	if ( noc.n11.ovalid_1 == `Enable ) $write("                %d n11(1 %d) go thru %x \n", counter, noc.n11.ovch_1, noc.n11.odata_1); 
	if ( noc.n12.ovalid_1 == `Enable ) $write("                %d n12(1 %d) go thru %x \n", counter, noc.n12.ovch_1, noc.n12.odata_1); 
	if ( noc.n13.ovalid_1 == `Enable ) $write("                %d n13(1 %d) go thru %x \n", counter, noc.n13.ovch_1, noc.n13.odata_1); 
	if ( noc.n14.ovalid_1 == `Enable ) $write("                %d n14(1 %d) go thru %x \n", counter, noc.n14.ovch_1, noc.n14.odata_1); 
	if ( noc.n15.ovalid_1 == `Enable ) $write("                %d n15(1 %d) go thru %x \n", counter, noc.n15.ovch_1, noc.n15.odata_1); 
	if ( noc.n16.ovalid_1 == `Enable ) $write("                %d n16(1 %d) go thru %x \n", counter, noc.n16.ovch_1, noc.n16.odata_1); 
	if ( noc.n17.ovalid_1 == `Enable ) $write("                %d n17(1 %d) go thru %x \n", counter, noc.n17.ovch_1, noc.n17.odata_1); 
	if ( noc.n18.ovalid_1 == `Enable ) $write("                %d n18(1 %d) go thru %x \n", counter, noc.n18.ovch_1, noc.n18.odata_1); 
	if ( noc.n19.ovalid_1 == `Enable ) $write("                %d n19(1 %d) go thru %x \n", counter, noc.n19.ovch_1, noc.n19.odata_1); 
	if ( noc.n20.ovalid_1 == `Enable ) $write("                %d n20(1 %d) go thru %x \n", counter, noc.n20.ovch_1, noc.n20.odata_1); 
	if ( noc.n21.ovalid_1 == `Enable ) $write("                %d n21(1 %d) go thru %x \n", counter, noc.n21.ovch_1, noc.n21.odata_1); 
	if ( noc.n22.ovalid_1 == `Enable ) $write("                %d n22(1 %d) go thru %x \n", counter, noc.n22.ovch_1, noc.n22.odata_1); 
	if ( noc.n23.ovalid_1 == `Enable ) $write("                %d n23(1 %d) go thru %x \n", counter, noc.n23.ovch_1, noc.n23.odata_1); 
	if ( noc.n24.ovalid_1 == `Enable ) $write("                %d n24(1 %d) go thru %x \n", counter, noc.n24.ovch_1, noc.n24.odata_1); 
	if ( noc.n25.ovalid_1 == `Enable ) $write("                %d n25(1 %d) go thru %x \n", counter, noc.n25.ovch_1, noc.n25.odata_1); 
end 
/* Port 2 */ 
always @ (posedge clk) begin    
	if ( noc.n1.ovalid_2 == `Enable ) $write("                %d n1(2 %d) go thru %x \n", counter, noc.n1.ovch_2, noc.n1.odata_2); 
	if ( noc.n2.ovalid_2 == `Enable ) $write("                %d n2(2 %d) go thru %x \n", counter, noc.n2.ovch_2, noc.n2.odata_2); 
	if ( noc.n3.ovalid_2 == `Enable ) $write("                %d n3(2 %d) go thru %x \n", counter, noc.n3.ovch_2, noc.n3.odata_2); 
	if ( noc.n4.ovalid_2 == `Enable ) $write("                %d n4(2 %d) go thru %x \n", counter, noc.n4.ovch_2, noc.n4.odata_2); 
	if ( noc.n5.ovalid_2 == `Enable ) $write("                %d n5(2 %d) go thru %x \n", counter, noc.n5.ovch_2, noc.n5.odata_2); 
	if ( noc.n6.ovalid_2 == `Enable ) $write("                %d n6(2 %d) go thru %x \n", counter, noc.n6.ovch_2, noc.n6.odata_2); 
	if ( noc.n7.ovalid_2 == `Enable ) $write("                %d n7(2 %d) go thru %x \n", counter, noc.n7.ovch_2, noc.n7.odata_2); 
	if ( noc.n8.ovalid_2 == `Enable ) $write("                %d n8(2 %d) go thru %x \n", counter, noc.n8.ovch_2, noc.n8.odata_2); 
	if ( noc.n9.ovalid_2 == `Enable ) $write("                %d n9(2 %d) go thru %x \n", counter, noc.n9.ovch_2, noc.n9.odata_2); 
	if ( noc.n10.ovalid_2 == `Enable ) $write("                %d n10(2 %d) go thru %x \n", counter, noc.n10.ovch_2, noc.n10.odata_2); 
	if ( noc.n11.ovalid_2 == `Enable ) $write("                %d n11(2 %d) go thru %x \n", counter, noc.n11.ovch_2, noc.n11.odata_2); 
	if ( noc.n12.ovalid_2 == `Enable ) $write("                %d n12(2 %d) go thru %x \n", counter, noc.n12.ovch_2, noc.n12.odata_2); 
	if ( noc.n13.ovalid_2 == `Enable ) $write("                %d n13(2 %d) go thru %x \n", counter, noc.n13.ovch_2, noc.n13.odata_2); 
	if ( noc.n14.ovalid_2 == `Enable ) $write("                %d n14(2 %d) go thru %x \n", counter, noc.n14.ovch_2, noc.n14.odata_2); 
	if ( noc.n15.ovalid_2 == `Enable ) $write("                %d n15(2 %d) go thru %x \n", counter, noc.n15.ovch_2, noc.n15.odata_2); 
	if ( noc.n16.ovalid_2 == `Enable ) $write("                %d n16(2 %d) go thru %x \n", counter, noc.n16.ovch_2, noc.n16.odata_2); 
	if ( noc.n17.ovalid_2 == `Enable ) $write("                %d n17(2 %d) go thru %x \n", counter, noc.n17.ovch_2, noc.n17.odata_2); 
	if ( noc.n18.ovalid_2 == `Enable ) $write("                %d n18(2 %d) go thru %x \n", counter, noc.n18.ovch_2, noc.n18.odata_2); 
	if ( noc.n19.ovalid_2 == `Enable ) $write("                %d n19(2 %d) go thru %x \n", counter, noc.n19.ovch_2, noc.n19.odata_2); 
	if ( noc.n20.ovalid_2 == `Enable ) $write("                %d n20(2 %d) go thru %x \n", counter, noc.n20.ovch_2, noc.n20.odata_2); 
	if ( noc.n21.ovalid_2 == `Enable ) $write("                %d n21(2 %d) go thru %x \n", counter, noc.n21.ovch_2, noc.n21.odata_2); 
	if ( noc.n22.ovalid_2 == `Enable ) $write("                %d n22(2 %d) go thru %x \n", counter, noc.n22.ovch_2, noc.n22.odata_2); 
	if ( noc.n23.ovalid_2 == `Enable ) $write("                %d n23(2 %d) go thru %x \n", counter, noc.n23.ovch_2, noc.n23.odata_2); 
	if ( noc.n24.ovalid_2 == `Enable ) $write("                %d n24(2 %d) go thru %x \n", counter, noc.n24.ovch_2, noc.n24.odata_2); 
	if ( noc.n25.ovalid_2 == `Enable ) $write("                %d n25(2 %d) go thru %x \n", counter, noc.n25.ovch_2, noc.n25.odata_2); 
end 
/* Port 3 */ 
always @ (posedge clk) begin    
	if ( noc.n1.ovalid_3 == `Enable ) $write("                %d n1(3 %d) go thru %x \n", counter, noc.n1.ovch_3, noc.n1.odata_3); 
	if ( noc.n2.ovalid_3 == `Enable ) $write("                %d n2(3 %d) go thru %x \n", counter, noc.n2.ovch_3, noc.n2.odata_3); 
	if ( noc.n3.ovalid_3 == `Enable ) $write("                %d n3(3 %d) go thru %x \n", counter, noc.n3.ovch_3, noc.n3.odata_3); 
	if ( noc.n4.ovalid_3 == `Enable ) $write("                %d n4(3 %d) go thru %x \n", counter, noc.n4.ovch_3, noc.n4.odata_3); 
	if ( noc.n5.ovalid_3 == `Enable ) $write("                %d n5(3 %d) go thru %x \n", counter, noc.n5.ovch_3, noc.n5.odata_3); 
	if ( noc.n6.ovalid_3 == `Enable ) $write("                %d n6(3 %d) go thru %x \n", counter, noc.n6.ovch_3, noc.n6.odata_3); 
	if ( noc.n7.ovalid_3 == `Enable ) $write("                %d n7(3 %d) go thru %x \n", counter, noc.n7.ovch_3, noc.n7.odata_3); 
	if ( noc.n8.ovalid_3 == `Enable ) $write("                %d n8(3 %d) go thru %x \n", counter, noc.n8.ovch_3, noc.n8.odata_3); 
	if ( noc.n9.ovalid_3 == `Enable ) $write("                %d n9(3 %d) go thru %x \n", counter, noc.n9.ovch_3, noc.n9.odata_3); 
	if ( noc.n10.ovalid_3 == `Enable ) $write("                %d n10(3 %d) go thru %x \n", counter, noc.n10.ovch_3, noc.n10.odata_3); 
	if ( noc.n11.ovalid_3 == `Enable ) $write("                %d n11(3 %d) go thru %x \n", counter, noc.n11.ovch_3, noc.n11.odata_3); 
	if ( noc.n12.ovalid_3 == `Enable ) $write("                %d n12(3 %d) go thru %x \n", counter, noc.n12.ovch_3, noc.n12.odata_3); 
	if ( noc.n13.ovalid_3 == `Enable ) $write("                %d n13(3 %d) go thru %x \n", counter, noc.n13.ovch_3, noc.n13.odata_3); 
	if ( noc.n14.ovalid_3 == `Enable ) $write("                %d n14(3 %d) go thru %x \n", counter, noc.n14.ovch_3, noc.n14.odata_3); 
	if ( noc.n15.ovalid_3 == `Enable ) $write("                %d n15(3 %d) go thru %x \n", counter, noc.n15.ovch_3, noc.n15.odata_3); 
	if ( noc.n16.ovalid_3 == `Enable ) $write("                %d n16(3 %d) go thru %x \n", counter, noc.n16.ovch_3, noc.n16.odata_3); 
	if ( noc.n17.ovalid_3 == `Enable ) $write("                %d n17(3 %d) go thru %x \n", counter, noc.n17.ovch_3, noc.n17.odata_3); 
	if ( noc.n18.ovalid_3 == `Enable ) $write("                %d n18(3 %d) go thru %x \n", counter, noc.n18.ovch_3, noc.n18.odata_3); 
	if ( noc.n19.ovalid_3 == `Enable ) $write("                %d n19(3 %d) go thru %x \n", counter, noc.n19.ovch_3, noc.n19.odata_3); 
	if ( noc.n20.ovalid_3 == `Enable ) $write("                %d n20(3 %d) go thru %x \n", counter, noc.n20.ovch_3, noc.n20.odata_3); 
	if ( noc.n21.ovalid_3 == `Enable ) $write("                %d n21(3 %d) go thru %x \n", counter, noc.n21.ovch_3, noc.n21.odata_3); 
	if ( noc.n22.ovalid_3 == `Enable ) $write("                %d n22(3 %d) go thru %x \n", counter, noc.n22.ovch_3, noc.n22.odata_3); 
	if ( noc.n23.ovalid_3 == `Enable ) $write("                %d n23(3 %d) go thru %x \n", counter, noc.n23.ovch_3, noc.n23.odata_3); 
	if ( noc.n24.ovalid_3 == `Enable ) $write("                %d n24(3 %d) go thru %x \n", counter, noc.n24.ovch_3, noc.n24.odata_3); 
	if ( noc.n25.ovalid_3 == `Enable ) $write("                %d n25(3 %d) go thru %x \n", counter, noc.n25.ovch_3, noc.n25.odata_3); 
end 
/* Port 4 */ 
always @ (posedge clk) begin    
	if ( noc.n1.ovalid_4 == `Enable ) $write("                %d n1(4 %d) go thru %x \n", counter, noc.n1.ovch_4, noc.n1.odata_4); 
	if ( noc.n2.ovalid_4 == `Enable ) $write("                %d n2(4 %d) go thru %x \n", counter, noc.n2.ovch_4, noc.n2.odata_4); 
	if ( noc.n3.ovalid_4 == `Enable ) $write("                %d n3(4 %d) go thru %x \n", counter, noc.n3.ovch_4, noc.n3.odata_4); 
	if ( noc.n4.ovalid_4 == `Enable ) $write("                %d n4(4 %d) go thru %x \n", counter, noc.n4.ovch_4, noc.n4.odata_4); 
	if ( noc.n5.ovalid_4 == `Enable ) $write("                %d n5(4 %d) go thru %x \n", counter, noc.n5.ovch_4, noc.n5.odata_4); 
	if ( noc.n6.ovalid_4 == `Enable ) $write("                %d n6(4 %d) go thru %x \n", counter, noc.n6.ovch_4, noc.n6.odata_4); 
	if ( noc.n7.ovalid_4 == `Enable ) $write("                %d n7(4 %d) go thru %x \n", counter, noc.n7.ovch_4, noc.n7.odata_4); 
	if ( noc.n8.ovalid_4 == `Enable ) $write("                %d n8(4 %d) go thru %x \n", counter, noc.n8.ovch_4, noc.n8.odata_4); 
	if ( noc.n9.ovalid_4 == `Enable ) $write("                %d n9(4 %d) go thru %x \n", counter, noc.n9.ovch_4, noc.n9.odata_4); 
	if ( noc.n10.ovalid_4 == `Enable ) $write("                %d n10(4 %d) go thru %x \n", counter, noc.n10.ovch_4, noc.n10.odata_4); 
	if ( noc.n11.ovalid_4 == `Enable ) $write("                %d n11(4 %d) go thru %x \n", counter, noc.n11.ovch_4, noc.n11.odata_4); 
	if ( noc.n12.ovalid_4 == `Enable ) $write("                %d n12(4 %d) go thru %x \n", counter, noc.n12.ovch_4, noc.n12.odata_4); 
	if ( noc.n13.ovalid_4 == `Enable ) $write("                %d n13(4 %d) go thru %x \n", counter, noc.n13.ovch_4, noc.n13.odata_4); 
	if ( noc.n14.ovalid_4 == `Enable ) $write("                %d n14(4 %d) go thru %x \n", counter, noc.n14.ovch_4, noc.n14.odata_4); 
	if ( noc.n15.ovalid_4 == `Enable ) $write("                %d n15(4 %d) go thru %x \n", counter, noc.n15.ovch_4, noc.n15.odata_4); 
	if ( noc.n16.ovalid_4 == `Enable ) $write("                %d n16(4 %d) go thru %x \n", counter, noc.n16.ovch_4, noc.n16.odata_4); 
	if ( noc.n17.ovalid_4 == `Enable ) $write("                %d n17(4 %d) go thru %x \n", counter, noc.n17.ovch_4, noc.n17.odata_4); 
	if ( noc.n18.ovalid_4 == `Enable ) $write("                %d n18(4 %d) go thru %x \n", counter, noc.n18.ovch_4, noc.n18.odata_4); 
	if ( noc.n19.ovalid_4 == `Enable ) $write("                %d n19(4 %d) go thru %x \n", counter, noc.n19.ovch_4, noc.n19.odata_4); 
	if ( noc.n20.ovalid_4 == `Enable ) $write("                %d n20(4 %d) go thru %x \n", counter, noc.n20.ovch_4, noc.n20.odata_4); 
	if ( noc.n21.ovalid_4 == `Enable ) $write("                %d n21(4 %d) go thru %x \n", counter, noc.n21.ovch_4, noc.n21.odata_4); 
	if ( noc.n22.ovalid_4 == `Enable ) $write("                %d n22(4 %d) go thru %x \n", counter, noc.n22.ovch_4, noc.n22.odata_4); 
	if ( noc.n23.ovalid_4 == `Enable ) $write("                %d n23(4 %d) go thru %x \n", counter, noc.n23.ovch_4, noc.n23.odata_4); 
	if ( noc.n24.ovalid_4 == `Enable ) $write("                %d n24(4 %d) go thru %x \n", counter, noc.n24.ovch_4, noc.n24.odata_4); 
	if ( noc.n25.ovalid_4 == `Enable ) $write("                %d n25(4 %d) go thru %x \n", counter, noc.n25.ovch_4, noc.n25.odata_4); 
end 

initial begin                     
        $dumpfile("dump.vcd"); 
        $dumpvars(0,noc_test);   
        `ifdef __POST_PR__        
        $sdf_annotate("router.sdf", noc_test.noc.n1, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n2, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n3, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n4, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n5, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n6, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n7, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n8, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n9, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n10, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n11, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n12, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n13, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n14, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n15, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n16, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n17, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n18, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n19, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n20, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n21, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n22, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n23, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n24, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n25, , "sdf.log", "MAXIMUM");
        `endif                    
end                               

/* send_packet_1(dst, vch, len): send a packet from n1 to destination. */ 
task send_packet_1; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n1_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 1;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n1_ordy_p0[vch]) || id > 0 ) begin 
                        n1_idata_p0 <= packet[id]; n1_ivalid_p0 <= `Enable; n1_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n1_idata_p0 <= `DATAW_P1'b0; n1_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n1_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_2(dst, vch, len): send a packet from n2 to destination. */ 
task send_packet_2; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n2_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 2;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n2_ordy_p0[vch]) || id > 0 ) begin 
                        n2_idata_p0 <= packet[id]; n2_ivalid_p0 <= `Enable; n2_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n2_idata_p0 <= `DATAW_P1'b0; n2_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n2_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_3(dst, vch, len): send a packet from n3 to destination. */ 
task send_packet_3; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n3_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 3;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n3_ordy_p0[vch]) || id > 0 ) begin 
                        n3_idata_p0 <= packet[id]; n3_ivalid_p0 <= `Enable; n3_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n3_idata_p0 <= `DATAW_P1'b0; n3_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n3_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_4(dst, vch, len): send a packet from n4 to destination. */ 
task send_packet_4; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n4_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 4;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n4_ordy_p0[vch]) || id > 0 ) begin 
                        n4_idata_p0 <= packet[id]; n4_ivalid_p0 <= `Enable; n4_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n4_idata_p0 <= `DATAW_P1'b0; n4_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n4_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_5(dst, vch, len): send a packet from n5 to destination. */ 
task send_packet_5; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n5_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 5;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n5_ordy_p0[vch]) || id > 0 ) begin 
                        n5_idata_p0 <= packet[id]; n5_ivalid_p0 <= `Enable; n5_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n5_idata_p0 <= `DATAW_P1'b0; n5_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n5_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_6(dst, vch, len): send a packet from n6 to destination. */ 
task send_packet_6; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n6_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 6;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n6_ordy_p0[vch]) || id > 0 ) begin 
                        n6_idata_p0 <= packet[id]; n6_ivalid_p0 <= `Enable; n6_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n6_idata_p0 <= `DATAW_P1'b0; n6_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n6_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_7(dst, vch, len): send a packet from n7 to destination. */ 
task send_packet_7; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n7_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 7;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n7_ordy_p0[vch]) || id > 0 ) begin 
                        n7_idata_p0 <= packet[id]; n7_ivalid_p0 <= `Enable; n7_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n7_idata_p0 <= `DATAW_P1'b0; n7_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n7_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_8(dst, vch, len): send a packet from n8 to destination. */ 
task send_packet_8; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n8_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 8;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n8_ordy_p0[vch]) || id > 0 ) begin 
                        n8_idata_p0 <= packet[id]; n8_ivalid_p0 <= `Enable; n8_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n8_idata_p0 <= `DATAW_P1'b0; n8_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n8_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_9(dst, vch, len): send a packet from n9 to destination. */ 
task send_packet_9; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n9_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 9;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n9_ordy_p0[vch]) || id > 0 ) begin 
                        n9_idata_p0 <= packet[id]; n9_ivalid_p0 <= `Enable; n9_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n9_idata_p0 <= `DATAW_P1'b0; n9_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n9_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_10(dst, vch, len): send a packet from n10 to destination. */ 
task send_packet_10; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n10_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 10;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n10_ordy_p0[vch]) || id > 0 ) begin 
                        n10_idata_p0 <= packet[id]; n10_ivalid_p0 <= `Enable; n10_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n10_idata_p0 <= `DATAW_P1'b0; n10_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n10_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_11(dst, vch, len): send a packet from n11 to destination. */ 
task send_packet_11; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n11_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 11;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n11_ordy_p0[vch]) || id > 0 ) begin 
                        n11_idata_p0 <= packet[id]; n11_ivalid_p0 <= `Enable; n11_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n11_idata_p0 <= `DATAW_P1'b0; n11_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n11_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_12(dst, vch, len): send a packet from n12 to destination. */ 
task send_packet_12; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n12_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 12;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n12_ordy_p0[vch]) || id > 0 ) begin 
                        n12_idata_p0 <= packet[id]; n12_ivalid_p0 <= `Enable; n12_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n12_idata_p0 <= `DATAW_P1'b0; n12_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n12_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_13(dst, vch, len): send a packet from n13 to destination. */ 
task send_packet_13; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n13_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 13;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n13_ordy_p0[vch]) || id > 0 ) begin 
                        n13_idata_p0 <= packet[id]; n13_ivalid_p0 <= `Enable; n13_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n13_idata_p0 <= `DATAW_P1'b0; n13_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n13_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_14(dst, vch, len): send a packet from n14 to destination. */ 
task send_packet_14; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n14_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 14;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n14_ordy_p0[vch]) || id > 0 ) begin 
                        n14_idata_p0 <= packet[id]; n14_ivalid_p0 <= `Enable; n14_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n14_idata_p0 <= `DATAW_P1'b0; n14_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n14_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_15(dst, vch, len): send a packet from n15 to destination. */ 
task send_packet_15; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n15_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 15;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n15_ordy_p0[vch]) || id > 0 ) begin 
                        n15_idata_p0 <= packet[id]; n15_ivalid_p0 <= `Enable; n15_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n15_idata_p0 <= `DATAW_P1'b0; n15_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n15_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_16(dst, vch, len): send a packet from n16 to destination. */ 
task send_packet_16; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n16_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 16;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n16_ordy_p0[vch]) || id > 0 ) begin 
                        n16_idata_p0 <= packet[id]; n16_ivalid_p0 <= `Enable; n16_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n16_idata_p0 <= `DATAW_P1'b0; n16_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n16_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_17(dst, vch, len): send a packet from n17 to destination. */ 
task send_packet_17; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n17_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 17;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n17_ordy_p0[vch]) || id > 0 ) begin 
                        n17_idata_p0 <= packet[id]; n17_ivalid_p0 <= `Enable; n17_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n17_idata_p0 <= `DATAW_P1'b0; n17_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n17_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_18(dst, vch, len): send a packet from n18 to destination. */ 
task send_packet_18; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n18_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 18;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n18_ordy_p0[vch]) || id > 0 ) begin 
                        n18_idata_p0 <= packet[id]; n18_ivalid_p0 <= `Enable; n18_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n18_idata_p0 <= `DATAW_P1'b0; n18_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n18_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_19(dst, vch, len): send a packet from n19 to destination. */ 
task send_packet_19; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n19_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 19;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n19_ordy_p0[vch]) || id > 0 ) begin 
                        n19_idata_p0 <= packet[id]; n19_ivalid_p0 <= `Enable; n19_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n19_idata_p0 <= `DATAW_P1'b0; n19_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n19_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_20(dst, vch, len): send a packet from n20 to destination. */ 
task send_packet_20; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n20_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 20;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n20_ordy_p0[vch]) || id > 0 ) begin 
                        n20_idata_p0 <= packet[id]; n20_ivalid_p0 <= `Enable; n20_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n20_idata_p0 <= `DATAW_P1'b0; n20_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n20_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_21(dst, vch, len): send a packet from n21 to destination. */ 
task send_packet_21; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n21_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 21;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n21_ordy_p0[vch]) || id > 0 ) begin 
                        n21_idata_p0 <= packet[id]; n21_ivalid_p0 <= `Enable; n21_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n21_idata_p0 <= `DATAW_P1'b0; n21_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n21_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_22(dst, vch, len): send a packet from n22 to destination. */ 
task send_packet_22; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n22_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 22;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n22_ordy_p0[vch]) || id > 0 ) begin 
                        n22_idata_p0 <= packet[id]; n22_ivalid_p0 <= `Enable; n22_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n22_idata_p0 <= `DATAW_P1'b0; n22_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n22_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_23(dst, vch, len): send a packet from n23 to destination. */ 
task send_packet_23; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n23_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 23;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n23_ordy_p0[vch]) || id > 0 ) begin 
                        n23_idata_p0 <= packet[id]; n23_ivalid_p0 <= `Enable; n23_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n23_idata_p0 <= `DATAW_P1'b0; n23_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n23_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_24(dst, vch, len): send a packet from n24 to destination. */ 
task send_packet_24; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n24_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 24;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n24_ordy_p0[vch]) || id > 0 ) begin 
                        n24_idata_p0 <= packet[id]; n24_ivalid_p0 <= `Enable; n24_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n24_idata_p0 <= `DATAW_P1'b0; n24_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n24_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_25(dst, vch, len): send a packet from n25 to destination. */ 
task send_packet_25; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n25_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 25;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n25_ordy_p0[vch]) || id > 0 ) begin 
                        n25_idata_p0 <= packet[id]; n25_ivalid_p0 <= `Enable; n25_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n25_idata_p0 <= `DATAW_P1'b0; n25_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n25_ivalid_p0 <= `Disable;   
end             
endtask         

/* noc_reset(): Reset all routers. */ 
task noc_reset; 
begin           
        rst_    <= `Enable_;   
        #(STEP)                
        n1_idata_p0 <= `DATAW_P1'h0; n1_ivalid_p0 <= `Disable; n1_ivch_p0 <= `VCHW_P1'h0;
        n2_idata_p0 <= `DATAW_P1'h0; n2_ivalid_p0 <= `Disable; n2_ivch_p0 <= `VCHW_P1'h0;
        n3_idata_p0 <= `DATAW_P1'h0; n3_ivalid_p0 <= `Disable; n3_ivch_p0 <= `VCHW_P1'h0;
        n4_idata_p0 <= `DATAW_P1'h0; n4_ivalid_p0 <= `Disable; n4_ivch_p0 <= `VCHW_P1'h0;
        n5_idata_p0 <= `DATAW_P1'h0; n5_ivalid_p0 <= `Disable; n5_ivch_p0 <= `VCHW_P1'h0;
        n6_idata_p0 <= `DATAW_P1'h0; n6_ivalid_p0 <= `Disable; n6_ivch_p0 <= `VCHW_P1'h0;
        n7_idata_p0 <= `DATAW_P1'h0; n7_ivalid_p0 <= `Disable; n7_ivch_p0 <= `VCHW_P1'h0;
        n8_idata_p0 <= `DATAW_P1'h0; n8_ivalid_p0 <= `Disable; n8_ivch_p0 <= `VCHW_P1'h0;
        n9_idata_p0 <= `DATAW_P1'h0; n9_ivalid_p0 <= `Disable; n9_ivch_p0 <= `VCHW_P1'h0;
        n10_idata_p0 <= `DATAW_P1'h0; n10_ivalid_p0 <= `Disable; n10_ivch_p0 <= `VCHW_P1'h0;
        n11_idata_p0 <= `DATAW_P1'h0; n11_ivalid_p0 <= `Disable; n11_ivch_p0 <= `VCHW_P1'h0;
        n12_idata_p0 <= `DATAW_P1'h0; n12_ivalid_p0 <= `Disable; n12_ivch_p0 <= `VCHW_P1'h0;
        n13_idata_p0 <= `DATAW_P1'h0; n13_ivalid_p0 <= `Disable; n13_ivch_p0 <= `VCHW_P1'h0;
        n14_idata_p0 <= `DATAW_P1'h0; n14_ivalid_p0 <= `Disable; n14_ivch_p0 <= `VCHW_P1'h0;
        n15_idata_p0 <= `DATAW_P1'h0; n15_ivalid_p0 <= `Disable; n15_ivch_p0 <= `VCHW_P1'h0;
        n16_idata_p0 <= `DATAW_P1'h0; n16_ivalid_p0 <= `Disable; n16_ivch_p0 <= `VCHW_P1'h0;
        n17_idata_p0 <= `DATAW_P1'h0; n17_ivalid_p0 <= `Disable; n17_ivch_p0 <= `VCHW_P1'h0;
        n18_idata_p0 <= `DATAW_P1'h0; n18_ivalid_p0 <= `Disable; n18_ivch_p0 <= `VCHW_P1'h0;
        n19_idata_p0 <= `DATAW_P1'h0; n19_ivalid_p0 <= `Disable; n19_ivch_p0 <= `VCHW_P1'h0;
        n20_idata_p0 <= `DATAW_P1'h0; n20_ivalid_p0 <= `Disable; n20_ivch_p0 <= `VCHW_P1'h0;
        n21_idata_p0 <= `DATAW_P1'h0; n21_ivalid_p0 <= `Disable; n21_ivch_p0 <= `VCHW_P1'h0;
        n22_idata_p0 <= `DATAW_P1'h0; n22_ivalid_p0 <= `Disable; n22_ivch_p0 <= `VCHW_P1'h0;
        n23_idata_p0 <= `DATAW_P1'h0; n23_ivalid_p0 <= `Disable; n23_ivch_p0 <= `VCHW_P1'h0;
        n24_idata_p0 <= `DATAW_P1'h0; n24_ivalid_p0 <= `Disable; n24_ivch_p0 <= `VCHW_P1'h0;
        n25_idata_p0 <= `DATAW_P1'h0; n25_ivalid_p0 <= `Disable; n25_ivch_p0 <= `VCHW_P1'h0;
        #(STEP)                
        rst_    <= `Disable_;  

end             
endtask         

endmodule 
