/* Fichero: 	practica2.c
 * Autor: 		Ricardo Panero
 * Fecha:		Noviembre de 2024
 * Descripci�n: SISTEMAS ELECTR�NICOS. PR�CTICA N� 2. */

/*   Objetivo:

	Utilizando el software Xilinx ISE 14.7 y Xilinx Software Development Kit (SDK) para programar el MicroBlaze,
	se pide implementar un sistema de control de luz y temperatura en una vivienda inteligente.

	Este sistema partir� de una serie de datos proporcionados por diversos sensores,
	como pueden ser la temperatura exterior e interior, la presencia de habitantes en la casa,
	la luz ambiental o el ruido exterior, y accionar� diversos controladores que permitir�an subir o bajar persianas,
	abrir o cerrar ventanas, y arrancar sistemas de calefacci�n o de aire acondicionado seg�n se necesite,
	en base a unas normas generales.

	Por tanto, el objetivo del sistema es crear una vivienda inteligente monitorizada por los siguientes componentes y sensores:
	� 1 detector de presencia en la vivienda (ON � OFF).
	� 1 sensor de luz exterior (0 � 100%).
	� 2 sensores de temperatura ambiental, uno interior y otro exterior a la vivienda (0 � 60�C).
	� 1 detector de ruido exterior (0 � 120 dB).

	Y los sistemas que accionaremos ser�n los siguientes:
	� Luces de la casa, apagando o encendiendo las mismas (ON � OFF).
	� 1 motor para el control de la apertura y cierre de ventanas (0 � 100%).
	� 1 motor para controlar la subida y bajada de persianas (0 � 100%).
	� 1 control de calefacci�n, controlando la potencia de acci�n del mismo (0 � 100%).
	� 1 control de aire acondicionado, tambi�n con control de potencia de acci�n (0 � 100%).

	El sistema controlar� tanto la activaci�n de las luces de la vivienda como la subida y bajada de persianas para favorecer la entrada de luz
	en funci�n de la cantidad de luz proveniente del exterior, dependiendo de si hay alguien o no en la vivienda.

	Adem�s, controlar� la temperatura, manteniendo �sta en un rango de entre 18 y 23�C.

	Para su correcto funcionamiento, el sistema deber� responder de la siguiente forma:
	C1: CASA VAC�A
			Si el detector de presencia no est� activo supondremos que la vivienda est� vac�a,
			por tanto, se mantienen las luces apagadas, las persianas bajadas y las ventanas cerradas.
	C2: ILUMINACI�N EXTERIOR
			Si el detector de presencia est� activo y el detector de luz muestra una luminosidad exterior entre el 75% y el 100%,
				se suben las persianas y se mantienen las luces apagadas.
			Si la luminosidad exterior se encuentra entre el 50% y el 75%,
				subir las persianas y encender las l�mparas.
			En caso de que la luminosidad exterior sea inferior al 50%,
				bajar las persianas y encender la iluminaci�n interior.
	C3: VENTANAS Y PERSIANAS ABIERTAS ENTRE 18 Y 23�, VENTANAS CERRADAS EN OTRO CASO
			Cuando la temperatura exterior se encuentre entre 18 y 23�C,
				se deben abrir las ventanas de la vivienda para mantener �sta a la temperatura exterior,
				as� como subir las persianas,
				independientemente de la luminosidad exterior.
			Para todo valor de temperatura exterior no perteneciente a este rango,
				mantener las ventanas cerradas y aplicar el siguiente criterio.
	C4: CLIMATIZACI�N CON VENTANAS CERRADAS SI NO HACE BUENO
			Si la temperatura interior se encuentra por debajo de los 18�C,
				se debe activar la calefacci�n para alcanzar dicha temperatura.
			Si esta temperatura es superior a 23�C,
				se debe activar el aire acondicionado con el objetivo de llegar a estos 23�C.
			En estos casos, las ventanas deber�n estar cerradas, obviamente.
	C5: C�LCULO POTENCIA CLIMATIZACI�N (FPGA)
		Considerando que las temperaturas en el exterior se encontrar�n siempre en un rango de entre 0 y 60�C,
			se debe de activar la calefacci�n o el aire acondicionado seg�n se ha descrito anteriormente.
			La potencia tanto del aire acondicionado como de la calefacci�n vendr� determinada por
			la diferencia entre la temperatura objetivo y la temperatura del interior de la vivienda,
			variando de forma lineal seg�n var�e dicha diferencia,
			de forma que la potencia sea m�xima cuando la diferencia de temperaturas sea m�xima
			y nula cuando la temperatura del interior sea igual a la temperatura objetivo.
	C6: CIERRE VENTANAS (y posible climatizaci�n) CON RUIDO
			Siempre que el nivel de ruido exterior sea mayor de 40dB,
			mantener las ventanas cerradas independientemente de la temperatura exterior.


	Interacci�n del usuario con el sistema:
	U1: CONTROL DE SENSORES POR TECLADO
		La placa de control de la FPGA nos permitir� modificar la temperatura exterior, el nivel de ruido, la cantidad de luz y la presencia en la vivienda.
		Q � A: Permitir�n subir-bajar la temperatura exterior en saltos de 1�,
				partiendo de un valor inicial de 20�C (preprogramado al inicio del sistema),
				controlando los valores m�nimos y m�ximos posibles.
		W � S: Permitir�n subir-bajar la temperatura interior en saltos de 1�,
				partiendo de un valor inicial de 20�C (preprogramado al inicio del sistema),
				controlando los valores m�nimos y m�ximos posibles.
		E � D: Permitir�n subir-bajar el nivel de ruido en saltos de 1dB,
				partiendo de un valor inicial de 20dB (preprogramado al inicio del sistema),
				controlando los valores m�nimos y m�ximos posibles.
		R � F: Permitir�n subir-bajar el porcentaje de luz en saltos de 1%,
				partiendo de un valor inicial de 75% (preprogramado al inicio del sistema),
				controlando los valores m�nimos y m�ximos posibles.
		P: 	  Permitir� controlar la activaci�n / desactivaci�n del detector de presencia (ON � OFF),
				partiendo de un valor inicial de OFF.
	U2a: CONTENIDO PANTALLA
		 	En la pantalla se mostrar� toda la informaci�n del sistema, que incluye
	 	  		el valor de todos los sensores,
	 	  		as� como los sistemas que accionamos para el control de la vivienda, con sus unidades respectivas.
	U2b: ACTUALIZACI�N PANTALLA
			Cada vez que el usuario modifique alg�n valor del sensor,
		 	 o bien debido a un cambio en el sistema por tiempo
 	 	 	 o por autoincremento/autodecremento de la temperatura,
		 	 se recalcular�n los valores necesarios y se volver� a imprimir toda la informaci�n en pantalla.
	U2c: MOVIMIENTO VENTANAS Y PERSIANAS
		 En el caso de las persianas y ventanas, ser� necesario mostrar tanto si est�n abiertas o cerradas,
		 	 as� como el % de funcionamiento del motor si se est� moviendo;
		 	 en este �ltimo caso, indicar tambi�n si la ventana o persiana estar�a abri�ndose o cerr�ndose.
	U2d: Inicialmente se encontrar� todo cerrado.

	Restricciones:
		R1: CAMBIO SENSOR PRESENCIA EN 5 SEGUNDOS
			Para suponer un cambio de estado en el sensor de presencia en la vivienda,
			�ste deber� estar al menos 5 segundos consecutivos en un nuevo estado (ON u OFF).
			Si vuelve a cambiar al estado previo antes de 5 segundos
				no se debe realizar ninguna acci�n,
				y el tiempo de cuenta de 5 segundos se resetea.
		R2: ALMACENAMIENTO DE DATOS
			Todo el control y almacenamiento de los datos de los sensores se realizar� dentro del propio MicroBlaze:
			detecci�n de presencia, sensor de luz exterior, sensor de temperatura exterior e interior, y detector de ruido exterior.
		R3a: CAMBIO PROGRESIVO DE PERSIANAS Y VENTANAS
				Tambi�n se controlar� en el interior del MicroBlaze la acci�n sobre los motores de las persianas y ventanas
				para abrirlas y cerrarlas, generando un cambio progresivo en los mismos.
				La idea es que el proceso de abrir o cerrar persianas o ventanas se complete en 10 segundos,
				comenzando y terminando con movimientos lentos del motor (poca potencia), y estando al 100% de potencia a mitad del recorrido.
		R3b: VISUALIZACI�N CAMBIO PROGRESIVO DE PERSIANAS Y VENTANAS
				Igualmente, acompa�ar estos valores de % de movimiento del motor con indicaciones
				si la ventana se est� �CERRANDO� o �ABRIENDO�,
				y en el caso de las persianas si est�n �SUBIENDO� o �BAJANDO�.
				Al llegar al final de su recorrido se mostrar� por pantalla su situaci�n final.
		R4a: LLAMADA DE MICROBLAZE A FPGA
			Se controlar� en la parte de la FPGA el c�lculo de la potencia correspondiente a los motores
				de la calefacci�n y el aire acondicionado,
				proporcion�ndole el MicroBlaze los datos necesarios, a trav�s de uno o varios GPO de salida,
				para calcular la potencia instant�nea del motor en cada caso,
				acompa�ando los datos con una se�al de sincronismo necesaria (�datos_nuevos�)
				que tambi�n saldr� por un GPO de salida.
		R4b: INTERRUPCI�N RESPUESTA FPGA
			El valor del % de potencia del motor, una vez calculado, se leer� por un puerto GPI de entrada al MicroBlaze
				cuando el m�dulo externo as� lo indique,
				utilizando para ello una interrupci�n externa (INTC).
		R5. El alumno ser� responsable de crear las funciones lineales de control de la potencia
			de la calefacci�n y del aire acondicionado para que cumplan con los requisitos establecidos.
				Estos c�lculos, como se ha indicado, se realizar�n en un �nico m�dulo en la parte de la FPGA,
				dise�ando el circuito necesario para aceptar los datos desde el MicroBlaze,
				activando el c�lculo,
				y ofreciendo los resultados de nuevo al MicroBlaze.
		R6: AUTOINCREMENTOS TEMPERATURA
			Igualmente, el alumno deber� implementar en el MicroBlaze un sistema l�gico de �autoincrementos� o �autodecrementos�
			cada cierto tiempo en la temperatura interior de la vivienda en caso de abrirse las ventanas y persianas para adecuar la temperatura interna a la externa
			o cuando se activa la calefacci�n o el aire acondicionado,
			llegando a la temperatura objetivo (18�C en el caso de ser necesario calentar la vivienda y 23�C en el caso de tener que enfriarla).

 */

