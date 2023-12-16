// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFPGA_ACC_H
#define XFPGA_ACC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfpga_acc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XFpga_acc_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XFpga_acc;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFpga_acc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFpga_acc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFpga_acc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFpga_acc_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFpga_acc_Initialize(XFpga_acc *InstancePtr, u16 DeviceId);
XFpga_acc_Config* XFpga_acc_LookupConfig(u16 DeviceId);
int XFpga_acc_CfgInitialize(XFpga_acc *InstancePtr, XFpga_acc_Config *ConfigPtr);
#else
int XFpga_acc_Initialize(XFpga_acc *InstancePtr, const char* InstanceName);
int XFpga_acc_Release(XFpga_acc *InstancePtr);
#endif

void XFpga_acc_Start(XFpga_acc *InstancePtr);
u32 XFpga_acc_IsDone(XFpga_acc *InstancePtr);
u32 XFpga_acc_IsIdle(XFpga_acc *InstancePtr);
u32 XFpga_acc_IsReady(XFpga_acc *InstancePtr);
void XFpga_acc_EnableAutoRestart(XFpga_acc *InstancePtr);
void XFpga_acc_DisableAutoRestart(XFpga_acc *InstancePtr);

void XFpga_acc_Set_ifm(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_ifm(XFpga_acc *InstancePtr);
void XFpga_acc_Set_ofm(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_ofm(XFpga_acc *InstancePtr);
void XFpga_acc_Set_weight(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_weight(XFpga_acc *InstancePtr);
void XFpga_acc_Set_bias(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_bias(XFpga_acc *InstancePtr);
void XFpga_acc_Set_k_s_pad_ltype(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_k_s_pad_ltype(XFpga_acc *InstancePtr);
void XFpga_acc_Set_iofm_num(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_iofm_num(XFpga_acc *InstancePtr);
void XFpga_acc_Set_ifm_w_h(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_ifm_w_h(XFpga_acc *InstancePtr);
void XFpga_acc_Set_ofm_w_h(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_ofm_w_h(XFpga_acc *InstancePtr);
void XFpga_acc_Set_TRTC(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_TRTC(XFpga_acc *InstancePtr);
void XFpga_acc_Set_TMTN(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_TMTN(XFpga_acc *InstancePtr);
void XFpga_acc_Set_OFM_num_bound(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_OFM_num_bound(XFpga_acc *InstancePtr);
void XFpga_acc_Set_mLoopsxTM(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_mLoopsxTM(XFpga_acc *InstancePtr);
void XFpga_acc_Set_mLoops_a1xTM(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_mLoops_a1xTM(XFpga_acc *InstancePtr);
void XFpga_acc_Set_pad_val(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_pad_val(XFpga_acc *InstancePtr);
void XFpga_acc_Set_TRowTCol(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_TRowTCol(XFpga_acc *InstancePtr);
void XFpga_acc_Set_IHW(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_IHW(XFpga_acc *InstancePtr);
void XFpga_acc_Set_OHW(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_OHW(XFpga_acc *InstancePtr);
void XFpga_acc_Set_KK_INumxKK(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_KK_INumxKK(XFpga_acc *InstancePtr);
void XFpga_acc_Set_en_bits(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_en_bits(XFpga_acc *InstancePtr);
void XFpga_acc_Set_WeightQ(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_WeightQ(XFpga_acc *InstancePtr);
void XFpga_acc_Set_BetaQ(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_BetaQ(XFpga_acc *InstancePtr);
void XFpga_acc_Set_InputQ(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_InputQ(XFpga_acc *InstancePtr);
void XFpga_acc_Set_OutputQ(XFpga_acc *InstancePtr, u32 Data);
u32 XFpga_acc_Get_OutputQ(XFpga_acc *InstancePtr);

void XFpga_acc_InterruptGlobalEnable(XFpga_acc *InstancePtr);
void XFpga_acc_InterruptGlobalDisable(XFpga_acc *InstancePtr);
void XFpga_acc_InterruptEnable(XFpga_acc *InstancePtr, u32 Mask);
void XFpga_acc_InterruptDisable(XFpga_acc *InstancePtr, u32 Mask);
void XFpga_acc_InterruptClear(XFpga_acc *InstancePtr, u32 Mask);
u32 XFpga_acc_InterruptGetEnabled(XFpga_acc *InstancePtr);
u32 XFpga_acc_InterruptGetStatus(XFpga_acc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
