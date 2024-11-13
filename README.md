"# 2425ssee" 

## Recursos

- CV: https://eii.cv.uma.es/course/view.php?id=4923
- Github: https://github.com/rpluma/2425ssee
- PC Virtual: https://eii.cv.uma.es/mod/virtualpc/view.php?id=419021
- Launcher: https://pcvirtual.cv.uma.es/uds/page/ticket/launcher
- Local: od\Documents\200inv\200gierm\2425.304.ssee\Prácticas
1173

## Remote lab
URL:  http://fpga-lab.uma.es/
Usuario: gierm2425.ssee.b8
Password: wxOh4hTZ

## Práctica 0

1. New project
	- nombre (selector_2a1), schematic
	- Configuración
		- Development board: none
		- Category: all
		- Family: Spartan6
		- Device: XC6SLX16
		- Package: CSG324
		- Speed: -3
		- Synthesis: XST
		- Simulator: ISim
		- Language: VHDL
		- Property file: Store all values
		- Manual compile: unchecked
		- VHDL: 93
	- Next => proyecto creado
	- Diseño => árbol de jerarquía
2. Esquemático
	- xc6slx16-3csg324 > añadir nueva fuente (sel2a1.sch)
		- o Project > New source > sel2a1.sch + schematic
	- botón derecho > object properties > tamaño hoja dibujo > A4
	- dibujar el diagrama: add component > sel tipo (logic) > sel component (pestaña symbols para ver funcionalidad) > arrastrar
	- cablear: conectar > poner nombre > añadir componentes E/S
3. Simulación
	- Project > New source > VHDL Test Bench: sel2a2-sig_tb.vhd
4. Symbol
	- Tool > Symbol wizard

## Tema 3
2. Objetivos: O1-Módulos de alto nivel, O2-bloques especiales, O3-rendimiento, O4-time constraints
3. Objetivos: O5-FSM, O6-test bench, O7-diagramas jerárquicos
4. O1-Módulos de alto nivel: Core generator (básicos, math, storage, FPGA features)
5. O1: Señales estándar
6. O1: Sumador/restador
7. O1: Acumulador
8. O1: Contador
9. O1: Divisor
10. O1: Multiplicador - Xtreme dsp slice
11. O1: RAM - Block Memory Generator
12. O1: RAM - Nativo vs AXI4, fichero.COE
13. O1: RAM - bloques físicos de 9/18/36 kbits vs LUTs. Operating mode write/read/nochange
14. O1: RAM - cronogramas operating mode
15. O1: FIFO - adaptar velocidades, relojes independientes de lectura y escritura, no llenar/existen datos
16. O1: FIFO Generator
17. O1: FIFO Escritura
18. O1: FIFO Lectura
19. O1: FIFO Cronogramas lectura/escritura
20. O1: FIFO Cronogramas cuenta - TUTORÍA!
21. O1: DCM Digital Clock Manager (Spartan3)
22. O1: DCM Clocking Wizard (Spartan6) TUTORÍA! DIFERENCIAS CCON SPARTAN 3 (CLKFB_OUT)
23. O2-Bloques especiales: IP, multiplicadores/DSP, RAM, Biestables E/S
24. O2: Biestables de E/S - Problemática entrada (FF en CLB)
25. O2: Biestables de E/S - Solución entrada (FF en IOB=IFD input)
26. O2: Biestables de E/S - Problemática salida (FF en CLB)
27. O2: Biestables de E/S - Solución salida (FF en IOB=OFD output)
28. O3-Rendimiento: balanceo de caminos+funciones LUT/CLB+opciones de optimización
29. O3: Balanceo - Problemática con cronograma
30. O3: Balanceo - Definición de tiempos
31. O3: Balanceo - Solución con cronograma
32. O3: Balanceo - Solución: partir camino más largo, reducir periodo, pero aumenta la latencia
33. O4: Time constraints: reloj vs
34. O4: Resttricciones señales E/S que no pasan por un biestable del IOB. Fichero UCF (user constraint file/tools constraints editor + Tools/Plan Ahead PADs)
35. O5-FSM: Datapath vs diagramas de estados
36. O5: Ejemplo - diagrama estados 
37. O5: Ejemplo - descripción (salidas registrables/señales de salida no se pueden leer)
38. O5: Ejemplo - descripción (asiganción de variables vs señales)
39. O5: Ejemplo - descripción (tipos de acciones)
40. O5: Ejemplo - descripción (cronograma)
41. O5: Estilos de 1, 2 y 3 procesos
42. O5: Ejemplo 1 proceso
43. O5: Estilo 2 procesos (procesos combinacional con lista de sensibilidad)
44. O5: Ejemplo 2 procesos
45. O5: Ejemplo 2 procesos (cont'd)
46. O5: Estilo 3 procesos: sustituir el combinacional por (datos vs siguiente estado)
47. O5: Ejemplo 3 procesos
48. O5: Ejemplo 3 procesos (cont'd)
49. O5: Configuración Active-HDL (One process si utilizamos variables en la FSM)
50. O5: Configuración Design Unit Header (borrar signed)
51. O5: Configuración ALINT-PRO (desactivar if/case)
52. O5: VHDL (1 solo proceso y S1 primero en el enum)
53. O6-Test Bench: New source VHDL
54. O6: Estímulo para FSM - arquitectura/componente/port map
55. O6: Estímulo para FSM - señales y constantes
56. O6: Estímulo para FSM - uut
57. O6: Estímulo para FSM - estímulo para el reloj
58. O6: Estímulo para FSM - estímulo para el reset
59. O6: Estímulo para FSM - estímulo para señal A
60. O7-Diagramas jerárquicos: separación datapath y FSM
61. O7: Ejemplo diagrama general
62. O7: Ejemplo control datapath - diagrama FSM
63. O7: Ejemplo control datapath - descripción FSM
64. O7: Ejemplo control datapath - descripción FSM (cont'd)
65. O7: Ejemplo control datapath - diagrama FSM proceso 1
66. O7: Ejemplo control datapath - descripción FSM de jerarquía superior
66. O7: Ejemplo control datapath - control datapath en diagrama general




