import addresses
from pynq import MMIO
import math
import numpy as np
import gc
import cv2

def YOLO__Init_EX(In_Address,Out_Address,Weight_offset,Beta_offset,InFM_num,OutFM_num,
                 Kernel_size,Kernel_stride,
                 Input_w,Input_h,Output_w,Output_h,
                  Padding,IsNL,IsBN,
                 TM,TN,TR,TC,
                 mLoops,nLoops,rLoops,cLoops,LayerType,
                 InputQ,OutputQ,WeightQ,BetaQ,WEIGHT_BASE,BETA_BASE):
    # mapping memory

    mmio = MMIO(addresses.IP_BASE_ADDRESS,addresses.ADDRESS_RANGE)
    
    if (Input_w==26):
        T2Rate = 2.0
    elif (Input_w==13):
        T2Rate = 4.0
    else:
        T2Rate = 1.0
    TRow_t = (TR-1)*Kernel_stride+Kernel_size
    trow_loops = int(math.ceil(TRow_t/T2Rate))    
    
    while True:
        ap_idle =  (mmio.read(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL)>>2)&0x01
        if(ap_idle):
            break
               
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_R_DATA,  In_Address)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT1_DATA,  In_Address)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT2_DATA,  In_Address)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT3_DATA,  In_Address)
    
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_R_DATA, Out_Address)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT1_DATA, Out_Address)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHT_DATA,   WEIGHT_BASE+Weight_offset*4)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_BETA_DATA,     BETA_BASE+Beta_offset*4)

    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INFM_NUM_DATA, InFM_num)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTFM_NUM_DATA, OutFM_num)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_SIZE_DATA, Kernel_size)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_KERNEL_STRIDE_DATA, Kernel_stride)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_W_DATA, Input_w)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUT_H_DATA, Input_h)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_W_DATA, Output_w)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUT_H_DATA, Output_h)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_PADDING_DATA, Padding)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_ISNL_DATA, IsNL)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_ISBN_DATA, IsBN)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_TM_DATA, TM)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_TN_DATA, TN)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_TR_DATA, TR)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_TC_DATA, TC)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_MLOOPS_DATA, mLoops)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_NLOOPS_DATA, nLoops)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_RLOOPS_DATA, rLoops)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_CLOOPS_DATA, cLoops)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_LAYERTYPE_DATA, LayerType)

    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_INPUTQ_DATA, InputQ)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_OUTPUTQ_DATA, OutputQ)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_WEIGHTQ_DATA, WeightQ)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_BETAQ_DATA, BetaQ)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_TROW_LOOPS_DATA, trow_loops)

    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_GIE,0)
    mmio.write(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL,1)
    while True:
        ap_done =  (mmio.read(addresses.XYOLO2_FPGA_CTRL_BUS_ADDR_AP_CTRL)>>1)&0x01
        if(ap_done):
            break
            
def float32_int(img_array_3_416_416):
    print("j0")
    current_in = np.asarray(img_array_3_416_416[::2] * (2.0**14), dtype='uint16')
    print("j7")
    next_in = np.asarray(img_array_3_416_416[1::2] * (2.0**14), dtype='uint16')
    del img_array_3_416_416
    gc.collect()
    print("j17")
    input_tmp_img = next_in * 65536
    input_tmp_img = input_tmp_img + current_in
    print("j27")
    return input_tmp_img

 

def image_to_array_1dim(img_path,w,h):
    img = cv2.imread("pictrue_boxed.jpg")
    img_channels = list(cv2.split(img))
    print(img.shape)
    for i in range(3):
        img_channels[i] = cv2.cvtColor(img_channels[i], cv2.COLOR_BGR2RGB).astype(np.float32) / 255
    img_array_3 = np.array(img_channels)
    img_array_3= img_array_3.reshape(9*w*h)
  

    del img

    gc.collect()

    print("j9")

   

    return img_array_3
