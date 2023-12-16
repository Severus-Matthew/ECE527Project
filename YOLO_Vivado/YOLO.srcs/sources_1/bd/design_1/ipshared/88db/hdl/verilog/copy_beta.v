// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module copy_beta (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_Beta_AWVALID,
        m_axi_Beta_AWREADY,
        m_axi_Beta_AWADDR,
        m_axi_Beta_AWID,
        m_axi_Beta_AWLEN,
        m_axi_Beta_AWSIZE,
        m_axi_Beta_AWBURST,
        m_axi_Beta_AWLOCK,
        m_axi_Beta_AWCACHE,
        m_axi_Beta_AWPROT,
        m_axi_Beta_AWQOS,
        m_axi_Beta_AWREGION,
        m_axi_Beta_AWUSER,
        m_axi_Beta_WVALID,
        m_axi_Beta_WREADY,
        m_axi_Beta_WDATA,
        m_axi_Beta_WSTRB,
        m_axi_Beta_WLAST,
        m_axi_Beta_WID,
        m_axi_Beta_WUSER,
        m_axi_Beta_ARVALID,
        m_axi_Beta_ARREADY,
        m_axi_Beta_ARADDR,
        m_axi_Beta_ARID,
        m_axi_Beta_ARLEN,
        m_axi_Beta_ARSIZE,
        m_axi_Beta_ARBURST,
        m_axi_Beta_ARLOCK,
        m_axi_Beta_ARCACHE,
        m_axi_Beta_ARPROT,
        m_axi_Beta_ARQOS,
        m_axi_Beta_ARREGION,
        m_axi_Beta_ARUSER,
        m_axi_Beta_RVALID,
        m_axi_Beta_RREADY,
        m_axi_Beta_RDATA,
        m_axi_Beta_RLAST,
        m_axi_Beta_RID,
        m_axi_Beta_RUSER,
        m_axi_Beta_RRESP,
        m_axi_Beta_BVALID,
        m_axi_Beta_BREADY,
        m_axi_Beta_BRESP,
        m_axi_Beta_BID,
        m_axi_Beta_BUSER,
        Beta_offset,
        OFM_NUM,
        bias_buffer_address0,
        bias_buffer_ce0,
        bias_buffer_we0,
        bias_buffer_d0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_pp0_stage0 = 13'd256;
