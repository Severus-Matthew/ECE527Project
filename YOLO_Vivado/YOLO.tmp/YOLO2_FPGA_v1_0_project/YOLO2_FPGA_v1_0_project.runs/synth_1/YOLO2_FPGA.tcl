# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 5
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/csl-403/Downloads/YOLO/YOLO.tmp/YOLO2_FPGA_v1_0_project/YOLO2_FPGA_v1_0_project.cache/wt [current_project]
set_property parent.project_path /home/csl-403/Downloads/YOLO/YOLO.tmp/YOLO2_FPGA_v1_0_project/YOLO2_FPGA_v1_0_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip [current_project]
update_ip_catalog
set_property ip_output_repo /home/csl-403/Downloads/YOLO/YOLO.tmp/YOLO2_FPGA_v1_0_project/YOLO2_FPGA_v1_0_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/load_compute_wrapper_ifm_buffer0_0_ram.dat
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/load_compute_wrapper_weight_buffer0_0_0_ram.dat
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/YOLO2_FPGA_bias_buffer_ram.dat
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/YOLO2_FPGA_ofm_buffer0_0_ram.dat
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/YOLO2_FPGA_ofm_buffer0_4_ram.dat
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/verilog/YOLO2_FPGA_ofm_buffer0_19_ram.dat
}
read_vhdl -library "" {
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_CTRL_BUS_s_axi.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_DATA_BUS1_m_axi.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_DATA_BUS_m_axi.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ama_addmuladd_16ns_16ns_16ns_17ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ama_addmuladd_16ns_1s_2ns_2ns_16_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ama_addmuladd_1s_16ns_2ns_2ns_16_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ama_submulsub_16ns_16s_2ns_16ns_16_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/ip/YOLO2_FPGA_ap_fadd_3_full_dsp_32.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/ip/YOLO2_FPGA_ap_fcmp_0_no_dsp_32.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/ip/YOLO2_FPGA_ap_fmul_2_max_dsp_32.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_bias_buffer.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_fadd_32ns_32ns_32_5_full_dsp_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_fcmp_32ns_32ns_1_2_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_fmul_32ns_32ns_32_4_max_dsp_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_mul_sub_2ns_16s_3ns_16_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_muladd_16ns_11ns_29ns_29_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_muladd_16ns_16ns_16ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_muladd_16ns_16ns_32ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_muladd_16ns_18ns_18ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mac_muladd_2ns_16ns_2ns_18_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_11ns_8ns_19_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_15ns_11ns_26_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_11ns_26_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_16ns_26_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_16ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_20ns_36_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_21ns_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_16ns_24ns_28_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_19ns_11ns_28_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_21ns_8ns_29_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mul_mul_8ns_16ns_24_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_mux_285_32_1_1.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ofm_buffer0_0.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ofm_buffer0_19.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA_ofm_buffer0_4.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/conv2d_tile.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/copy_input_weight.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/input_load.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/load_compute_wrapper.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/load_compute_wrapper_ifm_buffer0_0.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/load_compute_wrapper_weight_buffer0_0_0.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/pool_yolo2.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/weight_load_reorg.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/write_back_output_re.vhd
  /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/hdl/vhdl/YOLO2_FPGA.vhd
}
read_vhdl -library floating_point_v7_1_8 /tools/Xilinx/Vivado/2019.1/data/ip/xilinx/floating_point_v7_1/hdl/floating_point_v7_1_vh_rfs.vhd
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc -mode out_of_context /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/constraints/YOLO2_FPGA_ooc.xdc
set_property used_in_implementation false [get_files /home/csl-403/Downloads/Xilinx_Vivado_SDK_2018.2_0614_1954/proj_11/solution1/impl/ip/constraints/YOLO2_FPGA_ooc.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top YOLO2_FPGA -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef YOLO2_FPGA.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file YOLO2_FPGA_utilization_synth.rpt -pb YOLO2_FPGA_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
