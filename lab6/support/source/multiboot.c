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

#define MULTI_BOOT_REG   0x040A0130U
#define PMC_REG_ADDR     0x0040A0050U
#define RST_VALUE        0x00000001U

/* UART Lite base address */
#define UART_BASEADDR     XPAR_XUARTLITE_0_BASEADDR
#define XUL_STATUS_REG_OFFSET   8
#define XUL_RX_FIFO_OFFSET      0
#define XUL_TX_FIFO_OFFSET      4
#define XUL_SR_RX_FIFO_VALID_DATA   0x01
#define XUL_SR_TX_FIFO_FULL         0x08

XGpio Gpio0;
XGpio Gpio1;

void uart_send_char(u8 c)
{
	u32 status;
	/* Wait until TX FIFO is not full */
	do {
		status = Xil_In32(UART_BASEADDR + XUL_STATUS_REG_OFFSET);
	} while (status & XUL_SR_TX_FIFO_FULL);
	
	Xil_Out32(UART_BASEADDR + XUL_TX_FIFO_OFFSET, c);
}

int main(void)
{
	int Status;
	volatile int Delay;
	int x;
	u32 uart_status;
	u8 received_char;
	char input_buffer[9];
	int index = 0;
	unsigned int jump_value = 0;

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
	xil_printf("       MULTIBOOT IMAGE BOOTED SUCCESSFULLY\r\n");
	xil_printf("=================================================\r\n");
	xil_printf("LEDs are blinking Red to indicate Multiboot image.\r\n");
	xil_printf("\r\n");
	xil_printf("To switch to a different boot image, enter the\r\n");
	xil_printf("MULTI_BOOT register value in hex (1-8 digits):\r\n");

	while (1) {
		/* Turn on LED set 1, Turn off LED set 2 */
		XGpio_DiscreteWrite(&Gpio0, 1, LED);
		XGpio_DiscreteWrite(&Gpio1, 1, LED);
		XGpio_DiscreteWrite(&Gpio0, 2, 0x00);
		XGpio_DiscreteWrite(&Gpio1, 2, 0x00);

		/* Delay with UART checking */
		for (Delay = 0; Delay < LED_DELAY; Delay++) {
			/* Check UART frequently during delay */
			if (Delay % 1000 == 0) {
				uart_status = Xil_In32(UART_BASEADDR + XUL_STATUS_REG_OFFSET);
				if (uart_status & XUL_SR_RX_FIFO_VALID_DATA) {
					received_char = Xil_In32(UART_BASEADDR + XUL_RX_FIFO_OFFSET) & 0xFF;
					
					/* Echo the character */
					uart_send_char(received_char);
					
					if (received_char == '\r' || received_char == '\n') {
						if (index > 0) {
							input_buffer[index] = '\0';
							sscanf(input_buffer, "%x", &jump_value);
							goto multiboot_trigger;
						}
					} else if (index < 8) {
						input_buffer[index++] = (char)received_char;
						
						/* Check if we have 8 characters - trigger immediately */
						if (index == 8) {
							input_buffer[index] = '\0';
							sscanf(input_buffer, "%x", &jump_value);
							goto multiboot_trigger;
						}
					}
				}
			}
		}

		/* Turn on LED set 2, Turn off LED set 1 */
		XGpio_DiscreteWrite(&Gpio0, 1, 0x00);
		XGpio_DiscreteWrite(&Gpio1, 1, 0x00);
		XGpio_DiscreteWrite(&Gpio0, 2, LED);
		XGpio_DiscreteWrite(&Gpio1, 2, LED);

		/* Delay with UART checking */
		for (Delay = 0; Delay < LED_DELAY; Delay++) {
			/* Check UART frequently during delay */
			if (Delay % 1000 == 0) {
				uart_status = Xil_In32(UART_BASEADDR + XUL_STATUS_REG_OFFSET);
				if (uart_status & XUL_SR_RX_FIFO_VALID_DATA) {
					received_char = Xil_In32(UART_BASEADDR + XUL_RX_FIFO_OFFSET) & 0xFF;
					
					/* Echo the character */
					uart_send_char(received_char);
					
					if (received_char == '\r' || received_char == '\n') {
						if (index > 0) {
							input_buffer[index] = '\0';
							sscanf(input_buffer, "%x", &jump_value);
							goto multiboot_trigger;
						}
					} else if (index < 8) {
						input_buffer[index++] = (char)received_char;
						
						/* Check if we have 8 characters - trigger immediately */
						if (index == 8) {
							input_buffer[index] = '\0';
							sscanf(input_buffer, "%x", &jump_value);
							goto multiboot_trigger;
						}
					}
				}
			}
		}
	}
	
multiboot_trigger:
	xil_printf("\r\n");
	xil_printf("MULTI_BOOT register value entered: 0x%08X\r\n", jump_value);
	xil_printf("-------------------------------------------------\r");
	
	/* Write to MULTI_BOOT_REG */
	Xil_Out32(MULTI_BOOT_REG, jump_value);
	x = Xil_In32(MULTI_BOOT_REG);
	
	xil_printf("\nJumping to 0x%08X\r\n", x);
	xil_printf("MULTI_BOOT_REG (0x%08X) <- 0x%08X\r\n", MULTI_BOOT_REG, jump_value);
	xil_printf("Triggering a PMC Reset\r\n");
	
	/* Small delay before reset */
	for (volatile int i = 0; i < 1000000; i++);
	
	/* Write to PMC_REG_ADDR to trigger reset */
	Xil_Out32(PMC_REG_ADDR, RST_VALUE);
	xil_printf("  PMC_RST_REG    (0x%08X) <- 0x%08X\r\n", PMC_REG_ADDR, RST_VALUE);
	xil_printf("Triggering PMC reset to boot image at offset 0x%08X...\r\n", jump_value);
	
	/* System should reset, but just in case, wait here */
	while(1);

	cleanup_platform();
	return XST_SUCCESS;
}
