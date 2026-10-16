// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Thu Oct 15 14:22:14 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top cmp_div2 -prefix
//               cmp_div2_ cmp_div2_sim_netlist.v
// Design      : cmp_div2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_div2,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module cmp_div2
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_mode = "slave aclk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* x_interface_mode = "slave aclken_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_mode = "slave aresetn_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_mode = "slave S_AXIS_A" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_mode = "slave S_AXIS_B" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_mode = "master M_AXIS_DOUT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [63:0]m_axis_dout_tdata;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [63:0]m_axis_dout_tdata;
  wire m_axis_dout_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_ctrl_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_DATA_TYPE = "0" *) 
  (* C_HAS_ACCUMULATOR = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_S_AXIS_A_TLAST = "0" *) 
  (* C_HAS_S_AXIS_A_TUSER = "0" *) 
  (* C_HAS_S_AXIS_B_TLAST = "0" *) 
  (* C_HAS_S_AXIS_B_TUSER = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TUSER = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "64" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_S_AXIS_A_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_B_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_B_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICE = "xck26" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* HAS_NEGATE = "0" *) 
  (* ROUND = "0" *) 
  (* SINGLE_OUTPUT = "0" *) 
  (* USE_DSP_CASCADES = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cmp_div2_cmpy_v6_0_28 U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_ctrl_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_ctrl_tlast(1'b0),
        .s_axis_ctrl_tready(NLW_U0_s_axis_ctrl_tready_UNCONNECTED),
        .s_axis_ctrl_tuser(1'b0),
        .s_axis_ctrl_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BMxUo3/4RjWRj3Wd7LObRf1dJ79+yn8FsMFATFaVfsBA8xvy6x6CQQgz7KQz58g0bMEOhjm1++c7
LW3zfwFRivL1HbRWiIZI7Ci35xcfOb7WrPjx4+faWERPur9fJ0ZpW6TXRIJaZxhdbijAn57szL1u
oY06V7ZDTHH62mz7+P8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PZpbUU2/v8P7bVkX81KBrfcszndQussi35nNW4bb8aIXV+uhAFcPEE66g8JBccoD/vIypaaWJxLi
2bSSz0DJCEN9VUvx4WNtcMFLuY8RIvfKxzBPcydC4h5Z7O+obGNKc74rKXRaeizZMbgr0IbnvIRY
Rx0/AvyLjK2t8K9cM61XNhcosS+IYnn65CgiAdoHhZpmdMGE9iUjzGizLUrwgZgIQqHavI8rbzec
h6/UgB+d81imq207+v3thlweVVS8SMr9yqHdBDeYqb8P/9EhqteET00bS8OzN6gN8UPx2C3xGkeg
YaFnk9OFI8wic7eaPtj1cAoNI22z5kt4mO8X5w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vg/IkoU4ye2HWVLAXwHbxK3IiAULJesWwgoZcSs7ATQKNACuJSmfu0Xwj8wLF1OLZctTTAEHnz9D
Pbji71vsCSNGqLZGUZjcTNvwyXuDyzLEwm1YE6QuWK4oGrL1x8YnXBP9vnCV2pi5ZU4Z8vq181PS
XakZS+49BwNUWH7sveE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wha7Cmv16oO9YjJ3BJOheqrLdMjc9fJwH5pmenhBn9lE+3rCitnGwBWGfse3+31MTJmjzGBTeixX
b234IkpPZXTVBWW+vrliMK8U1zfM7cFWEmGkMEpfgPESiP4qoixjoFeTXhRul+PSK4sfJiQ1JuZM
shbB0ZseGOaan0k6fufM2F54u1qVHngx1ylLydKoB0x7/KbomzMkmzi5RR1y+hHqnIuvxjPC35zO
EsuwCdITOxpF/weNypzF2bYpcsKwzqDeXV5z4wgOR3SOqBVPXJw7oizJyePMvfy1UZvvcoU5sROl
44yafMVu6++bVpHzjz8m4eICJqM6x7zYTP45sg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zaDbbb7WrRFlby5l2tNJ3htlRanDbqgE6fvYYnfccBt1vteGmTg02MfRaByrakiSFz87iH2AFJ9+
XBSiVRmcuwHJkEqhyrvmCUuSEFbtjAsW7b8RUn45za4yIqKt6MaVPYM9PuLAlpEBq2dGV2/o0/Fq
k5LsFsZqFc3xk+8c9KyGvayY5I0SMh2HabQ5uBGlsdVRpdFDPi2XItXYOOqirZVA6nBdxVlwVjEk
KjbcMHAABXTsV+XPaU3U8S7waXH/i8wMVLDFd84Ji/n8kJwpgsr60+lTCp+uH/nmjoZ5Qk4siKke
VwtvSEqYS/Pbmrrhu7Zq3fhdewHZhXdxilbf6Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ajg5y5WFg0hSqzq8wqdiQYU4OVNyonv0MPorUt2Yxtt5RCZmfhWi4uYToqC6+eWR3kzdwD6FCYOI
rD6voHaQRsm3WHQGJLoleOjl24lBhRlYBTXQ6WYlYm1wUI+arNXXBC2Wh4BF3u24qfZwzMNnaSPI
9Sn5D+whJCtoEiq5NPgj8LPylOv0rdTLZd5umgZYUe0vAN2T3YHDS4igjOiQ8xVuLrtFanrRIIDU
f5ND3fACEF/M2lAHCd+eFzHtSpCX6H7xgqxF23IejIyj6vxlMo4nZig252a29w+1QTLTDVgY9akL
0QWuCd8AlY8QX1r/zVb5uXxiCKLIt7MWSBFwrQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dst/ryBSzU9N7sFYUmWDVbiP6gHazoOLqteELRn6/pKFj5s6s4tM4SkMa4J1pPqJSkra6wiS7Bt7
FrVHYy9Jf4kQcYR+oTewYwdfIWo2L1L7HSal8UIFzl22GvFeKUlVWHuvg9nCEDT7NmuQFff2Gw0z
PSR/BUHvWcmwR2rV6vrYoyBL11a9i1vZ1Zw9zXtKq1Tb6td9cor+Ew+167b9kNjDeHxvGuJ2Aasm
73tKJFEClj1T2laAa7ryTiQvgC65Qhy5nObrvUc/cMqdI6ajwZSDZPFLCAwDVdrEcrjKw6D56vtT
vuAM5CwdP+0WuPHJdYQ38sjiiG/+SO4n3DaQQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
scLy7Ov8cUgkDNlA2kRA33d6vwL3lYU9Lr/zzhiFv7j9AeYgOmtuIc0kL4z+ypQ3yI1rDtbEhlos
7IhqxKJ6RHwRDUAhdBplIkHEOlzydVR8HzxmeUoL15txuPbYiiop6LqUzz/+hMn2sfRfHe4wZa1K
Viqv7eIB7nlFCpKkl7jy+NyprcjWcfB8q3i3GAlLulzefm7/mPT7KtKZOTWR5KXJr+81b2NRF5eM
VxJifjnKFA0aJEWh//LyRyLNpf+NphEBeUuMRCDTwBDbPX0sj/STZuBeKPo3BPats/MkE6UXm9j/
oQ6LUXPdvfD5UXLZZKDQveAQp0w/XlB5HloBGyusPuO9UjxkbKzpH3EdSQV0mrVvvo3ljHz+tUnH
ivfll8SO+MHkt4gzCUjrimEKzBs85x6xFCicEN85GYJQ+Op730nggce5F57B41t76sYCU3KshbOI
Ib9O6RksxGVNQqJWZbxhcPENdnzwrY8fWkqCb8jJQttoNJlGPhjxOr7b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fkI+wEWGISFnJEsi1GuKp2KAV0HCt2yUp70uQ4vFEVoTYqfm2ERZCNfB0CiesqkJoU27BJgFL5Cn
HJHDlnDwY2UkNrs/7FYr7PdpKcW8BrCvZrNwksAaRu/b5ByEl82gC9L6jKN93PjhTkxQUka9W/65
upmXgACXOSk6OjYx89IqDqeD19sABHxyFu4ZCaQpLDaHNFQvVJren4f/U1NpXTkC2wrjE8OZ66aT
HOPfXKqqvNy+38CoHkLmSscQevf39zYdN1Vnuv+t7Js+OY/FcT/29QH5vxrbrm6uxRfp5Atari2z
xoHneHksJQTe9T+8fJLmYHahDqMwZu2vOGJomw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5328)
`pragma protect data_block
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
7Y2Fw/Sf5h5rWOEdvODXU19OXdV9unhOzNR7
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BMxUo3/4RjWRj3Wd7LObRf1dJ79+yn8FsMFATFaVfsBA8xvy6x6CQQgz7KQz58g0bMEOhjm1++c7
LW3zfwFRivL1HbRWiIZI7Ci35xcfOb7WrPjx4+faWERPur9fJ0ZpW6TXRIJaZxhdbijAn57szL1u
oY06V7ZDTHH62mz7+P8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PZpbUU2/v8P7bVkX81KBrfcszndQussi35nNW4bb8aIXV+uhAFcPEE66g8JBccoD/vIypaaWJxLi
2bSSz0DJCEN9VUvx4WNtcMFLuY8RIvfKxzBPcydC4h5Z7O+obGNKc74rKXRaeizZMbgr0IbnvIRY
Rx0/AvyLjK2t8K9cM61XNhcosS+IYnn65CgiAdoHhZpmdMGE9iUjzGizLUrwgZgIQqHavI8rbzec
h6/UgB+d81imq207+v3thlweVVS8SMr9yqHdBDeYqb8P/9EhqteET00bS8OzN6gN8UPx2C3xGkeg
YaFnk9OFI8wic7eaPtj1cAoNI22z5kt4mO8X5w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vg/IkoU4ye2HWVLAXwHbxK3IiAULJesWwgoZcSs7ATQKNACuJSmfu0Xwj8wLF1OLZctTTAEHnz9D
Pbji71vsCSNGqLZGUZjcTNvwyXuDyzLEwm1YE6QuWK4oGrL1x8YnXBP9vnCV2pi5ZU4Z8vq181PS
XakZS+49BwNUWH7sveE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wha7Cmv16oO9YjJ3BJOheqrLdMjc9fJwH5pmenhBn9lE+3rCitnGwBWGfse3+31MTJmjzGBTeixX
b234IkpPZXTVBWW+vrliMK8U1zfM7cFWEmGkMEpfgPESiP4qoixjoFeTXhRul+PSK4sfJiQ1JuZM
shbB0ZseGOaan0k6fufM2F54u1qVHngx1ylLydKoB0x7/KbomzMkmzi5RR1y+hHqnIuvxjPC35zO
EsuwCdITOxpF/weNypzF2bYpcsKwzqDeXV5z4wgOR3SOqBVPXJw7oizJyePMvfy1UZvvcoU5sROl
44yafMVu6++bVpHzjz8m4eICJqM6x7zYTP45sg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zaDbbb7WrRFlby5l2tNJ3htlRanDbqgE6fvYYnfccBt1vteGmTg02MfRaByrakiSFz87iH2AFJ9+
XBSiVRmcuwHJkEqhyrvmCUuSEFbtjAsW7b8RUn45za4yIqKt6MaVPYM9PuLAlpEBq2dGV2/o0/Fq
k5LsFsZqFc3xk+8c9KyGvayY5I0SMh2HabQ5uBGlsdVRpdFDPi2XItXYOOqirZVA6nBdxVlwVjEk
KjbcMHAABXTsV+XPaU3U8S7waXH/i8wMVLDFd84Ji/n8kJwpgsr60+lTCp+uH/nmjoZ5Qk4siKke
VwtvSEqYS/Pbmrrhu7Zq3fhdewHZhXdxilbf6Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ajg5y5WFg0hSqzq8wqdiQYU4OVNyonv0MPorUt2Yxtt5RCZmfhWi4uYToqC6+eWR3kzdwD6FCYOI
rD6voHaQRsm3WHQGJLoleOjl24lBhRlYBTXQ6WYlYm1wUI+arNXXBC2Wh4BF3u24qfZwzMNnaSPI
9Sn5D+whJCtoEiq5NPgj8LPylOv0rdTLZd5umgZYUe0vAN2T3YHDS4igjOiQ8xVuLrtFanrRIIDU
f5ND3fACEF/M2lAHCd+eFzHtSpCX6H7xgqxF23IejIyj6vxlMo4nZig252a29w+1QTLTDVgY9akL
0QWuCd8AlY8QX1r/zVb5uXxiCKLIt7MWSBFwrQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dst/ryBSzU9N7sFYUmWDVbiP6gHazoOLqteELRn6/pKFj5s6s4tM4SkMa4J1pPqJSkra6wiS7Bt7
FrVHYy9Jf4kQcYR+oTewYwdfIWo2L1L7HSal8UIFzl22GvFeKUlVWHuvg9nCEDT7NmuQFff2Gw0z
PSR/BUHvWcmwR2rV6vrYoyBL11a9i1vZ1Zw9zXtKq1Tb6td9cor+Ew+167b9kNjDeHxvGuJ2Aasm
73tKJFEClj1T2laAa7ryTiQvgC65Qhy5nObrvUc/cMqdI6ajwZSDZPFLCAwDVdrEcrjKw6D56vtT
vuAM5CwdP+0WuPHJdYQ38sjiiG/+SO4n3DaQQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
scLy7Ov8cUgkDNlA2kRA33d6vwL3lYU9Lr/zzhiFv7j9AeYgOmtuIc0kL4z+ypQ3yI1rDtbEhlos
7IhqxKJ6RHwRDUAhdBplIkHEOlzydVR8HzxmeUoL15txuPbYiiop6LqUzz/+hMn2sfRfHe4wZa1K
Viqv7eIB7nlFCpKkl7jy+NyprcjWcfB8q3i3GAlLulzefm7/mPT7KtKZOTWR5KXJr+81b2NRF5eM
VxJifjnKFA0aJEWh//LyRyLNpf+NphEBeUuMRCDTwBDbPX0sj/STZuBeKPo3BPats/MkE6UXm9j/
oQ6LUXPdvfD5UXLZZKDQveAQp0w/XlB5HloBGyusPuO9UjxkbKzpH3EdSQV0mrVvvo3ljHz+tUnH
ivfll8SO+MHkt4gzCUjrimEKzBs85x6xFCicEN85GYJQ+Op730nggce5F57B41t76sYCU3KshbOI
Ib9O6RksxGVNQqJWZbxhcPENdnzwrY8fWkqCb8jJQttoNJlGPhjxOr7b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fkI+wEWGISFnJEsi1GuKp2KAV0HCt2yUp70uQ4vFEVoTYqfm2ERZCNfB0CiesqkJoU27BJgFL5Cn
HJHDlnDwY2UkNrs/7FYr7PdpKcW8BrCvZrNwksAaRu/b5ByEl82gC9L6jKN93PjhTkxQUka9W/65
upmXgACXOSk6OjYx89IqDqeD19sABHxyFu4ZCaQpLDaHNFQvVJren4f/U1NpXTkC2wrjE8OZ66aT
HOPfXKqqvNy+38CoHkLmSscQevf39zYdN1Vnuv+t7Js+OY/FcT/29QH5vxrbrm6uxRfp5Atari2z
xoHneHksJQTe9T+8fJLmYHahDqMwZu2vOGJomw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fv8AD+yEWeSdH+ZT4dzMqAYVNcsCBiM4zmulXYfQXYkQV6wmggVrNYTkFLGZ5ZCKfyn/QiUojHTB
mV53/tQ37hY1Pnl9WwmegKLT4xkKsgXf3J25EmUoGftK1pxAGM0x8vGmn6/1kvEX3m43GwbDtjzf
45ooSnIwy1N3RkylGYp4qZYGL1+8gFipjnWXytg8XacwOI11RUsCqIKJh67vwyP4FIO5jHqZh/sg
RL1myD4fiVdKlkrBrO3aozwDlulShI5rQcxgz4H0cqd6fPInmfh5Ks1jqLyZIYKsPs1TMOLRlqnF
rScWf8pQz34eaqZZP3ua2ncLCTZpWJpIImypQw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SMyEXp0YXtA1j7Av2PWIIlBWjtZuqYxB0Wht8y6nDngCMBMuGHcTGA0kIs4cN1YoB4ye/ph7AcOo
i7RJRdc2OJWVFr2ifaEtuckvVha7wZbv04bwqRuwcPnb9xVJ67n+4GvGK22azV/YBxUJCyxOBuLB
tkahZqimXmDvXKGAOJi7Pf7lJdkhgi4XreswU5HBlU7c+f/4c/G4QcXAGbf5P/ZQS/jvCRIhPZZI
+BmUWtXvXxmxFsKilHvsO4pQLk8ky6HwxiP1ZIqFr8HMHobvcT9ii+ClGeSZVh0e39Glr5pNV6M5
fh41dg6NJLo40hY1rMoLuH8WKfh2OfWVRnfinQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30912)
`pragma protect data_block
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
vrKj6jwduByQhHjS5RjjDYF+
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
