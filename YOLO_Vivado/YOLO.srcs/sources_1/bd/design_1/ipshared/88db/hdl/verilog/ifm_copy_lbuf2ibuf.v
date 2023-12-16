// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ifm_copy_lbuf2ibuf (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_buffer_0_address0,
        input_buffer_0_ce0,
        input_buffer_0_we0,
        input_buffer_0_d0,
        input_buffer_0_address1,
        input_buffer_0_ce1,
        input_buffer_0_we1,
        input_buffer_0_d1,
        input_buffer_1_address0,
        input_buffer_1_ce0,
        input_buffer_1_we0,
        input_buffer_1_d0,
        input_buffer_1_address1,
        input_buffer_1_ce1,
        input_buffer_1_we1,
        input_buffer_1_d1,
        local_buf_address0,
        local_buf_ce0,
        local_buf_q0,
        TCol,
        Input_w,
        Input_h,
        TN_MIN,
        pad_val,
        Coffset,
        Roffset,
        t1,
        t2,
        bn,
        enable
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] input_buffer_0_address0;
output   input_buffer_0_ce0;
output   input_buffer_0_we0;
output  [15:0] input_buffer_0_d0;
output  [11:0] input_buffer_0_address1;
output   input_buffer_0_ce1;
output   input_buffer_0_we1;
output  [15:0] input_buffer_0_d1;
output  [11:0] input_buffer_1_address0;
output   input_buffer_1_ce0;
output   input_buffer_1_we0;
output  [15:0] input_buffer_1_d0;
output  [11:0] input_buffer_1_address1;
output   input_buffer_1_ce1;
output   input_buffer_1_we1;
output  [15:0] input_buffer_1_d1;
output  [4:0] local_buf_address0;
output   local_buf_ce0;
input  [31:0] local_buf_q0;
input  [15:0] TCol;
input  [15:0] Input_w;
input  [15:0] Input_h;
input  [7:0] TN_MIN;
input  [15:0] pad_val;
input  [24:0] Coffset;
input  [24:0] Roffset;
input  [7:0] t1;
input  [7:0] t2;
input  [7:0] bn;
input   enable;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_buffer_0_ce0;
reg input_buffer_0_we0;
reg input_buffer_0_ce1;
reg input_buffer_0_we1;
reg input_buffer_1_ce0;
reg input_buffer_1_we0;
reg input_buffer_1_ce1;
reg input_buffer_1_we1;
reg[4:0] local_buf_address0;
reg local_buf_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] buf_256b_1_0_reg_216;
reg   [15:0] buf_256b_0_0_reg_226;
reg   [15:0] cnt_0_reg_236;
reg   [7:0] bn_local_0_reg_247;
reg   [7:0] t3_0_reg_256;
wire   [0:0] enable_read_read_fu_78_p2;
wire   [0:0] or_ln49_2_fu_329_p2;
reg   [0:0] or_ln49_2_reg_542;
wire   [0:0] trunc_ln51_fu_335_p1;
reg   [0:0] trunc_ln51_reg_547;
wire   [15:0] buf_256b_0_fu_339_p1;
wire    ap_CS_fsm_state2;
wire   [15:0] grp_fu_267_p4;
wire   [24:0] zext_ln49_fu_343_p1;
reg   [24:0] zext_ln49_reg_561;
wire   [12:0] mul_ln51_fu_349_p2;
reg   [12:0] mul_ln51_reg_566;
wire   [0:0] icmp_ln43_fu_359_p2;
reg   [0:0] icmp_ln43_reg_572;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] t3_fu_364_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_4_fu_379_p3;
reg   [0:0] tmp_4_reg_581;
wire   [0:0] or_ln49_fu_398_p2;
reg   [0:0] or_ln49_reg_585;
wire   [0:0] trunc_ln51_1_fu_403_p1;
reg   [0:0] trunc_ln51_1_reg_589;
wire   [12:0] add_ln51_fu_411_p2;
reg   [12:0] add_ln51_reg_594;
wire   [0:0] icmp_ln56_fu_437_p2;
reg   [0:0] icmp_ln56_reg_599;
wire   [15:0] cnt_3_fu_454_p3;
wire   [7:0] select_ln56_fu_462_p3;
wire   [15:0] buf_256b_1_6_fu_488_p3;
reg    ap_enable_reg_pp0_iter1;
wire   [15:0] buf_256b_0_5_fu_495_p3;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
wire  signed [63:0] sext_ln54_fu_425_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_443_p1;
wire  signed [63:0] sext_ln51_fu_479_p1;
wire   [15:0] select_ln51_fu_470_p3;
wire   [24:0] zext_ln33_fu_277_p1;
wire   [24:0] yoffset_fu_281_p2;
wire   [24:0] zext_ln34_fu_295_p1;
wire   [0:0] icmp_ln49_fu_299_p2;
wire   [0:0] icmp_ln49_1_fu_311_p2;
wire   [0:0] xor_ln49_2_fu_317_p2;
wire   [0:0] xor_ln49_1_fu_305_p2;
wire   [0:0] tmp_3_fu_287_p3;
wire   [0:0] or_ln49_1_fu_323_p2;
wire   [7:0] mul_ln51_fu_349_p1;
wire   [15:0] zext_ln43_1_fu_355_p1;
wire   [24:0] zext_ln43_fu_370_p1;
wire   [24:0] xoffset_fu_374_p2;
wire   [0:0] icmp_ln49_2_fu_387_p2;
wire   [0:0] xor_ln49_fu_392_p2;
wire   [12:0] zext_ln51_1_fu_407_p1;
wire   [12:0] zext_ln54_fu_416_p1;
wire   [12:0] add_ln54_fu_420_p2;
wire   [7:0] bn_local_fu_431_p2;
wire   [15:0] cnt_fu_448_p2;
wire   [15:0] buf_256b_0_4_fu_484_p1;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [12:0] mul_ln51_fu_349_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        bn_local_0_reg_247 <= select_ln56_fu_462_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bn_local_0_reg_247 <= bn;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_reg_572 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_256b_0_0_reg_226 <= buf_256b_0_5_fu_495_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_256b_0_0_reg_226 <= buf_256b_0_fu_339_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_reg_572 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_256b_1_0_reg_216 <= buf_256b_1_6_fu_488_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_256b_1_0_reg_216 <= {{local_buf_q0[31:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cnt_0_reg_236 <= cnt_3_fu_454_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_0_reg_236 <= 16'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t3_0_reg_256 <= t3_fu_364_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t3_0_reg_256 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln49_fu_398_p2 == 1'd0) & (tmp_4_fu_379_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln51_reg_594 <= add_ln51_fu_411_p2;
        trunc_ln51_1_reg_589 <= trunc_ln51_1_fu_403_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln43_reg_572 <= icmp_ln43_fu_359_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln56_reg_599 <= icmp_ln56_fu_437_p2;
        tmp_4_reg_581 <= xoffset_fu_374_p2[32'd24];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln51_reg_566 <= mul_ln51_fu_349_p2;
        zext_ln49_reg_561[15 : 0] <= zext_ln49_fu_343_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        or_ln49_2_reg_542 <= or_ln49_2_fu_329_p2;
        trunc_ln51_reg_547 <= trunc_ln51_fu_335_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_359_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_4_fu_379_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        or_ln49_reg_585 <= or_ln49_fu_398_p2;
    end
end

always @ (*) begin
    if ((icmp_ln43_fu_359_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_0_ce0 = 1'b1;
    end else begin
        input_buffer_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_0_ce1 = 1'b1;
    end else begin
        input_buffer_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((trunc_ln51_reg_547 == 1'd0) & (tmp_4_fu_379_p3 == 1'd1) & (icmp_ln43_fu_359_p2 == 1'd1)) | ((trunc_ln51_reg_547 == 1'd0) & (or_ln49_fu_398_p2 == 1'd1) & (icmp_ln43_fu_359_p2 == 1'd1))))) begin
        input_buffer_0_we0 = 1'b1;
    end else begin
        input_buffer_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln51_reg_547 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln49_reg_585 == 1'd0) & (tmp_4_reg_581 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_0_we1 = 1'b1;
    end else begin
        input_buffer_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_1_ce0 = 1'b1;
    end else begin
        input_buffer_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_1_ce1 = 1'b1;
    end else begin
        input_buffer_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((trunc_ln51_reg_547 == 1'd1) & (tmp_4_fu_379_p3 == 1'd1) & (icmp_ln43_fu_359_p2 == 1'd1)) | ((trunc_ln51_reg_547 == 1'd1) & (or_ln49_fu_398_p2 == 1'd1) & (icmp_ln43_fu_359_p2 == 1'd1))))) begin
        input_buffer_1_we0 = 1'b1;
    end else begin
        input_buffer_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln51_reg_547 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln49_reg_585 == 1'd0) & (tmp_4_reg_581 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_buffer_1_we1 = 1'b1;
    end else begin
        input_buffer_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        local_buf_address0 = zext_ln59_fu_443_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        local_buf_address0 = 64'd0;
    end else begin
        local_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        local_buf_ce0 = 1'b1;
    end else begin
        local_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((ap_start == 1'b1) & (enable_read_read_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln43_fu_359_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln43_fu_359_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln51_fu_411_p2 = (mul_ln51_reg_566 + zext_ln51_1_fu_407_p1);

assign add_ln54_fu_420_p2 = (mul_ln51_reg_566 + zext_ln54_fu_416_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bn_local_fu_431_p2 = (8'd1 + bn_local_0_reg_247);

assign buf_256b_0_4_fu_484_p1 = local_buf_q0[15:0];

assign buf_256b_0_5_fu_495_p3 = ((icmp_ln56_reg_599[0:0] === 1'b1) ? buf_256b_0_4_fu_484_p1 : buf_256b_0_0_reg_226);

assign buf_256b_0_fu_339_p1 = local_buf_q0[15:0];

assign buf_256b_1_6_fu_488_p3 = ((icmp_ln56_reg_599[0:0] === 1'b1) ? grp_fu_267_p4 : buf_256b_1_0_reg_216);

assign cnt_3_fu_454_p3 = ((icmp_ln56_fu_437_p2[0:0] === 1'b1) ? cnt_fu_448_p2 : cnt_0_reg_236);

assign cnt_fu_448_p2 = (16'd1 + cnt_0_reg_236);

assign enable_read_read_fu_78_p2 = enable;

assign grp_fu_267_p4 = {{local_buf_q0[31:16]}};

assign icmp_ln43_fu_359_p2 = ((zext_ln43_1_fu_355_p1 < TCol) ? 1'b1 : 1'b0);

assign icmp_ln49_1_fu_311_p2 = ((t1 < TN_MIN) ? 1'b1 : 1'b0);

assign icmp_ln49_2_fu_387_p2 = (($signed(xoffset_fu_374_p2) < $signed(zext_ln49_reg_561)) ? 1'b1 : 1'b0);

assign icmp_ln49_fu_299_p2 = (($signed(yoffset_fu_281_p2) < $signed(zext_ln34_fu_295_p1)) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_437_p2 = ((bn_local_fu_431_p2 == 8'd2) ? 1'b1 : 1'b0);

assign input_buffer_0_address0 = sext_ln54_fu_425_p1;

assign input_buffer_0_address1 = sext_ln51_fu_479_p1;

assign input_buffer_0_d0 = pad_val;

assign input_buffer_0_d1 = select_ln51_fu_470_p3;

assign input_buffer_1_address0 = sext_ln54_fu_425_p1;

assign input_buffer_1_address1 = sext_ln51_fu_479_p1;

assign input_buffer_1_d0 = pad_val;

assign input_buffer_1_d1 = select_ln51_fu_470_p3;

assign mul_ln51_fu_349_p1 = mul_ln51_fu_349_p10;

assign mul_ln51_fu_349_p10 = t2;

assign mul_ln51_fu_349_p2 = (13'd53 * mul_ln51_fu_349_p1);

assign or_ln49_1_fu_323_p2 = (xor_ln49_2_fu_317_p2 | xor_ln49_1_fu_305_p2);

assign or_ln49_2_fu_329_p2 = (tmp_3_fu_287_p3 | or_ln49_1_fu_323_p2);

assign or_ln49_fu_398_p2 = (xor_ln49_fu_392_p2 | or_ln49_2_reg_542);

assign select_ln51_fu_470_p3 = ((trunc_ln51_1_reg_589[0:0] === 1'b1) ? buf_256b_1_0_reg_216 : buf_256b_0_0_reg_226);

assign select_ln56_fu_462_p3 = ((icmp_ln56_fu_437_p2[0:0] === 1'b1) ? 8'd0 : bn_local_fu_431_p2);

assign sext_ln51_fu_479_p1 = $signed(add_ln51_reg_594);

assign sext_ln54_fu_425_p1 = $signed(add_ln54_fu_420_p2);

assign t3_fu_364_p2 = (t3_0_reg_256 + 8'd1);

assign tmp_3_fu_287_p3 = yoffset_fu_281_p2[32'd24];

assign tmp_4_fu_379_p3 = xoffset_fu_374_p2[32'd24];

assign trunc_ln51_1_fu_403_p1 = bn_local_0_reg_247[0:0];

assign trunc_ln51_fu_335_p1 = t1[0:0];

assign xoffset_fu_374_p2 = (zext_ln43_fu_370_p1 + Coffset);

assign xor_ln49_1_fu_305_p2 = (icmp_ln49_fu_299_p2 ^ 1'd1);

assign xor_ln49_2_fu_317_p2 = (icmp_ln49_1_fu_311_p2 ^ 1'd1);

assign xor_ln49_fu_392_p2 = (icmp_ln49_2_fu_387_p2 ^ 1'd1);

assign yoffset_fu_281_p2 = (zext_ln33_fu_277_p1 + Roffset);

assign zext_ln33_fu_277_p1 = t2;

assign zext_ln34_fu_295_p1 = Input_h;

assign zext_ln43_1_fu_355_p1 = t3_0_reg_256;

assign zext_ln43_fu_370_p1 = t3_0_reg_256;

assign zext_ln49_fu_343_p1 = Input_w;

assign zext_ln51_1_fu_407_p1 = t3_0_reg_256;

assign zext_ln54_fu_416_p1 = t3_0_reg_256;

assign zext_ln59_fu_443_p1 = cnt_0_reg_236;

always @ (posedge ap_clk) begin
    zext_ln49_reg_561[24:16] <= 9'b000000000;
end

endmodule //ifm_copy_lbuf2ibuf