/*  Observaciones:
	Tama�o del c�digo (dec=xxx) debug/release
	- B�sico 1: 11568/11304
	- B�sico 2: 13422/12976
	- B�sico 3: 14504/13808
	- Pr�ctica 2: 20304/
	- Pr�ctica 2 sin mejoras: 18104 */

/*	Mejoras:
		M1: Las temperaturas pueden ser negativas
		M2: Botenes para incrementar/decrementar el sensor activo
		M3: Botones para cambiar el sensor/actuador activo
		M4: Visualizaci�n del sensor/actuador activo en el display
		M5: Visualizaci�n de N�mero de ejecuciones de control de actuadores, llamadas a la fpga y refrescos de pantalla
		M6: Animaci�n de movimiento de persianas y ventanas
		M7: Refresco m�ximo de pantalla cada d�cima de segundo
		*/

#define MEJORAS

#include "practica2.h"

//==================================== VARIABLES GLOBALES
	//- Hardware de Xilinx
		XIOModule iomodule;

	//- R2: ALMACENAMIENTO DE DATOS
		st_estados 		Estados[NUM_SEN_ACT]; 	// estados de sensores y actuadores
		char            Valores[NUM_SEN_ACT]; 	// valor de sensores y potencia de actuadores
		char       		Act_pot_clima; 		  	// potencia de climaticaci�n, puede ser negativa
		st_UI      		ui; 					// interfaz de usuario
		st_Temporizador Tem;					// temporizadores y sem�foros



