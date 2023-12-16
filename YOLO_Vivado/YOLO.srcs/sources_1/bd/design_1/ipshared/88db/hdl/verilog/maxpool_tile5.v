// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module maxpool_tile5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Input_0_address0,
        Input_0_ce0,
        Input_0_q0,
        Input_1_address0,
        Input_1_ce0,
        Input_1_q0,
        Output_0_address0,
        Output_0_ce0,
        Output_0_we0,
        Output_0_d0,
        Output_1_address0,
        Output_1_ce0,
        Output_1_we0,
        Output_1_d0,
        Ksize,
        K_1,
        Kstride,
        TR_MIN,
        TC_MIN,
        enable
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_pp0_stage0 = 5'd8;
parameter    ap_ST_fsm_state9 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] Input_0_address0;
output   Input_0_ce0;
input  [15:0] Input_0_q0;
output  [11:0] Input_1_address0;
output   Input_1_ce0;
input  [15:0] Input_1_q0;
output  [9:0] Output_0_address0;
output   Output_0_ce0;
output   Output_0_we0;
output  [31:0] Output_0_d0;
output  [9:0] Output_1_address0;
output   Output_1_ce0;
output   Output_1_we0;
output  [31:0] Output_1_d0;
input  [7:0] Ksize;
input  [7:0] K_1;
input  [7:0] Kstride;
input  [7:0] TR_MIN;
input  [7:0] TC_MIN;
input   enable;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Input_0_ce0;
reg Input_1_ce0;
reg Output_0_ce0;
reg Output_0_we0;
reg Output_1_ce0;
reg Output_1_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] indvar_flatten65_reg_164;
reg   [7:0] tr_0_reg_175;
reg   [23:0] indvar_flatten25_reg_187;
reg   [7:0] tc_0_reg_198;
reg   [15:0] indvar_flatten_reg_210;
reg   [7:0] i_0_reg_221;
reg   [7:0] j_0_reg_232;
wire   [0:0] enable_read_read_fu_76_p2;
wire   [15:0] mul_ln336_fu_247_p2;
reg   [15:0] mul_ln336_reg_781;
wire   [23:0] mul_ln336_1_fu_709_p2;
reg   [23:0] mul_ln336_1_reg_788;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln336_fu_259_p1;
reg   [15:0] zext_ln336_reg_794;
wire    ap_CS_fsm_state3;
wire   [31:0] mul_ln336_2_fu_715_p2;
reg   [31:0] mul_ln336_2_reg_802;
wire   [0:0] icmp_ln356_fu_268_p2;
reg   [0:0] icmp_ln356_reg_807;
wire   [0:0] icmp_ln342_fu_273_p2;
reg   [0:0] icmp_ln342_reg_813;
wire   [0:0] icmp_ln340_fu_278_p2;
reg   [0:0] icmp_ln340_reg_819;
wire   [0:0] icmp_ln336_fu_283_p2;
reg   [0:0] icmp_ln336_reg_824;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state8_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln336_reg_824_pp0_iter1_reg;
reg   [0:0] icmp_ln336_reg_824_pp0_iter2_reg;
wire   [31:0] add_ln336_fu_288_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] tr_fu_294_p2;
reg   [7:0] tr_reg_833;
wire   [0:0] icmp_ln338_fu_300_p2;
reg   [0:0] icmp_ln338_reg_838;
wire   [7:0] select_ln351_2_fu_313_p3;
reg   [7:0] select_ln351_2_reg_848;
reg   [7:0] select_ln351_2_reg_848_pp0_iter1_reg;
wire   [0:0] select_ln351_5_fu_326_p3;
reg   [0:0] select_ln351_5_reg_854;
wire   [7:0] tc_fu_333_p2;
reg   [7:0] tc_reg_863;
wire   [0:0] or_ln351_fu_339_p2;
reg   [0:0] or_ln351_reg_868;
wire   [7:0] select_ln351_7_fu_345_p3;
reg   [7:0] select_ln351_7_reg_873;
reg   [7:0] select_ln351_7_reg_873_pp0_iter1_reg;
wire   [15:0] select_ln340_1_fu_359_p3;
wire   [23:0] select_ln338_fu_373_p3;
wire  signed [12:0] select_ln351_13_fu_537_p3;
reg  signed [12:0] select_ln351_13_reg_889;
wire   [7:0] select_ln340_fu_558_p3;
reg   [7:0] select_ln340_reg_894;
reg    ap_enable_reg_pp0_iter1;
wire   [0:0] icmp_ln348_fu_572_p2;
reg   [0:0] icmp_ln348_reg_899;
reg   [0:0] icmp_ln348_reg_899_pp0_iter2_reg;
(* use_dsp48 = "no" *) wire   [12:0] add_ln351_2_fu_604_p2;
reg   [12:0] add_ln351_2_reg_905;
wire   [0:0] and_ln356_fu_615_p2;
reg   [0:0] and_ln356_reg_910;
reg   [0:0] and_ln356_reg_910_pp0_iter2_reg;
reg   [0:0] and_ln356_reg_910_pp0_iter3_reg;
wire   [7:0] j_fu_621_p2;
wire   [10:0] grp_fu_721_p3;
reg   [10:0] add_ln357_reg_919;
reg    ap_enable_reg_pp0_iter2;
reg   [10:0] add_ln357_reg_919_pp0_iter3_reg;
wire  signed [15:0] tmp_0_3_fu_654_p3;
reg  signed [15:0] tmp_0_3_reg_934;
wire  signed [15:0] tmp_1_3_fu_683_p3;
reg  signed [15:0] tmp_1_3_reg_939;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter1_state5;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg   [7:0] ap_phi_mux_tr_0_phi_fu_179_p4;
wire    ap_block_pp0_stage0;
reg   [7:0] ap_phi_mux_tc_0_phi_fu_202_p4;
reg   [7:0] ap_phi_mux_i_0_phi_fu_225_p4;
wire  signed [63:0] sext_ln351_fu_633_p1;
wire  signed [63:0] sext_ln357_2_fu_696_p1;
reg   [15:0] tmp_0_2_fu_68;
reg   [15:0] tmp_1_2_fu_72;
wire   [7:0] mul_ln336_fu_247_p0;
wire   [15:0] zext_ln336_1_fu_243_p1;
wire   [7:0] mul_ln336_fu_247_p1;
wire   [0:0] icmp_ln340_1_fu_321_p2;
wire   [7:0] select_ln351_fu_305_p3;
wire   [15:0] add_ln340_1_fu_353_p2;
wire   [23:0] add_ln338_1_fu_367_p2;
wire   [7:0] mul_ln351_fu_385_p0;
wire   [7:0] mul_ln351_fu_385_p1;
wire   [7:0] mul_ln351_1_fu_394_p0;
wire   [7:0] mul_ln351_1_fu_394_p1;
wire   [15:0] mul_ln351_fu_385_p2;
wire   [7:0] mul_ln351_2_fu_410_p0;
wire   [7:0] mul_ln351_2_fu_410_p1;
wire   [15:0] mul_ln351_2_fu_410_p2;
wire   [0:0] icmp_ln356_2_fu_422_p2;
wire   [0:0] icmp_ln342_1_fu_433_p2;
wire   [7:0] mul_ln351_3_fu_454_p0;
wire   [7:0] mul_ln351_3_fu_454_p1;
wire   [0:0] select_ln351_3_fu_427_p3;
wire   [0:0] select_ln351_4_fu_438_p3;
wire   [7:0] select_ln351_6_fu_444_p3;
wire   [0:0] select_ln351_9_fu_465_p3;
wire   [0:0] or_ln351_1_fu_477_p2;
wire   [0:0] or_ln351_2_fu_482_p2;
wire   [15:0] select_ln351_1_fu_415_p3;
wire   [7:0] i_fu_471_p2;
wire   [12:0] trunc_ln351_1_fu_495_p1;
wire   [12:0] zext_ln351_6_fu_499_p1;
wire   [12:0] trunc_ln351_fu_399_p1;
wire   [12:0] zext_ln351_2_fu_403_p1;
wire   [12:0] trunc_ln351_3_fu_513_p1;
wire   [12:0] add_ln351_1_fu_517_p2;
wire   [12:0] trunc_ln351_2_fu_509_p1;
wire   [12:0] select_ln351_11_fu_523_p3;
wire   [12:0] add_ln351_fu_503_p2;
wire   [12:0] select_ln351_12_fu_530_p3;
wire   [0:0] icmp_ln356_3_fu_545_p2;
wire   [0:0] select_ln351_8_fu_459_p3;
wire   [7:0] select_ln351_10_fu_487_p3;
wire   [7:0] or_ln348_fu_566_p2;
wire   [15:0] mul_ln351_3_fu_454_p2;
wire   [15:0] mul_ln351_1_fu_394_p2;
wire   [12:0] trunc_ln351_5_fu_582_p1;
wire   [12:0] trunc_ln351_4_fu_578_p1;
wire   [12:0] select_ln351_15_fu_586_p3;
wire   [12:0] select_ln351_16_fu_593_p3;
wire   [12:0] zext_ln351_7_fu_600_p1;
wire   [0:0] select_ln351_14_fu_550_p3;
wire   [0:0] icmp_ln356_1_fu_610_p2;
wire  signed [12:0] grp_fu_729_p3;
wire   [15:0] select_ln348_fu_641_p3;
wire   [0:0] icmp_ln353_fu_648_p2;
wire   [15:0] select_ln348_1_fu_670_p3;
wire   [0:0] icmp_ln353_1_fu_677_p2;
wire   [15:0] mul_ln336_1_fu_709_p0;
wire   [7:0] mul_ln336_1_fu_709_p1;
wire   [23:0] mul_ln336_2_fu_715_p0;
wire   [7:0] mul_ln336_2_fu_715_p1;
wire   [7:0] grp_fu_721_p0;
wire   [5:0] grp_fu_721_p1;
wire   [7:0] grp_fu_721_p2;
wire   [6:0] grp_fu_729_p1;
wire    ap_CS_fsm_state9;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [10:0] grp_fu_721_p00;
wire   [10:0] grp_fu_721_p20;
wire   [23:0] mul_ln336_1_fu_709_p00;
wire   [23:0] mul_ln336_1_fu_709_p10;
wire   [31:0] mul_ln336_2_fu_715_p00;
wire   [31:0] mul_ln336_2_fu_715_p10;
wire   [15:0] mul_ln351_1_fu_394_p10;
wire   [15:0] mul_ln351_2_fu_410_p00;
wire   [15:0] mul_ln351_3_fu_454_p00;
wire   [15:0] mul_ln351_fu_385_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

