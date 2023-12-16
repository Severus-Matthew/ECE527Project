// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfpga_acc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFpga_acc_CfgInitialize(XFpga_acc *InstancePtr, XFpga_acc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFpga_acc_Start(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFpga_acc_IsDone(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFpga_acc_IsIdle(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFpga_acc_IsReady(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFpga_acc_EnableAutoRestart(XFpga_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XFpga_acc_DisableAutoRestart(XFpga_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XFpga_acc_Set_ifm(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IFM_DATA, Data);
}

u32 XFpga_acc_Get_ifm(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IFM_DATA);
    return Data;
}

void XFpga_acc_Set_ofm(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_DATA, Data);
}

u32 XFpga_acc_Get_ofm(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_DATA);
    return Data;
}

void XFpga_acc_Set_weight(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_WEIGHT_DATA, Data);
}

u32 XFpga_acc_Get_weight(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_WEIGHT_DATA);
    return Data;
}

void XFpga_acc_Set_bias(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_BIAS_DATA, Data);
}

u32 XFpga_acc_Get_bias(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_BIAS_DATA);
    return Data;
}

void XFpga_acc_Set_k_s_pad_ltype(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_K_S_PAD_LTYPE_DATA, Data);
}

u32 XFpga_acc_Get_k_s_pad_ltype(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_K_S_PAD_LTYPE_DATA);
    return Data;
}

void XFpga_acc_Set_iofm_num(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IOFM_NUM_DATA, Data);
}

u32 XFpga_acc_Get_iofm_num(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IOFM_NUM_DATA);
    return Data;
}

void XFpga_acc_Set_ifm_w_h(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IFM_W_H_DATA, Data);
}

u32 XFpga_acc_Get_ifm_w_h(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IFM_W_H_DATA);
    return Data;
}

void XFpga_acc_Set_ofm_w_h(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_W_H_DATA, Data);
}

u32 XFpga_acc_Get_ofm_w_h(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_W_H_DATA);
    return Data;
}

void XFpga_acc_Set_TRTC(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TRTC_DATA, Data);
}

u32 XFpga_acc_Get_TRTC(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TRTC_DATA);
    return Data;
}

void XFpga_acc_Set_TMTN(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TMTN_DATA, Data);
}

u32 XFpga_acc_Get_TMTN(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TMTN_DATA);
    return Data;
}

void XFpga_acc_Set_OFM_num_bound(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_NUM_BOUND_DATA, Data);
}

u32 XFpga_acc_Get_OFM_num_bound(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OFM_NUM_BOUND_DATA);
    return Data;
}

void XFpga_acc_Set_mLoopsxTM(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_MLOOPSXTM_DATA, Data);
}

u32 XFpga_acc_Get_mLoopsxTM(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_MLOOPSXTM_DATA);
    return Data;
}

void XFpga_acc_Set_mLoops_a1xTM(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_MLOOPS_A1XTM_DATA, Data);
}

u32 XFpga_acc_Get_mLoops_a1xTM(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_MLOOPS_A1XTM_DATA);
    return Data;
}

void XFpga_acc_Set_pad_val(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_PAD_VAL_DATA, Data);
}

u32 XFpga_acc_Get_pad_val(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_PAD_VAL_DATA);
    return Data;
}

void XFpga_acc_Set_TRowTCol(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TROWTCOL_DATA, Data);
}

u32 XFpga_acc_Get_TRowTCol(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_TROWTCOL_DATA);
    return Data;
}

void XFpga_acc_Set_IHW(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IHW_DATA, Data);
}

u32 XFpga_acc_Get_IHW(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IHW_DATA);
    return Data;
}

void XFpga_acc_Set_OHW(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OHW_DATA, Data);
}

u32 XFpga_acc_Get_OHW(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OHW_DATA);
    return Data;
}

void XFpga_acc_Set_KK_INumxKK(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_KK_INUMXKK_DATA, Data);
}

u32 XFpga_acc_Get_KK_INumxKK(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_KK_INUMXKK_DATA);
    return Data;
}

void XFpga_acc_Set_en_bits(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_EN_BITS_DATA, Data);
}

u32 XFpga_acc_Get_en_bits(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_EN_BITS_DATA);
    return Data;
}

void XFpga_acc_Set_WeightQ(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_WEIGHTQ_DATA, Data);
}

u32 XFpga_acc_Get_WeightQ(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_WEIGHTQ_DATA);
    return Data;
}

void XFpga_acc_Set_BetaQ(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_BETAQ_DATA, Data);
}

u32 XFpga_acc_Get_BetaQ(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_BETAQ_DATA);
    return Data;
}

void XFpga_acc_Set_InputQ(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_INPUTQ_DATA, Data);
}

u32 XFpga_acc_Get_InputQ(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_INPUTQ_DATA);
    return Data;
}

void XFpga_acc_Set_OutputQ(XFpga_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OUTPUTQ_DATA, Data);
}

u32 XFpga_acc_Get_OutputQ(XFpga_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_OUTPUTQ_DATA);
    return Data;
}

void XFpga_acc_InterruptGlobalEnable(XFpga_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_GIE, 1);
}

void XFpga_acc_InterruptGlobalDisable(XFpga_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_GIE, 0);
}

void XFpga_acc_InterruptEnable(XFpga_acc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IER);
    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XFpga_acc_InterruptDisable(XFpga_acc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IER);
    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XFpga_acc_InterruptClear(XFpga_acc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFpga_acc_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XFpga_acc_InterruptGetEnabled(XFpga_acc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_IER);
}

u32 XFpga_acc_InterruptGetStatus(XFpga_acc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFpga_acc_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XFPGA_ACC_CTRL_BUS_ADDR_ISR);
}

