// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xyolo2_fpga.h"

extern XYolo2_fpga_Config XYolo2_fpga_ConfigTable[];

XYolo2_fpga_Config *XYolo2_fpga_LookupConfig(u16 DeviceId) {
	XYolo2_fpga_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XYOLO2_FPGA_NUM_INSTANCES; Index++) {
		if (XYolo2_fpga_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XYolo2_fpga_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XYolo2_fpga_Initialize(XYolo2_fpga *InstancePtr, u16 DeviceId) {
	XYolo2_fpga_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XYolo2_fpga_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XYolo2_fpga_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