parameter    ap_ST_fsm_state12 = 13'd512;
parameter    ap_ST_fsm_state13 = 13'd1024;
parameter    ap_ST_fsm_pp1_stage0 = 13'd2048;
parameter    ap_ST_fsm_state16 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_Beta_AWVALID;
input   m_axi_Beta_AWREADY;
output  [31:0] m_axi_Beta_AWADDR;
output  [0:0] m_axi_Beta_AWID;
output  [31:0] m_axi_Beta_AWLEN;
output  [2:0] m_axi_Beta_AWSIZE;
output  [1:0] m_axi_Beta_AWBURST;
output  [1:0] m_axi_Beta_AWLOCK;
output  [3:0] m_axi_Beta_AWCACHE;
output  [2:0] m_axi_Beta_AWPROT;
output  [3:0] m_axi_Beta_AWQOS;
output  [3:0] m_axi_Beta_AWREGION;
output  [0:0] m_axi_Beta_AWUSER;
output   m_axi_Beta_WVALID;
input   m_axi_Beta_WREADY;
output  [31:0] m_axi_Beta_WDATA;
output  [3:0] m_axi_Beta_WSTRB;
output   m_axi_Beta_WLAST;
output  [0:0] m_axi_Beta_WID;
output  [0:0] m_axi_Beta_WUSER;
output   m_axi_Beta_ARVALID;
input   m_axi_Beta_ARREADY;
output  [31:0] m_axi_Beta_ARADDR;
output  [0:0] m_axi_Beta_ARID;
output  [31:0] m_axi_Beta_ARLEN;
output  [2:0] m_axi_Beta_ARSIZE;
output  [1:0] m_axi_Beta_ARBURST;
output  [1:0] m_axi_Beta_ARLOCK;
output  [3:0] m_axi_Beta_ARCACHE;
output  [2:0] m_axi_Beta_ARPROT;
output  [3:0] m_axi_Beta_ARQOS;
output  [3:0] m_axi_Beta_ARREGION;
output  [0:0] m_axi_Beta_ARUSER;
input   m_axi_Beta_RVALID;
output   m_axi_Beta_RREADY;
input  [31:0] m_axi_Beta_RDATA;
input   m_axi_Beta_RLAST;
input  [0:0] m_axi_Beta_RID;
input  [0:0] m_axi_Beta_RUSER;
input  [1:0] m_axi_Beta_RRESP;
input   m_axi_Beta_BVALID;
output   m_axi_Beta_BREADY;
input  [1:0] m_axi_Beta_BRESP;
input  [0:0] m_axi_Beta_BID;
input  [0:0] m_axi_Beta_BUSER;
input  [29:0] Beta_offset;
input  [15:0] OFM_NUM;
output  [9:0] bias_buffer_address0;
output   bias_buffer_ce0;
output   bias_buffer_we0;
output  [15:0] bias_buffer_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_Beta_ARVALID;
reg m_axi_Beta_RREADY;
reg bias_buffer_ce0;
reg bias_buffer_we0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] local_buf_1_address0;
reg    local_buf_1_ce0;
reg    local_buf_1_we0;
wire   [31:0] local_buf_1_q0;
reg    Beta_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    Beta_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln553_reg_378;
reg   [15:0] phi_ln553_reg_140;
reg   [15:0] phi_ln553_reg_140_pp0_iter1_reg;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] tmp_256b_1_0_reg_152;
reg   [15:0] tmp_256b_0_0_reg_162;
reg   [15:0] cnt_0_reg_172;
reg   [7:0] bn_0_reg_183;
reg   [15:0] t_0_reg_194;
reg   [15:0] NUM_reg_361;
wire   [0:0] icmp_ln553_fu_251_p2;
reg   [0:0] icmp_ln553_reg_378_pp0_iter1_reg;
wire   [15:0] add_ln553_fu_256_p2;
reg   [15:0] add_ln553_reg_382;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] Beta_addr_read_reg_387;
wire   [15:0] tmp_256b_0_fu_267_p1;
wire    ap_CS_fsm_state13;
wire   [15:0] grp_fu_206_p4;
wire   [0:0] icmp_ln561_fu_271_p2;
reg   [0:0] icmp_ln561_reg_402;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state14_pp1_stage0_iter0;
wire    ap_block_state15_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
wire   [15:0] t_fu_276_p2;
reg   [15:0] t_reg_406;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] trunc_ln565_fu_282_p1;
reg   [0:0] trunc_ln565_reg_411;
wire   [0:0] icmp_ln568_fu_292_p2;
reg   [0:0] icmp_ln568_reg_416;
wire   [15:0] cnt_4_fu_309_p3;
wire   [7:0] select_ln568_fu_317_p3;
wire   [15:0] tmp_256b_1_2_fu_342_p3;
reg    ap_enable_reg_pp1_iter1;
wire   [15:0] tmp_256b_0_2_fu_349_p3;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state14;
reg   [15:0] ap_phi_mux_phi_ln553_phi_fu_144_p4;
reg   [15:0] ap_phi_mux_t_0_phi_fu_198_p4;
wire    ap_block_pp1_stage0;
wire   [63:0] zext_ln553_1_fu_262_p1;
wire   [63:0] zext_ln571_fu_298_p1;
wire   [63:0] zext_ln566_fu_333_p1;
wire   [63:0] zext_ln546_fu_236_p1;
wire    ap_CS_fsm_state12;
wire   [16:0] zext_ln549_fu_216_p1;
wire   [16:0] add_ln549_fu_220_p2;
wire   [7:0] bn_fu_286_p2;
wire   [15:0] cnt_fu_303_p2;
wire   [15:0] tmp_256b_0_1_fu_338_p1;
wire    ap_CS_fsm_state16;
reg   [12:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

copy_beta_local_bbkb #(
    .DataWidth( 32 ),
    .AddressRange( 513 ),
    .AddressWidth( 10 ))
