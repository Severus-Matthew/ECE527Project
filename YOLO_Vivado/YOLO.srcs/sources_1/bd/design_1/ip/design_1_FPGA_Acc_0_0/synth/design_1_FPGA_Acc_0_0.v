// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:FPGA_Acc:1.0
// IP Revision: 1612081810

(* X_CORE_INFO = "FPGA_Acc,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_FPGA_Acc_0_0,FPGA_Acc,{}" *)
(* CORE_GENERATION_INFO = "design_1_FPGA_Acc_0_0,FPGA_Acc,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=FPGA_Acc,x_ipVersion=1.0,x_ipCoreRevision=1612081810,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_BUS_ADDR_WIDTH=8,C_S_AXI_CTRL_BUS_DATA_WIDTH=32,C_M_AXI_DATA_BUS_ID_WIDTH=1,C_M_AXI_DATA_BUS_ADDR_WIDTH=32,C_M_AXI_DATA_BUS_DATA_WIDTH=32,C_M_AXI_DATA_BUS_AWUSER_WIDTH=1,C_M_AXI_DATA_BUS_ARUSER_WIDTH=1,C_M_AXI_DATA_BUS_WUSER_WIDTH=1,C_M_AXI_DATA_BUS_RUSER_WIDTH=1,C_M_AXI_DATA_BUS_BUSER\
_WIDTH=1,C_M_AXI_DATA_BUS_USER_VALUE=0x00000000,C_M_AXI_DATA_BUS_PROT_VALUE=000,C_M_AXI_DATA_BUS_CACHE_VALUE=0011,C_M_AXI_DATA_BUS1_ID_WIDTH=1,C_M_AXI_DATA_BUS1_ADDR_WIDTH=32,C_M_AXI_DATA_BUS1_DATA_WIDTH=32,C_M_AXI_DATA_BUS1_AWUSER_WIDTH=1,C_M_AXI_DATA_BUS1_ARUSER_WIDTH=1,C_M_AXI_DATA_BUS1_WUSER_WIDTH=1,C_M_AXI_DATA_BUS1_RUSER_WIDTH=1,C_M_AXI_DATA_BUS1_BUSER_WIDTH=1,C_M_AXI_DATA_BUS1_USER_VALUE=0x00000000,C_M_AXI_DATA_BUS1_PROT_VALUE=000,C_M_AXI_DATA_BUS1_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_FPGA_Acc_0_0 (
  s_axi_CTRL_BUS_AWADDR,
  s_axi_CTRL_BUS_AWVALID,
  s_axi_CTRL_BUS_AWREADY,
  s_axi_CTRL_BUS_WDATA,
  s_axi_CTRL_BUS_WSTRB,
  s_axi_CTRL_BUS_WVALID,
  s_axi_CTRL_BUS_WREADY,
  s_axi_CTRL_BUS_BRESP,
  s_axi_CTRL_BUS_BVALID,
  s_axi_CTRL_BUS_BREADY,
  s_axi_CTRL_BUS_ARADDR,
  s_axi_CTRL_BUS_ARVALID,
  s_axi_CTRL_BUS_ARREADY,
  s_axi_CTRL_BUS_RDATA,
  s_axi_CTRL_BUS_RRESP,
  s_axi_CTRL_BUS_RVALID,
  s_axi_CTRL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_DATA_BUS_AWADDR,
  m_axi_DATA_BUS_AWLEN,
  m_axi_DATA_BUS_AWSIZE,
  m_axi_DATA_BUS_AWBURST,
  m_axi_DATA_BUS_AWLOCK,
  m_axi_DATA_BUS_AWREGION,
  m_axi_DATA_BUS_AWCACHE,
  m_axi_DATA_BUS_AWPROT,
  m_axi_DATA_BUS_AWQOS,
  m_axi_DATA_BUS_AWVALID,
  m_axi_DATA_BUS_AWREADY,
  m_axi_DATA_BUS_WDATA,
  m_axi_DATA_BUS_WSTRB,
  m_axi_DATA_BUS_WLAST,
  m_axi_DATA_BUS_WVALID,
  m_axi_DATA_BUS_WREADY,
  m_axi_DATA_BUS_BRESP,
  m_axi_DATA_BUS_BVALID,
  m_axi_DATA_BUS_BREADY,
  m_axi_DATA_BUS_ARADDR,
  m_axi_DATA_BUS_ARLEN,
  m_axi_DATA_BUS_ARSIZE,
  m_axi_DATA_BUS_ARBURST,
  m_axi_DATA_BUS_ARLOCK,
  m_axi_DATA_BUS_ARREGION,
  m_axi_DATA_BUS_ARCACHE,
  m_axi_DATA_BUS_ARPROT,
  m_axi_DATA_BUS_ARQOS,
  m_axi_DATA_BUS_ARVALID,
  m_axi_DATA_BUS_ARREADY,
  m_axi_DATA_BUS_RDATA,
  m_axi_DATA_BUS_RRESP,
  m_axi_DATA_BUS_RLAST,
  m_axi_DATA_BUS_RVALID,
  m_axi_DATA_BUS_RREADY,
  m_axi_DATA_BUS1_AWADDR,
  m_axi_DATA_BUS1_AWLEN,
  m_axi_DATA_BUS1_AWSIZE,
  m_axi_DATA_BUS1_AWBURST,
  m_axi_DATA_BUS1_AWLOCK,
  m_axi_DATA_BUS1_AWREGION,
  m_axi_DATA_BUS1_AWCACHE,
  m_axi_DATA_BUS1_AWPROT,
  m_axi_DATA_BUS1_AWQOS,
  m_axi_DATA_BUS1_AWVALID,
  m_axi_DATA_BUS1_AWREADY,
  m_axi_DATA_BUS1_WDATA,
  m_axi_DATA_BUS1_WSTRB,
  m_axi_DATA_BUS1_WLAST,
  m_axi_DATA_BUS1_WVALID,
  m_axi_DATA_BUS1_WREADY,
  m_axi_DATA_BUS1_BRESP,
  m_axi_DATA_BUS1_BVALID,
  m_axi_DATA_BUS1_BREADY,
  m_axi_DATA_BUS1_ARADDR,
  m_axi_DATA_BUS1_ARLEN,
  m_axi_DATA_BUS1_ARSIZE,
  m_axi_DATA_BUS1_ARBURST,
  m_axi_DATA_BUS1_ARLOCK,
  m_axi_DATA_BUS1_ARREGION,
  m_axi_DATA_BUS1_ARCACHE,
  m_axi_DATA_BUS1_ARPROT,
  m_axi_DATA_BUS1_ARQOS,
  m_axi_DATA_BUS1_ARVALID,
  m_axi_DATA_BUS1_ARREADY,
  m_axi_DATA_BUS1_RDATA,
  m_axi_DATA_BUS1_RRESP,
  m_axi_DATA_BUS1_RLAST,
  m_axi_DATA_BUS1_RVALID,
  m_axi_DATA_BUS1_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *)