//==================================== GESTI�N DE REACCI�N DE ACTUADORES ANTE CAMBIOS EN SENSORES

	//- Act_Calc_Pot_Clima: Calcular la potencia de climatizaci�n que ser�a necesaria con la temperatura interior actual
		void Act_Calc_Pot_Clima() {
			//- Si desde la �ltima vez no cambi� la temperatura interior, no hace falta volver a recalcular la potencia de climatizaci�n
				static char Ultima_temperatura = 0;
				if (Tem.sema_fpga || Ultima_temperatura==Valores[SEN_TemIn]) {
					return;
				}

			//- Actualizar la temperatura de la �ltima invocaci�n
				Ultima_temperatura = Valores[SEN_TemIn];

			//- R4: LLAMADA DE MICROBLAZE A FPGA
				//- Con fr�o dentro de la casa, calcular la potencia para llegar al a 18 grados (aunque la casa est� vac�a o las ventanas abiertas)
					if (Ultima_temperatura<UMBRAL_CALEF) {
						Tem.sema_fpga = 1;
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_0_CAL | (u8)Ultima_temperatura); // dato
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_1_CAL | (u8)Ultima_temperatura); // pulso
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_0_CAL | (u8)Ultima_temperatura); // dato
						#ifdef MEJORAS
						Tem.ejec_fpga++;
						#endif
					}

				//- Con calor dentre de la casa, calcular la potencia para llegar a 23 grados
					else if (Ultima_temperatura>UMBRAL_AIREA) {
						Tem.sema_fpga = 1;
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_0_AIR | (u8)Ultima_temperatura); // dato
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_1_AIR | (u8)Ultima_temperatura); // pulso
						XIOModule_DiscreteWrite(&iomodule, GPO_TEMPERATURAS, MASK_0_AIR | (u8)Ultima_temperatura); // dato
						#ifdef MEJORAS
						Tem.ejec_fpga++;
						#endif
					}

			//- Si la temperatura es buena, no hay que climatizar y la potencia es 0 (no hace falta invocar a la fpga)
				else {
					Act_pot_clima = 0;
				}
		}

	//- Act_Manejador_Pot_Clim: Manejador respuesta as�ncrona del c�lculo de potencia
		void Act_Manejador_Pot_Clim (void* ref) {
			//- R4b: INTERRUPCI�N RESPUESTA FPGA
				Act_pot_clima = XIOModule_DiscreteRead(&iomodule, GPI_POTENCIA);

			//- Desactivar el sem�foro para permitir nuevas llamadas
				Tem.sema_fpga = 0;

			//- con la nueva potencia calculada, volver a controlar los actuadores en la siguiente iteraci�n
				Tem.sema_actu = 1;
		}


	//- Act_ControlarActuadores: cambia el estado de los actuadores
	    void Act_ControlarActuadores() {

			//- Omitir el control de actuadores si el sem�foro est� apagado
				if (!Tem.sema_actu)
					return;

	    	//- U2c: Guardar el estado anterior de ventanas y persianas para saber si cambia
	    		st_estados ven_antes, per_antes;
	    		ven_antes = Estados[ACT_Venta];
	    		per_antes = Estados[ACT_Persi];

			//- Apagar el sem�foro, aumentar el n�mero de ejecuciones y forzar el refresco de pantalla
				Tem.sema_actu = 0;
				Tem.sema_pant = 1; // U2b:
				#ifdef MEJORAS
				Tem.ejec_actu++;
				#endif

		    //- C1: CASA VAC�A
	        	if (Estados[SEN_Prese] == ST_AUSENTE) {
	        		//- apagar todo
			        	Estados[ACT_Luces] = ST_APAGAR; 	// U2d:
			        	Estados[ACT_Venta] = ST_CERRADAS; 	// U2d:
			        	Estados[ACT_Persi] = ST_BAJADAS; 	// U2d:
			        	Estados[ACT_Calef] = ST_APAGAR;
			        	Estados[ACT_AireA] = ST_APAGAR;
		        }

		    //- C2: ILUMINACI�N EXTERIOR
		        //- apagar luces y subir persianas si ha claridad
			        if (Estados[SEN_Prese]==ST_PRESENTE && Estados[SEN_IluEx]==ST_CLARIDAD) {
			        	Estados[ACT_Luces] = ST_APAGAR;
			        	Estados[ACT_Persi] = ST_SUBIDAS;
			       	}
			    //- con luz tenue, encender las luces y subir las persianas
			        else if (Estados[SEN_Prese]==ST_PRESENTE && Estados[SEN_IluEx]==ST_LUZTENUE) {
			        	Estados[ACT_Luces] = ST_ENCENDER;
			        	Estados[ACT_Persi] = ST_SUBIDAS;
			        }

		        //- en otro caso, bajar las persianas y encender las luces
			        else if (Estados[SEN_Prese]==ST_PRESENTE) { // && Estados[SEN_IluEx]!=ST_OSCURIDAD)
			        	Estados[ACT_Luces] = ST_ENCENDER;
			        	Estados[ACT_Persi] = ST_BAJADAS;
			        }

			//- C3: VENTANAS Y PERSIANAS ABIERTAS ENTRE 18 Y 23�, VENTANAS CERRADAS EN OTRO CASO
		        //- abrir las ventanas y subir las persinas si hace bueno y hay gente en casa
			        if (Estados[SEN_Prese]==ST_PRESENTE && Estados[SEN_TemEx]==ST_HACEBUENO) {
			        	Estados[ACT_Venta] = ST_ABIERTAS;
			        	Estados[ACT_Persi] = ST_SUBIDAS;
			        }
			    //- cerrar las ventanas si no hace bueno
			        else {
			        	Estados[ACT_Venta] = ST_CERRADAS;
			        }

	        //- C6: CIERRE VENTANAS (y posible climatizaci�n) CON RUIDO
			    // antes de la climatizaci�n, comprobar si hay que cerrar las ventanas con buen tiempo por el ruido
			        if (Estados[SEN_Ruido]==ST_HAYRUIDO) {
			        	Estados[ACT_Venta] = ST_CERRADAS;
			        }

			//- U2c: MOVIMIENTO VENTANAS Y PERSIANAS

				//- inicio de apertura o cierre gradual de ventanas
					if (Estados[ACT_Venta]==ST_ABIERTAS && ven_antes!=ST_ABIERTAS) {
						Estados[ACT_Venta] = ST_ABRIENDO;
					} else if (Estados[ACT_Venta]==ST_CERRADAS && ven_antes!=ST_CERRADAS) {
						Estados[ACT_Venta] = ST_CERRANDO;
					}

				//- inicio de apertura o cierre gradual de persianas
					if (Estados[ACT_Persi]==ST_SUBIDAS && per_antes!=ST_SUBIDAS) {
						Estados[ACT_Persi] = ST_SUBIENDO;
					} else if (Estados[ACT_Persi]==ST_BAJADAS && per_antes!=ST_BAJADAS) {
						Estados[ACT_Persi] = ST_BAJANDO;
					}

			//- C5: C�LCULO POTENCIA CLIMATIZACI�N (FPGA)
					Act_Calc_Pot_Clima();

			//- C4: CLIMATIZACI�N CON VENTANAS CERRADAS SI NO HACE BUENO

			    //- Encender la calefacci�n y apagar el aire si hace fr�o dentro y las ventanas est�n cerradas
 					if (Estados[SEN_Prese]==ST_PRESENTE && Estados[SEN_TemIn]==ST_HACEFRIO && Estados[ACT_Venta]==ST_CERRADAS) {
 						Estados[ACT_Calef] = ST_CALENTAR;
 						Estados[ACT_AireA] = ST_APAGAR;
 						Valores[ACT_Calef] = -Act_pot_clima; // si hace fr�o, la potencia calculada por la FPGA es negativa
 						Valores[ACT_AireA] = 0;
 					}

				//- Encender el aire y apagar la calefacci�n hace calor dentro y las ventanas est�n cerradas
 					else if (Estados[SEN_Prese]==ST_PRESENTE && Estados[SEN_TemIn]==ST_HACECALOR && Estados[ACT_Venta]==ST_CERRADAS) {
 						Estados[ACT_Calef] = ST_APAGAR;
 						Estados[ACT_AireA] = ST_ENFRIAR;
 						Valores[ACT_Calef] = 0;
 						Valores[ACT_AireA] = Act_pot_clima; // si hace calopr, la potencia calculada por la FPGA es positiva
 					}

				//- En cualquier otro caso, apagar la climatizaci�n
 					else {
 						Estados[ACT_Calef] = ST_APAGAR;
 						Estados[ACT_AireA] = ST_APAGAR;
						Valores[ACT_Calef] = 0;
						Valores[ACT_AireA] = 0;
 					}

	    } // Act_ControlarActuadores



