transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xpm -L microblaze_v11_0_12 -L xil_defaultlib -L lmb_v10_v3_0_13 -L lmb_bram_if_cntlr_v4_0_23 -L blk_mem_gen_v8_4_7 -L generic_baseblocks_v2_1_1 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_29 -L fifo_generator_v13_2_9 -L axi_data_fifo_v2_1_28 -L axi_crossbar_v2_1_30 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_18 -L xlconcat_v2_1_5 -L mdm_v3_2_25 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L lib_pkg_v1_0_3 -L lib_fifo_v1_0_18 -L axi_fifo_mm_s_v4_3_1 -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run

endsim

quit -force