input wire [7 : 0] s_axi_CTRL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *)
input wire s_axi_CTRL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *)
output wire s_axi_CTRL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *)
input wire [31 : 0] s_axi_CTRL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CTRL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *)
input wire s_axi_CTRL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *)
output wire s_axi_CTRL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *)
output wire s_axi_CTRL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *)
input wire s_axi_CTRL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *)
input wire [7 : 0] s_axi_CTRL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *)
input wire s_axi_CTRL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *)
output wire s_axi_CTRL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *)
output wire [31 : 0] s_axi_CTRL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *)
output wire s_axi_CTRL_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *)
input wire s_axi_CTRL_BUS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:m_axi_DATA_BUS:m_axi_DATA_BUS1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWADDR" *)
output wire [31 : 0] m_axi_DATA_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWLEN" *)
output wire [7 : 0] m_axi_DATA_BUS_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWSIZE" *)
output wire [2 : 0] m_axi_DATA_BUS_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWBURST" *)
output wire [1 : 0] m_axi_DATA_BUS_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWLOCK" *)
output wire [1 : 0] m_axi_DATA_BUS_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWREGION" *)
output wire [3 : 0] m_axi_DATA_BUS_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWCACHE" *)
output wire [3 : 0] m_axi_DATA_BUS_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWPROT" *)
output wire [2 : 0] m_axi_DATA_BUS_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWQOS" *)
output wire [3 : 0] m_axi_DATA_BUS_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWVALID" *)
output wire m_axi_DATA_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS AWREADY" *)
input wire m_axi_DATA_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS WDATA" *)
output wire [31 : 0] m_axi_DATA_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS WSTRB" *)
output wire [3 : 0] m_axi_DATA_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS WLAST" *)
output wire m_axi_DATA_BUS_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS WVALID" *)
output wire m_axi_DATA_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS WREADY" *)
input wire m_axi_DATA_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS BRESP" *)
input wire [1 : 0] m_axi_DATA_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS BVALID" *)
input wire m_axi_DATA_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS BREADY" *)
output wire m_axi_DATA_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARADDR" *)
output wire [31 : 0] m_axi_DATA_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARLEN" *)
output wire [7 : 0] m_axi_DATA_BUS_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARSIZE" *)
output wire [2 : 0] m_axi_DATA_BUS_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARBURST" *)
output wire [1 : 0] m_axi_DATA_BUS_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARLOCK" *)
output wire [1 : 0] m_axi_DATA_BUS_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARREGION" *)
output wire [3 : 0] m_axi_DATA_BUS_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARCACHE" *)
output wire [3 : 0] m_axi_DATA_BUS_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARPROT" *)
output wire [2 : 0] m_axi_DATA_BUS_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARQOS" *)
output wire [3 : 0] m_axi_DATA_BUS_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARVALID" *)
output wire m_axi_DATA_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS ARREADY" *)
input wire m_axi_DATA_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS RDATA" *)
input wire [31 : 0] m_axi_DATA_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS RRESP" *)
input wire [1 : 0] m_axi_DATA_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS RLAST" *)
input wire m_axi_DATA_BUS_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS RVALID" *)
input wire m_axi_DATA_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_BUS, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 64, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
/clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS RREADY" *)
output wire m_axi_DATA_BUS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWADDR" *)
output wire [31 : 0] m_axi_DATA_BUS1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWLEN" *)
output wire [7 : 0] m_axi_DATA_BUS1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWSIZE" *)
output wire [2 : 0] m_axi_DATA_BUS1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWBURST" *)
output wire [1 : 0] m_axi_DATA_BUS1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWLOCK" *)
output wire [1 : 0] m_axi_DATA_BUS1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWREGION" *)
output wire [3 : 0] m_axi_DATA_BUS1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWCACHE" *)
output wire [3 : 0] m_axi_DATA_BUS1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWPROT" *)
output wire [2 : 0] m_axi_DATA_BUS1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWQOS" *)
output wire [3 : 0] m_axi_DATA_BUS1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWVALID" *)
output wire m_axi_DATA_BUS1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 AWREADY" *)
input wire m_axi_DATA_BUS1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 WDATA" *)
output wire [31 : 0] m_axi_DATA_BUS1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 WSTRB" *)
output wire [3 : 0] m_axi_DATA_BUS1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 WLAST" *)
output wire m_axi_DATA_BUS1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 WVALID" *)
output wire m_axi_DATA_BUS1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 WREADY" *)
input wire m_axi_DATA_BUS1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 BRESP" *)
input wire [1 : 0] m_axi_DATA_BUS1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 BVALID" *)
input wire m_axi_DATA_BUS1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 BREADY" *)
output wire m_axi_DATA_BUS1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARADDR" *)
output wire [31 : 0] m_axi_DATA_BUS1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARLEN" *)
output wire [7 : 0] m_axi_DATA_BUS1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARSIZE" *)
output wire [2 : 0] m_axi_DATA_BUS1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARBURST" *)
output wire [1 : 0] m_axi_DATA_BUS1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARLOCK" *)
output wire [1 : 0] m_axi_DATA_BUS1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARREGION" *)
output wire [3 : 0] m_axi_DATA_BUS1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARCACHE" *)
output wire [3 : 0] m_axi_DATA_BUS1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARPROT" *)
output wire [2 : 0] m_axi_DATA_BUS1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARQOS" *)
output wire [3 : 0] m_axi_DATA_BUS1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARVALID" *)
output wire m_axi_DATA_BUS1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 ARREADY" *)
input wire m_axi_DATA_BUS1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 RDATA" *)
input wire [31 : 0] m_axi_DATA_BUS1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 RRESP" *)
input wire [1 : 0] m_axi_DATA_BUS1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 RLAST" *)
input wire m_axi_DATA_BUS1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 RVALID" *)
input wire m_axi_DATA_BUS1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_BUS1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 128, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMA\
IN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_BUS1 RREADY" *)
output wire m_axi_DATA_BUS1_RREADY;

  FPGA_Acc #(
    .C_S_AXI_CTRL_BUS_ADDR_WIDTH(8),
    .C_S_AXI_CTRL_BUS_DATA_WIDTH(32),
    .C_M_AXI_DATA_BUS_ID_WIDTH(1),
    .C_M_AXI_DATA_BUS_ADDR_WIDTH(32),
    .C_M_AXI_DATA_BUS_DATA_WIDTH(32),
    .C_M_AXI_DATA_BUS_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS_WUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS_RUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS_BUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS_USER_VALUE('H00000000),
    .C_M_AXI_DATA_BUS_PROT_VALUE('B000),
    .C_M_AXI_DATA_BUS_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_BUS1_ID_WIDTH(1),
    .C_M_AXI_DATA_BUS1_ADDR_WIDTH(32),
    .C_M_AXI_DATA_BUS1_DATA_WIDTH(32),
    .C_M_AXI_DATA_BUS1_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS1_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS1_WUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS1_RUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS1_BUSER_WIDTH(1),
    .C_M_AXI_DATA_BUS1_USER_VALUE('H00000000),
    .C_M_AXI_DATA_BUS1_PROT_VALUE('B000),
    .C_M_AXI_DATA_BUS1_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
    .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_DATA_BUS_AWID(),
    .m_axi_DATA_BUS_AWADDR(m_axi_DATA_BUS_AWADDR),
    .m_axi_DATA_BUS_AWLEN(m_axi_DATA_BUS_AWLEN),
    .m_axi_DATA_BUS_AWSIZE(m_axi_DATA_BUS_AWSIZE),
    .m_axi_DATA_BUS_AWBURST(m_axi_DATA_BUS_AWBURST),
    .m_axi_DATA_BUS_AWLOCK(m_axi_DATA_BUS_AWLOCK),
    .m_axi_DATA_BUS_AWREGION(m_axi_DATA_BUS_AWREGION),
    .m_axi_DATA_BUS_AWCACHE(m_axi_DATA_BUS_AWCACHE),
    .m_axi_DATA_BUS_AWPROT(m_axi_DATA_BUS_AWPROT),
    .m_axi_DATA_BUS_AWQOS(m_axi_DATA_BUS_AWQOS),
    .m_axi_DATA_BUS_AWUSER(),
    .m_axi_DATA_BUS_AWVALID(m_axi_DATA_BUS_AWVALID),
    .m_axi_DATA_BUS_AWREADY(m_axi_DATA_BUS_AWREADY),
    .m_axi_DATA_BUS_WID(),
    .m_axi_DATA_BUS_WDATA(m_axi_DATA_BUS_WDATA),
    .m_axi_DATA_BUS_WSTRB(m_axi_DATA_BUS_WSTRB),
    .m_axi_DATA_BUS_WLAST(m_axi_DATA_BUS_WLAST),
    .m_axi_DATA_BUS_WUSER(),
    .m_axi_DATA_BUS_WVALID(m_axi_DATA_BUS_WVALID),
    .m_axi_DATA_BUS_WREADY(m_axi_DATA_BUS_WREADY),
    .m_axi_DATA_BUS_BID(1'B0),
    .m_axi_DATA_BUS_BRESP(m_axi_DATA_BUS_BRESP),
    .m_axi_DATA_BUS_BUSER(1'B0),
    .m_axi_DATA_BUS_BVALID(m_axi_DATA_BUS_BVALID),
    .m_axi_DATA_BUS_BREADY(m_axi_DATA_BUS_BREADY),
    .m_axi_DATA_BUS_ARID(),
    .m_axi_DATA_BUS_ARADDR(m_axi_DATA_BUS_ARADDR),
    .m_axi_DATA_BUS_ARLEN(m_axi_DATA_BUS_ARLEN),
    .m_axi_DATA_BUS_ARSIZE(m_axi_DATA_BUS_ARSIZE),
    .m_axi_DATA_BUS_ARBURST(m_axi_DATA_BUS_ARBURST),
    .m_axi_DATA_BUS_ARLOCK(m_axi_DATA_BUS_ARLOCK),
    .m_axi_DATA_BUS_ARREGION(m_axi_DATA_BUS_ARREGION),
    .m_axi_DATA_BUS_ARCACHE(m_axi_DATA_BUS_ARCACHE),
    .m_axi_DATA_BUS_ARPROT(m_axi_DATA_BUS_ARPROT),
    .m_axi_DATA_BUS_ARQOS(m_axi_DATA_BUS_ARQOS),
    .m_axi_DATA_BUS_ARUSER(),
    .m_axi_DATA_BUS_ARVALID(m_axi_DATA_BUS_ARVALID),
    .m_axi_DATA_BUS_ARREADY(m_axi_DATA_BUS_ARREADY),
    .m_axi_DATA_BUS_RID(1'B0),
    .m_axi_DATA_BUS_RDATA(m_axi_DATA_BUS_RDATA),
    .m_axi_DATA_BUS_RRESP(m_axi_DATA_BUS_RRESP),
    .m_axi_DATA_BUS_RLAST(m_axi_DATA_BUS_RLAST),
    .m_axi_DATA_BUS_RUSER(1'B0),
    .m_axi_DATA_BUS_RVALID(m_axi_DATA_BUS_RVALID),
    .m_axi_DATA_BUS_RREADY(m_axi_DATA_BUS_RREADY),
    .m_axi_DATA_BUS1_AWID(),
    .m_axi_DATA_BUS1_AWADDR(m_axi_DATA_BUS1_AWADDR),
    .m_axi_DATA_BUS1_AWLEN(m_axi_DATA_BUS1_AWLEN),
    .m_axi_DATA_BUS1_AWSIZE(m_axi_DATA_BUS1_AWSIZE),
    .m_axi_DATA_BUS1_AWBURST(m_axi_DATA_BUS1_AWBURST),
    .m_axi_DATA_BUS1_AWLOCK(m_axi_DATA_BUS1_AWLOCK),
    .m_axi_DATA_BUS1_AWREGION(m_axi_DATA_BUS1_AWREGION),
    .m_axi_DATA_BUS1_AWCACHE(m_axi_DATA_BUS1_AWCACHE),
    .m_axi_DATA_BUS1_AWPROT(m_axi_DATA_BUS1_AWPROT),
    .m_axi_DATA_BUS1_AWQOS(m_axi_DATA_BUS1_AWQOS),
    .m_axi_DATA_BUS1_AWUSER(),
    .m_axi_DATA_BUS1_AWVALID(m_axi_DATA_BUS1_AWVALID),
    .m_axi_DATA_BUS1_AWREADY(m_axi_DATA_BUS1_AWREADY),
    .m_axi_DATA_BUS1_WID(),
    .m_axi_DATA_BUS1_WDATA(m_axi_DATA_BUS1_WDATA),
    .m_axi_DATA_BUS1_WSTRB(m_axi_DATA_BUS1_WSTRB),
    .m_axi_DATA_BUS1_WLAST(m_axi_DATA_BUS1_WLAST),
    .m_axi_DATA_BUS1_WUSER(),
    .m_axi_DATA_BUS1_WVALID(m_axi_DATA_BUS1_WVALID),
    .m_axi_DATA_BUS1_WREADY(m_axi_DATA_BUS1_WREADY),
    .m_axi_DATA_BUS1_BID(1'B0),
    .m_axi_DATA_BUS1_BRESP(m_axi_DATA_BUS1_BRESP),
    .m_axi_DATA_BUS1_BUSER(1'B0),
    .m_axi_DATA_BUS1_BVALID(m_axi_DATA_BUS1_BVALID),
    .m_axi_DATA_BUS1_BREADY(m_axi_DATA_BUS1_BREADY),
    .m_axi_DATA_BUS1_ARID(),
    .m_axi_DATA_BUS1_ARADDR(m_axi_DATA_BUS1_ARADDR),
    .m_axi_DATA_BUS1_ARLEN(m_axi_DATA_BUS1_ARLEN),
    .m_axi_DATA_BUS1_ARSIZE(m_axi_DATA_BUS1_ARSIZE),
    .m_axi_DATA_BUS1_ARBURST(m_axi_DATA_BUS1_ARBURST),
    .m_axi_DATA_BUS1_ARLOCK(m_axi_DATA_BUS1_ARLOCK),
    .m_axi_DATA_BUS1_ARREGION(m_axi_DATA_BUS1_ARREGION),
    .m_axi_DATA_BUS1_ARCACHE(m_axi_DATA_BUS1_ARCACHE),
    .m_axi_DATA_BUS1_ARPROT(m_axi_DATA_BUS1_ARPROT),
    .m_axi_DATA_BUS1_ARQOS(m_axi_DATA_BUS1_ARQOS),
    .m_axi_DATA_BUS1_ARUSER(),
    .m_axi_DATA_BUS1_ARVALID(m_axi_DATA_BUS1_ARVALID),
    .m_axi_DATA_BUS1_ARREADY(m_axi_DATA_BUS1_ARREADY),
    .m_axi_DATA_BUS1_RID(1'B0),
    .m_axi_DATA_BUS1_RDATA(m_axi_DATA_BUS1_RDATA),
    .m_axi_DATA_BUS1_RRESP(m_axi_DATA_BUS1_RRESP),
    .m_axi_DATA_BUS1_RLAST(m_axi_DATA_BUS1_RLAST),
    .m_axi_DATA_BUS1_RUSER(1'B0),
    .m_axi_DATA_BUS1_RVALID(m_axi_DATA_BUS1_RVALID),
    .m_axi_DATA_BUS1_RREADY(m_axi_DATA_BUS1_RREADY)
  );
endmodule