//==================================== GESTI�N DE INTERFAZ DE USUARIO - TECLADO Y BOTONES
		#ifdef MEJORAS
		//- Manejadores de botones para simular la pulsaci�n de teclas de direcci�n
			void Manejador_BotonDer (void* ref) {
				ui.sig_tecla = TECLA_DER; //- Simulamos que hemos pulsado la tecla del bot�n derecho (d�gito 6)
			}

			void Manejador_BotonIzq (void* ref) {
				ui.sig_tecla = TECLA_IZQ; //- Simulamos que hemos pulsado la tecla del bot�n izquierdo (d�gito 4)
			}

			void Manejador_BotonArr (void* ref) {
				ui.sig_tecla = TECLA_ARR; //- Simulamos que hemos pulsado la tecla del bot�n arriba (d�gito 8)
			}

			void Manejador_BotonAba (void* ref) {
				ui.sig_tecla = TECLA_ABA; //- Simulamos que hemos pulsado la tecla del bot�n abajo (d�gito 2)
			}
		#endif // Mejoras

	//- UI_SimularSensores: modifica el valor de los sensores a petici�n del usuario
		void UI_SimularSensores() {

	    	//- Si se puls� alg�n bot�n, mostrarlo como si se hubiera pulsado una tecla
	    		if (ui.sig_tecla != '\0') {
	    			ui.ult_tecla = ui.sig_tecla;
	    		}

	    	//- Si no se puls� ning�n bot�n, intentar leer una nueva tecla del puerto serie
				else {
	    			//- Lectura del puerto serie
	                	static char rx_buf[2];
	                	static u32 numRecv;
	                	numRecv = XIOModule_Recv(&iomodule, (u8 *)rx_buf, 1);

	                //- Si hay datos, actualizar la �ltima tecla pulsada y convertirla a may�sculas
						if (numRecv != 0) {
							ui.ult_tecla = rx_buf[0];
							if (ui.ult_tecla >='a') {
								ui.sig_tecla = ui.ult_tecla - 0x20;
							} else {
								ui.sig_tecla = ui.ult_tecla;
							}
						}
				}

	    	//- Si no se ha pulsado ninguna tecla o bot�n, salir sin cambios
	    		if (ui.sig_tecla == '\0') {
	    			return;
	    		}

			//- Actualizar los sem�foros
	    		Tem.sema_actu = 1; 	// Si cambi� alg�n sensor, hay que recalcular los actuadores
  				Tem.sema_pant = 1;  // U2B: Como se ha pulsado una tecla, hay que actualizar la pantalla

			//- Tratamiento de los botones/teclas de direcci�n
  				#ifdef MEJORAS
	            if ((ui.sig_tecla==TECLA_IZQ) || (ui.sig_tecla==TECLA_DER) || (ui.sig_tecla==TECLA_ARR) || (ui.sig_tecla==TECLA_ABA)) {

	            	//- Cambiar circularmente el n�mero de sensor/actuador activo con las teclas de izquierda y derecha
						if (ui.sig_tecla==TECLA_IZQ) {
							ui.sa_activo = (ui.sa_activo==ACT_AireA) ? SEN_Prese : ui.sa_activo + 1;
						} else if (ui.sig_tecla == TECLA_DER) {
							ui.sa_activo = (ui.sa_activo==SEN_Prese) ? ACT_AireA : ui.sa_activo - 1;
						}

					//- el modo sensores se activa cuando el activo est� por debajo del umbral entre sensores y actuadors (valor 5)
						ui.modo_sensores = (ui.sa_activo < UMBRAL_SEN_ACT);

					//- Simular la tecla para incrementar el sensor dependiendo de qu� sensor est� activo
						if (ui.sig_tecla==TECLA_ARR && ui.modo_sensores) {
							ui.sig_tecla = TeclasArriba[ui.sa_activo];
						}

					//- Simular la tecla para decrementar el sensor dependiendo de qu� sensor est� activo
						else if (ui.sig_tecla==TECLA_ABA && ui.modo_sensores) {
							ui.sig_tecla = TeclasAbajo[ui.sa_activo];
						}
	            } // teclas de direcci�n
	            #endif // Mejoras

			//- Actualizamos sensores seg�n la tecla pulsada o los botones equivalentes
	            switch (ui.sig_tecla) {

	            	//- U1: CONTROL DE SENSORES POR TECLADO
		            	case 'R': if (Valores[SEN_IluEx] < MAX_LUZEX) Valores[SEN_IluEx]++; break; // subir luz exterior
		            	case 'F': if (Valores[SEN_IluEx] > MIN_LUZEX) Valores[SEN_IluEx]--; break; // bajar luz exterior
		            	case 'Q': if (Valores[SEN_TemEx] < MAX_TEMPE) Valores[SEN_TemEx]++; break; // subir temperatura exterior
		            	case 'A': if (Valores[SEN_TemEx] > MIN_TEMPE) Valores[SEN_TemEx]--; break; // bajar temperatura exterior
		            	case 'W': if (Valores[SEN_TemIn] < MAX_TEMPE) Valores[SEN_TemIn]++; break; // subir temperatura exterior
		            	case 'S': if (Valores[SEN_TemIn] > MIN_TEMPE) Valores[SEN_TemIn]--; break; // bajar temperatura exterior
		            	case 'E': if (Valores[SEN_Ruido] < MAX_RUIDO) Valores[SEN_Ruido]++; break; // subir nivel de ruido
		            	case 'D': if (Valores[SEN_Ruido] > MIN_RUIDO) Valores[SEN_Ruido]--; break; // bajar nivel de ruido

		            //- R1: CAMBIO SENSOR PRESENCIA EN 5 SEGUNDOS
		            	case 'P':
							ui.sig_presencia = (ui.sig_presencia==ST_PRESENTE) ? ST_AUSENTE : ST_PRESENTE; // siguiente estado de presencia
							Tem.tics_pres = 0; // cada vez que se pulse P, inicializar el timer de espera de 5 segundos
							break;
	            }

			//- Reseteamos la �ltima tecla para la siguiente iteraci�n
				ui.sig_tecla = '\0';

	    } // UI_SimularSensores



