// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xyolo2_fpga.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XYolo2_fpga_CfgInitialize(XYolo2_fpga *InstancePtr, XYolo2_fpga_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XYolo2_fpga_Start(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XYolo2_fpga_IsDone(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XYolo2_fpga_IsIdle(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XYolo2_fpga_IsReady(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XYolo2_fpga_EnableAutoRestart(XYolo2_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XYolo2_fpga_DisableAutoRestart(XYolo2_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XYolo2_fpga_Set_Input_r(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA, Data);
}

u32 XYolo2_fpga_Get_Input_r(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA);
    return Data;
}

void XYolo2_fpga_Set_Output_r(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA, Data);
}

u32 XYolo2_fpga_Get_Output_r(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA);
    return Data;
}

void XYolo2_fpga_Set_Weight(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA, Data);
}

u32 XYolo2_fpga_Get_Weight(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA);
    return Data;
}

void XYolo2_fpga_Set_Beta(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA, Data);
}

u32 XYolo2_fpga_Get_Beta(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA);
    return Data;
}

void XYolo2_fpga_Set_IFM_num(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IFM_NUM_DATA, Data);
}

u32 XYolo2_fpga_Get_IFM_num(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IFM_NUM_DATA);
    return Data;
}

void XYolo2_fpga_Set_OFM_num(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OFM_NUM_DATA, Data);
}

u32 XYolo2_fpga_Get_OFM_num(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OFM_NUM_DATA);
    return Data;
}

void XYolo2_fpga_Set_Ksize(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_KSIZE_DATA, Data);
}

u32 XYolo2_fpga_Get_Ksize(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_KSIZE_DATA);
    return Data;
}

void XYolo2_fpga_Set_Kstride(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_KSTRIDE_DATA, Data);
}

u32 XYolo2_fpga_Get_Kstride(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_KSTRIDE_DATA);
    return Data;
}

void XYolo2_fpga_Set_Input_w(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA, Data);
}

u32 XYolo2_fpga_Get_Input_w(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA);
    return Data;
}

void XYolo2_fpga_Set_Input_h(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA, Data);
}

u32 XYolo2_fpga_Get_Input_h(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA);
    return Data;
}

void XYolo2_fpga_Set_Output_w(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA, Data);
}

u32 XYolo2_fpga_Get_Output_w(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA);
    return Data;
}

void XYolo2_fpga_Set_Output_h(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA, Data);
}

u32 XYolo2_fpga_Get_Output_h(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA);
    return Data;
}

void XYolo2_fpga_Set_Padding(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA, Data);
}

u32 XYolo2_fpga_Get_Padding(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA);
    return Data;
}

void XYolo2_fpga_Set_IsNL(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA, Data);
}

u32 XYolo2_fpga_Get_IsNL(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA);
    return Data;
}

void XYolo2_fpga_Set_TM(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA, Data);
}

u32 XYolo2_fpga_Get_TM(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA);
    return Data;
}

void XYolo2_fpga_Set_TN(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA, Data);
}

u32 XYolo2_fpga_Get_TN(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA);
    return Data;
}

void XYolo2_fpga_Set_TR(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA, Data);
}

u32 XYolo2_fpga_Get_TR(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA);
    return Data;
}

void XYolo2_fpga_Set_TC(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA, Data);
}

u32 XYolo2_fpga_Get_TC(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA);
    return Data;
}

void XYolo2_fpga_Set_NToy(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOY_DATA, Data);
}

u32 XYolo2_fpga_Get_NToy(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOY_DATA);
    return Data;
}

void XYolo2_fpga_Set_NTox(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOX_DATA, Data);
}

u32 XYolo2_fpga_Get_NTox(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOX_DATA);
    return Data;
}

void XYolo2_fpga_Set_NTof(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOF_DATA, Data);
}

u32 XYolo2_fpga_Get_NTof(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTOF_DATA);
    return Data;
}

void XYolo2_fpga_Set_NTcomb(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_DATA, Data);
}

u32 XYolo2_fpga_Get_NTcomb(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_DATA);
    return Data;
}

void XYolo2_fpga_Set_NTif(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTIF_DATA, Data);
}

u32 XYolo2_fpga_Get_NTif(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTIF_DATA);
    return Data;
}

void XYolo2_fpga_Set_lmode(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_LMODE_DATA, Data);
}

u32 XYolo2_fpga_Get_lmode(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_LMODE_DATA);
    return Data;
}

void XYolo2_fpga_Set_NTcomb_l(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_L_DATA, Data);
}

u32 XYolo2_fpga_Get_NTcomb_l(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_NTCOMB_L_DATA);
    return Data;
}

void XYolo2_fpga_Set_LayerType(XYolo2_fpga *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA, Data);
}

u32 XYolo2_fpga_Get_LayerType(XYolo2_fpga *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA);
    return Data;
}

void XYolo2_fpga_InterruptGlobalEnable(XYolo2_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_GIE, 1);
}

void XYolo2_fpga_InterruptGlobalDisable(XYolo2_fpga *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_GIE, 0);
}

void XYolo2_fpga_InterruptEnable(XYolo2_fpga *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IER);
    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XYolo2_fpga_InterruptDisable(XYolo2_fpga *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IER);
    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XYolo2_fpga_InterruptClear(XYolo2_fpga *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo2_fpga_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XYolo2_fpga_InterruptGetEnabled(XYolo2_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_IER);
}

u32 XYolo2_fpga_InterruptGetStatus(XYolo2_fpga *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo2_fpga_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO2_FPGA_CTRL_BUS_ADDR_ISR);
}

