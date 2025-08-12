// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  7 23:16:31 2025
// Host        : DESKTOP-H047PU4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Digital_design/assignments/4/project_2/project_2.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [2:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [2:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [5:0]P;

  wire [2:0]A;
  wire [2:0]B;
  wire [5:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "5" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "3" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "3" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "5" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [2:0]A;
  input [2:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [5:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [2:0]A;
  wire [2:0]B;
  wire [5:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "5" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lnpTinQj7h80MZ4XgQT/I5T6gkgPlQWLHFiYVAHCq9Np+v39ycSCaSfPzHtymvdAsitq5YZNF2cw
a34EgwSOh3zTdTiOSB+khVa5oSbxrntAKRNI2llL2KcYE2b89cjcYkcueLXrntAmAxBdhTWM4NJJ
/hdWvnDHfR1XCNE8bUEMXF4L51YdtsoCWbUp/GdPitjHPJm6TpVnqy7p3sCYMYqajYPMs2EZNNYN
OmBkdrXA4xtNgxWzdyvfjZXf2HVEdeERIdKRTANthJC9CVJznEgzpF1MWIe/QRyprYonSYMQtKqw
S3SRf8fj65lRwaxhupay3rUxZSXVkUsqHyG0Og==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LhjtajL0uE68ubkdZ6q0iZK8AqcjaZ9rRhTTWAm8jQY+WQpdc+dbGW/MA7Kvbg9JzJP3uIRe5jwW
KLz96MT2mbmgrHRiwJ1K2WTb1IiUePG0Pkw8LLvXxUo2NcXDWIXqM2xX2hs3fL/FdRmTYQDl4ceQ
StKEJ3PbwdLu2nz8hdElnlBv/6/4KC/fV3A0HEeJrZYpPMvDDzbuncoL53gnR7cUcb5E4ejrudx/
2K81/QjR2P4MyVH2eXK0H0Tb2X3ZFuLK86kSiWi8IDyfNpQBX1rIXua1wFHhcmE01dI8HPS3oW8n
m5SBaeyxyr1TOZ/uhNbRl5AhLOA/7rCr/p7u1g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9584)
`pragma protect data_block
oIWwr37hWbJLZD951oL4mZf50iA57ab8O4nE6gxBmWdhrg76vkOFhLfHPRVKt/FVgFdgAn2wb7pG
FK3bV3Ki8/IT9NnGVmBUB76Cg+SjkKnrhK5q8uj+N/tst951EZENyOBvWNG7ftfN61BYC+SOmNHJ
IrP/Xtpl6Oin56YF5T14A6ZEEJb3ZN3WdopUJTjbzIyge7MTLLWT8wq/T+HQ8ZDEKl2tkI1GrIlU
CzsnFF7rJRvLu8y1I/d44h9qw2HesBGuscqMQC9Lzau8C3/h2OqQZeXGiTQNHIvWq3MBUMeF/dBS
U4cCRDw/kXwNYPHa6MXLezjfeU+DgyPnjBjFr2VR9pgYGy7lxQwYCs02v2Dnh0sBaq87uOfeP2sL
CLTKhljOT7jwDPiM5jpmKiddSWjxc02FuPlBE3tcaCSuRS4IISuxQjc5Dd3ElVO/+2RA2qwz9qzp
ybbt2qYsF4H2olxnYla6zjH6GnA9jL4cfdfg7xagprkOhteJ4oVO3Z7do1Acugj2BY2HczBlAKdI
pnlEl87YHCoaVgp3XD7ne9UrOTWNReCuoYI+7zU9y4ob2pP+T2oxDtuHiiEWgfioLae/I6iQgXqp
T8gRhG+8EBkR+XepNdaxozBCrV60J8oOjIhX8MMY07bLIlxI8th0Fwlrd8zOcJ6za8punM5obJNz
aobrh55REhQJO4cxuGIv9DuLGsTEPrj6EvdLPkgaBQGh404DsHbG33B5YuvtOVKExKb6DhPKvZyG
paEiFLom1bMncaZNDZxXmTDBG9jQ5XWedIYyBRICbsGNqiQl9cLuNbWWl637pRhpPk3lhZ+nvHwL
PW1h4P3bSCt177wpBmD0HqHXmf9q1BXbOjjtOHuLrngXg1npnizy+dak3jMcLX7oc6yW2MPThJlD
7zm879yMWUvevx9ZhamDp9IudysB5s0nBijIvl+2NRc2WTikkpTDnSaMbPbS/bVRd2UibbXm5U5H
G+dIohR/HjmeF5RcTI67yHEugZsIXmPHTZW2NifHUdwdfKD5t08wu+gPzfirJoSlep6fVdD08cKn
0+kxUJAFJwp/NFHBP4WPKkDYD66CuZtWUqCCpi2RBWWIcs8M4gTbG/211xFFZYTLqXiDUPLlfVJB
x/tZWYHCTRp4PFGoTJT66dM9Htp2J9xggrPj0xFQ7An1A2o6ep3woxxoNg2uDrfq+YgvYqRm+p8u
zVaqnSNCc9Wmn2EzZvhPD1R+ZJJbcuynyHHsoRiLixJpr2PafN7UdirgiLAwlWP1v/ArE4jBF49X
36Z2+ig8+2d9oFLGP2yT5oPDW3thZj67uiDYjt5PCtAHDHThtr2FvdLNGIVzM4//kW0BLdwJ9sBz
0WE3k2N62v6WVcqCT+uF/3DlWK/yJwayu1M6OJNMT+spP5ail46scrtJalaXFjKWbmvCb06pgOVx
udEYPePQtmbuV+FnJECL+x3nekoUKKNs39WrBZlncEDGhDd+i/Oj++y2M3LaD8D3ZJVHmz8Xp/w5
ZxbSQ4i6L3y7ogZwoYE+BJYOLdisbbjta2OPRLlhLTrU9Px4r+4kF7UYmo/MefZpuBXfRqtBx0ew
eZ+4qHcPr6cJZcVHR4dyBzmrzLb/pIyyIdZnpU3aiKYkDCPQa4HCy/lhZJoyxjbDxV5c5PvuVNnd
e0gKblN85PEK6BKAa7X/knU13gVLGu9zvSugvPByPQ1TB3pXceqnrUSJPDeRrKZdfkc8KI+1TEBY
1RJ9vKwhbyrxQeFC3SE7d/2QYiNFCQdgtOaoHLYXP6dpgF8roINemfM8GS7/QEgbDO0JSO5i5GVR
Ba9ezCratnvE2rVhnDF9dN1Mgw1laL/Xstyn8I7QzjQ3u0kPkjB26miCF962/CCrJkObgnrULfwb
j1qi/Zr0eSDeCCoqHeRpDVo+6mnNo9m5lgq8G59ijh6VkKKuH0d88xV1fl6RcCNtUr3AzMRngLNG
UkLoX2D2y63AxZkY7u5xug8Qx8S31qIwwqFVLYJvdToshI0CkFeAnigE0nWXcJlbNnnMyz/yC8vC
FXaix+m9YU53oRlJ/Zw5Wa42brPBevSZTlLIdclnlF2sjC97rG+KigYlUZqqC6q7S9LcB8j+nZzK
L1bKntCzO8EzbROUPhPER7gvFqdyVTqE9NPLAdtBhLHu6iLx41STqKmQHP/AmUJm0JzNJyKkv9Xp
F313hzmITph5kw6EJJg2X6Qr7FK0fqH20+2Mtwd27VESoJoZsfD4XkE+CaHj8HX7/higHszNcY6Z
5pHRwQsBxFF3BCtCmcNesryqjdmzf5kaKnafjLh1w6UBqvvTX2OFBldL6w21WPJAjHpDLBOz8BfN
jvmkVvK5Drp7UHsX7bYcFmBiaWbTX0RkjaJG+SVktWOBGLglvrhmgFahNaBk6M0EN9Zymzb8LK9F
XyyWD4tbKCnjZw2cVnp/uLc2H5GojEITqWrqNVaAjfIq6g+DLpbs5igYLc0ElDW7Li643HVAjO4e
QMh788+DTCbXc3fs9xe7u1Zc0w9G+SIk6fTHLOiY9dcoNPkF9n44hdNUsC2QybftUZBLgvPMChVL
XH1461xGFzsDHEC/byva3Nd7wxg5oOaCVpLhU1gycgJwC869HHWRPeL2wrosS4Df5xCCw/0kvy3i
pnMiRSkslZ59URysLMSLPl5DUo/pjv+gRKN0vt6NR0h4QJo8N1zYQsHDVL7rXNbMdolFV6SmaAhS
ZmTcVXz/GjOCiQQ+2nTUP5h2KIgxmp+0Eo8RvjaUu5HXJOZ94vEjyUFA/CKSCkRrLdhVk/k8AeqD
ZQYwgUb/jd8KBUguOehSR/qUDrA9f1bNwmWfYwfCU6OwFVAUZqAvPXlLkLLskA2i8aBKqRjwCQYc
cDVN7NdjVnM7CGFeo0lmfLXN9y4tIOd2xeIgOEwwLU3aT+MSYTT4GWP8ZopsbwazNxc1fsfhn6xo
mg4ffVCGqFRHO6IJFF/uZlY1FmyWC5cdnf59bMTrU20B3K9bc01cRXQdoQx3g7tTyDAeKs85t0e3
o714jwME3RUwN1Rjedhtk8wGbz4ZbljExRLWYUjNKXX2y1WA4dMFPp3IK1oJtBc/xldVlhcSdKT0
FYORG7y7zbFsZHME0eb6oV0m7BAALEF+aHwSsyz9MKV5Go4GvfuATsE7XdAJnTJkTC95yS1HCVw8
S9C7qa4xoYXrbN0B0TyEM7bachykZgyg6f7ce72g2riur4EujVn1sw0/tNpcJuvWGgw9J8rJ3Fkz
cUWuiwFKVZaDuF7T3nTKsVB25ryVkVwrb0xsLSFZ8PGVYVjFQUVbjN5T1jV/dfNjH0wXp6Zxofez
HWDu8EMvzq0/vo2xALofdTEIu7jeazokzdvjcTV+3wVfC1q2nOFxL1Qm45EOn6vginwMcqZfbw8O
/qrlL0SeJLsNtk50bTcM2b2I+/HA86kCPWq1Z7pNGuV2VvKbzXkjPHxem6Gcg8L1Skp89rd90oq6
5AVSrLJhT9GAocsF4e4RhkSVGLIXV7Q5ViXzXNLt24LGBZgd4TQJ58MmZW/IyolDnbg3rsvSUlpT
AtZVS+1JyFCfeA2qgtDzadYxuNg74l1eOroafRp3u22GvOXXWyw2aC2w8E/km7QijBv7OVPYYWV8
4VGvPwvHMF9hyVP+9Vuyu/ApRa22wQ7cyaEmPaOUgmFsJ5y3U5FQunIFeYyI8A0chn43N1zW2s5P
8FxLAT8x4usY4epIyGcpLSlgkgb0TC4tSLRQLU/ACOg7bZRJcvciYd9k7dvQqWoYIovcwWytzQ4n
E/pkyNlMRIUJ/nzi/SwfHRtuCJHGLc6B6FlYYfycxL4yplEiRHYLTuy8vtLk4u1rQo7yPuDH7E1c
8iwB5TzIM/ls54o1WyvRm7L4MuCWywWHsaUCr6KdLvArYWkCzuDsXoeMKmEosZkhsuZYS76/tugm
xD2Ne/DsaTagG0sB6EGFW0u6Vmumpul47Lm6ET8Bko/nFiQwMTqVuO9X9AkQnjfNevyd3cqsOImd
DgNsa9Ul45vNRoS+wheMP46UBECZG4zo0J14j9ii/gAgrQuY0FuCZL5Rve6VTwvOSU1vPq7J6nzt
NJXACFev+R9C7aZ8oK7q2qg3SQYAQXC3pIGz25Wv0lhwlc8lKIJ3BsGTHggg4/cd1sb9Gczl89T6
fZyqkbbwIfHOGONTXGsSOz/oM/IStJaldAvsxY+QVgM9ZWqOtTw6rlDTYjIAz+/B09nxzMdibfyJ
2CqGOdUxCo2K4DoI1Nc9BNkZdIYiMAv3iZypqLhP74scJrZdR3F21VYBTnJybfSMiX+THkhwZO5G
2YOVBjGdoA62RIvJzAcAWDbibJThufpeF6lVXZMZFQUtp8/WLYZ2rjobno1bPxMW/wl37T1gvPvu
jKaN3VBW+pvmCF/oNIZInel8I2anyveaOODR7ZIGpAexm4Ph9oJWDesi57VNkkQ44YAI45YXPFo8
FhN9pfJwGOQoVMLjBOrhuOBChMpfuTbiNklRW2Nsou1zymE40ZCtr01D8D80IdZfwVd6DAzN5zKh
oirVCaJNaG6VQ+mHhA0UbeDoHL4jn4qK5vmeNeY8gUrpLNwlt/c3lCHShwi0OufKUleknM5LDLLz
Qrc63O8Jm1+oZqo4g47kxiY6SNDa6ooejf8g7Tf1FmfPgJNW0P4cn4anENaH7OmVT95xdNJ17m/+
8snes80KulEvAV7Gc9Ch/aCod0lBu/NBiB/CYIB6VNbf/ThGe0PYemNtpFAzmTbw9myQ5/N1iyp4
vgqQyNlJhVnKzZUE6nsHy+S9+vQf4vq+TtvIJGyAW++IChljDvUTkqTCBsCVU8X52nUdSmfUSbMo
GQLl5809EudomvoPz13CYoQKaQCV7JqvAs8Q+5n+7ErDze0410Jj5grJPlmvnCBzdCAuNzKbAEk3
ScoHGWPmvZ9FOqDWrSg+YiqRW5JjzImmGYNeJESV08gzRMSTs32QULMV5YopEA2hpj4wQ1qUKd2O
K+Y0gU6A/MTFdy+1BWJ9FW4gVPhZCFa8j0acbBoM8hRIEb0BJSbIfG/fT1CD1FhvZ/Nv/SKufYUX
oDVvGkzJWOWJIV44vfmC/IDlefbTCovJFalYCHWx9pOowdjb6sQ6IYy0UBExhvljc6bMH/lwL9cw
iZ4MQj5CHyqZRwBX8Ma5xitujBcIrFGktURWrTrRQML9YIH7EWSsTdrDjQLsN6Nw7uBIhSgXI0iB
mZCbc1HeAPb3GKNeNMoTUZc9pqFXj5/tx9JUCDSfE7EntXXXZS+HQN+jAMC4G/aWSBwakiAYIFCb
JwI59goyD9s/X+MxualRTa8BEnxd/3xHDDa2OqOriYiVl+rtstYvNlwKUI40VqQWI3KHoWSdvukT
NVJhcvYqd7RSvrhXmxcUyNUhVET2iWIMthGNT3v+QXPpsTtBAXWmyLN18vdtoRDSfMQQ3hLOlrah
xziXbfkEVEAJpOwq1QNiz5OT2+9tVT760w5G1kHR+TvXZxFIibEGKpUFaW9aOddigl0zUSEJYuTN
sQr+OG/G9fD4wU9EG7bv72/nX0SnGeUyXJjCXxw2vHFdOfVmHaRh08Lw5mcsLcgtdlAr3A0t1OMz
PL7RtQKhnRRxumJ/ZEKzEw0pnViWmPY9gmCfLKf9E1ZcD0G3leZrt0IdBPHHLEJEUGdW8w4YXKfu
2hSclsrW88GAqhN8+d6UAt3vY05MqUhK0U79rQgnTvJxEAsqEolIST7okvjSsUJIM8UxagneF9cz
ZoCTDtbt73usTEHmXull/irJuvkZ5ywyv4tuKaQarJKiYvNAC1vWqNz86jQ+HjZMkbcJGLBwdjN/
lWRDnNZGpmMExO+2MpBZIsPdWKBrDHU/dz3xAvK6STUi8gDEWuq7YJo0d4e69ete6OSE6WdhSwYo
6FX1CDMWarxZDeH8onzjccKfLsqSAZk0Q4Q/ESVm9/EIPfLLXCq5Gaxr+JaIaHeUpeKHextD2DV3
atmMnWf8QsR8OX5mVB0sF00aAPsdKvcVgF3bKHpVIz1A0efhhlbOln+xqoOWyzQEFDVR5fBIHDee
VT/yHYPAbUh7xbsrNBs5Bb5JqYtnkGogowrG84w6bb/RIi+IhqwB5hLOO1B83rmMIWsN3hjHD5tL
X3o5q8l5dlAl+b4pIDZbvs+E3h+ekQoIbD3umbOs2Z2DzCM3+hTIa9yOpAAx6EnYELTPbL98AmKg
3kSJjzWE+8eOkWp6GSzX18imPkQbKWGH5EhfK8amM/i9uQU1AEVEXoMc650g1RqX2p0wJAEiywib
wxaMLjyvy/EAU6MNbmgt5wtbbpCEDcoGmcsKOhXVpaIEQnhoijz1UGNCRQ8KDD2n9G7ewxnBWTuS
3jaQGBshS2pBxXP2Rp8CTlUBg0CeLPXuEGtPs4ou2cOMXg3rfQXtEl2VFTml/PUUvQdLblQk5MBx
8RsagD8AgfTFMtjubaUvu0K3jUe9j19CCSMy28y4PHRlRbGEo7LDBhthYGhgrbufCVJBKK0Y3HI4
35ZnbE1ErGArsZXoHl4gjlp4zx2m9Z8AkStGO9Ef79sIbR3WAOWdTir/fCB+ss7sAHfHSe4LT8uA
K818Y23mqNgTsmtozLB9D0WVz2eXxBrQ53LQCKqWSrIApVbmZX504hYxFZqwJsX1XdvQ/uWPRwEY
QofkkClf0GVrde/8y/dFynaY1UE+aK7DiLgMEjSuK/o9sWSbuhCGZxMRftqRT+wElfo4fnH2/+zb
LLi9TLU8zJEAYK0z3mPCQHf6w2mGNwOouIPz3N0WjijyYbu4AEkxsrPc4n+LalRsdaXG/wQsJcXL
wrvBOAmURM5m24B1IHxhtj8X2ClEpJWW3MfVJKQsaY2ruOwFTFungAF2HvYagZrcIcElfPxWxuRS
nd+Bh7Wa1IJZO6wcLwktNgcofH1wtTGKs2wMnenqMd2brramJNUDOxSabDnaofi6xNbKVqZ1IhNk
SiKPyNWl4PUs86R/XRLVPQAbd5WR6Z+HwQLGjfgcTqmizmVxXhVXwMszZnr83egVNulo3H4WBOZE
B2gzqc4IFkRIVLV+BBKD5jDa5sGGDq9sBCfpSKMtUMVTst0GiRxTxv2bkYazB3qjpSq8ZhnU8DNU
I8FanXa+WvUZwfaQQRRoOeWEFXIomhkrqFKKkFSs+pxtrc16NHrB3Nwj6pQuwrSeeemILpGq5yGF
YgVgcds8CxSMizThiueI03eH5MJtgtrv6oIi9R3fRUBg+SMYRJXuQBB3I0MS77zm8p2y4HmgTPXm
R3xmcjspaUtwSD+St09nAyCA9wxcS/7rp5riCb1bNp4QSHkqdSiF2LMW15gXSIk5e5zTb78Qib/e
/z+yWkt/OMsZlcmxYWhHVag0SmM8d+i7mhlonRaI9Nw4Vf/nEk62tK2+0F6xjNE8SN5qfLNpM5X/
h7FdTxv5pp3gmP+Z5e2+FhpWecqyXgssdtYms5/78pQ0Zxtbe3xf5tN17hweX+AQ16YODFOOmSgv
NfyHg/gRv/Jsi1XAz1nPfzhKWK8zGcXgKP396wlYRSK+A3tYFFcsqCvtAdtHV+to8V6H0tMYDIer
kPmCrjTXbDdaosdKwDhcRBclYbnyRqK/UulBx7doky7PgHB5TQsx14RLPmkGOB2xylKCxjUcVReP
i20/Pq4rge0ZLINMW3vR19IBQLZNIqGInXpnKc2L6Xq8zmbnk3KBH75NEwiVminTVgwkPC6JAwWE
PTrUy0SBoaLgqC9Mwwnl13e/2nrKpszNvqGmDowcnYON1v7IM7b71Z1T4dt/4o1yL8XfeXu/Ldlx
mSGMYemY9t3NDYyIxJSRVc29X8LbP/15oy6lv+lAJkhE4H3XbetiAUWkmUezq/nwCHYLkAHtspyL
2a/VHpYqZAnU2iQ+h5FnuRy5qNn4zIRmxVEET19w5poeFHtVyaWxn+nmbkLPLyiI0hjEStplPULk
RX/q7eTjj51LKVoeOxhndNK+vwEoW4rAKCxn9vFdSPD+mOrLnUvDVtlWIOJnHib3QjJcInVVeCKO
C2HFEYXkIHoMSdbTlZ7JLcrfiL38ejvQes//jinwfpm8QYblTRJOEHHvMFNHvWiu8Vjx2cEMzfn9
1M3kNBj5aOwvLRYrx2Rekv6o4KD8Yxc33M5r6QAbkUnwbGkXmigjqzZZz7LW/pIEx3t+OlXRVGNg
bmO/0rqNOZAsAjP1F4oRdg9njJedpUP/Sby1q+0eZiI5xvO+Swq43NZtOGi5PQ1ZO6274eZzOS+P
J7P4c7+mcsQlkqllFohYcARRg2x04Ikq3Tb8iVrPj5vej8ND+n6Cgt1g5AKmXhmqrCsZPDIzhw9e
eiLLfi23oLg57Tvl3OEQ4ERl1aUhM7a3KX6TV9bNhFzODqDfwEvJoBlEZrS6hy6QZAcOtMo7x96h
wMOFuHg9+i2zEA0WZVjQmykd9VUUK+lwJgOkrMoKTOfNneFD3HXcS3J8xlcQYLThDMouc60H1C6B
cD33z/1X3NEdOjLSStktcK7quyttLsE7K8GeSVBta7F5g9t/Hc8F1qRIuV6HSzWeVqNsbKpnRDSz
MNCNdEwJoY+ROWvQQmuQiyc415/b7axYayVm9RQ8gwtRvfGDpSxzo9YxAl7XcXF5BQvMSkSsYDAe
SDxMAq/+rzuM5KqO9DA44t6BZCd6EuOMnUdn6obF7OytgoA+NI+Ps2yzf7/6VhbnGvqlZxlA1XZE
FrZ+r5Q80snBs+VitYuIYWc2fIusQrtGZb0RDX4Yq0PmAn6Ohm8G4U3wK2dxgbh7CFS7XyJ1Bhzc
S9rpLFFa4u7hjGG68Sqgnr6rPqvh4sB3GZzGjMWUr5eAbNO7d3+XyyW0+ctrCKwPjwAI2sPawJNd
F80ERYiLGGRTiDykyY6hj4rI+bMBxDLu39lzRBvIePhJ9fXQVvyywCYoKCuSphQzdfzoxy57UctA
tXkHw2UxNaxXvBri9PjGT/6eUaZZzmHktoZsWA+mHkT2leKFnCu/C1jo+fYxO/Gp7Z5KwOQEuAPN
hhKN2jVICJv8Bu1WIL/w7Jj1pNfihA0QSvzrb5YUrZhVpKQJBInEA4mexEEwx6PYm6AEtKF03DcY
WRIZLNK0nVF/SGU7dsVGYxwn5gBHKlUK2BpvbukuZACS2aBkojiijKdSAYd0dhw3oXe9/5jXR0/r
Xcwauzb+S7NxIc/HhjRL4wAqJo16eKLeW5zZrWNdEaKCsIdhU6aE3XNqKC+UtW3HSh1XqP4EV9vp
BsaT4tW2kQV60g3p/k3kNatfzrkl9mgt3GIIvlLMknt/cESq15RxlN+HsOulCtunk1F/oAEIFUXk
z6iHLrG2YNVOkyqc12fb1kql+JsQBT4zPD7hYGQO/OjvVhj6Oc1f0579Mxr1Ns2vQX5wxKqZCd3S
qxKMqJDEMFZ/ElrJepQw0p1F+Vlvo4OT7LhkY+SBi2Fcflw/GaJ/FfkKHHyK2e6kza+MezlzsNKw
FJdrAdv3euc2kzvGYkVGlt+AzCagZDPk22KdcUrkBhUFhCkbqpabIkL+7RHAM1Im3RKUMmqWI+Lm
j4dLFUrXcPXghMDOjkymSA2uwWRrOarPy6d6anjdcvC+lNZ+lMhFbvDSFwqKK/DyrLMkVKjz8v3e
TnxZ+tfVSN8F+o/0GMOIugl9xcmD8TC3vVNVoaV5nIMJz0CdSmbNuVtZIh++mHpKFTAWaxv9m12G
ix/0Wlj0JhDVrx8nxVZthVYhAPqukSDIOoLyOyAdZ7R94iCcz8AWuihIKXx2w1XcJ2+tHd8IHBd8
7SSyk6m7uopxxV3IKB9BZiUDxy9Eq5IiY3fwn3eCtj0Qpensxvd5T57SyrWBEbQt0yxmLvFsjrt7
4qai5HBMYycN+8+SYzFReNSNUiul4vQOVjxXXQnFwY3K8koGPaZLrV+QXgfJB1JreBN6y/P2qOMB
iAsmLveqp0i1qhEgGe45VEOVYisndX0/g1JFwhnj1tFuYI8ICQ7jpDhLNRG7PAujhg26q9YbIwQl
MMhzkeff18yQCq2YyJgyfZ+/47wj+hzpakfTOaDBR8Zbkw9ZLDReCYA5T7jJd7ZVoubMjQQJqXWa
1Op0LYmEpXCbHQPcD27xfOXvROaFZAQ1r/fVfsv8u695sVFwG9Xrv31pwB+U5d2gbgbKfPTbpuBa
WPlBGZ0DvUJtfT0cMuseggTx0J/EDUu3RcaDSPf3Ts9rKJlxzX7F7zR+HuxgN/HH8VJGutqrh5Xk
vCVoR90y9niO+bBBmBIQ38qn0w3Faz7uFZ8Y5Db/mW1xpov37c9Y6W9Qiiss+CfMOQUBIZ2zsyix
ahx97/uay8ekBdZGMNmYq+YjGVk+q+YikNddVytCIhNay3B0Giglnnj6MqYZDxwIhMT55kKcE+UN
MBxD7MzZK9UHaNZ1srKs0dANryPajPMUiTjtrbpqKVwXoCJxg8hY4Y4z9Vs1MKUTLzLYZBY13MAG
KFNStg0IlRI6wmqNiQU+GQIZ0LCqla9IX1IOuIqMpXVZxM9G1B7oRT7nsAO/SPTH2/u6Co9PcAgn
YPnHsR+6Fown8wGPgwzXGezGjQksVFaYQuZJILG31SZD0F2xp4YO/GHt/c4d/AgvEskSLvWjO7jq
xnFjMjBJ6r2KBgis3ScesdlvfA42IvZep0zUZxBrdiLW3eicloQFSGZnbreGFJ1ZjyuAiMkHCjE5
GIlRNznS03VCQU14tqyHN2dNakLZ3NAoZRkS9hXsgZ8joELcLu8fIlQDgixLxPw8pHy18RAxRMGY
ESeju9Tj0mnfTkuEgz9vK0K7w6m7lDz6m2AfhxvEsQgX86fCcB+I+HDRH62K/kahFltLs0hu2qQ0
c8YvDUIasvR0Sb8eQE3GukVz2CWLAgIEsL6P3XmNwtJJ9xqdUXnc6Kskn3pLcUbRqrlkXi9lHiQH
nHG2rkfe88cbuh9ogu4B1mWyjpb2zJIc8dfm4KZlKwRGUtj+mA/xM4f4T7A0/Gxbr2rTyslU/mkC
rD9Q8yRZGwRaiVHdODPLbDDrsTHk02nSgMOzT7t/GAdqeMJ6otk2VfXzRtQ/WU4uNrFbj3avRwRG
T1k+IoqWg+RasJPNen72s8C95CJGNSs/lYXuUHZ1svNGRWYNoN8FOzdPMcoNcUvS7iidy2yomrFl
KWtKux7MIxmzyS82MMtn+wOl58WcOWwZ4mJKHCP42BLfZiFig2kJ4u7s0JuWUapUt7g0f682fdIX
+pVeCKWgUTIjXWXINfiQT12IPeT4/eo6RV35NclcgXCP1VYVkAi8xhAqUejK5HDrGkDWfLmA9adm
8DL1/qUVsMeakYTSdSX93Ycfx51D3Dio30yoU65XUIKLLpvEJt47ZidrgOycrK4KVm3S64U9/cBt
GxGspKEBuOxURYT/xlVcmlKgGktJzaS2D8cUEvuMe1VD5zG1ez86HwvI2Pa4P2a5IkikFM6myPRL
K3fW2HtOHrFWoQR551nOtb1hyBdaNyQWvnOD38Fo6QJZR4+EWzNcQsBILbGmPErJ3FarJ7JFBmTB
/iXPuxCGCGDKcIAu/sICVu5pTdYy+98HfH3MM8eTACPVDPqFnpcF2WO8wjsfrvjPCNd16TUNvfZZ
cLwjqCqxoZGtyGGkN/kfm09TIn3cKcRVcjqJqu3ymY3FHFiVANz+/qBDs0bIaLv/J8pYIdt3kY04
2oRTmNrx1+O6hIKH9IlYuIm9Sf1O/lPJ9MIytF6TGcSoQJ9l8jWbNRo/tnI1K1D+LRwzKhNRs7Rd
wCysX8ffmjGVgj9PsV1pY3tdflcxA2Cy6Fi+qCJQZ2wTzyfy3ZZgrEGcAfKFivM3yzPnin0UbwRB
gdHk/J9cDeNRyu444GRHCPqjPFp2yGfyHFxV7EEG1U9rQT98I1Kx/8AapQCub1hj6HkHTe4t7uig
NCG2bMs+w2WzlxXJn3UILd/P9uM1nbaFNgvkexLQ1OM1qt6Rnjj61eXzAyJYRBrL1Bx2V2Ek4+fr
td7X9iiY8CHnA9yw8CQE2H+/fnd+2ngbZ1gP64orBClglKgpKbatauIyTbOrb+lugdqZSas41Tt7
Cw16GsbFaRAUbRxXe+bIgjbAuuq61KJ20Sl8ZByQCEhPj/qAZqsD+j68JGEy6Mu9P5mnDjtnzW75
2Nm/thxxxO41UxS5Tdps2KnSmXzPz4baiDGJ8QYNWCPCm3nIAgLEdyy40nuKX0X08o7Gh3a/fB0h
xh1kCbIGFKTSsc98P5TpoeCIyBibS6Ayebe5POJ64MzWZM2t5qcrZ1LgHpjvW1eVemrBdhW/lg82
qFsPMAb48KL+HNWrssbRJi3NXykULyjYKilbnwaiWic3iS+HGUae/JGiCklgdO5PxgjR9bVoml3r
pr0I5y3m4WqddNB6oBibglZmqf++PklcOQn/duE+CONpy4cE7TQTUf1FH4bgAGJETRWYjViww22B
5m0WI4pnNWSKukUMUji+cjhVr6O6WtGYWEK8hAGslsFBuB9H74ogsx+GTasWtmaRWPXqjOkFSzbm
VTMu+k3zObHtBXiX8Hn5P19HRYLbcceaca94mKLUhsarmWWvCXRi5MQ4acK/4913NWMnRAn1nRhy
pQ7iHZ0zg+tgF3mKtvYkgVmetcCPhTpXfNXYk3fbCOqdXlba1o+4V/dojCBZYxkjXrYfAZ6i8eo1
WtFUxzxkHR+MhnYXH1qFGLrMrB+nUvKM2c/OPUjByHF5Jjf+rXWsS19MWNoT+90UOuze3Rb5Hsgj
taAZf5qh0U0=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
