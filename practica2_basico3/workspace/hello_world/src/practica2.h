/*
 * Fichero:     practica2.h
 * Autor:       Ricardo Panero
 * Fecha:       Noviembre de 2024
 * Descripci�n: constantes y estructuras para la pr�ctica 2
 */

#ifndef PRACTICA2_H_
#define PRACTICA2_H_


//==================================== HARDWARE Y LIBRER�AS EST�NDAR

    //- Librer�as externas
        #include <stdio.h>
        #include <string.h>
        #include "platform.h"
        #include "xparameters.h"
        #include "xiomodule.h"

    //- Interrupciones
        // Constantes para tratar las interrupciones externas y asociarlas a sus correspondientes manejadores.
        // La primera est� situada siempre en XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR,
        // y las siguientes en posiciones consecutivas.
        static const u8 INTERRUPCION_BOTON_DER = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR;
        static const u8 INTERRUPCION_BOTON_IZQ = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+1;
        static const u8 INTERRUPCION_BOTON_ARR = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+2;
        static const u8 INTERRUPCION_BOTON_ABA = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+3;
        static const u8 INTERRUPCION_POTENCIA_U = XIN_IOMODULE_EXTERNAL_INTERRUPT_INTR+4;

    //- Constantes relacionadas con el micro
        #define GPI_POTENCIA 1
        #define GPI_SWITCHES 2
        #define GPO_TEMPERATURAS 1
        #define GPO_LEDS 2
        #define GPO_BCDS 3



//==================================== TEMPORIZADOR

    //- Constantes simb�licas relacionadas con el temporizador
        #define TICS_PANTALLA 2         // se refresca cada despu�s de 2 x 50 ms = 0,1 seg
        #define TICS_AUTOINCREMENTO 200 // se autoincrementa despu�s de  200 x50 ms = 10 seg
        #define TICS_PRESENCIA_5SEG 100 // se cambia de estado  despu�s de 100 x 50ms = 5 seg
        #define GRAD_MIN_APERTURA 0     // m�nima apertura la potencia del motor est� al 0%
        #define GRAD_MED_APERTURA 100   // cuando la apertura es el 50% el motor est� al 100%
        #define GRAD_MAX_APERTURA 200   // m�nima apertura la potencia del motor est� al 0%

    //- Estructura para el temporizador
        typedef struct {
            //- contadores de ticks que se incrementan con cada interrupci�n
                u16 tics_pant;          // tics desde la �ltima vez que se refresc� la pantalla
                u16 tics_pres;          // tics desde la �ltima vez que se pidi� cambiar el sensor de presencia
                u16 tics_auto;          // tics desde que se calcul� el autoincremento por �ltima vez
                u16 grad_vent;          // grado de apertura de las ventanas, aumenta/disminuye uno por cada 50ms
                u16 grad_pers;          // grado de subida de las persianas, aumenta/disminuye uno por cada 50ms
            //- sem�fores
                // u8  sema_fpga;           // sem�foro para indicar que la FPGA ha terminado el c�lculo de la potencia de climatizaci�n
                u8  sema_actu;           // sem�foro para indicar que hay que recontrolar los actuadores
                u8  sema_pant;           // sem�foro para indicar que hay que refrescar la pantalla
                u8  sema_temp;           // sem�foro para indicar que ha saltado la interrupci�n al menos una vez
                u8  sema_fpga;			 // sem�foro para detectar si la FPGA no ha devuelto un valor despu�s dee ser invocada
            //- contadores de veces que se ejecuta una funci�n
                #ifdef MEJORAS
                u16 ejec_pant;           // n�mero de veces que se refresca la pantalla
                u16 ejec_fpga;           // n�mero de veces que se calcula la potencia
                u16 ejec_actu;           // n�mero de veces que se controlan los actuadores
                #endif
        } st_Temporizador;

    //- animaciones
        #ifdef MEJORAS
        const char Vent000[] = "[XXXX]"; // {179, 178, 178, 178, 178, 179};
        const char Vent075[] = "[XxxX]"; // {179, 178, 221, 222, 178, 179};
        const char Vent100[] = "[X__X]"; // {179, 178,  32,  32, 178, 179};
        const char Vent125[] = "[x__x]"; // {179, 221,  32,  32, 222, 179};
        const char Vent200[] = "[____]"; // {179,  32,  32,  32,  32, 179};

        const char Pers000[] = "[####]"; //{179, 219, 219, 219, 219, 179}
        const char Pers075[] = "[##==]"; //{179, 219, 219, 220, 220, 179}
        const char Pers100[] = "[##__]"; //{179, 219, 219,  32,  32, 179}
        const char Pers125[] = "[==__]"; //{179, 220, 220,  32,  32, 179}
        const char Pers200[] = "[____]"; //{179,  32,  32,  32,  32, 179}
        #endif


//==================================== SENSORES

    //- Identificador de n�mero de sensor
        #define SEN_Prese 0
        #define SEN_IluEx 1
        #define SEN_TemEx 2
        #define SEN_TemIn 3
        #define SEN_Ruido 4

    //- L�mites de recorrido de los sensores
        #define MIN_LUZEX 0
        #define MAX_LUZEX 100
        #define MIN_RUIDO 0
        #define MAX_RUIDO 120
        #define MIN_TEMPE -10
        #define MAX_TEMPE  60

    //- Umbrales de temperatura y ruido
        #define UMBRAL_CLARIDAD 75
        #define UMBRAL_OSCURIDAD 50
        #define UMBRAL_AIREA 23 // Objetivo para el aire acondicionado
        #define UMBRAL_CALEF 18 // Objetivo para la calefacci�n
        #define UMBRAL_RUIDO 40 // Objetivo para la calefacci�n

    //- M�scaras para visualizar los leds
        const u8 MASK_SEN = 0x80; // el led m�s a la izquierda indica modo sensores; el switch permite cambiar de modo
        const u8 MASK_ACT = 0x40; // siguiente led al de los sensores indica modo actuadores

