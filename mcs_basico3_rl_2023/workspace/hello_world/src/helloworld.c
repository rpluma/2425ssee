/*
 * helloworld.c: simple test application
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xiomodule.h"


// Constantes para tratar las interrupciones externas y asociarlas a sus correspondientes manejadores.
// La primera est� situada siempre en XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR,
// y las siguientes en posiciones consecutivas.
static const u8 IDENTIFICADOR_INTC0_EXT = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR;
static const u8 IDENTIFICADOR_INTC1_EXT = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+1;
static const u8 IDENTIFICADOR_INTC2_EXT = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+2;
static const u8 IDENTIFICADOR_INTC3_EXT = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+3;

// Direcci�n del bus de donde leeremos y escribiremos con el IOBus
// ATENCI�N: S�LO SE PUEDE LLEGAR A DECODIFICAR HASTA 30 BITS, NO LOS 32 DEL BUS.
static const u32 DIRECCION0 = 0x00000004;


//  Variable para inicializar la E/S. Se pone global
//  para que puedan usarla los manejadores de interrupciones

XIOModule iomodule;

// Variable para albergar los datos le�dos del GPI1 (switches)
u8 data_sw = 0x00;

// Variable para albergar los datos a escribir en el GPO1 (leds)
u8 data_gpo1 = 0x00;


void Manejador_Int_Temporizador1 (void* ref)
{
	// Manejador de interrupciones para el FIT1, programado a 1 segundo

	// Escribe s�lo en los 4 bits m�s significativos del GPO1, que son los LEDs de salida.
	// Invertimos cada segundo su valor

	if ((data_gpo1 & 0xF0) == 0x00)   // S�lo miramos los 4 bits m�s significativos
		data_gpo1 = data_gpo1 | 0xF0; // Si estaban a 0, ponemos a 1 los 4 bits m�s significativos haciendo una "OR" con "F"
	else
		data_gpo1 = data_gpo1 & 0x0F; // Si estaban a 1, ponemos a 0 los 4 bits m�s significativos haciendo una "AND" con "0"

	XIOModule_DiscreteWrite(&iomodule, 1, data_gpo1);  // Escribimos en el puerto GPO1
}


//Variables para los manejadores de interrupciones externas:

// Contador de 0 a 9
int contador = 0;
// Variable para el display LCD, en BCD
u8 valor_bcd = 0;

void Manejador_INTC0 (void* ref)
{
	// Manejador de interrupciones para INTC0 (Interrupci�n Externa 0), conectada a un bot�n externo (DERECHO)

	// Incrementa el valor de "contador" c�clicamente entre 0 y 9,
	// y escribe en el display de 7 segmentos (unidades) usando GPO2
	contador++;
	if (contador > 9)
		{
		 contador = 0;
		}
	valor_bcd = contador;
	XIOModule_DiscreteWrite(&iomodule, 2, valor_bcd);
}

void Manejador_INTC1 (void* ref)
{
	// Manejador de interrupciones para INTC1 (Interrupci�n Externa 1), conectada a un bot�n externo (IZQUIERDO)

	// Decrementa el valor de "contador" c�clicamente entre 0 y 9,
	// y escribe en el display de 7 segmentos (unidades) usando GPO2
	contador--;
	if (contador < 0)
		{
		 contador = 9;
		}
	valor_bcd = contador;
	XIOModule_DiscreteWrite(&iomodule, 2, valor_bcd);
}

void Manejador_INTC2 (void* ref)
{
	// Manejador de interrupciones para INTC2 (Interrupci�n Externa 2), conectada a un bot�n externo (ARRIBA)

	// Cuando se pulsa el bot�n, leemos del IOBus el valor que hay en los 4 switches menos significativos de la FPGA,
	// y escribimos el dato en los 4 bits menos significativos del GPO1, que ir�n a un display 7 segmentos (millares)

	// Leemos del IoBus, en la DIRECCION0, y ponemos el dato le�do en 'data_sw'
	data_sw = XIOModule_IoReadByte(&iomodule, DIRECCION0);

	// Escribimos el dato de los switches en los 4 bits menos significativos del GPO1, respetando el valor del resto de bits:

	// 1�: Dejamos en 'data_sw' s�lo los valores de los 4 bits menos significativos,
	//     poniendo a cero los 4 m�s significativos mediante una AND
	data_sw = data_sw & 0x0F;

	// 2�: Dejamos en 'data_gpo1' s�lo los valores de los 4 bits m�s significativos,
	//     poniendo a cero los 4 menos significativos mediante una AND
	data_gpo1 = data_gpo1 & 0xF0;

	// 3�: Calculamos el nuevo valor de salida de 'data_gpo1' haciendo la OR de ella misma con data_sw;
	data_gpo1 = data_gpo1 | data_sw;

	// 4�: Escribimos en el puerto GPO1
	XIOModule_DiscreteWrite(&iomodule, 1, data_gpo1);
}

void Manejador_INTC3 (void* ref)
{
	// Manejador de interrupciones para INTC3 (Interrupci�n Externa 3), conectada a un bot�n externo (ABAJO)

	// Cuando se pulsa el bot�n, se lee directamente del GPI1 el valor que hay en los switches de entrada de la FPGA,
	// y escribimos los 4 bits menos significativos de estos en el IOBus, que ir�n a un display 7 segmentos (centenas)

	// Lee estado de switches en 'data_sw'
	data_sw = XIOModule_DiscreteRead(&iomodule, 1);

	// Escribimos en el IOBus, en la DIRECCION0, el dato le�do de los switches 'data_sw'
	XIOModule_IoWriteByte(&iomodule, DIRECCION0, data_sw);
}




int main()
{
	// Inicializa el micro
	init_platform();

	// Define diversas variables que usaremos para la E/S
	u32 data;
	u8 index;
	u32 index2;

	// Define la variable para el buffer de entrada
	u8 rx_buf[5];

	// Inicializa el m�dulo de GPI, GPO y la UART para obtener la direcci�n base:
	data = XIOModule_Initialize(&iomodule, XPAR_IOMODULE_0_DEVICE_ID);
	data = XIOModule_Start(&iomodule);
	data = XIOModule_CfgInitialize(&iomodule, NULL, 1);

	// Iniciamos el manejador de interrupciones
	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);

	// Registramos el manejador de interrupciones para el FIT1 "Manejador_Int_Temporizador1"
	XIOModule_Connect(&iomodule, XIN_IOMODULE_FIT_1_INTERRUPT_INTR, Manejador_Int_Temporizador1, NULL);

	// Activamos la interrupci�n para FIT1
	XIOModule_Enable(&iomodule, XIN_IOMODULE_FIT_1_INTERRUPT_INTR);

	// Registramos el manejador de interrupciones para INTC0 (Interrupci�n externa 0) "Manejador_INTC0"
	XIOModule_Connect(&iomodule, IDENTIFICADOR_INTC0_EXT, Manejador_INTC0, NULL);

	// Activamos la interrupci�n para INTC 0
	XIOModule_Enable(&iomodule, IDENTIFICADOR_INTC0_EXT);

	// Registramos el manejador de interrupciones para INTC 1 (Interrupci�n externa 1) "Manejador_INTC1"
	XIOModule_Connect(&iomodule, IDENTIFICADOR_INTC1_EXT, Manejador_INTC1, NULL);

	// Activamos la interrupci�n para INTC 1
	XIOModule_Enable(&iomodule, IDENTIFICADOR_INTC1_EXT);

	// Registramos el manejador de interrupciones para INTC 2 (Interrupci�n externa 2) "Manejador_INTC2"
	XIOModule_Connect(&iomodule, IDENTIFICADOR_INTC2_EXT, Manejador_INTC2, NULL);

	// Activamos la interrupci�n para INTC 2
	XIOModule_Enable(&iomodule, IDENTIFICADOR_INTC2_EXT);

	// Registramos el manejador de interrupciones para INTC 3 (Interrupci�n externa 3) "Manejador_INTC3"
	XIOModule_Connect(&iomodule, IDENTIFICADOR_INTC3_EXT, Manejador_INTC3, NULL);

	// Activamos la interrupci�n para INTC 3
	XIOModule_Enable(&iomodule, IDENTIFICADOR_INTC3_EXT);

	// Activamos Interrupciones
	microblaze_enable_interrupts();


	index2 = 0;
	// Retardo necesario para que el Remote Lab se configure correctamente
	// antes de poder operar con la E/S del MicroBlaze
	while (index2 < 6000000)
	{
		index2 ++;
	}


	// Inicializamos el display de 7 segmentos con el 0
	valor_bcd = 0;
	XIOModule_DiscreteWrite(&iomodule, 2, valor_bcd);

	// Env�a por la UART el mensaje indicado
	xil_printf("\n\r\n\rLectura de Switches - Escritura de LEDs - Usando Interrupciones\n\r\n\r");

	xil_printf("\n\rIntroduzca un texto, el Microcontrolador lo convertir� en may�sculas:\n\r");

	// Enviamos el "\t" al Remote Lab para que imprima todos los xil_printf anteriores.
	xil_printf("\t\r");



	// Bucle en el que se espera a recibir un car�cter por la UART, y lo escribe otra vez en la misma
	// pero convertido a may�sculas (si procede), haciendo un "eco" de lo recibido, por tanto.
	// Mientras, cada segundo se generar� una interrupci�n en el temporizador FIT1 que detendr� a dicho bucle
	// y saltar� al manejador, y si se pulsa el bot�n adecuado se generar� una interrupci�n en INTC tambi�n
	while (1)
	{
		// Leemos un car�cter de la UART
		data = XIOModule_Recv(&iomodule, rx_buf, 1);

		// Si realmente hemos recibido un byte, comprobamos si es una letra min�scula
		// y la pasamos a may�sculas; si no es una letra min�scula la enviamos tal y como est�.
		if (data !=0)
		{
			// Hemos recibido un dato
			if ((rx_buf[0] >= 97) & (rx_buf[0] <= 122))
			{
				// Es una letra min�scula, la convertimos a may�scula
				rx_buf[0] -=32;
			}

			// Enviamos el dato por la UART. Cuando 'index' valga > 0 quiere decir
			// que hemos enviado el dato correctamente.
			index = 0;
			while (index < 1)
			{
				data = XIOModule_Send(&iomodule, rx_buf, 1);
				index += data;
			}

			// Si el dato enviado es un retorno de carro ("ENTER") entonces enviamos
			// un salto de l�nea adicionalmente.
			if (rx_buf[0]==13)
			{
				index = 0;
				rx_buf[0] = 10;
				while (index < 1)
				{
					data = XIOModule_Send(&iomodule, rx_buf, 1);
					index += data;
				}
			}
		 // Enviamos el "\t" para que imprima el Remote Lab el �ltimo car�cter enviado
		 xil_printf("\t");
		}
	}

	cleanup_platform();
	return 0;
}

// source ipcore_dir/microblaze_mcs_setup.tcl
// microblaze_mcs_data2mem workspace/hello_world/debug/hello_world.elf