FPGA_Acc_mul_mul_kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
FPGA_Acc_mul_mul_kbM_U340(
    .din0(mul_ln336_1_fu_709_p0),
    .din1(mul_ln336_1_fu_709_p1),
    .dout(mul_ln336_1_fu_709_p2)
);

FPGA_Acc_mul_mul_lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
FPGA_Acc_mul_mul_lbW_U341(
    .din0(mul_ln336_2_fu_715_p0),
    .din1(mul_ln336_2_fu_715_p1),
    .dout(mul_ln336_2_fu_715_p2)
);

FPGA_Acc_mac_mulamb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 11 ))
FPGA_Acc_mac_mulamb6_U342(
    .din0(grp_fu_721_p0),
    .din1(grp_fu_721_p1),
    .din2(grp_fu_721_p2),
    .dout(grp_fu_721_p3)
);

FPGA_Acc_mac_mulancg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 7 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 13 ))
FPGA_Acc_mac_mulancg_U343(
    .din0(select_ln351_13_reg_889),
    .din1(grp_fu_729_p1),
    .din2(add_ln351_2_reg_905),
    .dout(grp_fu_729_p3)
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
        if (((icmp_ln336_fu_283_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter1_state5)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln336_reg_824_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_221 <= select_ln340_reg_894;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_221 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_fu_283_p2 == 1'd0))) begin
        indvar_flatten25_reg_187 <= select_ln338_fu_373_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        indvar_flatten25_reg_187 <= 24'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_fu_283_p2 == 1'd0))) begin
        indvar_flatten65_reg_164 <= add_ln336_fu_288_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        indvar_flatten65_reg_164 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_fu_283_p2 == 1'd0))) begin
        indvar_flatten_reg_210 <= select_ln340_1_fu_359_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        indvar_flatten_reg_210 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_reg_824 == 1'd0))) begin
        j_0_reg_232 <= j_fu_621_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_0_reg_232 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_reg_824 == 1'd0))) begin
        tc_0_reg_198 <= select_ln351_7_reg_873;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tc_0_reg_198 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_reg_824 == 1'd0))) begin
        tr_0_reg_175 <= select_ln351_2_reg_848;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tr_0_reg_175 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_reg_824 == 1'd0))) begin
        add_ln351_2_reg_905 <= add_ln351_2_fu_604_p2;
        and_ln356_reg_910 <= and_ln356_fu_615_p2;
        icmp_ln348_reg_899 <= icmp_ln348_fu_572_p2;
        select_ln351_13_reg_889 <= select_ln351_13_fu_537_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln336_reg_824_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln357_reg_919 <= grp_fu_721_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln357_reg_919_pp0_iter3_reg <= add_ln357_reg_919;
        and_ln356_reg_910_pp0_iter2_reg <= and_ln356_reg_910;
        and_ln356_reg_910_pp0_iter3_reg <= and_ln356_reg_910_pp0_iter2_reg;
        icmp_ln336_reg_824_pp0_iter2_reg <= icmp_ln336_reg_824_pp0_iter1_reg;
        icmp_ln348_reg_899_pp0_iter2_reg <= icmp_ln348_reg_899;
        tmp_1_3_reg_939 <= tmp_1_3_fu_683_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln336_reg_824 <= icmp_ln336_fu_283_p2;
        icmp_ln336_reg_824_pp0_iter1_reg <= icmp_ln336_reg_824;
        select_ln351_2_reg_848_pp0_iter1_reg <= select_ln351_2_reg_848;
        select_ln351_7_reg_873_pp0_iter1_reg <= select_ln351_7_reg_873;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_fu_283_p2 == 1'd0))) begin
        icmp_ln338_reg_838 <= icmp_ln338_fu_300_p2;
        or_ln351_reg_868 <= or_ln351_fu_339_p2;
        select_ln351_5_reg_854 <= select_ln351_5_fu_326_p3;
        tc_reg_863 <= tc_fu_333_p2;
        tr_reg_833 <= tr_fu_294_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln340_reg_819 <= icmp_ln340_fu_278_p2;
        icmp_ln342_reg_813 <= icmp_ln342_fu_273_p2;
        icmp_ln356_reg_807 <= icmp_ln356_fu_268_p2;
        mul_ln336_2_reg_802 <= mul_ln336_2_fu_715_p2;
        zext_ln336_reg_794[7 : 0] <= zext_ln336_fu_259_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln336_1_reg_788 <= mul_ln336_1_fu_709_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((enable_read_read_fu_76_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        mul_ln336_reg_781 <= mul_ln336_fu_247_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_reg_824 == 1'd0))) begin
        select_ln340_reg_894 <= select_ln340_fu_558_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln336_fu_283_p2 == 1'd0))) begin
        select_ln351_2_reg_848 <= select_ln351_2_fu_313_p3;
        select_ln351_7_reg_873 <= select_ln351_7_fu_345_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln336_reg_824_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_0_2_fu_68 <= tmp_0_3_fu_654_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln336_reg_824_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_0_3_reg_934 <= tmp_0_3_fu_654_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_2_fu_72 <= tmp_1_3_fu_683_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_0_ce0 = 1'b1;
    end else begin
        Input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Input_1_ce0 = 1'b1;
    end else begin
        Input_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_0_ce0 = 1'b1;
    end else begin
        Output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln356_reg_910_pp0_iter3_reg) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_0_we0 = 1'b1;
    end else begin
        Output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_1_ce0 = 1'b1;
    end else begin
        Output_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln356_reg_910_pp0_iter3_reg) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Output_1_we0 = 1'b1;
    end else begin
        Output_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_condition_pp0_exit_iter1_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln336_reg_824_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_i_0_phi_fu_225_p4 = select_ln340_reg_894;
    end else begin
        ap_phi_mux_i_0_phi_fu_225_p4 = i_0_reg_221;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln336_reg_824 == 1'd0))) begin
        ap_phi_mux_tc_0_phi_fu_202_p4 = select_ln351_7_reg_873;
    end else begin
        ap_phi_mux_tc_0_phi_fu_202_p4 = tc_0_reg_198;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln336_reg_824 == 1'd0))) begin
        ap_phi_mux_tr_0_phi_fu_179_p4 = select_ln351_2_reg_848;
    end else begin
        ap_phi_mux_tr_0_phi_fu_179_p4 = tr_0_reg_175;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((enable_read_read_fu_76_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((enable_read_read_fu_76_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Input_0_address0 = sext_ln351_fu_633_p1;

assign Input_1_address0 = sext_ln351_fu_633_p1;

assign Output_0_address0 = sext_ln357_2_fu_696_p1;

assign Output_0_d0 = $signed(tmp_0_3_reg_934);

assign Output_1_address0 = sext_ln357_2_fu_696_p1;

assign Output_1_d0 = $signed(tmp_1_3_reg_939);

assign add_ln336_fu_288_p2 = (32'd1 + indvar_flatten65_reg_164);

assign add_ln338_1_fu_367_p2 = (indvar_flatten25_reg_187 + 24'd1);

assign add_ln340_1_fu_353_p2 = (indvar_flatten_reg_210 + 16'd1);

assign add_ln351_1_fu_517_p2 = (trunc_ln351_fu_399_p1 + zext_ln351_2_fu_403_p1);

assign add_ln351_2_fu_604_p2 = (select_ln351_16_fu_593_p3 + zext_ln351_7_fu_600_p1);

assign add_ln351_fu_503_p2 = (trunc_ln351_1_fu_495_p1 + zext_ln351_6_fu_499_p1);

assign and_ln356_fu_615_p2 = (select_ln351_14_fu_550_p3 & icmp_ln356_1_fu_610_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign enable_read_read_fu_76_p2 = enable;

assign grp_fu_721_p0 = grp_fu_721_p00;

assign grp_fu_721_p00 = select_ln351_2_reg_848_pp0_iter1_reg;

assign grp_fu_721_p1 = 11'd26;

assign grp_fu_721_p2 = grp_fu_721_p20;

assign grp_fu_721_p20 = select_ln351_7_reg_873_pp0_iter1_reg;

assign grp_fu_729_p1 = 13'd53;

assign i_fu_471_p2 = (select_ln351_6_fu_444_p3 + 8'd1);

assign icmp_ln336_fu_283_p2 = ((indvar_flatten65_reg_164 == mul_ln336_2_reg_802) ? 1'b1 : 1'b0);

assign icmp_ln338_fu_300_p2 = ((indvar_flatten25_reg_187 == mul_ln336_1_reg_788) ? 1'b1 : 1'b0);

assign icmp_ln340_1_fu_321_p2 = ((indvar_flatten_reg_210 == mul_ln336_reg_781) ? 1'b1 : 1'b0);

assign icmp_ln340_fu_278_p2 = ((mul_ln336_reg_781 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln342_1_fu_433_p2 = ((j_0_reg_232 == Ksize) ? 1'b1 : 1'b0);

assign icmp_ln342_fu_273_p2 = ((Ksize == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln348_fu_572_p2 = ((or_ln348_fu_566_p2 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln353_1_fu_677_p2 = (($signed(Input_1_q0) > $signed(select_ln348_1_fu_670_p3)) ? 1'b1 : 1'b0);

assign icmp_ln353_fu_648_p2 = (($signed(Input_0_q0) > $signed(select_ln348_fu_641_p3)) ? 1'b1 : 1'b0);

assign icmp_ln356_1_fu_610_p2 = ((select_ln351_10_fu_487_p3 == K_1) ? 1'b1 : 1'b0);

assign icmp_ln356_2_fu_422_p2 = ((ap_phi_mux_i_0_phi_fu_225_p4 == K_1) ? 1'b1 : 1'b0);

assign icmp_ln356_3_fu_545_p2 = ((i_fu_471_p2 == K_1) ? 1'b1 : 1'b0);

assign icmp_ln356_fu_268_p2 = ((K_1 == 8'd0) ? 1'b1 : 1'b0);

assign j_fu_621_p2 = (select_ln351_10_fu_487_p3 + 8'd1);

assign mul_ln336_1_fu_709_p0 = mul_ln336_1_fu_709_p00;

assign mul_ln336_1_fu_709_p00 = mul_ln336_reg_781;

assign mul_ln336_1_fu_709_p1 = mul_ln336_1_fu_709_p10;

assign mul_ln336_1_fu_709_p10 = TC_MIN;

assign mul_ln336_2_fu_715_p0 = mul_ln336_2_fu_715_p00;

assign mul_ln336_2_fu_715_p00 = mul_ln336_1_reg_788;

assign mul_ln336_2_fu_715_p1 = mul_ln336_2_fu_715_p10;

assign mul_ln336_2_fu_715_p10 = TR_MIN;

assign mul_ln336_fu_247_p0 = zext_ln336_1_fu_243_p1;

assign mul_ln336_fu_247_p1 = zext_ln336_1_fu_243_p1;

assign mul_ln336_fu_247_p2 = (mul_ln336_fu_247_p0 * mul_ln336_fu_247_p1);

assign mul_ln351_1_fu_394_p0 = zext_ln336_reg_794;

assign mul_ln351_1_fu_394_p1 = mul_ln351_1_fu_394_p10;

assign mul_ln351_1_fu_394_p10 = tc_0_reg_198;

assign mul_ln351_1_fu_394_p2 = (mul_ln351_1_fu_394_p0 * mul_ln351_1_fu_394_p1);

assign mul_ln351_2_fu_410_p0 = mul_ln351_2_fu_410_p00;

assign mul_ln351_2_fu_410_p00 = tr_reg_833;

assign mul_ln351_2_fu_410_p1 = zext_ln336_reg_794;

assign mul_ln351_2_fu_410_p2 = (mul_ln351_2_fu_410_p0 * mul_ln351_2_fu_410_p1);

assign mul_ln351_3_fu_454_p0 = mul_ln351_3_fu_454_p00;

assign mul_ln351_3_fu_454_p00 = tc_reg_863;

assign mul_ln351_3_fu_454_p1 = zext_ln336_reg_794;

assign mul_ln351_3_fu_454_p2 = (mul_ln351_3_fu_454_p0 * mul_ln351_3_fu_454_p1);

assign mul_ln351_fu_385_p0 = zext_ln336_reg_794;

assign mul_ln351_fu_385_p1 = mul_ln351_fu_385_p10;

assign mul_ln351_fu_385_p10 = tr_0_reg_175;

assign mul_ln351_fu_385_p2 = (mul_ln351_fu_385_p0 * mul_ln351_fu_385_p1);

assign or_ln348_fu_566_p2 = (select_ln351_10_fu_487_p3 | select_ln340_fu_558_p3);

assign or_ln351_1_fu_477_p2 = (select_ln351_9_fu_465_p3 | select_ln351_5_reg_854);

assign or_ln351_2_fu_482_p2 = (or_ln351_1_fu_477_p2 | icmp_ln338_reg_838);

assign or_ln351_fu_339_p2 = (select_ln351_5_fu_326_p3 | icmp_ln338_fu_300_p2);

assign select_ln338_fu_373_p3 = ((icmp_ln338_fu_300_p2[0:0] === 1'b1) ? 24'd1 : add_ln338_1_fu_367_p2);

assign select_ln340_1_fu_359_p3 = ((or_ln351_fu_339_p2[0:0] === 1'b1) ? 16'd1 : add_ln340_1_fu_353_p2);

assign select_ln340_fu_558_p3 = ((select_ln351_9_fu_465_p3[0:0] === 1'b1) ? i_fu_471_p2 : select_ln351_6_fu_444_p3);

assign select_ln348_1_fu_670_p3 = ((icmp_ln348_reg_899_pp0_iter2_reg[0:0] === 1'b1) ? 16'd32769 : tmp_1_2_fu_72);

assign select_ln348_fu_641_p3 = ((icmp_ln348_reg_899_pp0_iter2_reg[0:0] === 1'b1) ? 16'd32769 : tmp_0_2_fu_68);

assign select_ln351_10_fu_487_p3 = ((or_ln351_2_fu_482_p2[0:0] === 1'b1) ? 8'd0 : j_0_reg_232);

assign select_ln351_11_fu_523_p3 = ((icmp_ln338_reg_838[0:0] === 1'b1) ? trunc_ln351_3_fu_513_p1 : add_ln351_1_fu_517_p2);

assign select_ln351_12_fu_530_p3 = ((select_ln351_5_reg_854[0:0] === 1'b1) ? trunc_ln351_2_fu_509_p1 : select_ln351_11_fu_523_p3);

assign select_ln351_13_fu_537_p3 = ((select_ln351_9_fu_465_p3[0:0] === 1'b1) ? add_ln351_fu_503_p2 : select_ln351_12_fu_530_p3);

assign select_ln351_14_fu_550_p3 = ((select_ln351_9_fu_465_p3[0:0] === 1'b1) ? icmp_ln356_3_fu_545_p2 : select_ln351_8_fu_459_p3);

assign select_ln351_15_fu_586_p3 = ((icmp_ln338_reg_838[0:0] === 1'b1) ? 13'd0 : trunc_ln351_5_fu_582_p1);

assign select_ln351_16_fu_593_p3 = ((select_ln351_5_reg_854[0:0] === 1'b1) ? trunc_ln351_4_fu_578_p1 : select_ln351_15_fu_586_p3);

assign select_ln351_1_fu_415_p3 = ((icmp_ln338_reg_838[0:0] === 1'b1) ? mul_ln351_2_fu_410_p2 : mul_ln351_fu_385_p2);

assign select_ln351_2_fu_313_p3 = ((icmp_ln338_fu_300_p2[0:0] === 1'b1) ? tr_fu_294_p2 : ap_phi_mux_tr_0_phi_fu_179_p4);

assign select_ln351_3_fu_427_p3 = ((icmp_ln338_reg_838[0:0] === 1'b1) ? icmp_ln356_reg_807 : icmp_ln356_2_fu_422_p2);

assign select_ln351_4_fu_438_p3 = ((icmp_ln338_reg_838[0:0] === 1'b1) ? icmp_ln342_reg_813 : icmp_ln342_1_fu_433_p2);

assign select_ln351_5_fu_326_p3 = ((icmp_ln338_fu_300_p2[0:0] === 1'b1) ? icmp_ln340_reg_819 : icmp_ln340_1_fu_321_p2);

assign select_ln351_6_fu_444_p3 = ((or_ln351_reg_868[0:0] === 1'b1) ? 8'd0 : ap_phi_mux_i_0_phi_fu_225_p4);

assign select_ln351_7_fu_345_p3 = ((select_ln351_5_fu_326_p3[0:0] === 1'b1) ? tc_fu_333_p2 : select_ln351_fu_305_p3);

assign select_ln351_8_fu_459_p3 = ((select_ln351_5_reg_854[0:0] === 1'b1) ? icmp_ln356_reg_807 : select_ln351_3_fu_427_p3);

assign select_ln351_9_fu_465_p3 = ((select_ln351_5_reg_854[0:0] === 1'b1) ? icmp_ln342_reg_813 : select_ln351_4_fu_438_p3);

assign select_ln351_fu_305_p3 = ((icmp_ln338_fu_300_p2[0:0] === 1'b1) ? 8'd0 : ap_phi_mux_tc_0_phi_fu_202_p4);

assign sext_ln351_fu_633_p1 = grp_fu_729_p3;

assign sext_ln357_2_fu_696_p1 = $signed(add_ln357_reg_919_pp0_iter3_reg);

assign tc_fu_333_p2 = (select_ln351_fu_305_p3 + 8'd1);

assign tmp_0_3_fu_654_p3 = ((icmp_ln353_fu_648_p2[0:0] === 1'b1) ? Input_0_q0 : select_ln348_fu_641_p3);

assign tmp_1_3_fu_683_p3 = ((icmp_ln353_1_fu_677_p2[0:0] === 1'b1) ? Input_1_q0 : select_ln348_1_fu_670_p3);

assign tr_fu_294_p2 = (ap_phi_mux_tr_0_phi_fu_179_p4 + 8'd1);

assign trunc_ln351_1_fu_495_p1 = select_ln351_1_fu_415_p3[12:0];

assign trunc_ln351_2_fu_509_p1 = select_ln351_1_fu_415_p3[12:0];

assign trunc_ln351_3_fu_513_p1 = mul_ln351_2_fu_410_p2[12:0];

assign trunc_ln351_4_fu_578_p1 = mul_ln351_3_fu_454_p2[12:0];

assign trunc_ln351_5_fu_582_p1 = mul_ln351_1_fu_394_p2[12:0];

assign trunc_ln351_fu_399_p1 = mul_ln351_fu_385_p2[12:0];

assign zext_ln336_1_fu_243_p1 = Ksize;

assign zext_ln336_fu_259_p1 = Kstride;

assign zext_ln351_2_fu_403_p1 = ap_phi_mux_i_0_phi_fu_225_p4;

assign zext_ln351_6_fu_499_p1 = i_fu_471_p2;

assign zext_ln351_7_fu_600_p1 = select_ln351_10_fu_487_p3;

always @ (posedge ap_clk) begin
    zext_ln336_reg_794[15:8] <= 8'b00000000;
end

endmodule //maxpool_tile5