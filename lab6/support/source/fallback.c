/******************************************************************************
* Copyright (C) 2002 - 2021 Xilinx, Inc.  All rights reserved.
* Copyright (c) 2022 - 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include <stdio.h>
#include <xil_io.h>
#include "platform.h"

#define LED 0x01
#define LED_DELAY 10000000

#ifndef SDT
#define GPIO_0_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define GPIO_1_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
#else
#define XGPIO_0_BASEADDRESS  XPAR_XGPIO_0_BASEADDR
#define XGPIO_1_BASEADDRESS  XPAR_XGPIO_1_BASEADDR
#endif

#define STATUS_REG_ADDR   0x040A0130U
#define JUMP_VALUE        0x00000000U
#define PMC_REG_ADDR      0x0040A0050U
#define RST_VALUE         0x00000001U
#define BOOT_ROM_ERROR_CODE 0x040A014CU 

/* UART Lite base address */
#define UART_BASEADDR     XPAR_XUARTLITE_0_BASEADDR
#define XUL_STATUS_REG_OFFSET   8
#define XUL_RX_FIFO_OFFSET      0
#define XUL_SR_RX_FIFO_VALID_DATA   0x01

XGpio Gpio0;
XGpio Gpio1;

int main(void)
{
	int Status;
	volatile int Delay;
	int x;
	u32 uart_status;
	u8 received_char;

	init_platform();

#ifndef SDT
	Status = XGpio_Initialize(&Gpio0, GPIO_0_DEVICE_ID);
#else
	Status = XGpio_Initialize(&Gpio0, XGPIO_0_BASEADDRESS);
#endif
	if (Status != XST_SUCCESS) {
        xil_printf("ERROR: GPIO0 init failed. Check hardware connections.\r\n");
        return XST_FAILURE;
    }

#ifndef SDT
	Status = XGpio_Initialize(&Gpio1, GPIO_1_DEVICE_ID);
#else
	Status = XGpio_Initialize(&Gpio1, XGPIO_1_BASEADDRESS);
#endif
	if (Status != XST_SUCCESS) {
        xil_printf("ERROR: GPIO1 init failed. Check hardware connections.\r\n");
        return XST_FAILURE;
    }

	XGpio_SetDataDirection(&Gpio0, 1, ~LED);
	XGpio_SetDataDirection(&Gpio0, 2, ~LED);
	XGpio_SetDataDirection(&Gpio1, 1, ~LED);
	XGpio_SetDataDirection(&Gpio1, 2, ~LED);

	xil_printf("\r\n");
    xil_printf("=================================================\r\n");
    xil_printf("       FALLBACK IMAGE BOOTED SUCCESSFULLY\r\n");
    xil_printf("=================================================\r\n");
    xil_printf("MULTI_BOOT Address: 0x00180000\r\n");
	xil_printf("LEDs are blinking Green to indicate fallback image.\r\n");
	xil_printf("\r\n");
    xil_printf("Boot ROM Error Code: 0x%08X\r\n", Xil_In32(BOOT_ROM_ERROR_CODE));
    xil_printf("Press 'Enter' to boot multiboot image.\r\n");
    xil_printf("=================================================\r\n");

	Xil_Out32(BOOT_ROM_ERROR_CODE, 0x00000000);

	while (1) {
		/* Turn on LED set 1, Turn off LED set 2 */
		XGpio_DiscreteWrite(&Gpio0, 1, LED);
		XGpio_DiscreteWrite(&Gpio1, 1, LED);
		XGpio_DiscreteWrite(&Gpio0, 2, 0x00);
		XGpio_DiscreteWrite(&Gpio1, 2, 0x00);

		/* Simple delay */
		for (Delay = 0; Delay < LED_DELAY; Delay++) {
			/* Just delay, do nothing */
		}

		/* Check UART after delay */
		uart_status = Xil_In32(UART_BASEADDR + XUL_STATUS_REG_OFFSET);
		if (uart_status & XUL_SR_RX_FIFO_VALID_DATA) {
			received_char = Xil_In32(UART_BASEADDR + XUL_RX_FIFO_OFFSET) & 0xFF;
			if (received_char == '\r' || received_char == '\n') {
				goto multiboot_trigger;
			}
		}

		/* Turn on LED set 2, Turn off LED set 1 */
		XGpio_DiscreteWrite(&Gpio0, 1, 0x00);
		XGpio_DiscreteWrite(&Gpio1, 1, 0x00);
		XGpio_DiscreteWrite(&Gpio0, 2, LED);
		XGpio_DiscreteWrite(&Gpio1, 2, LED);

		/* Simple delay */
		for (Delay = 0; Delay < LED_DELAY; Delay++) {
			/* Just delay, do nothing */
		}

		/* Check UART after delay */
		uart_status = Xil_In32(UART_BASEADDR + XUL_STATUS_REG_OFFSET);
		if (uart_status & XUL_SR_RX_FIFO_VALID_DATA) {
			received_char = Xil_In32(UART_BASEADDR + XUL_RX_FIFO_OFFSET) & 0xFF;
			if (received_char == '\r' || received_char == '\n') {
				goto multiboot_trigger;
			}
		}
	}

multiboot_trigger:
	xil_printf("\r\n");
    xil_printf("Enter key detected.\r\n");
    xil_printf("Switching back to multiboot image \r\n");
	
	/* Write to STATUS_REG_ADDR */
	Xil_Out32(STATUS_REG_ADDR, JUMP_VALUE);
	x = Xil_In32(STATUS_REG_ADDR);
	
	xil_printf("\n****Jumping to 0x%08X**\r\n", x);
	xil_printf("STATUS_REG (0x%08X) <- 0x%08X\r\n", STATUS_REG_ADDR, JUMP_VALUE);
	xil_printf("Triggering a PMC Reset\r\n");
	
	/* Small delay before reset */
	for (volatile int i = 0; i < 1000000; i++);
	
	/* Write to PMC_REG_ADDR to trigger reset */
	Xil_Out32(PMC_REG_ADDR, RST_VALUE);
	xil_printf("PMC_REG    (0x%08X) <- 0x%08X (reset)\r\n", PMC_REG_ADDR, RST_VALUE);
	xil_printf("\r\n");
    xil_printf("System will reset now. If the multiboot image fails,\r\n");
    xil_printf("the fallback image will reload automatically.\r\n");
	
	/* System should reset, but just in case, wait here */
	while(1);

	cleanup_platform();
	return XST_SUCCESS;
}
