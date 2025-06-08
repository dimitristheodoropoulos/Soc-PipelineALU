transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/microblaze_v11_0_12
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_13
vlib riviera/lmb_bram_if_cntlr_v4_0_23
vlib riviera/blk_mem_gen_v8_4_7
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_29
vlib riviera/fifo_generator_v13_2_9
vlib riviera/axi_data_fifo_v2_1_28
vlib riviera/axi_crossbar_v2_1_30
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_18
vlib riviera/xlconcat_v2_1_5
vlib riviera/mdm_v3_2_25
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/lib_pkg_v1_0_3
vlib riviera/lib_fifo_v1_0_18
vlib riviera/axi_fifo_mm_s_v4_3_1

vmap xpm riviera/xpm
vmap microblaze_v11_0_12 riviera/microblaze_v11_0_12
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_13 riviera/lmb_v10_v3_0_13
vmap lmb_bram_if_cntlr_v4_0_23 riviera/lmb_bram_if_cntlr_v4_0_23
vmap blk_mem_gen_v8_4_7 riviera/blk_mem_gen_v8_4_7
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 riviera/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 riviera/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 riviera/axi_crossbar_v2_1_30
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_18 riviera/axi_intc_v4_1_18
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap mdm_v3_2_25 riviera/mdm_v3_2_25
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap lib_pkg_v1_0_3 riviera/lib_pkg_v1_0_3
vmap lib_fifo_v1_0_18 riviera/lib_fifo_v1_0_18
vmap axi_fifo_mm_s_v4_3_1 riviera/axi_fifo_mm_s_v4_3_1

vlog -work xpm  -incr "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_12 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/f557/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_13 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ae24/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_23 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/1ca4/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_7  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_18 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_25 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/347d/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/ipshared/92d2/hdl/alu_fixed_v1_0_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/92d2/hdl/alu_fixed_v1_0_v1_0.v" \
"../../../bd/design_1/ip/design_1_alu_fixed_v1_0_0_0/sim/design_1_alu_fixed_v1_0_0_0.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0_S00_AXIS.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0_M00_AXIS.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0.v" \
"../../../bd/design_1/ip/design_1_my_pipeline_ip_v1_0_0_0/sim/design_1_my_pipeline_ip_v1_0_0_0.v" \

vcom -work lib_pkg_v1_0_3 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_18 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_1 -93  -incr \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/sim/design_1_axi_fifo_mm_s_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" -l xpm -l microblaze_v11_0_12 -l xil_defaultlib -l lmb_v10_v3_0_13 -l lmb_bram_if_cntlr_v4_0_23 -l blk_mem_gen_v8_4_7 -l generic_baseblocks_v2_1_1 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l mdm_v3_2_25 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l lib_pkg_v1_0_3 -l lib_fifo_v1_0_18 -l axi_fifo_mm_s_v4_3_1 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