//==================================== GESTI�N DE SENSORES
	//- Sen_ActualizarEstados(): modifica el estado de los sensores en funci�n de los valores y los umbrales
		void Sen_ActualizarEstados() {
	        //- Determinar el estado de la iluminaci�n
		        if (Valores[SEN_IluEx] >= UMBRAL_CLARIDAD) {
		        	Estados[SEN_IluEx] = ST_CLARIDAD;
		        } else if (Valores[SEN_IluEx] >= UMBRAL_OSCURIDAD) {
		        	Estados[SEN_IluEx] = ST_LUZTENUE;
		        } else {
		        	Estados[SEN_IluEx] = ST_OSCURIDAD;
		        }

	        //- Determinar el estado de la temperatura interior
		        if (Valores[SEN_TemIn] < UMBRAL_CALEF) {
		        	Estados[SEN_TemIn] = ST_HACEFRIO;
		        } else if (Valores[SEN_TemIn] > UMBRAL_AIREA) {
		        	Estados[SEN_TemIn] = ST_HACECALOR;
		        } else {
		        	Estados[SEN_TemIn] = ST_HACEBUENO;
		        }

	        //- Determinar el estado de la temperatura exterior
		        if (Valores[SEN_TemEx] < UMBRAL_CALEF) {
		        	Estados[SEN_TemEx] = ST_HACEFRIO;
		        } else if (Valores[SEN_TemEx] > UMBRAL_AIREA) {
		        	Estados[SEN_TemEx] = ST_HACECALOR;
		        } else {
		        	Estados[SEN_TemEx] = ST_HACEBUENO;
		        }

	        //- Determinar el estado del nivel de ruido
		        if (Valores[SEN_Ruido] <= UMBRAL_RUIDO) {
		        	Estados[SEN_Ruido] = ST_SILENCIO;
		        } else
		        	Estados[SEN_Ruido] = ST_HAYRUIDO;
		}


