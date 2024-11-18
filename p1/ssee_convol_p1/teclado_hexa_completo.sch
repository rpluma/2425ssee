<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="fila1" />
        <signal name="fila2" />
        <signal name="fila3" />
        <signal name="fila4" />
        <signal name="ck_teclado" />
        <signal name="col1" />
        <signal name="col2" />
        <signal name="col3" />
        <signal name="col4" />
        <signal name="tecla_pulsada" />
        <signal name="codigo_tecla(3:0)" />
        <signal name="col_ok1" />
        <signal name="col_ok2" />
        <signal name="col_ok3" />
        <signal name="col_ok4" />
        <signal name="tecla(15:0)" />
        <port polarity="Output" name="fila1" />
        <port polarity="Output" name="fila2" />
        <port polarity="Output" name="fila3" />
        <port polarity="Output" name="fila4" />
        <port polarity="Input" name="ck_teclado" />
        <port polarity="Input" name="col1" />
        <port polarity="Input" name="col2" />
        <port polarity="Input" name="col3" />
        <port polarity="Input" name="col4" />
        <port polarity="Output" name="tecla_pulsada" />
        <port polarity="Output" name="codigo_tecla(3:0)" />
        <port polarity="Output" name="tecla(15:0)" />
        <blockdef name="teclado_4x4">
            <timestamp>2016-11-4T11:46:40</timestamp>
            <rect width="288" x="64" y="-1280" height="320" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <rect width="64" x="352" y="-1004" height="24" />
            <line x2="416" y1="-992" y2="-992" x1="352" />
            <line x2="416" y1="-1056" y2="-1056" x1="352" />
            <line x2="416" y1="-1248" y2="-1248" x1="352" />
            <line x2="416" y1="-1184" y2="-1184" x1="352" />
            <line x2="416" y1="-1120" y2="-1120" x1="352" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
        </blockdef>
        <blockdef name="detector">
            <timestamp>2013-11-23T15:42:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="codif_tecla">
            <timestamp>2016-11-4T11:54:4</timestamp>
            <rect width="368" x="64" y="-1024" height="152" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <rect width="64" x="432" y="-988" height="24" />
            <line x2="496" y1="-976" y2="-976" x1="432" />
            <line x2="496" y1="-912" y2="-912" x1="432" />
            <rect width="64" x="0" y="-988" height="24" />
            <line x2="0" y1="-976" y2="-976" x1="64" />
        </blockdef>
        <block symbolname="codif_tecla" name="XLXI_39">
            <blockpin signalname="ck_teclado" name="ck_teclado" />
            <blockpin signalname="codigo_tecla(3:0)" name="codigo_tecla(3:0)" />
            <blockpin signalname="tecla_pulsada" name="tecla_pulsada" />
            <blockpin signalname="tecla(15:0)" name="tecla(15:0)" />
        </block>
        <block symbolname="detector" name="XLXI_5">
            <blockpin signalname="col1" name="dato" />
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="col_ok1" name="dato_ok" />
        </block>
        <block symbolname="detector" name="XLXI_6">
            <blockpin signalname="col2" name="dato" />
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="col_ok2" name="dato_ok" />
        </block>
        <block symbolname="detector" name="XLXI_7">
            <blockpin signalname="col3" name="dato" />
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="col_ok3" name="dato_ok" />
        </block>
        <block symbolname="detector" name="XLXI_8">
            <blockpin signalname="col4" name="dato" />
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="col_ok4" name="dato_ok" />
        </block>
        <block symbolname="teclado_4x4" name="XLXI_1">
            <blockpin signalname="col_ok1" name="col1" />
            <blockpin signalname="col_ok2" name="col2" />
            <blockpin signalname="col_ok3" name="col3" />
            <blockpin signalname="col_ok4" name="col4" />
            <blockpin signalname="tecla(15:0)" name="tecla(15:0)" />
            <blockpin signalname="fila4" name="fila4" />
            <blockpin signalname="fila1" name="fila1" />
            <blockpin signalname="fila2" name="fila2" />
            <blockpin signalname="fila3" name="fila3" />
            <blockpin signalname="ck_teclado" name="ck_teclado" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2544" type="branch" />
            <wire x2="1712" y1="2544" y2="2544" x1="1632" />
            <wire x2="1856" y1="2544" y2="2544" x1="1712" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2464" type="branch" />
            <wire x2="1712" y1="2464" y2="2464" x1="1632" />
            <wire x2="1856" y1="2464" y2="2464" x1="1712" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2384" type="branch" />
            <wire x2="1712" y1="2384" y2="2384" x1="1632" />
            <wire x2="1856" y1="2384" y2="2384" x1="1712" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2304" type="branch" />
            <wire x2="1712" y1="2304" y2="2304" x1="1632" />
            <wire x2="1856" y1="2304" y2="2304" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1856" y="2544" name="fila4" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2464" name="fila3" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2384" name="fila2" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2304" name="fila1" orien="R0" />
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2288" type="branch" />
            <wire x2="1136" y1="2288" y2="2288" x1="992" />
            <wire x2="1248" y1="2288" y2="2288" x1="1136" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2352" type="branch" />
            <wire x2="1136" y1="2352" y2="2352" x1="992" />
            <wire x2="1248" y1="2352" y2="2352" x1="1136" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2416" type="branch" />
            <wire x2="1136" y1="2416" y2="2416" x1="992" />
            <wire x2="1248" y1="2416" y2="2416" x1="1136" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2480" type="branch" />
            <wire x2="1136" y1="2480" y2="2480" x1="992" />
            <wire x2="1248" y1="2480" y2="2480" x1="1136" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2544" type="branch" />
            <wire x2="1136" y1="2544" y2="2544" x1="992" />
            <wire x2="1248" y1="2544" y2="2544" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="992" y="2288" name="col1" orien="R180" />
        <iomarker fontsize="28" x="992" y="2352" name="col2" orien="R180" />
        <iomarker fontsize="28" x="992" y="2416" name="col3" orien="R180" />
        <iomarker fontsize="28" x="992" y="2480" name="col4" orien="R180" />
        <iomarker fontsize="28" x="992" y="2544" name="ck_teclado" orien="R180" />
        <branch name="codigo_tecla(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="2544" type="branch" />
            <wire x2="2400" y1="2544" y2="2544" x1="2240" />
            <wire x2="2544" y1="2544" y2="2544" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2544" name="codigo_tecla(3:0)" orien="R0" />
        <rect style="linestyle:Dash" width="3588" x="100" y="72" height="416" />
        <text style="fontsize:56;fontname:Arial" x="128" y="156">Control del teclado hexadecimal. Se genera un '1' en una de las filas, y se lee si en alguna columna aparece ese '1'.</text>
        <text style="fontsize:56;fontname:Arial" x="128" y="236">Si es asi, se codifica la tecla que se ha pulsado de dos formas distinas:</text>
        <text style="fontsize:56;fontname:Arial" x="288" y="316">* Mediante una senal individual para cada tecla, que esta a '1' todo el tiempo que dure la pulsacion de la misma</text>
        <text style="fontsize:56;fontname:Arial" x="288" y="396">* Mediante un bus binario de 4 bits y la senal 'tecla_pulsada' que esta a '1' durante un solo ciclo de reloj</text>
        <text style="fontsize:56;fontname:Arial" x="3008" y="568">teclado_hexa_completo.sch</text>
        <branch name="col_ok1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1120" type="branch" />
            <wire x2="1088" y1="736" y2="736" x1="912" />
            <wire x2="1088" y1="736" y2="1120" x1="1088" />
            <wire x2="1264" y1="1120" y2="1120" x1="1088" />
            <wire x2="1328" y1="1120" y2="1120" x1="1264" />
        </branch>
        <branch name="col_ok2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1184" type="branch" />
            <wire x2="1040" y1="928" y2="928" x1="912" />
            <wire x2="1040" y1="928" y2="1184" x1="1040" />
            <wire x2="1264" y1="1184" y2="1184" x1="1040" />
            <wire x2="1328" y1="1184" y2="1184" x1="1264" />
        </branch>
        <branch name="col_ok3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1248" type="branch" />
            <wire x2="992" y1="1120" y2="1120" x1="912" />
            <wire x2="992" y1="1120" y2="1248" x1="992" />
            <wire x2="1264" y1="1248" y2="1248" x1="992" />
            <wire x2="1328" y1="1248" y2="1248" x1="1264" />
        </branch>
        <branch name="col_ok4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1312" type="branch" />
            <wire x2="1264" y1="1312" y2="1312" x1="912" />
            <wire x2="1328" y1="1312" y2="1312" x1="1264" />
        </branch>
        <instance x="528" y="832" name="XLXI_5" orien="R0">
        </instance>
        <instance x="528" y="1024" name="XLXI_6" orien="R0">
        </instance>
        <instance x="528" y="1216" name="XLXI_7" orien="R0">
        </instance>
        <instance x="528" y="1408" name="XLXI_8" orien="R0">
        </instance>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="800" type="branch" />
            <wire x2="464" y1="800" y2="800" x1="320" />
            <wire x2="528" y1="800" y2="800" x1="464" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="992" type="branch" />
            <wire x2="464" y1="992" y2="992" x1="320" />
            <wire x2="528" y1="992" y2="992" x1="464" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1184" type="branch" />
            <wire x2="464" y1="1184" y2="1184" x1="320" />
            <wire x2="528" y1="1184" y2="1184" x1="464" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1376" type="branch" />
            <wire x2="464" y1="1376" y2="1376" x1="320" />
            <wire x2="528" y1="1376" y2="1376" x1="464" />
        </branch>
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="736" type="branch" />
            <wire x2="464" y1="736" y2="736" x1="320" />
            <wire x2="528" y1="736" y2="736" x1="464" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="928" type="branch" />
            <wire x2="464" y1="928" y2="928" x1="320" />
            <wire x2="528" y1="928" y2="928" x1="464" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1120" type="branch" />
            <wire x2="464" y1="1120" y2="1120" x1="320" />
            <wire x2="528" y1="1120" y2="1120" x1="464" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1312" type="branch" />
            <wire x2="464" y1="1312" y2="1312" x1="320" />
            <wire x2="528" y1="1312" y2="1312" x1="464" />
        </branch>
        <instance x="1328" y="2368" name="XLXI_1" orien="R0">
        </instance>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1376" type="branch" />
            <wire x2="1248" y1="1376" y2="1376" x1="1120" />
            <wire x2="1328" y1="1376" y2="1376" x1="1248" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1120" type="branch" />
            <wire x2="1856" y1="1120" y2="1120" x1="1744" />
            <wire x2="1968" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1184" type="branch" />
            <wire x2="1856" y1="1184" y2="1184" x1="1744" />
            <wire x2="1968" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1248" type="branch" />
            <wire x2="1856" y1="1248" y2="1248" x1="1744" />
            <wire x2="1968" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1312" type="branch" />
            <wire x2="1856" y1="1312" y2="1312" x1="1744" />
            <wire x2="1968" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="tecla(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1376" type="branch" />
            <wire x2="1856" y1="1376" y2="1376" x1="1744" />
            <wire x2="1968" y1="1376" y2="1376" x1="1856" />
        </branch>
        <instance x="2464" y="2112" name="XLXI_39" orien="R0">
        </instance>
        <branch name="tecla(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1136" type="branch" />
            <wire x2="2352" y1="1136" y2="1136" x1="2240" />
            <wire x2="2464" y1="1136" y2="1136" x1="2352" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1200" type="branch" />
            <wire x2="2384" y1="1200" y2="1200" x1="2240" />
            <wire x2="2464" y1="1200" y2="1200" x1="2384" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="1200" type="branch" />
            <wire x2="3072" y1="1200" y2="1200" x1="2960" />
            <wire x2="3232" y1="1200" y2="1200" x1="3072" />
        </branch>
        <branch name="codigo_tecla(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1136" type="branch" />
            <wire x2="3104" y1="1136" y2="1136" x1="2960" />
            <wire x2="3232" y1="1136" y2="1136" x1="3104" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="2448" type="branch" />
            <wire x2="2400" y1="2448" y2="2448" x1="2240" />
            <wire x2="2544" y1="2448" y2="2448" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2448" name="tecla_pulsada" orien="R0" />
        <branch name="tecla(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="2352" type="branch" />
            <wire x2="2400" y1="2352" y2="2352" x1="2240" />
            <wire x2="2544" y1="2352" y2="2352" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2352" name="tecla(15:0)" orien="R0" />
        <rect style="linestyle:Dash" width="1776" x="980" y="1920" height="164" />
        <text style="fontsize:56;fontname:Arial" x="1136" y="2008">Usar una frecuencia entre 2 KHz y 20 KHz para 'ck_teclado'</text>
    </sheet>
</drawing>