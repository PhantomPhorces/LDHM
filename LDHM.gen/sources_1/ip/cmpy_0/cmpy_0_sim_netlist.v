// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Wed Oct  7 17:29:07 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top cmpy_0 -prefix
//               cmpy_0_ cmp_div2_sim_netlist.v
// Design      : cmp_div2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_div2,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module cmpy_0
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
  cmpy_0_cmpy_v6_0_28 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5296)
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
BxoyN9Id1EypHn2hasjoK0ymSqZHt8gHchDQOp6mcWHTq8h01zRS28rLCqBEHz/dlXp6WPgtKYP8
LyHMLnMawx8CU2qMYJHV74a7I3OYAwOTohmLyv3aYI7C//RJvJ+UjtR7t81a4oyR33axjLbGSbI5
HRFOka57eYGAIb+4a1M20v5JV+TwwRyfIhExPPDGSWZOxtG5jNYLfltALuj8IO1W3+6KyXvRsqGj
oiPGEyV3QRMOxI3SefDMZ7HuXQOjo7OfTH7KlZZvKlE1YgiBbpHlea4aDNKQNyJISh4iMuAiFkMc
xdrz1VXLd0nudo8tTWsOIeifYTbJ3JbyO1YhNQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4fLAChdDLNy2ereYbvT5+4mX4RzuAsvEwcXxHuz7OMAEHuSDh8JXX5HD8pMwZjzNEaMJrvhKq3v
usMtJhKabgCDkXQ6XB/JBhicmezNQNSM+pVRTRGoLOxxIQ1Aj06Iz/AUGxTVizIPu150q2yPzFzg
foDT5ePTVxJXzcl8MrdEHMNocEck+B6XCTKa6r5fNXtZVsWFIHYCfV+hwddukEBfqUPNNMIikOPq
/Usi8hsviY2tGb5dnIunyAIYXfSlCAscIqrWPi6pGIpNmC6cVDcUNxdVGzsiB/B+3YTaUq5cX48i
3c3kD8tKkISdsX4X0ujj+xboIupFAfESuINVYw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29408)
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