//==================================== GESTI�N DE INTERFAZ DE USUARIO - PANTALLA Y DISPLAY

	//- EstadoMotores: Visualiza "Motor al X%" o espacios si el motor est� apagado
	    void UI_ImprimirPotencia(u8 iSenAct) {

	    	//- M6: Animaci�n de movimiento de persianas y ventanas
	    		#ifdef MEJORAS
	    		if (iSenAct == ACT_Persi) {
	    			if (Tem.grad_pers==0)
	    				xil_printf(" %s ", Pers000);
	    			else if (Tem.grad_pers <= 75)
	    				xil_printf(" %s ", Pers075);
					else if (Tem.grad_pers <= 125)
	    				xil_printf(" %s ", Pers100);
	    			else if (Tem.grad_pers < 200)
	    				xil_printf(" %s ", Pers125);
	    			else
	    				xil_printf(" %s ", Pers200);
	    		}

	    		if (iSenAct == ACT_Venta) {
	    			if (Tem.grad_vent==0)
	    				xil_printf(" %s ", Vent000);
	    			else if (Tem.grad_vent <= 75)
	    				xil_printf(" %s ", Vent075);
					else if (Tem.grad_vent <= 125)
	    				xil_printf(" %s ", Vent100);
	    			else if (Tem.grad_vent < 200)
	    				xil_printf(" %s ", Vent125);
	    			else
	    				xil_printf(" %s ", Vent200);
	    		}
	    		#endif

			//- R3b: VISUALIZACI�N CAMBIO PROGRESIVO DE PERSIANAS Y VENTANAS
		    	if (iSenAct >= ACT_Venta && iSenAct <= ACT_AireA) {
		    		if (Valores[iSenAct] == 0) {
		    			xil_printf("                 ");
		    		} else {
		    			xil_printf(" (motores al %d %%)  ", Valores[iSenAct]);
		    		}
		    	}
	    }

	//- UI_RefrecarPantalla: Actualiza la pantalla s�lo si el sem�foro indica que hubo alg�n cambio
		void UI_RefrecarPantalla() {

			//- U2b: ACTUALIZACI�N PANTALLA
				//- Omitir el refresco si el sem�foro est� apagado o no ha pasado suficiente tiempo desde la �ltima vez
					#ifdef MEJORAS
					if (!Tem.sema_pant || Tem.tics_pant < TICS_PANTALLA)
						return;
					#endif

				//- Actualizar el sem�foro, el n�mero de tics desde el �ltimo refresco y el n�mero de ejecuciones
					Tem.sema_pant = 0;
					Tem.tics_pant = 0;
					#ifdef MEJORAS
					Tem.ejec_pant++;
					#endif

			//- U2a: CONTENIDO PANTALLA
				//- Mover el cursor al inicio e indicar la tecla pulsada
		            xil_printf("\033[H\t\r");
		            xil_printf("Tecla pulsada=[%c]  ", ui.ult_tecla);

				//- Actualizar los leds y el valor a mostrar en la placa display dependiendo del sensor/actuador activo
					#ifdef MEJORAS
					if (ui.modo_sensores) {
						XIOModule_DiscreteWrite(&iomodule, GPO_LEDS,  MASK_SEN | (0x1 << ui.sa_activo));
						XIOModule_DiscreteWrite(&iomodule, GPO_BCDS, 0xd000 | (ui.sa_activo << 8) | Valores[ui.sa_activo]);
					} else {
						XIOModule_DiscreteWrite(&iomodule, GPO_LEDS,  MASK_ACT | (0x1 << (ui.sa_activo-UMBRAL_SEN_ACT)));
						XIOModule_DiscreteWrite(&iomodule, GPO_BCDS, 0xA000 | ((ui.sa_activo-UMBRAL_SEN_ACT) << 8) | Valores[ui.sa_activo]);
					}
		            xil_printf("\n\rN� EJECUCIONES:    \n\r Control=%d      \n\r FPGA=%d      \n\r Pantalla=%d      ",
		            		Tem.ejec_actu, Tem.ejec_fpga, Tem.ejec_pant);
					#endif

				//- Visualizar todos los sensores y actuadores
		            u8 iSenAct;
		            char marca_activo;
		            for (iSenAct = 0; iSenAct < NUM_SEN_ACT ; iSenAct++) {
		            	marca_activo = (ui.sa_activo==iSenAct) ? '*' : ' '; // si est� activo marca con *
		            	xil_printf(Formatos[iSenAct], marca_activo, Decod_estado[Estados[iSenAct]], Valores[iSenAct]);
		            	UI_ImprimirPotencia(iSenAct); // opcionalmente, imprime motor al X %
		            	xil_printf("      "); // espacios adicionales para borrar texto previo en la l�nea
		            }
		        //- poner el cursor al principio de una nueva l�nea y volcar la pantalla
		            xil_printf("\t");
		            xil_printf("\n\r");



	    } // UI_RefrecarPantalla