//==================================== ACTUADORES

    //- Identificador de n�mero de actuador
        #define ACT_Luces 5
        #define ACT_Venta 6
        #define ACT_Persi 7
        #define ACT_Calef 8
        #define ACT_AireA 9

    //- M�scaras para pasar datos a la FPGA
        const u32 MASK_0_CAL =           (UMBRAL_CALEF << 8);
        const u32 MASK_1_CAL = (1<<16) | (UMBRAL_CALEF << 8);

        const u32 MASK_0_AIR =           (UMBRAL_AIREA << 8);
        const u32 MASK_1_AIR = (1<<16) | (UMBRAL_AIREA << 8);

//==================================== COMUNES A SENSORES Y ACTUADORES
    //- N�mero total de sensores y actuadores
        #define NUM_SEN_ACT 10
        #define UMBRAL_SEN_ACT 5

    //- Estados de sensores y actuadores
        typedef enum {  // estado de luces, motores de persinas, motores de ventanas, calefacci�n y aire acondicionado
            //- sensor de presencia
                ST_AUSENTE = 0,
                ST_PRESENTE = 1,
            //- sensor de iluminaci�n
                ST_CLARIDAD = 2,
                ST_LUZTENUE = 3,
                ST_OSCURIDAD = 4,
            //- sensores de temperatura interior y exterior
                ST_HACEFRIO = 5,
                ST_HACEBUENO = 6,
                ST_HACECALOR = 7,
            //- sensor de ruido
                ST_SILENCIO = 8,
                ST_HAYRUIDO = 9,
            //- actuadores de luces y motores del aire y la calefacci�n
                ST_APAGAR = 10,
                ST_ENCENDER = 11,   // luces encendidas
                ST_CALENTAR =12,   // encender o mantener la calefacci�n encendida
                ST_ENFRIAR =13,   // encender o mantener el aire acondicionado
            //- motores de las ventanas
                ST_CERRADAS = 14,   // ventanas cerradas, motor parado
                ST_ABRIENDO = 15,   // ventanas abri�ndose, motor encendido
                ST_ABIERTAS = 16,   // ventanas abiertas, motor parado
                ST_CERRANDO = 17,   // ventanas cerr�ndose, motor encendido
            //- motores de las persianas
                ST_BAJADAS = 18,   // persianas cerradas, motor parado
                ST_SUBIENDO = 19,   // persianas abri�ndose, motor encendido
                ST_SUBIDAS = 20,   // persianas abiertas, motor parado
                ST_BAJANDO = 21     // persianas cerr�ndose, motor encendido
        } st_estados;


//==================================== INTERFAZ DE USUARIO
    #ifdef MEJORAS
    //- Teclas de arriba/abajo asociadas a los sensores
        const char *TeclasArriba = "PRQWE     "; // teclas para subir los sensores
        const char *TeclasAbajo  = "PFASD     "; // teclas para bajar los sensores

    //- Teclas asociadas a los botones de la FPGA
        #define TECLA_ARR '8'
        #define TECLA_ABA '2'
        #define TECLA_IZQ '4'
        #define TECLA_DER '6'
    #endif

    //- U2c. MOVIMIENTO VENTANAS Y PERSIANAS
        static const char *Decod_estado[] = {
            //- sensor de presencia
                "AUSENTE ",
                "presente",
            //- sensor de iluminaci�n
                "claro ",
                "tenue ",
                "oscuro",
            //- sensores de temperatura
                "FR�A ",
                "buena",
                "CALOR",
            //- sensor de ruido
                "poco ",
                "MUCHO",
            //- actuadores de iluminaci�n, calefacci�n y aire
                "OFF       ",
                "encendidas",
                "calentando",
                "enfriando ",
            //- motores de las ventanas
                "CERRADAS",
                "abriendo",
                "abiertas",
                "cerrando",
            //- motores de las persianas
                "BAJADAS ",
                "subiendo",
                "subidas ",
                "bajando "
        };

    //- U2a. CONTENIDO PANTALLA
        //- 1: %c -> marcon con * el sensor/actuador seleccionado
        //- 2: %s -> indica el estado decodificado
        //- 3: %d -> indica el valor (opcional)

        const char * Formatos[] =  {
            "\n\r\n\rESTADO DE SENSORES"
            "\n\r%c P) Presencia: %s",

            "\n\r%c R/F) Luz: %s [%d %%]",
            "\n\r%c Q/A) T. ext.: %s [%d �C]",
            "\n\r%c W/S) T. int.: %s [%d �C]",
            "\n\r%c E/D) Ruido: %s [%d dB]",

            "\n\r\n\rESTADO DE ACTUADORES"
            "\n\r%c Luces: %s",

            "\n\r%c Ventanas: %s",
            "\n\r%c Persianas: %s",
            "\n\r%c Calefacci�n: %s",
            "\n\r%c Aire acond.: %s"
        };

    //- Estructura para almacenar datos de la interfaz de usuario
        typedef struct {
            char ult_tecla;
            char sig_tecla;
            u8   sa_activo; // sensor (0 a 4) o actuador (5 a 9) activo
            u8   sen_activo;            // ui.sen_activo
            u8   act_activo;            // ui.act_activo
            u8   modo_sensores;         //
            st_estados sig_presencia;   // ui.sig_presencia
        } st_UI;


#endif /* PRACTICA2_H_ */
