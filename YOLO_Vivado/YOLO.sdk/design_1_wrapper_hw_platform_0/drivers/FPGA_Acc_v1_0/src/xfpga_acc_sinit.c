// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfpga_acc.h"

extern XFpga_acc_Config XFpga_acc_ConfigTable[];

XFpga_acc_Config *XFpga_acc_LookupConfig(u16 DeviceId) {
	XFpga_acc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFPGA_ACC_NUM_INSTANCES; Index++) {
		if (XFpga_acc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFpga_acc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFpga_acc_Initialize(XFpga_acc *InstancePtr, u16 DeviceId) {
	XFpga_acc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFpga_acc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFpga_acc_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