local_buf_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_buf_1_address0),
    .ce0(local_buf_1_ce0),
    .we0(local_buf_1_we0),
    .d0(Beta_addr_read_reg_387),
    .q0(local_buf_1_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state9)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state14) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state14))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state14);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_fu_271_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        bn_0_reg_183 <= select_ln568_fu_317_p3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bn_0_reg_183 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_fu_271_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        cnt_0_reg_172 <= cnt_4_fu_309_p3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        cnt_0_reg_172 <= 16'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln553_reg_378 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        phi_ln553_reg_140 <= add_ln553_reg_382;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        phi_ln553_reg_140 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_reg_402 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        t_0_reg_194 <= t_reg_406;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        t_0_reg_194 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_reg_402 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        tmp_256b_0_0_reg_162 <= tmp_256b_0_2_fu_349_p3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_256b_0_0_reg_162 <= tmp_256b_0_fu_267_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_reg_402 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        tmp_256b_1_0_reg_152 <= tmp_256b_1_2_fu_342_p3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_256b_1_0_reg_152 <= {{local_buf_1_q0[31:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln553_reg_378 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Beta_addr_read_reg_387 <= m_axi_Beta_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        NUM_reg_361 <= {{add_ln549_fu_220_p2[16:1]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln553_reg_382 <= add_ln553_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln553_reg_378 <= icmp_ln553_fu_251_p2;
        icmp_ln553_reg_378_pp0_iter1_reg <= icmp_ln553_reg_378;
        phi_ln553_reg_140_pp0_iter1_reg <= phi_ln553_reg_140;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln561_reg_402 <= icmp_ln561_fu_271_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln561_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln568_reg_416 <= icmp_ln568_fu_292_p2;
        trunc_ln565_reg_411 <= trunc_ln565_fu_282_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        t_reg_406 <= t_fu_276_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        Beta_blk_n_AR = m_axi_Beta_ARREADY;
    end else begin
        Beta_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln553_reg_378 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        Beta_blk_n_R = m_axi_Beta_RVALID;
    end else begin
        Beta_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((icmp_ln553_fu_251_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln561_fu_271_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state14 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state14 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln553_reg_378 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_phi_ln553_phi_fu_144_p4 = add_ln553_reg_382;
    end else begin
        ap_phi_mux_phi_ln553_phi_fu_144_p4 = phi_ln553_reg_140;
    end
end

always @ (*) begin
    if (((icmp_ln561_reg_402 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_t_0_phi_fu_198_p4 = t_reg_406;
    end else begin
        ap_phi_mux_t_0_phi_fu_198_p4 = t_0_reg_194;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        bias_buffer_ce0 = 1'b1;
    end else begin
        bias_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln561_reg_402 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        bias_buffer_we0 = 1'b1;
    end else begin
        bias_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        local_buf_1_address0 = zext_ln571_fu_298_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        local_buf_1_address0 = 10'd0;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        local_buf_1_address0 = zext_ln553_1_fu_262_p1;
    end else begin
        local_buf_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        local_buf_1_ce0 = 1'b1;
    end else begin
        local_buf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln553_reg_378_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        local_buf_1_we0 = 1'b1;
    end else begin
        local_buf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_Beta_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_Beta_ARVALID = 1'b1;
    end else begin
        m_axi_Beta_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln553_reg_378 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_Beta_RREADY = 1'b1;
    end else begin
        m_axi_Beta_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_Beta_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln553_fu_251_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln553_fu_251_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln561_fu_271_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln561_fu_271_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln549_fu_220_p2 = (zext_ln549_fu_216_p1 + 17'd1);

assign add_ln553_fu_256_p2 = (ap_phi_mux_phi_ln553_phi_fu_144_p4 + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln553_reg_378 == 1'd0) & (m_axi_Beta_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln553_reg_378 == 1'd0) & (m_axi_Beta_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((icmp_ln553_reg_378 == 1'd0) & (m_axi_Beta_RVALID == 1'b0));
end

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign bias_buffer_address0 = zext_ln566_fu_333_p1;

assign bias_buffer_d0 = ((trunc_ln565_reg_411[0:0] === 1'b1) ? tmp_256b_1_0_reg_152 : tmp_256b_0_0_reg_162);

assign bn_fu_286_p2 = (8'd1 + bn_0_reg_183);

assign cnt_4_fu_309_p3 = ((icmp_ln568_fu_292_p2[0:0] === 1'b1) ? cnt_fu_303_p2 : cnt_0_reg_172);

assign cnt_fu_303_p2 = (16'd1 + cnt_0_reg_172);

assign grp_fu_206_p4 = {{local_buf_1_q0[31:16]}};

assign icmp_ln553_fu_251_p2 = ((ap_phi_mux_phi_ln553_phi_fu_144_p4 == NUM_reg_361) ? 1'b1 : 1'b0);

assign icmp_ln561_fu_271_p2 = ((ap_phi_mux_t_0_phi_fu_198_p4 == OFM_NUM) ? 1'b1 : 1'b0);

assign icmp_ln568_fu_292_p2 = ((bn_fu_286_p2 == 8'd2) ? 1'b1 : 1'b0);

assign m_axi_Beta_ARADDR = zext_ln546_fu_236_p1;

assign m_axi_Beta_ARBURST = 2'd0;

assign m_axi_Beta_ARCACHE = 4'd0;

assign m_axi_Beta_ARID = 1'd0;

assign m_axi_Beta_ARLEN = NUM_reg_361;

assign m_axi_Beta_ARLOCK = 2'd0;

assign m_axi_Beta_ARPROT = 3'd0;

assign m_axi_Beta_ARQOS = 4'd0;

assign m_axi_Beta_ARREGION = 4'd0;

assign m_axi_Beta_ARSIZE = 3'd0;

assign m_axi_Beta_ARUSER = 1'd0;

assign m_axi_Beta_AWADDR = 32'd0;

assign m_axi_Beta_AWBURST = 2'd0;

assign m_axi_Beta_AWCACHE = 4'd0;

assign m_axi_Beta_AWID = 1'd0;

assign m_axi_Beta_AWLEN = 32'd0;

assign m_axi_Beta_AWLOCK = 2'd0;

assign m_axi_Beta_AWPROT = 3'd0;

assign m_axi_Beta_AWQOS = 4'd0;

assign m_axi_Beta_AWREGION = 4'd0;

assign m_axi_Beta_AWSIZE = 3'd0;

assign m_axi_Beta_AWUSER = 1'd0;

assign m_axi_Beta_AWVALID = 1'b0;

assign m_axi_Beta_BREADY = 1'b0;

assign m_axi_Beta_WDATA = 32'd0;

assign m_axi_Beta_WID = 1'd0;

assign m_axi_Beta_WLAST = 1'b0;

assign m_axi_Beta_WSTRB = 4'd0;

assign m_axi_Beta_WUSER = 1'd0;

assign m_axi_Beta_WVALID = 1'b0;

assign select_ln568_fu_317_p3 = ((icmp_ln568_fu_292_p2[0:0] === 1'b1) ? 8'd0 : bn_fu_286_p2);

assign t_fu_276_p2 = (ap_phi_mux_t_0_phi_fu_198_p4 + 16'd1);

assign tmp_256b_0_1_fu_338_p1 = local_buf_1_q0[15:0];

assign tmp_256b_0_2_fu_349_p3 = ((icmp_ln568_reg_416[0:0] === 1'b1) ? tmp_256b_0_1_fu_338_p1 : tmp_256b_0_0_reg_162);

assign tmp_256b_0_fu_267_p1 = local_buf_1_q0[15:0];

assign tmp_256b_1_2_fu_342_p3 = ((icmp_ln568_reg_416[0:0] === 1'b1) ? grp_fu_206_p4 : tmp_256b_1_0_reg_152);

assign trunc_ln565_fu_282_p1 = bn_0_reg_183[0:0];

assign zext_ln546_fu_236_p1 = Beta_offset;

assign zext_ln549_fu_216_p1 = OFM_NUM;

assign zext_ln553_1_fu_262_p1 = phi_ln553_reg_140_pp0_iter1_reg;

assign zext_ln566_fu_333_p1 = t_0_reg_194;

assign zext_ln571_fu_298_p1 = cnt_0_reg_172;

endmodule //copy_beta
