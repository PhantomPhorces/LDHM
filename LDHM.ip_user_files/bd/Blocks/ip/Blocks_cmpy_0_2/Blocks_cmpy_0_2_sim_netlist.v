// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Sun Oct  4 22:57:40 2026
// Host        : gareth-inspiron153520 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim {/home/gareth/Documents/Computer Engineering/A
//               PROJECT/LDHM/LDHM.gen/sources_1/bd/Blocks/ip/Blocks_cmpy_0_2/Blocks_cmpy_0_2_sim_netlist.v}
// Design      : Blocks_cmpy_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Blocks_cmpy_0_2,cmpy_v6_0_28,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_28,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module Blocks_cmpy_0_2
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_mode = "slave aclk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_mode = "slave S_AXIS_A" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_mode = "slave S_AXIS_B" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_mode = "master M_AXIS_DOUT" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN Blocks_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 73} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 33} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 40} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 80 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;

  wire aclk;
  wire [79:0]m_axis_dout_tdata;
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
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "33" *) 
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
  Blocks_cmpy_0_2_cmpy_v6_0_28 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5344)
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
Pg6IN3tzh8fkOFAi7RaoXuQYzLxSOt8URI9X13Yw02hveocI3uo4CdPK9rW1Swrrz/cZfzD8iKpG
SBH+Dg97AZSHVk3VJfFolqbmN9LNqDo1E8EBXH8vEwy08FocGFxfethd3TrodqAcsqq+qFlMUqr/
06X599XKDyrKgtcknRsBRp0ECBYJ61c5rtyxBCONL8adpVbiWK6Kreay9vLMh6J89kuU1Js5t2Kd
5lM+emOL2Z7w64drGgxNEKyFREzpbAcrs8D+W7pRyN8I2omtxFFMJfNa+8qk1ZG8QdOayp1ZwApu
t+wcIluLoWtRha3CwB5Y70SlqKX1X22bptAG/Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
byiwMklnWuTlEfJwrvvLDnD5PYb3GJ0Xs6ZIUSoDlybavOjEfoZEaTfHQEz4i46Pctc3/q8LYde7
upgw9rLQ3W2MIG2+eW82NpSsg3hLb1JhhQH6Pub0Jneuxr4wI6X9ScDIvXqUHGGcmjxiMY144KqT
MH8mlCDMT8XYqV3Tp1IVquX6UY6o0iFwk2HF5k7dD6ParmgvcNFopiJ9MY02HFfTclzOAzq9Ch+H
pub+mBH6d5suHBj2epqmMiie9mLvWX+AWzcq7fwneeVTg+YUXCcU9f2VB+f9vLqx7JyMsUPkKr5a
HxzDFdQ/GhP4cVk99MA564+9I+RwgD1KgaMs9g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30720)
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
