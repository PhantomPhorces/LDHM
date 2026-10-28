vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_16
vlib modelsim_lib/msim/axi_utils_v2_0_12
vlib modelsim_lib/msim/mult_gen_v12_0_25
vlib modelsim_lib/msim/xbip_pipe_v3_0_12
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_7
vlib modelsim_lib/msim/floating_point_v7_1_22
vlib modelsim_lib/msim/cmpy_v6_0_28
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_16 modelsim_lib/msim/xbip_utils_v3_0_16
vmap axi_utils_v2_0_12 modelsim_lib/msim/axi_utils_v2_0_12
vmap mult_gen_v12_0_25 modelsim_lib/msim/mult_gen_v12_0_25
vmap xbip_pipe_v3_0_12 modelsim_lib/msim/xbip_pipe_v3_0_12
vmap xbip_dsp48_wrapper_v3_0_7 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_7
vmap floating_point_v7_1_22 modelsim_lib/msim/floating_point_v7_1_22
vmap cmpy_v6_0_28 modelsim_lib/msim/cmpy_v6_0_28
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_16 -64 -93  \
"../../ipstatic/hdl/xbip_utils_v3_0_rfs.vhd" \

vcom -work axi_utils_v2_0_12 -64 -93  \
"../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_25 -64 -93  \
"../../ipstatic/hdl/mult_gen_v12_0_rfs.vhd" \

vcom -work xbip_pipe_v3_0_12 -64 -93  \
"../../ipstatic/hdl/xbip_pipe_v3_0_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -64 -93  \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_22 -64 -93  \
"../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work cmpy_v6_0_28 -64 -93  \
"../../ipstatic/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../LDHM.gen/sources_1/ip/cmp_div2_1/sim/cmp_div2.vhd" \
"../../../LDHM.gen/sources_1/ip/t1_multiplier/sim/t1_multiplier.vhd" \
"../../../LDHM.gen/sources_1/ip/squarer/sim/squarer.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.srcs/sources_1/new/main.v" \
"../../../LDHM.srcs/sources_1/new/trig_lookup.v" \
"../../../LDHM.srcs/sources_1/new/twiddle.v" \
"../../../../../../PROJECT SIMS/Sims/FPGA Reconstruction Testing/tb_main.v" \

vlog -work xil_defaultlib \
"glbl.v"

