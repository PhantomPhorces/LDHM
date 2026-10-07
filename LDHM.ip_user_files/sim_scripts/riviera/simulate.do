transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Blocks_wrapper  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_23 -L zynq_ultra_ps_e_vip_v1_0_23 -L blk_mem_gen_v8_4_13 -L axi_bram_ctrl_v4_1_14 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_register_slice_v2_1_37 -L xbip_utils_v3_0_16 -L axi_utils_v2_0_12 -L mult_gen_v12_0_25 -L xbip_pipe_v3_0_12 -L xbip_dsp48_wrapper_v3_0_7 -L floating_point_v7_1_22 -L cmpy_v6_0_28 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Blocks_wrapper xil_defaultlib.glbl

do {Blocks_wrapper.udo}

run 1000ns

endsim

quit -force