//==================================== GESTI�N DEL TEMPORIZADOR

	//- Tem_Manejador_FIT1: interrupciones del temporizador FIT1, programado a 0.1 segundos
		// R3b La idea es que el proceso de abrir o cerrar persianas o ventanas se complete en 10 segundos,
		//     comenzando y terminando con movimientos lentos del motor (poca potencia),
		//     y estando al 100% de potencia a mitad del recorrido.
		void Tem_Manejador_FIT1 (void* ref)	{

			//- activar el sem�foro para ejecutar la l�gica del temporizador
            	Tem.sema_temp = 1;

        	//- Incrementar el n�mero de tics
        		Tem.tics_pres++; // R1: aumentar tiempo desde el �ltimo cambio del sensor de presencia
        		Tem.tics_auto++; // R6: aumentar tiempo desde el �ltimo autoincremento de temperatura
        		#ifdef MEJORAS	 // M7: Refresco m�ximo de pantalla cada d�cima de segundo
	        	Tem.tics_pant++;
	        	#endif

			//- R3a. CAMBIO PROGRESIVO DE PERSIANAS Y VENTANAS
	            //- Incrementar/decrementar el grado de apertura de las ventanas
	            	if (Estados[ACT_Venta]==ST_ABRIENDO && Tem.grad_vent<GRAD_MAX_APERTURA) {
	            		Tem.grad_vent++;
	            	} else if (Estados[ACT_Venta]==ST_CERRANDO && Tem.grad_vent>GRAD_MIN_APERTURA) {
	            		Tem.grad_vent--;
	            	}

	            //- Incrementar/decrementar el grado de apertura de las persianas
	            	if (Estados[ACT_Persi]==ST_SUBIENDO && Tem.grad_pers<GRAD_MAX_APERTURA) {
	            		Tem.grad_pers++;
	            	} else if (Estados[ACT_Persi]==ST_BAJANDO && Tem.grad_pers>GRAD_MIN_APERTURA) {
	            		Tem.grad_pers--;
	            	}

	    } // Tem_Manejador_FIT1



	//- Tem_ActualizarTics: ajusta sensores y actuadores peri�dicamente
		void Tem_ActualizarTics() {

			//- Si el sem�foro est� desactivado, volver sin hacer nada
				if (!Tem.sema_temp) {
					return;
				}

			//- Desactivar el sem�foro hasta la siguiente interrupci�n
				Tem.sema_temp = 0;

			//- R1: CAMBIO SENSOR PRESENCIA EN 5 SEGUNDOS
				if (Estados[SEN_Prese]!=ui.sig_presencia && Tem.tics_pres >= TICS_PRESENCIA_5SEG) {
					Estados[SEN_Prese] = ui.sig_presencia;
					Valores[SEN_Prese] = (Estados[SEN_Prese]==ST_PRESENTE) ? 1 : 0;
					Tem.sema_actu = 1;
					Tem.tics_pres = 0;
				}

			//- R3a. CAMBIO PROGRESIVO DE PERSIANAS Y VENTANAS

				//- si las ventanas se est�n moviendo, actualizar la pantalla y comprobar si llegaron a final de recorrido
					if (Estados[ACT_Venta]==ST_ABRIENDO || Estados[ACT_Venta]==ST_CERRANDO) {
						Tem.sema_pant = 1; // U2B:
						if (Tem.grad_vent == GRAD_MAX_APERTURA) {
							Estados[ACT_Venta] = ST_ABIERTAS;
							Valores[ACT_Venta] = 0;
							Tem.sema_actu = 1;
						} else if (Tem.grad_vent == GRAD_MIN_APERTURA) {
							Estados[ACT_Venta] = ST_CERRADAS;
							Valores[ACT_Venta] = 0;
							Tem.sema_actu = 1;
						} else if (Tem.grad_vent <= GRAD_MED_APERTURA) { // entre 0 y 100 (0% a 50% de apertura), la potencia es ascendente
							Valores[ACT_Venta] = Tem.grad_vent;
						}
						else { // entre 101 y 200 (50% a 100% de apertura), la potencia es descendente
							Valores[ACT_Venta] = GRAD_MAX_APERTURA - Tem.grad_vent;
						}
					} // (Estados[ACT_Venta]==ST_ABRIENDO || Estados[ACT_Venta]==ST_CERRANDO)

				//- si las persianas se est�n moviendo, actualizar la pantalla y comprobar si llegaron a final de recorrido
					if (Estados[ACT_Persi]==ST_SUBIENDO || Estados[ACT_Persi]==ST_BAJANDO) {
						Tem.sema_pant = 1; // U2B:
						if (Tem.grad_pers == GRAD_MAX_APERTURA) {
							Estados[ACT_Persi] = ST_SUBIDAS;
							Valores[ACT_Persi] = 0;
							Tem.sema_actu = 1;
						} else if (Tem.grad_pers == GRAD_MIN_APERTURA) {
							Estados[ACT_Persi] = ST_BAJADAS;
							Valores[ACT_Persi] = 0;
							Tem.sema_actu = 1;
						} else if (Tem.grad_pers <= GRAD_MED_APERTURA) { // entre 0 y 100 (0% a 50% de apertura), la potencia es ascendente
							Valores[ACT_Persi] = Tem.grad_pers;
						}
						else { // entre 101 y 200 (50% a 100% de apertura), la potencia es descendente
							Valores[ACT_Persi] = GRAD_MAX_APERTURA - Tem.grad_pers;
						}
					} // (Estados[ACT_Persi]==ST_SUBIENDO || Estados[ACT_Persi]==ST_BAJANDO)

			//- R6: AUTOINCREMENTOS TEMPERATURA
				if (Tem.tics_auto >= TICS_AUTOINCREMENTO) {
					//- Resetear el temporizador e inicilizar el valor de la siguiente temperatura interior
						Tem.tics_auto = 0;
						u8 Nueva_temperatura;
						Nueva_temperatura = Valores[SEN_TemIn];

					//- Con las ventanas abiertas y diferencia de temperaturas, la temperatura subir� o bajar� 1 grado
						if (Estados[ACT_Venta]==ST_ABIERTAS && Valores[SEN_TemIn]!=Valores[SEN_TemEx]) {
							Nueva_temperatura += (Valores[SEN_TemIn] < Valores[SEN_TemEx]) ? 1 : -1;
						}

					//- Con la calefacci�n encendida, la temperatura sube 2 grados
						if (Valores[ACT_Calef] > 0) {
							Nueva_temperatura += 2;
						}

					//- Con el aire encendido, la temperatura baja 2 grados
						else if (Valores[ACT_AireA] > 0) {
							Nueva_temperatura -=2;
						}

					//- Si la nueva temperatura cambia, actualizar la temperatura interior y activar el sem�foro de actuadores
						if (Valores[SEN_TemIn] != Nueva_temperatura) {
							Valores[SEN_TemIn] = Nueva_temperatura;
							Tem.sema_actu = 1;
						}
				}	// Tem.tics_auto >= TICS_AUTOINCREMENTO

		} // Tem_ActualizarTics




