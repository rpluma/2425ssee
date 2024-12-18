/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xiomodule.h"

int main()
{
	// Define diversas variables que usaremos para la E/S
	u32 data;
	XIOModule iomodule;
	// Define la variable para el buffer de entrada
	u8 rx_buf[5];
	// Define el buffer de salida para la prueba de env�o de caracteres
	u8 msg[16] = "Esto es un test";//
	// Longitud del mensaje a enviar
	const int count = 15;
	// Variable para contadores
	u32 index = 0;

	// Inicializa el micro
	init_platform();

	// Inicializa la E/S para GPI y GPO y el m�dulo de la UART para obtener la direcci�n base:
	data = XIOModule_Initialize(&iomodule, XPAR_IOMODULE_0_DEVICE_ID);
	data = XIOModule_Start(&iomodule);
	data = XIOModule_CfgInitialize(&iomodule, NULL, 1);


	// Retardo necesario para que el Remote Lab se configure correctamente
	// antes de poder operar con la E/S del MicroBlaze
	while (index < 3000000)
	{
		index ++;
	}

	// Env�a por la UART el mensaje indicado usando xil_printf
	xil_printf("\n\r\n\rLec SW - Esc LEDs - L/E UART\n\r");

	// Enviamos una cadena de 15 caracteres utilizando 'Send'.
	// Esta funci�n es del tipo "non-blocking", por lo que puede retornar
	// sin haber enviado realmente la cadena completa, y ser� necesario
	// llamarla repetidamente dentro de un bucle hasta que toda la cadena
	// est� enviada.
	// unsigned int XIOModule_Send(XIOModule *InstancePtr, u8 *DataBufferPtr, unsigned int NumBytes);
	index = 0;
	while (index < count)
	{
		data = XIOModule_Send(&iomodule, &msg[index], count - index);
		index += data;
	}
	xil_printf("\n\rN�mero de caracteres enviados: %d\n\r", index);

	// Recibimos un car�cter usando 'Recv' y lo almacenamos en 'rx_buf'
	// unsigned int XIOModule_Recv(XIOModule *InstancePtr, u8 *DataBufferPtr, unsigned int NumBytes);
	xil_printf("\n\rPulse una tecla: ");

	// Orden al Remote Lab para que imprima en pantalla todos los mensajes acumulados con "xil_printf"
	xil_printf("\t");

	// Bucle para detenerse hasta leer un car�cter del teclado usando 'Recv'
	while ((data = XIOModule_Recv(&iomodule, rx_buf, 1)) == 0);
	xil_printf("\n\rN�mero de caracteres recibidos: %d", data);
	xil_printf("\n\rCar�cter recibido: %c\n\r", rx_buf[0]);

	// Bucle principal.
	// Lee el estado de los switches y lo escribe en los LEDs de salida constantemente
	// Utiliza el canal 1 de la GPI/O
	xil_printf("\n\rAhora se leen los switches y se escribe el estado en los leds constantemente...");
	xil_printf("\t");

	while (1)
	{
		data = XIOModule_DiscreteRead(&iomodule, 1);
		XIOModule_DiscreteWrite(&iomodule, 1, data);
	}
	cleanup_platform();
	return 0;
}



// source ipcore_dir/microblaze_mcs_setup.tcl
// microblaze_mcs_data2mem workspace/hello_world/Debug/hello_world.elf
