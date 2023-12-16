-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Dec  2 18:05:31 2023
-- Host        : weihang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_YOLO2_FPGA_0_0_stub.vhdl
-- Design      : design_1_YOLO2_FPGA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_DATA_BUS_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BUS_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_AWVALID : out STD_LOGIC;
    m_axi_DATA_BUS_AWREADY : in STD_LOGIC;
    m_axi_DATA_BUS_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_WLAST : out STD_LOGIC;
    m_axi_DATA_BUS_WVALID : out STD_LOGIC;
    m_axi_DATA_BUS_WREADY : in STD_LOGIC;
    m_axi_DATA_BUS_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_BVALID : in STD_LOGIC;
    m_axi_DATA_BUS_BREADY : out STD_LOGIC;
    m_axi_DATA_BUS_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BUS_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS_ARVALID : out STD_LOGIC;
    m_axi_DATA_BUS_ARREADY : in STD_LOGIC;
    m_axi_DATA_BUS_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS_RLAST : in STD_LOGIC;
    m_axi_DATA_BUS_RVALID : in STD_LOGIC;
    m_axi_DATA_BUS_RREADY : out STD_LOGIC;
    m_axi_DATA_BUS1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BUS1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_AWVALID : out STD_LOGIC;
    m_axi_DATA_BUS1_AWREADY : in STD_LOGIC;
    m_axi_DATA_BUS1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_WLAST : out STD_LOGIC;
    m_axi_DATA_BUS1_WVALID : out STD_LOGIC;
    m_axi_DATA_BUS1_WREADY : in STD_LOGIC;
    m_axi_DATA_BUS1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_BVALID : in STD_LOGIC;
    m_axi_DATA_BUS1_BREADY : out STD_LOGIC;
    m_axi_DATA_BUS1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BUS1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BUS1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BUS1_ARVALID : out STD_LOGIC;
    m_axi_DATA_BUS1_ARREADY : in STD_LOGIC;
    m_axi_DATA_BUS1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BUS1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BUS1_RLAST : in STD_LOGIC;
    m_axi_DATA_BUS1_RVALID : in STD_LOGIC;
    m_axi_DATA_BUS1_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[7:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[7:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_BUS_AWADDR[31:0],m_axi_DATA_BUS_AWLEN[7:0],m_axi_DATA_BUS_AWSIZE[2:0],m_axi_DATA_BUS_AWBURST[1:0],m_axi_DATA_BUS_AWLOCK[1:0],m_axi_DATA_BUS_AWREGION[3:0],m_axi_DATA_BUS_AWCACHE[3:0],m_axi_DATA_BUS_AWPROT[2:0],m_axi_DATA_BUS_AWQOS[3:0],m_axi_DATA_BUS_AWVALID,m_axi_DATA_BUS_AWREADY,m_axi_DATA_BUS_WDATA[31:0],m_axi_DATA_BUS_WSTRB[3:0],m_axi_DATA_BUS_WLAST,m_axi_DATA_BUS_WVALID,m_axi_DATA_BUS_WREADY,m_axi_DATA_BUS_BRESP[1:0],m_axi_DATA_BUS_BVALID,m_axi_DATA_BUS_BREADY,m_axi_DATA_BUS_ARADDR[31:0],m_axi_DATA_BUS_ARLEN[7:0],m_axi_DATA_BUS_ARSIZE[2:0],m_axi_DATA_BUS_ARBURST[1:0],m_axi_DATA_BUS_ARLOCK[1:0],m_axi_DATA_BUS_ARREGION[3:0],m_axi_DATA_BUS_ARCACHE[3:0],m_axi_DATA_BUS_ARPROT[2:0],m_axi_DATA_BUS_ARQOS[3:0],m_axi_DATA_BUS_ARVALID,m_axi_DATA_BUS_ARREADY,m_axi_DATA_BUS_RDATA[31:0],m_axi_DATA_BUS_RRESP[1:0],m_axi_DATA_BUS_RLAST,m_axi_DATA_BUS_RVALID,m_axi_DATA_BUS_RREADY,m_axi_DATA_BUS1_AWADDR[31:0],m_axi_DATA_BUS1_AWLEN[7:0],m_axi_DATA_BUS1_AWSIZE[2:0],m_axi_DATA_BUS1_AWBURST[1:0],m_axi_DATA_BUS1_AWLOCK[1:0],m_axi_DATA_BUS1_AWREGION[3:0],m_axi_DATA_BUS1_AWCACHE[3:0],m_axi_DATA_BUS1_AWPROT[2:0],m_axi_DATA_BUS1_AWQOS[3:0],m_axi_DATA_BUS1_AWVALID,m_axi_DATA_BUS1_AWREADY,m_axi_DATA_BUS1_WDATA[31:0],m_axi_DATA_BUS1_WSTRB[3:0],m_axi_DATA_BUS1_WLAST,m_axi_DATA_BUS1_WVALID,m_axi_DATA_BUS1_WREADY,m_axi_DATA_BUS1_BRESP[1:0],m_axi_DATA_BUS1_BVALID,m_axi_DATA_BUS1_BREADY,m_axi_DATA_BUS1_ARADDR[31:0],m_axi_DATA_BUS1_ARLEN[7:0],m_axi_DATA_BUS1_ARSIZE[2:0],m_axi_DATA_BUS1_ARBURST[1:0],m_axi_DATA_BUS1_ARLOCK[1:0],m_axi_DATA_BUS1_ARREGION[3:0],m_axi_DATA_BUS1_ARCACHE[3:0],m_axi_DATA_BUS1_ARPROT[2:0],m_axi_DATA_BUS1_ARQOS[3:0],m_axi_DATA_BUS1_ARVALID,m_axi_DATA_BUS1_ARREADY,m_axi_DATA_BUS1_RDATA[31:0],m_axi_DATA_BUS1_RRESP[1:0],m_axi_DATA_BUS1_RLAST,m_axi_DATA_BUS1_RVALID,m_axi_DATA_BUS1_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "YOLO2_FPGA,Vivado 2019.1";
begin
end;
