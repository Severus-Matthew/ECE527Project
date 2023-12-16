vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/processing_system7_vip_v1_0_7
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19
vlib modelsim_lib/msim/axi_mmu_v2_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 modelsim_lib/msim/processing_system7_vip_v1_0_7
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19
vmap axi_mmu_v2_1_17 modelsim_lib/msim/axi_mmu_v2_1_17

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_6 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a878_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/conv2d_tile4.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/copy_beta.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/copy_beta_local_bbkb.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/copy_local_beta.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_bias_bufesQ.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_CTRL_BUS_s_axi.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_DATA_BUS1_m_axi.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_DATA_BUS_m_axi.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mul_fYi.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulacud.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulaeoQ.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulaerQ.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulag8j.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulaibs.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulamb6.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulancg.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulaocq.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mac_mulapcA.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mul_mul_gpb.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mul_mul_jbC.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mul_mul_kbM.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mul_mul_lbW.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mul_mul_qcK.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_mux_606_enQ.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_ofm_buffetR.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc_ofm_buffevR.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/ifm_copy_lbuf2ibuf.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/ifm_mmcpy_row.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/ifm_weight_load_wrap.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/input_load.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/input_load_local_dEe.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/load_compute_wrapper.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/load_compute_wraprcU.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/load_compute_wraptde.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/maxpool_tile5.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/nonlinear_leaky_row.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/ofm_mmcpy_row.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/weight_load_reorg.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/weight_load_reorghbi.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/write_back_output_re.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/write_back_outputepQ.v" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/88db/hdl/verilog/FPGA_Acc.v" \
"../../../bd/design_1/ip/design_1_FPGA_Acc_0_0/sim/design_1_FPGA_Acc_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_mmu_v2_1_17 -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../YOLO.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

