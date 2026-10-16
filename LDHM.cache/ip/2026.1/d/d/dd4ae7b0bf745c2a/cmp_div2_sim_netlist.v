// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Thu Oct 15 14:22:14 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cmp_div2_sim_netlist.v
// Design      : cmp_div2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_div2,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmpy_v6_0_28 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5392)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31280)
`pragma protect data_block
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
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
