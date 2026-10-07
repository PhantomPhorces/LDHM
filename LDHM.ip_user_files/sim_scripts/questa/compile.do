vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_23
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_23
vlib questa_lib/msim/blk_mem_gen_v8_4_13
vlib questa_lib/msim/axi_bram_ctrl_v4_1_14
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_37
vlib questa_lib/msim/xbip_utils_v3_0_16
vlib questa_lib/msim/axi_utils_v2_0_12
vlib questa_lib/msim/mult_gen_v12_0_25
vlib questa_lib/msim/xbip_pipe_v3_0_12
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vlib questa_lib/msim/floating_point_v7_1_22
vlib questa_lib/msim/cmpy_v6_0_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_23 questa_lib/msim/axi_vip_v1_1_23
vmap zynq_ultra_ps_e_vip_v1_0_23 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_23
vmap blk_mem_gen_v8_4_13 questa_lib/msim/blk_mem_gen_v8_4_13
vmap axi_bram_ctrl_v4_1_14 questa_lib/msim/axi_bram_ctrl_v4_1_14
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_37 questa_lib/msim/axi_register_slice_v2_1_37
vmap xbip_utils_v3_0_16 questa_lib/msim/xbip_utils_v3_0_16
vmap axi_utils_v2_0_12 questa_lib/msim/axi_utils_v2_0_12
vmap mult_gen_v12_0_25 questa_lib/msim/mult_gen_v12_0_25
vmap xbip_pipe_v3_0_12 questa_lib/msim/xbip_pipe_v3_0_12
vmap xbip_dsp48_wrapper_v3_0_7 questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vmap floating_point_v7_1_22 questa_lib/msim/floating_point_v7_1_22
vmap cmpy_v6_0_28 questa_lib/msim/cmpy_v6_0_28

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

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.srcs/sources_1/new/main.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_23 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/4d28/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_23 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../bd/Blocks/ip/Blocks_zynq_ultra_ps_e_0_0/sim/Blocks_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work blk_mem_gen_v8_4_13 -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/59f9/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../bd/Blocks/ip/Blocks_blk_mem_gen_0_0/sim/Blocks_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_14 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/02d4/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../bd/Blocks/ip/Blocks_axi_bram_ctrl_0_0/sim/Blocks_axi_bram_ctrl_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/9438/hdl/proc_sys_reset_v5_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../bd/Blocks/ip/Blocks_rst_ps8_0_299M_0/sim/Blocks_rst_ps8_0_299M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../bd/Blocks/ip/Blocks_axi_smc_0/bd_0/sim/bd_3b42.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_1/sim/bd_3b42_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_2/sim/bd_3b42_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_3/sim/bd_3b42_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_4/sim/bd_3b42_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_5/sim/bd_3b42_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_6/sim/bd_3b42_sarn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_7/sim/bd_3b42_srn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_8/sim/bd_3b42_sawn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_9/sim/bd_3b42_swn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_10/sim/bd_3b42_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_11/sim/bd_3b42_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/c7d2/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_12/sim/bd_3b42_m00e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_37 -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/8c55/hdl/axi_register_slice_v2_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../bd/Blocks/ip/Blocks_axi_smc_0/sim/Blocks_axi_smc_0.sv" \

vcom -work xbip_utils_v3_0_16 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/e256/hdl/xbip_utils_v3_0_rfs.vhd" \

vcom -work axi_utils_v2_0_12 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ad9a/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_25 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/a82b/hdl/mult_gen_v12_0_rfs.vhd" \

vcom -work xbip_pipe_v3_0_12 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/fbf9/hdl/xbip_pipe_v3_0_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/9bc6/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_22 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f10c/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work cmpy_v6_0_28 -64 -93  \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/a6b6/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../bd/Blocks/ip/Blocks_cmpy_0_2/sim/Blocks_cmpy_0_2.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" \
"../../bd/Blocks/ip/Blocks_main_0_0/sim/Blocks_main_0_0.v" \
"../../bd/Blocks/sim/Blocks.v" \
"../../../LDHM.gen/sources_1/bd/Blocks/hdl/Blocks_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