//---------------------------------------------------------------------


//==================================== INICIALIZACI�N

	void Inicializar() {
		//- Inicializa el micro
	        init_platform();

	    //- Inicializa el m�dulo de GPI, GPO y la UART para obtener la direcci�n base:
	        u32 res; // resultado de llamadas a Xilinx
	    	res = XIOModule_Initialize(&iomodule, XPAR_IOMODULE_0_DEVICE_ID);
	    	res = XIOModule_Start(&iomodule);
	    	res = XIOModule_CfgInitialize(&iomodule, NULL, 1);

	    //- Inicializamos el manejador de interrupciones
	    	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);

	    //- Registramos y activamos las interrupciones del temporizador para FIT1 (temporizador a 1 segundo)
	    	XIOModule_Connect(&iomodule, XIN_IOMODULE_FIT_1_INTERRUPT_INTR, Tem_Manejador_FIT1, NULL);
	    	XIOModule_Enable(&iomodule, XIN_IOMODULE_FIT_1_INTERRUPT_INTR);

	    //- Registramos y activamos las interrupciones bot�n derecho e izquierdo (Interrupciones externa 0 y 1)
			#ifdef MEJORAS
	    	XIOModule_Connect(&iomodule, INTERRUPCION_BOTON_DER, Manejador_BotonDer, NULL);
	    	XIOModule_Connect(&iomodule, INTERRUPCION_BOTON_IZQ, Manejador_BotonIzq, NULL);
	    	XIOModule_Connect(&iomodule, INTERRUPCION_BOTON_ARR, Manejador_BotonArr, NULL);
	    	XIOModule_Connect(&iomodule, INTERRUPCION_BOTON_ABA, Manejador_BotonAba, NULL);

	    	XIOModule_Enable(&iomodule, INTERRUPCION_BOTON_DER);
	    	XIOModule_Enable(&iomodule, INTERRUPCION_BOTON_IZQ);
	    	XIOModule_Enable(&iomodule, INTERRUPCION_BOTON_ARR);
	    	XIOModule_Enable(&iomodule, INTERRUPCION_BOTON_ABA);
			#endif // mejoras

	    //- Registramos y activamos la interrupci�n de la respuesta de potencia de climatizaci�n
	    	XIOModule_Connect(&iomodule, INTERRUPCION_POTENCIA_U, Act_Manejador_Pot_Clim, NULL);
	    	XIOModule_Enable(&iomodule, INTERRUPCION_POTENCIA_U);

		//- Activamos Interrupciones
			microblaze_enable_interrupts();

		//- Retardo necesario para que el Remote Lab se configure correctamente antes de operar con la E/S del MicroBlaze
			u32 index2;
			for (index2 = 0; index2 < 6000000; index2 ++)
				;
			xil_printf("\t");

		//- Valores a cero e inicializaci�n de sensores
			memset((void *)&Valores, 0, sizeof(Valores));
			Valores[SEN_IluEx] = 75;
			Valores[SEN_TemIn] = 20;
			Valores[SEN_TemEx] = 20;
			Valores[SEN_Ruido] = 20;

		//- U2d: Inicialmente se encontrar� todo cerrado.
			Estados[SEN_Prese] = ST_AUSENTE;

		//- Inicializar actuadores
			Act_pot_clima = 0; 				// potencia de climatizaci�n respuesta de la fpga a cero

		//- Inicializar la interfaz de usuario
			ui.ult_tecla = ' '; 			// �ltima tecla pulsada a visualizar en pantalla
			ui.sig_tecla = '\0'; 			// no se ha pulsado otra tecla desde la �ltima vez
			ui.sig_presencia = ST_AUSENTE;	// el siguiente estado de presencia es el mismo
			ui.modo_sensores = 1;			// se empieza en modo sensores
			ui.sa_activo = SEN_Prese;		// se empieza visualizando los datos del sensor de presencia

		//- Inicializar temporizadores
			memset((void *)&Tem, 0, sizeof(st_Temporizador));
			Tem.sema_actu = 1;
			Tem.sema_pant = 1; // U2B:
			Tem.sema_fpga = 0;

		} // Inicializar

//==================================== MAIN
	int main()
	{
		//- Inicializaci�n de la placa
			Inicializar();

		//- Bucle principal
			while (1)
			{
				//- Leer el teclado para simular los cambios en los sensores
					UI_SimularSensores();

				//- Si salt� la interrupci�n del temporizador, actualizar sensores y actuadores
					Tem_ActualizarTics();

				//- Actualiza el estado de los sensores
					Sen_ActualizarEstados();

				//- Si se pulsaron teclas o se modific� algo por tiempo, hay que controlar los actuadores
					Act_ControlarActuadores();

				//- Si cambi� alg�n dato, refrescar la pantalla
					UI_RefrecarPantalla();

			} // while (1)

		//- Finalizaci�n (c�digo no alcanzable)
			cleanup_platform();
			return 0;

	} // main

// source ipcore_dir/microblaze_mcs_setup.tcl
// microblaze_mcs_data2mem workspace/hello_world/debug/hello_world.elf
