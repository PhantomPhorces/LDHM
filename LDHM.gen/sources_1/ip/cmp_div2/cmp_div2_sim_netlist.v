// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Wed Oct  7 17:29:08 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim {/home/gareth/Documents/Computer Engineering/A
//               PROJECT/LDHM/LDHM.gen/sources_1/ip/cmp_div2/cmp_div2_sim_netlist.v}
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
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_mode = "slave aclk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_mode = "slave S_AXIS_A" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_mode = "slave S_AXIS_B" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_mode = "master M_AXIS_DOUT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [63:0]m_axis_dout_tdata;

  wire aclk;
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
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
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
        .aclken(1'b1),
        .aresetn(1'b1),
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
y4liIgonRE/6MQJPg9yfi8SlKSlbIceMRYGz
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
j/39hE4hR+N/6uIsj2bfcZ/9PW4n4ecyDO0cuY4LG4Rqp5dPZRxZlEkk0CVBDD+CfWBXwKmSaGld
jCSSok8hqOKYCDaVyLpaUOykNn/UlmSKbJ0NE1/uHdG+KUV640LxRfVcgzTeJO0Eca79HW91+sfE
am6Kolp/FL4mw9ISFqcGy4eCohHZtt1zz+SXFV62BgTX74rIheuugfyh5f9aKpQVttCsvcD3XZjD
h9ALJGFnZAkQR48KA1b9bF2Flw1prvWeDPtPESawlL1o+UClZjtpfvTI2c00JEhCQxHuJhr+nxK4
GXd9IBkxdqdTDIGWlG0U0KF7I+WJ0+TzfEFbuw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M4S4abdfC1IkiSGuGQjBhNzgochxjbcb7IsyZRRS+dURl+5XEoV1T4WhvafpEF94iqaInSvWTP6q
uhCqjgvE97PPWZv5jPmSBxNuZRz3nBXE/4oaYTHUgIeuWhLRQEhfAdyag7fzn/hUVZ+CCNx5Kakk
ykIY/a3Gml8N6oiaGBdFXbddjejO/ZU0pMycPujyrDazQGHt71ZcjtyTwI6h1EaFSlFSoOX3jTcB
1CuXBc5jOPe2fHYR0Ic6sPwQtjU/dvNB9xcuRmH7UBZ6H4OIgmhe48mzJ5gGEUfIbILYNdSHs6OI
xPu/UyHHrWhtVwb9ZI4vyMM4lZzfw3IxKC1Rzw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29648)
`pragma protect data_block
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
f6KXO4KbFl0=
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
