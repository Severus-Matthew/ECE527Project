// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of ifm
//        bit 31~0 - ifm[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of ofm
//        bit 31~0 - ofm[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of weight
//        bit 31~0 - weight[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias
//        bit 31~0 - bias[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of k_s_pad_ltype
//        bit 31~0 - k_s_pad_ltype[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of iofm_num
//        bit 31~0 - iofm_num[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of ifm_w_h
//        bit 31~0 - ifm_w_h[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of ofm_w_h
//        bit 31~0 - ofm_w_h[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of TRTC
//        bit 31~0 - TRTC[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of TMTN
//        bit 31~0 - TMTN[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of OFM_num_bound
//        bit 31~0 - OFM_num_bound[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of mLoopsxTM
//        bit 31~0 - mLoopsxTM[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of mLoops_a1xTM
//        bit 31~0 - mLoops_a1xTM[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of pad_val
//        bit 15~0 - pad_val[15:0] (Read/Write)
//        others   - reserved
// 0x7c : reserved
// 0x80 : Data signal of TRowTCol
//        bit 31~0 - TRowTCol[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of IHW
//        bit 31~0 - IHW[31:0] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of OHW
//        bit 31~0 - OHW[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of KK_INumxKK
//        bit 31~0 - KK_INumxKK[31:0] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of en_bits
//        bit 31~0 - en_bits[31:0] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of WeightQ
//        bit 31~0 - WeightQ[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of BetaQ
//        bit 31~0 - BetaQ[31:0] (Read/Write)
// 0xb4 : reserved
// 0xb8 : Data signal of InputQ
//        bit 31~0 - InputQ[31:0] (Read/Write)
// 0xbc : reserved
// 0xc0 : Data signal of OutputQ
//        bit 31~0 - OutputQ[31:0] (Read/Write)
// 0xc4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL            0x00
#define XFPGA_ACC_CTRL_BUS_ADDR_GIE                0x04
#define XFPGA_ACC_CTRL_BUS_ADDR_IER                0x08
#define XFPGA_ACC_CTRL_BUS_ADDR_ISR                0x0c
#define XFPGA_ACC_CTRL_BUS_ADDR_IFM_DATA           0x10
#define XFPGA_ACC_CTRL_BUS_BITS_IFM_DATA           32
#define XFPGA_ACC_CTRL_BUS_ADDR_OFM_DATA           0x18
#define XFPGA_ACC_CTRL_BUS_BITS_OFM_DATA           32
#define XFPGA_ACC_CTRL_BUS_ADDR_WEIGHT_DATA        0x20
#define XFPGA_ACC_CTRL_BUS_BITS_WEIGHT_DATA        32
#define XFPGA_ACC_CTRL_BUS_ADDR_BIAS_DATA          0x28
#define XFPGA_ACC_CTRL_BUS_BITS_BIAS_DATA          32
#define XFPGA_ACC_CTRL_BUS_ADDR_K_S_PAD_LTYPE_DATA 0x30
#define XFPGA_ACC_CTRL_BUS_BITS_K_S_PAD_LTYPE_DATA 32
#define XFPGA_ACC_CTRL_BUS_ADDR_IOFM_NUM_DATA      0x38
#define XFPGA_ACC_CTRL_BUS_BITS_IOFM_NUM_DATA      32
#define XFPGA_ACC_CTRL_BUS_ADDR_IFM_W_H_DATA       0x40
#define XFPGA_ACC_CTRL_BUS_BITS_IFM_W_H_DATA       32
#define XFPGA_ACC_CTRL_BUS_ADDR_OFM_W_H_DATA       0x48
#define XFPGA_ACC_CTRL_BUS_BITS_OFM_W_H_DATA       32
#define XFPGA_ACC_CTRL_BUS_ADDR_TRTC_DATA          0x50
#define XFPGA_ACC_CTRL_BUS_BITS_TRTC_DATA          32
#define XFPGA_ACC_CTRL_BUS_ADDR_TMTN_DATA          0x58
#define XFPGA_ACC_CTRL_BUS_BITS_TMTN_DATA          32
#define XFPGA_ACC_CTRL_BUS_ADDR_OFM_NUM_BOUND_DATA 0x60
#define XFPGA_ACC_CTRL_BUS_BITS_OFM_NUM_BOUND_DATA 32
#define XFPGA_ACC_CTRL_BUS_ADDR_MLOOPSXTM_DATA     0x68
#define XFPGA_ACC_CTRL_BUS_BITS_MLOOPSXTM_DATA     32
#define XFPGA_ACC_CTRL_BUS_ADDR_MLOOPS_A1XTM_DATA  0x70
#define XFPGA_ACC_CTRL_BUS_BITS_MLOOPS_A1XTM_DATA  32
#define XFPGA_ACC_CTRL_BUS_ADDR_PAD_VAL_DATA       0x78
#define XFPGA_ACC_CTRL_BUS_BITS_PAD_VAL_DATA       16
#define XFPGA_ACC_CTRL_BUS_ADDR_TROWTCOL_DATA      0x80
#define XFPGA_ACC_CTRL_BUS_BITS_TROWTCOL_DATA      32
#define XFPGA_ACC_CTRL_BUS_ADDR_IHW_DATA           0x88
#define XFPGA_ACC_CTRL_BUS_BITS_IHW_DATA           32
#define XFPGA_ACC_CTRL_BUS_ADDR_OHW_DATA           0x90
#define XFPGA_ACC_CTRL_BUS_BITS_OHW_DATA           32
#define XFPGA_ACC_CTRL_BUS_ADDR_KK_INUMXKK_DATA    0x98
#define XFPGA_ACC_CTRL_BUS_BITS_KK_INUMXKK_DATA    32
#define XFPGA_ACC_CTRL_BUS_ADDR_EN_BITS_DATA       0xa0
#define XFPGA_ACC_CTRL_BUS_BITS_EN_BITS_DATA       32
#define XFPGA_ACC_CTRL_BUS_ADDR_WEIGHTQ_DATA       0xa8
#define XFPGA_ACC_CTRL_BUS_BITS_WEIGHTQ_DATA       32
#define XFPGA_ACC_CTRL_BUS_ADDR_BETAQ_DATA         0xb0
#define XFPGA_ACC_CTRL_BUS_BITS_BETAQ_DATA         32
#define XFPGA_ACC_CTRL_BUS_ADDR_INPUTQ_DATA        0xb8
#define XFPGA_ACC_CTRL_BUS_BITS_INPUTQ_DATA        32
#define XFPGA_ACC_CTRL_BUS_ADDR_OUTPUTQ_DATA       0xc0
#define XFPGA_ACC_CTRL_BUS_BITS_OUTPUTQ_DATA       32

