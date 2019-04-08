/*
 * sensor_fusion_driver.h
 *
 *  Created on: Mar 27, 2019
 *      Author: Jason
 */

#ifndef SRC_SENSOR_FUSION_DRIVER_H_
#define SRC_SENSOR_FUSION_DRIVER_H_

#include <xintc_l.h>
#include <xparameters.h>
#include "sleep.h"
#include "sensor_fusion_axi.h"

#define PITCH_OFFSET 0x8
#define ROLL_OFFSET 0xC
#define YAW_OFFSET 0x10
#define FINGER_OFFSET 0x14

#define SF_DATA_ADDRESS 0x44A00000
#define SF_INTC_ADDRESS 0x44A10000

// base address of uart conencted to bluetooth
#define BT_BASEADDRESS XPAR_BT_UART_BASEADDR
#define STD_BASEADDRESS STDIN_BASEADDRESS

void sf_DisableInterrupt();
void sf_EnableInterrupt();
void sf_GlobalEnableInterrupt();
void sf_AckInterrupt();

#endif /* SRC_SENSOR_FUSION_DRIVER_H_ */
