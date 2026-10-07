transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_23
vlib riviera/zynq_ultra_ps_e_vip_v1_0_23
vlib riviera/blk_mem_gen_v8_4_13
vlib riviera/axi_bram_ctrl_v4_1_14
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_37
vlib riviera/xbip_utils_v3_0_16
vlib riviera/axi_utils_v2_0_12
vlib riviera/mult_gen_v12_0_25
vlib riviera/xbip_pipe_v3_0_12
vlib riviera/xbip_dsp48_wrapper_v3_0_7
vlib riviera/floating_point_v7_1_22
vlib riviera/cmpy_v6_0_28

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_23 riviera/axi_vip_v1_1_23
vmap zynq_ultra_ps_e_vip_v1_0_23 riviera/zynq_ultra_ps_e_vip_v1_0_23
vmap blk_mem_gen_v8_4_13 riviera/blk_mem_gen_v8_4_13
vmap axi_bram_ctrl_v4_1_14 riviera/axi_bram_ctrl_v4_1_14
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_37 riviera/axi_register_slice_v2_1_37
vmap xbip_utils_v3_0_16 riviera/xbip_utils_v3_0_16
vmap axi_utils_v2_0_12 riviera/axi_utils_v2_0_12
vmap mult_gen_v12_0_25 riviera/mult_gen_v12_0_25
vmap xbip_pipe_v3_0_12 riviera/xbip_pipe_v3_0_12
vmap xbip_dsp48_wrapper_v3_0_7 riviera/xbip_dsp48_wrapper_v3_0_7
vmap floating_point_v7_1_22 riviera/floating_point_v7_1_22
vmap cmpy_v6_0_28 riviera/cmpy_v6_0_28

vlog -work xilinx_vip  -incr "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/gareth/Vivado/2026.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/gareth/Vivado/2026.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.srcs/sources_1/new/main.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_23  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/4d28/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_23  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../bd/Blocks/ip/Blocks_zynq_ultra_ps_e_0_0/sim/Blocks_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work blk_mem_gen_v8_4_13  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/59f9/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../bd/Blocks/ip/Blocks_blk_mem_gen_0_0/sim/Blocks_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_14 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/02d4/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../bd/Blocks/ip/Blocks_axi_bram_ctrl_0_0/sim/Blocks_axi_bram_ctrl_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/9438/hdl/proc_sys_reset_v5_0_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../bd/Blocks/ip/Blocks_rst_ps8_0_299M_0/sim/Blocks_rst_ps8_0_299M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../bd/Blocks/ip/Blocks_axi_smc_0/bd_0/sim/bd_3b42.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_1/sim/bd_3b42_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_2/sim/bd_3b42_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_3/sim/bd_3b42_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_4/sim/bd_3b42_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_5/sim/bd_3b42_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_6/sim/bd_3b42_sarn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_7/sim/bd_3b42_srn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_8/sim/bd_3b42_sawn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_9/sim/bd_3b42_swn_0.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_10/sim/bd_3b42_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_11/sim/bd_3b42_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/c7d2/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ip/Blocks_axi_smc_0/bd_0/ip/ip_12/sim/bd_3b42_m00e_0.sv" \

vcom -work smartconnect_v1_0 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.sv" \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_37  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/8c55/hdl/axi_register_slice_v2_1_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../bd/Blocks/ip/Blocks_axi_smc_0/sim/Blocks_axi_smc_0.sv" \

vcom -work xbip_utils_v3_0_16 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/e256/hdl/xbip_utils_v3_0_rfs.vhd" \

vcom -work axi_utils_v2_0_12 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ad9a/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_25 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/a82b/hdl/mult_gen_v12_0_rfs.vhd" \

vcom -work xbip_pipe_v3_0_12 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/fbf9/hdl/xbip_pipe_v3_0_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/9bc6/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_22 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f10c/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work cmpy_v6_0_28 -93  -incr \
"../../../LDHM.gen/sources_1/bd/Blocks/ipshared/a6b6/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../bd/Blocks/ip/Blocks_cmpy_0_2/sim/Blocks_cmpy_0_2.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../Vivado/2026.1/data/rsb/busdef" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/ec67/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/cec9/hdl" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/f0b6/hdl/verilog" "+incdir+../../../LDHM.gen/sources_1/bd/Blocks/ipshared/00fe/hdl/verilog" "+incdir+/home/gareth/Vivado/2026.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l zynq_ultra_ps_e_vip_v1_0_23 -l blk_mem_gen_v8_4_13 -l axi_bram_ctrl_v4_1_14 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l xbip_utils_v3_0_16 -l axi_utils_v2_0_12 -l mult_gen_v12_0_25 -l xbip_pipe_v3_0_12 -l xbip_dsp48_wrapper_v3_0_7 -l floating_point_v7_1_22 -l cmpy_v6_0_28 \
"../../bd/Blocks/ip/Blocks_main_0_0/sim/Blocks_main_0_0.v" \
"../../bd/Blocks/sim/Blocks.v" \
"../../../LDHM.gen/sources_1/bd/Blocks/hdl/Blocks_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

