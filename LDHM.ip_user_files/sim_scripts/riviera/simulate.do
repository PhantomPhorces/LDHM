transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tb_main  -L xil_defaultlib -L xilinx_vip -L xpm -L xbip_utils_v3_0_16 -L axi_utils_v2_0_12 -L mult_gen_v12_0_25 -L xbip_pipe_v3_0_12 -L xbip_dsp48_wrapper_v3_0_7 -L floating_point_v7_1_22 -L cmpy_v6_0_28 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tb_main xil_defaultlib.glbl

do {tb_main.udo}

run 1000ns

endsim

quit -force
