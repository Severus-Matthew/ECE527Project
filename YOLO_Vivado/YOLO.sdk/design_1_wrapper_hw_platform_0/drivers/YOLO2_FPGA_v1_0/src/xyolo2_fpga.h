// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XYOLO2_FPGA_H
#define XYOLO2_FPGA_H

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
#include "xyolo2_fpga_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XYolo2_fpga_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XYolo2_fpga;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XYolo2_fpga_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XYolo2_fpga_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XYolo2_fpga_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XYolo2_fpga_ReadReg(BaseAddress, RegOffset) \
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
int XYolo2_fpga_Initialize(XYolo2_fpga *InstancePtr, u16 DeviceId);
XYolo2_fpga_Config* XYolo2_fpga_LookupConfig(u16 DeviceId);
int XYolo2_fpga_CfgInitialize(XYolo2_fpga *InstancePtr, XYolo2_fpga_Config *ConfigPtr);
#else
int XYolo2_fpga_Initialize(XYolo2_fpga *InstancePtr, const char* InstanceName);
int XYolo2_fpga_Release(XYolo2_fpga *InstancePtr);
#endif

void XYolo2_fpga_Start(XYolo2_fpga *InstancePtr);
u32 XYolo2_fpga_IsDone(XYolo2_fpga *InstancePtr);
u32 XYolo2_fpga_IsIdle(XYolo2_fpga *InstancePtr);
u32 XYolo2_fpga_IsReady(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_EnableAutoRestart(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_DisableAutoRestart(XYolo2_fpga *InstancePtr);

void XYolo2_fpga_Set_Input_r(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Input_r(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Output_r(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Output_r(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Weight(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Weight(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Beta(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Beta(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_IFM_num(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_IFM_num(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_OFM_num(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_OFM_num(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Ksize(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Ksize(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Kstride(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Kstride(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Input_w(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Input_w(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Input_h(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Input_h(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Output_w(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Output_w(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Output_h(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Output_h(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_Padding(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_Padding(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_IsNL(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_IsNL(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_TM(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_TM(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_TN(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_TN(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_TR(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_TR(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_TC(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_TC(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NToy(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NToy(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NTox(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NTox(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NTof(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NTof(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NTcomb(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NTcomb(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NTif(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NTif(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_lmode(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_lmode(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_NTcomb_l(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_NTcomb_l(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_Set_LayerType(XYolo2_fpga *InstancePtr, u32 Data);
u32 XYolo2_fpga_Get_LayerType(XYolo2_fpga *InstancePtr);

void XYolo2_fpga_InterruptGlobalEnable(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_InterruptGlobalDisable(XYolo2_fpga *InstancePtr);
void XYolo2_fpga_InterruptEnable(XYolo2_fpga *InstancePtr, u32 Mask);
void XYolo2_fpga_InterruptDisable(XYolo2_fpga *InstancePtr, u32 Mask);
void XYolo2_fpga_InterruptClear(XYolo2_fpga *InstancePtr, u32 Mask);
u32 XYolo2_fpga_InterruptGetEnabled(XYolo2_fpga *InstancePtr);
u32 XYolo2_fpga_InterruptGetStatus(XYolo2_fpga *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
