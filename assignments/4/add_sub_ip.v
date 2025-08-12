// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  7 23:26:11 2025
// Host        : DESKTOP-H047PU4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Digital_design/assignments/4/project_2/project_2.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    C_IN,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [2:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [2:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_in_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef" *) input C_IN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [3:0]S;

  wire [2:0]A;
  wire [2:0]B;
  wire C_IN;
  wire [3:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "4" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(C_IN),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "3" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000" *) 
(* C_B_WIDTH = "3" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "1" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "4" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [2:0]A;
  input [2:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [3:0]S;

  wire \<const0> ;
  wire [2:0]A;
  wire [2:0]B;
  wire C_IN;
  wire [3:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "3" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "4" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(C_IN),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XqGlFJrpb91MpLw3Y1WpwgKJ7pNL6VmNf13QBgNGB/PFM0WvEpxuMJSlmNnNVjII+a7gHcmXWsce
sxdy9B0LegiMd0S2WG+a1lQqitJHtembRRqvmOqyFszp4mfILIPna3Vy/4EP/fQ5TXJIeaAC6wec
6PkUPBbeRmxaLBmNIULp1cLniiUtuAp9adHMT6P/hD6UN9pApRNIguc4MR8clcf00lEf5DXTfmfk
Lnh7VuwPT24p5H4fvYLk7/TEYBzGdoz96UN+BpMe4L5ouinp7dkvCVZPDH9VcWfEpfTWXlAyMK2R
RBoQxiHpLTDP4V5laz3UBQX/R5roZDzV2GOmEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
av7GX152Qo50Pxi7yldrwQujedVk7HpMAxveILPfoVQAZbnUtDzaRDeC1yc7gC96qj3ujZJtaZad
zeawF7FjYVeDZm5ZWwUksAFe979bYBbwfuV/oODUzvupqaWFNcGaGUrzRojI1kd+7dQdkla8qG4E
KCukvrf+Fh7ePcajve8Y1SYMiMINat6i3eSYd65WS+CfZyNySxYPKANqbN6f9KqtkQJhyBCTXzpU
qB+2JIlYVLSmIqzuQiN35D33m0rnDHaLILXxwL4onaFi91HprNXUjcM9dHE5PFH6eeJAwEDXO6iC
33n5jzFpvBFmU3+Wr9Cb+S2kthz51iQvWUkewg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
sFzH+9IxBvXTrDND/aGDtbio1tSfOkhf+LlDCQ==
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
