// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Wed Oct  7 17:29:07 2026
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmpy_v6_0_28 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5360)
`pragma protect data_block
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
rn0=
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29728)
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
