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
// 0x10 : Data signal of Input_r
//        bit 31~0 - Input_r[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of Output_r
//        bit 31~0 - Output_r[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of Weight
//        bit 31~0 - Weight[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of Beta
//        bit 31~0 - Beta[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of IFM_num
//        bit 31~0 - IFM_num[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of OFM_num
//        bit 31~0 - OFM_num[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of Ksize
//        bit 31~0 - Ksize[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of Kstride
//        bit 31~0 - Kstride[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of Input_w
//        bit 31~0 - Input_w[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of Input_h
//        bit 31~0 - Input_h[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of Output_w
//        bit 31~0 - Output_w[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of Output_h
//        bit 31~0 - Output_h[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of Padding
//        bit 31~0 - Padding[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of IsNL
//        bit 0  - IsNL[0] (Read/Write)
//        others - reserved
// 0x7c : reserved
// 0x80 : Data signal of TM
//        bit 31~0 - TM[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of TN
//        bit 31~0 - TN[31:0] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of TR
//        bit 31~0 - TR[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of TC
//        bit 31~0 - TC[31:0] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of NToy
//        bit 31~0 - NToy[31:0] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of NTox
//        bit 31~0 - NTox[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of NTof
//        bit 31~0 - NTof[31:0] (Read/Write)
// 0xb4 : reserved
// 0xb8 : Data signal of NTcomb
//        bit 31~0 - NTcomb[31:0] (Read/Write)
// 0xbc : reserved
// 0xc0 : Data signal of NTif
//        bit 31~0 - NTif[31:0] (Read/Write)
// 0xc4 : reserved
// 0xc8 : Data signal of lmode
//        bit 7~0 - lmode[7:0] (Read/Write)
//        others  - reserved
// 0xcc : reserved
// 0xd0 : Data signal of NTcomb_l
//        bit 31~0 - NTcomb_l[31:0] (Read/Write)
// 0xd4 : reserved
// 0xd8 : Data signal of LayerType
//        bit 31~0 - LayerType[31:0] (Read/Write)
// 0xdc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL        0x00
#define XYOLO2_FPGA_CTRL_BUS_ADDR_GIE            0x04
#define XYOLO2_FPGA_CTRL_BUS_ADDR_IER            0x08
#define XYOLO2_FPGA_CTRL_BUS_ADDR_ISR            0x0c
#define XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA   0x10
#define XYOLO2_FPGA_CTRL_BUS_BITS_INPUT_R_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA  0x18
#define XYOLO2_FPGA_CTRL_BUS_BITS_OUTPUT_R_DATA  32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA    0x20
#define XYOLO2_FPGA_CTRL_BUS_BITS_WEIGHT_DATA    32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA      0x28
#define XYOLO2_FPGA_CTRL_BUS_BITS_BETA_DATA      32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_IFM_NUM_DATA   0x30
#define XYOLO2_FPGA_CTRL_BUS_BITS_IFM_NUM_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_OFM_NUM_DATA   0x38
#define XYOLO2_FPGA_CTRL_BUS_BITS_OFM_NUM_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_KSIZE_DATA     0x40
#define XYOLO2_FPGA_CTRL_BUS_BITS_KSIZE_DATA     32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_KSTRIDE_DATA   0x48
#define XYOLO2_FPGA_CTRL_BUS_BITS_KSTRIDE_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA   0x50
#define XYOLO2_FPGA_CTRL_BUS_BITS_INPUT_W_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA   0x58
#define XYOLO2_FPGA_CTRL_BUS_BITS_INPUT_H_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA  0x60
#define XYOLO2_FPGA_CTRL_BUS_BITS_OUTPUT_W_DATA  32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA  0x68
#define XYOLO2_FPGA_CTRL_BUS_BITS_OUTPUT_H_DATA  32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA   0x70
#define XYOLO2_FPGA_CTRL_BUS_BITS_PADDING_DATA   32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA      0x78
#define XYOLO2_FPGA_CTRL_BUS_BITS_ISNL_DATA      1
#define XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA        0x80
#define XYOLO2_FPGA_CTRL_BUS_BITS_TM_DATA        32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA        0x88
#define XYOLO2_FPGA_CTRL_BUS_BITS_TN_DATA        32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA        0x90
#define XYOLO2_FPGA_CTRL_BUS_BITS_TR_DATA        32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA        0x98
#define XYOLO2_FPGA_CTRL_BUS_BITS_TC_DATA        32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTOY_DATA      0xa0
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTOY_DATA      32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTOX_DATA      0xa8
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTOX_DATA      32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTOF_DATA      0xb0
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTOF_DATA      32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_DATA    0xb8
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTCOMB_DATA    32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTIF_DATA      0xc0
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTIF_DATA      32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_LMODE_DATA     0xc8
#define XYOLO2_FPGA_CTRL_BUS_BITS_LMODE_DATA     8
#define XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_L_DATA  0xd0
#define XYOLO2_FPGA_CTRL_BUS_BITS_NTCOMB_L_DATA  32
#define XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA 0xd8
#define XYOLO2_FPGA_CTRL_BUS_BITS_LAYERTYPE_DATA 32

