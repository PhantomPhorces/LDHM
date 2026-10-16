transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_16
vlib riviera/axi_utils_v2_0_12
vlib riviera/mult_gen_v12_0_25
vlib riviera/xbip_pipe_v3_0_12
vlib riviera/xbip_dsp48_wrapper_v3_0_7
vlib riviera/floating_point_v7_1_22
vlib riviera/cmpy_v6_0_28
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_16 riviera/xbip_utils_v3_0_16
vmap axi_utils_v2_0_12 riviera/axi_utils_v2_0_12
vmap mult_gen_v12_0_25 riviera/mult_gen_v12_0_25
vmap xbip_pipe_v3_0_12 riviera/xbip_pipe_v3_0_12
vmap xbip_dsp48_wrapper_v3_0_7 riviera/xbip_dsp48_wrapper_v3_0_7
vmap floating_point_v7_1_22 riviera/floating_point_v7_1_22
vmap cmpy_v6_0_28 riviera/cmpy_v6_0_28
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 -l xil_defaultlib \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 -l xil_defaultlib \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_16 -93  -incr \
"../../ipstatic/hdl/xbip_utils_v3_0_rfs.vhd" \

vcom -work axi_utils_v2_0_12 -93  -incr \
"../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_25 -93  -incr \
"../../ipstatic/hdl/mult_gen_v12_0_rfs.vhd" \

vcom -work xbip_pipe_v3_0_12 -93  -incr \
"../../ipstatic/hdl/xbip_pipe_v3_0_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -93  -incr \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_22 -93  -incr \
"../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work cmpy_v6_0_28 -93  -incr \
"../../ipstatic/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../LDHM.gen/sources_1/ip/cmp_div2_1/sim/cmp_div2.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 -l xil_defaultlib \
"../../../LDHM.srcs/sources_1/new/main.v" \
"../../../LDHM.srcs/sources_1/new/twiddle.v" \
"../../../LDHM.srcs/sim_1/new/tb_main.v" \

vlog -work xil_defaultlib \
"glbl.v"

