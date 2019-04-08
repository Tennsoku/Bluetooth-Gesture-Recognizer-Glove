/*
 * sensor_fusion_driver.c
 *
 *  Created on: Mar 27, 2019
 *      Author: Jason
 */
#include "sensor_fusion_driver.h"

void sf_DisableInterrupt() {
	SENSOR_FUSION_AXI_mWriteReg(SF_INTC_ADDRESS, 0x04, 0x0);
}

void sf_EnableInterrupt(){
	SENSOR_FUSION_AXI_mWriteReg(SF_INTC_ADDRESS, 0x04, 0x1);
}

void sf_GlobalEnableInterrupt(){
	SENSOR_FUSION_AXI_mWriteReg(SF_INTC_ADDRESS, 0x00, 0x1);
}

void sf_AckInterrupt(){
	SENSOR_FUSION_AXI_mWriteReg(SF_INTC_ADDRESS, 0x0C, 0x1);
}
