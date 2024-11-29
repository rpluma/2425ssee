/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
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
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/*
    SISTEMAS ELECTRÓNICOS. PRÁCTICA Nº 2.

    Grado en Ingeniería en Electrónica, Robótica y Mecatrónica.

    Objetivo:
        Utilizando el software Xilinx ISE 14.7 y Xilinx Software Development Kit (SDK) para programar el MicroBlaze,
        se pide implementar un sistema de control de luz y temperatura en una vivienda inteligente.

        Este sistema partirá de una serie de datos proporcionados por diversos sensores,
        como pueden ser la temperatura exterior e interior, la presencia de habitantes en la casa,
        la luz ambiental o el ruido exterior, y accionará diversos controladores que permitirían subir o bajar persianas,
        abrir o cerrar ventanas, y arrancar sistemas de calefacción o de aire acondicionado según se necesite,
        en base a unas normas generales.

 */
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xiomodule.h"


//- Constantes simbólicas para límites de actuadores
    #define APAGADO 0
    #define ATOPE 100


//- Estados de ventanas y persianas
    #define ST_CERRADAS 0
    #define ST_ABRIENDO 1
    #define ST_ABIERTAS 2
    #define ST_CERRANDO 3


/*
 Por tanto, el objetivo del sistema es crear una vivienda inteligente monitorizada por los siguientes componentes y sensores:
    - 1 detector de presencia en la vivienda (ON – OFF).
    - 1 sensor de luz exterior (0 – 100%).
    - 2 sensores de temperatura ambiental, uno interior y otro exterior a la vivienda (0 – 60°C).
    - 1 detector de ruido exterior (0 – 120 dB).
*/

//- Declaración de variables para sensores y asignación de valores iniciales
    u8 snPrese = 0;
    u8 snLuzEx = 75;
    u8 snTemEx = 20;
    u8 snTemIn = 20;
    u8 snRuido = 20;


/*
 Y los sistemas que accionaremos serán los siguientes:
    - Luces de la casa, apagando o encendiendo las mismas (ON – OFF).
    - 1 motor para el control de la apertura y cierre de ventanas (0 – 100%).
    - 1 motor para controlar la subida y bajada de persianas (0 – 100%).
    - 1 control de calefacción, controlando la potencia de acción del mismo (0 – 100%).
    - 1 control de aire acondicionado, también con control de potencia de acción (0 – 100%).
 */



//- Declaración de variables para actuadores
    u8 aLuces = 0;
    static u8 acVents = APAGADO;
    static u8 acPerss = APAGADO;
    static u8 acCalef = APAGADO;
    static u8 acAireA = APAGADO;

//- Declaración de estados y transitorios de persianas y ventanas
    static u8 stVents = ST_CERRADAS;
    static u8 stPerss = ST_CERRADAS;

/*
     U2. En la pantalla se mostrará toda la información del sistema,
     que incluye el valor de todos los sensores,
     así como los sistemas que accionamos para el control de la vivienda, con sus unidades respectivas.
     Cada vez que el usuario modifique algún valor del sensor, o bien debido a un cambio en el sistema
     por tiempo o por autoincremento/autodecremento de la temperatura,
     se recalcularán los valores necesarios y se volverá a imprimir toda la información en pantalla.
     En el caso de las persianas y ventanas, será necesario mostrar tanto si están abiertas o cerradas,
     así como el % de funcionamiento del motor si se está moviendo;
     en este último caso, indicar también si la ventana o persiana estaría abriéndose o cerrándose.
     Inicialmente se encontrará todo cerrado.
 */

void ActualizarPantalla(void) {
    // símbolo para grados centígrados en ASCII
        #define GRADOS 176

    //- decodificación de constantes simbólicas
        static const char *decodePrese[] = {"Ausente", "Presente"};
        static const char *decodeVents[] = {"Cerradas", "Abriendo", "Abiertas", "Cerrando"};

    //- Estado de sensores
        xil_printf("\n\r\n\rEstado de sensores: ");
        //xil_printf("\n\r   Sensor de presencia: %s", (sPrese==0)?"presente":"ausente");
        xil_printf("\n\r   Presencia:    %s", decodePrese[snPrese]);
        xil_printf("\n\r   Luz exterior: %d %%", snLuzEx);
        xil_printf("\n\r   Temperatura:  exterior=%d%cC - interior=%d%cC", snTemEx, GRADOS, snTemIn, GRADOS);
        xil_printf("\n\r   Ruido:        %d dB", snRuido);

    //- Estado de actuadores
        xil_printf("\n\r\n\rEstado de actuadores: ");

        //- Ventanas
        if (acVents != APAGADO)
            xil_printf("\n\r   Ventanas:    %s                    ", decodeVents[stVents], acVents);
        else
            xil_printf("\n\r   Ventanas:    %s - motor al %d %%   ", decodeVents[stVents], acVents);

        //- Persianas
        if (acPerss != APAGADO)
            xil_printf("\n\r   Persianas:   %s                    ", decodeVents[stPerss], acPerss);
        else
            xil_printf("\n\r   Persianas:   %s - motor al %d %%   ", decodeVents[stPerss], acPerss);

        //- Calefacción y aire
        xil_printf("\n\r   Calefacción:  %d %%          ", acCalef);
        xil_printf("\n\r   Aire acondicionado:  %d %%   ", acAireA);

    //- Volcar la pantalla
        xil_printf("\t");
    return;
}

int main()
{
    //- Inicialización del micro
        XIOModule iomodule;
        u32 res; // resultado de operaciones

    //- Inicialización del micro
        init_platform();

    // Inicializa la E/S para GPI y GPO y el módulo de la UART para obtener la dirección base:
        res = XIOModule_Initialize(&iomodule, XPAR_IOMODULE_0_DEVICE_ID);
        res = XIOModule_Start(&iomodule);
        res = XIOModule_CfgInitialize(&iomodule, NULL, 1);

    //- Retardo necesario para que el Remote Lab se configure correctamente antes de operar con la E/S del MicroBlaze
        for (res=0; res < 3000000; res++)
            ;

    //- pruebas de base
        u32 index, data;
        const int count = 15;
        u8 msg[16] = "Esto es un test";
        u8 rx_buf[5];

        xil_printf("\n\r\n\rLec SW - Esc LEDs - L/E UART\n\r");
        index = 0;
        while (index < count) {
            data = XIOModule_Send(&iomodule, &msg[index], count - index);
            index += data;
        }
        xil_printf("\n\rNúmero de caracteres enviados: %d\n\r", index);
        xil_printf("\n\rPulse una tecla: ");
        xil_printf("\t");

        while ((data = XIOModule_Recv(&iomodule, rx_buf, 1)) == 0);
        xil_printf("\n\rNúmero de caracteres recibidos: %d", data);
        xil_printf("\n\rCarácter recibido: %c\n\r", rx_buf[0]);

        // Bucle principal.
        // Lee el estado de los switches y lo escribe en los LEDs de salida constantemente
        // Utiliza el canal 1 de la GPI/O
        xil_printf("\n\rAhora se leen los switches y se escribe el estado en los leds constantemente...");
        xil_printf("\t");

        // Bucle principal
            while (1) {
            res = XIOModule_DiscreteRead(&iomodule, 1);
            XIOModule_DiscreteWrite(&iomodule, 1, res);
            ActualizarPantalla();
        }

    //- Finalización del micro
        cleanup_platform();
        return 0;
}




// source ipcore_dir/microblaze_mcs_setup.tcl
// microblaze_mcs_data2mem workspace/hello_world/debug/hello_world.elf
