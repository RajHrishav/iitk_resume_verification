// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 17 15:40:23 2023
// Host        : DESKTOP-O5B1OJN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {f:/IIT/2nd Sem/Design For
//               Sec/Incomplete_multipliers/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v}
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    SEL,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sel_intf, LAYERED_METADATA undef" *) input [1:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire [1:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "96" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000110010100000000,000000000010000000000000,000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "2" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  xbip_dsp48_macro_0_dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6jZK6NIVv+7/1tlzJd4eRQQ6rM6USDHddvHQqrYM6OqNVuoDb5I2SckTZTmmFHG4KTN9Yt9o/Kd
5NKjautnKkQ7HWmmRE2W4jwm1PX1GFp/IAoBUnks73GXVRbQoXKN3zCXrZDeSoyxDTitlRMZ3lXM
LTjoOwU6YuvMhQ4bfco=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B4lewz1Cy21BLdfd1yNiQAHEcPQq4OWCx5YiBFfP6ZU+1aLJ0rknLauGGcTOSRFkZL+QV6iyLcZZ
zysCItt7Jt15ffijwFA7jaft+7jawlZABJbceyyMNVv/23YugnhYk53jGkYnp2xDy/q61XS1ludF
Ed97kHsPfq6lI9WgyLnd2KkjQPS9s2yUAxEQ6juHGEBu2HsXUWwL2FYIuKxM/4x+nm3n0d1TnuiL
saaiFyZw4VktFHREZPeaGPT8x77Sk2QDOJ1cSPE7bttHihi/lHU6r3v99pb9axCZipRKpPnreT16
srZfmXqqxAZB6tuEsAzms8JGKjMWefmghhBJHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fdbTTtSy1o2SuzHY7hHnh7YxkGYBmOuQmkSKyL5Qx1U6qHWeYLWcwez9/4Tw/AgnafXHLR4zDAXR
6bT3DnLG6W8BAhN8J/uTjlIk5fVkKVDvbEzn9gyAaKWmXZIlnHkgOpIxz3CWEddMCuor3N1nEtJg
LN/0GFLpa3SOrzgSuAg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WOcDpzvWO34xEOiPvcGX3mgCzAYEWdhwsRO5dLZBtsZvfxKeCT+VqXfStZjvdkms7wNGDVqj81Rn
TqUFU96bLdzl28PxoG3NrFyo2/6kmtQlE/mnT4Bzk4ZWJc3V7pk9z3UimkvyCuUCC59BC18lEARX
ItIOAkkfxrYcCWt+oQrYDslq0Lo8h2p39idJiF6/iWFwAcWsGrxh1dBWoWTd8K1/chHeMKLB+PFl
nFWgeN/Wus+nkbSRgmuCIxA0u10haujiodnkyESbhhCon96pwG9uNvRch19GjAlHeSCYtWr/6Xo/
cGSs71rTga7lB9rHIGtuNH5WRRW4IfyWWSr3cQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w5zvy+xN1IK2h995gNfb/PJc3lx6bmpb32X3OPGD6Cz+Hnut1WrRpDFxI1y+U9ZAKyRpeoVCrR7H
DS2lr0IqNfhG/ydpwmzqPQi1vGf4Gng0NpOWNzEaGFyuKsbfdOChGU6F+ZKUuPx1LInV/Acty0E/
Uf9HEK6WHi89FNEmbMTaavhyW6cgFs9+Gtxb1hLAp/+JJ+bfL0i+fvaVdFmy4Tpic02W0rez30dp
k+L8j0wlpmGEjGUci3V8DO2W70LDuEbVuVXEdte0Gy724MMNN6iwKoXCLDTDnEoOR2gxuGga4TNt
kv/7GOkMvrJOAwslzMwvVwXfnlQ39huRWRIn4A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FRGUkQCUsk/6aRxdk37mwHCCsCa1DvfY6nbxnsehLy12mB+1Rg4+OUWeOAWDWMpxHfnp+3Ne7Hdk
ji8VoJ8pjFkdxQG7zDSRL9mJfCaLyJmwoetg6/1XEKnJ6KOLTpiJ0P6W19SioDXptOZGjNO2u88h
87VrQw+nNz3Y0WAs04NEfuZCKspz8RMDCaVJcaSUKryAGqpTHASUYqzlwnIV00rVJAdiAzVI4vf+
YKCTsvA/LL98nZvGU4y85CClSJRxraLDLzyfBt9cojmuseIWD0/QLFd+jg+feBcGqK37hiY+LA90
bPnYlJsCRi7KUXQf+R4o3aUe25budbQp5O/hGA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LPEZd7tMkPwqna9oBQOVsS+EroGq7hX2uysf/rHwyuoVq58mgOc8lNbyn9IaWwlLmDWZTOdau9Js
4gsBWmIOee12BH0adhmdrZzbrhLhkeLDETc3El6IU1G4kGpVjIzo1hPF+LI2vm5PO4S2GAhjdnF4
viO4wTcqZZNiPVoqsEo12WUsrFTBIXK9wnFz6creZaBsWjcfFSRsULDJVV8IvGKIC2acGD5S9aJ3
NmN72HPXR1vgfbfAJ4dJPuxwe/kG/Rus2F+bp+H13iqGQ+5/5gkfzJbuUO3k+a1CaGH/S5OFFoFH
mfROvi1WVzy86BSvfO+Ixp5DqrawhZnlmOXGZg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Ai9OZMMAM3N67/csiK0jt4C1EW8kzQ4ZuwLYrh8tqcVPB3k2nqMKHjodBIZJY01reA0v8nfkdQhG
nRJTv8miJQ/Ir0q2jI3ok0n5kToxVZBjpYwMrax6vV16U0CxBuOeTSw9X9buYX4zKs22XrMG5voM
kcaCy4UUQ/AZEhE6W8ggYQBcfpHgPc/C+wGiFwaIcm1yn2HWUMg360Pfk79Y/tSLYCi3gdacUVYL
B8pCvdPM8DVx2d1Q9yjYaZ4pshEZLF83/pAVdo/+ONRTv3XH36vSTXNSbo1pfVwGMyjGDMMqdSry
V6QDC6bIvL0husCHNCy5OUqT1Zp5a6ZcqX8B+X2we/6kUdCHqCCeqVQy5JUpuQ4RHrw9rrvanbdE
F9E1O9ZnM3Lr7E0nAJpHkY6NEeoC5Zz/U5gGEGUDTF48BGLMfDICUNPtiAgoWSEzhhr0q7ncfIpL
iRwXzCS2bfWndq0Y+ACZDpboAdbV4rtTYxTq6lbwkKSCqtB+2NJFJra/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eOp10fJ5pjAsqI2Kz+zVsQ9fVvxkxqEkBfGA6W2BxCFjw1UIRU0CFsl9fapK95u4Qa63GeWb67eF
Yfd/Ynuz4hEtzLP1dgD479zGaq1CzV6V0oLr3QtHYJLUmgmO5c2DiP+NPt1VM2IZpNwBwVT+KARj
Znb+5RgiR8mK+Bmc4YQfiQTUj+DN7NCgSbkQWEKQN/y4K6oR29x693+BwjWUQnUjpJLGi/xMBMpx
PVUnDib6K+wFyENiTHZjWsXWS/xbkSHx4DvvJoSGCgi1TPma511meqPPX3LEFWigKNoeUHosmR7I
V6o2mtx2bIlydD/OZDal+9lOVxxX15LoXfZd3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MwXJzEZmiwfF+kysYuSxjOp20kbqJo6p7sYhMkVU4Y/d1sv7TQSqe+/zcW9wqPAaI4SyLeEb4US8
X+AwTNdiBoBTD+oaYTbrgR2OhNIxALH2x3j9soZiut5JGTdX1EThTtlTwANLgRFxeqsUs7mWFFPU
zjEDiOTUoXyt3TYgFucHOIbsxPhbx318u2woye8nkeJBd5fr44mJpMOCv/lHbvr/8+o/Kqejw+cY
+uUmyAAfDaXpDx3TXvW/3ntvk8ucP/qLEXiQVs9j5RS/WsOTU/X3F4ACARwpORuP2GLoeRKL7LbL
5vVLQICWD39KqwaRfbYn9f0D6xsuoxkeVJPbuw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fNPrxeKgz2MV+bhdSldgqv1g/sI9O8lZJym1JbhCJr0XXtaiCuUB5anGixKBGzX+0UZxzpW8JXO4
Mr5aa5qW4hj5sn4+NX1kMp588WG4BR5NCEImOBSHSR+SzuGViSnq2BHiml630bhnLc4jd6KLLJay
7STV+WkO+rUC6eO0BXUvgs/1406JG3zwO+RLibplvYz5Ou3JM3CZLVjv0j4OM02h98gcekisIxKK
aDdiWwIK5puDYbVAId8i4uKYGB9jwjV5BPW2ZWkzfTq1JvaFhAWys5NVTyjQ+or2IYUx+lPqjvIL
Pt7CXIfeFxr186x4RJ+YQbVt2PMu2LiyNxDxLw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26864)
`pragma protect data_block
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
z338BSbn+yLHK19t7iNiDP8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
