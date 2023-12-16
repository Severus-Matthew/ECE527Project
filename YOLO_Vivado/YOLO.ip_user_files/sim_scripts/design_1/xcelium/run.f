-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_2/design_1_clk_wiz_0_2.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_mmu_v2_1_17 \
  "../../../../YOLO.srcs/sources_1/bd/design_1/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

