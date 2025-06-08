vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_12
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lmb_v10_v3_0_13
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_23
vlib modelsim_lib/msim/blk_mem_gen_v8_4_7
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_28
vlib modelsim_lib/msim/axi_crossbar_v2_1_30
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_18
vlib modelsim_lib/msim/xlconcat_v2_1_5
vlib modelsim_lib/msim/mdm_v3_2_25
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/lib_pkg_v1_0_3
vlib modelsim_lib/msim/lib_fifo_v1_0_18
vlib modelsim_lib/msim/axi_fifo_mm_s_v4_3_1

vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_12 modelsim_lib/msim/microblaze_v11_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_13 modelsim_lib/msim/lmb_v10_v3_0_13
vmap lmb_bram_if_cntlr_v4_0_23 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_23
vmap blk_mem_gen_v8_4_7 modelsim_lib/msim/blk_mem_gen_v8_4_7
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 modelsim_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 modelsim_lib/msim/axi_crossbar_v2_1_30
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_18 modelsim_lib/msim/axi_intc_v4_1_18
vmap xlconcat_v2_1_5 modelsim_lib/msim/xlconcat_v2_1_5
vmap mdm_v3_2_25 modelsim_lib/msim/mdm_v3_2_25
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap lib_pkg_v1_0_3 modelsim_lib/msim/lib_pkg_v1_0_3
vmap lib_fifo_v1_0_18 modelsim_lib/msim/lib_fifo_v1_0_18
vmap axi_fifo_mm_s_v4_3_1 modelsim_lib/msim/axi_fifo_mm_s_v4_3_1

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/dimitris/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_12 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/f557/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_13 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ae24/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_23 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/1ca4/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_7 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_1 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_18 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_5 -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_25 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/347d/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/ipshared/92d2/hdl/alu_fixed_v1_0_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/92d2/hdl/alu_fixed_v1_0_v1_0.v" \
"../../../bd/design_1/ip/design_1_alu_fixed_v1_0_0_0/sim/design_1_alu_fixed_v1_0_0_0.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0_S00_AXIS.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0_M00_AXIS.v" \
"../../../bd/design_1/ipshared/e613/hdl/my_pipeline_ip_v1_0_v1_0.v" \
"../../../bd/design_1/ip/design_1_my_pipeline_ip_v1_0_0_0/sim/design_1_my_pipeline_ip_v1_0_0_0.v" \

vcom -work lib_pkg_v1_0_3 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_18 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_1 -64 -93  \
"../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/sim/design_1_axi_fifo_mm_s_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../SoC-PipelineALU.gen/sources_1/bd/design_1/ipshared/c2c6" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

