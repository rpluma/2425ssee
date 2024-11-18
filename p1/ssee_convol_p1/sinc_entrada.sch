<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="codigo_tecla_KHz(3:0)" />
        <signal name="ck_MHz" />
        <signal name="codigo_tecla_MHz(3:0)" />
        <signal name="tecla_pulsada_KHz" />
        <signal name="tecla_pulsada_MHz" />
        <signal name="XLXN_33" />
        <port polarity="Input" name="codigo_tecla_KHz(3:0)" />
        <port polarity="Input" name="ck_MHz" />
        <port polarity="Output" name="codigo_tecla_MHz(3:0)" />
        <port polarity="Input" name="tecla_pulsada_KHz" />
        <port polarity="Output" name="tecla_pulsada_MHz" />
        <blockdef name="nivel_a_pulso">
            <timestamp>2016-10-8T17:30:25</timestamp>
            <rect width="256" x="64" y="-128" height="136" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="sincroniza">
            <timestamp>2016-10-8T17:5:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="nivel_a_pulso" name="XLXI_9">
            <blockpin signalname="tecla_pulsada_MHz" name="salida" />
            <blockpin signalname="ck_MHz" name="ck" />
            <blockpin signalname="XLXN_33" name="entrada" />
        </block>
        <block symbolname="sincroniza" name="XLXI_10">
            <blockpin signalname="XLXN_33" name="dato_sinc" />
            <blockpin signalname="ck_MHz" name="ck" />
            <blockpin signalname="tecla_pulsada_KHz" name="dato_ent" />
        </block>
        <block symbolname="sincroniza" name="XLXI_17(3:0)">
            <blockpin signalname="codigo_tecla_MHz(3:0)" name="dato_sinc" />
            <blockpin signalname="ck_MHz" name="ck" />
            <blockpin signalname="codigo_tecla_KHz(3:0)" name="dato_ent" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="codigo_tecla_KHz(3:0)">
            <wire x2="1056" y1="1584" y2="1584" x1="816" />
        </branch>
        <branch name="tecla_pulsada_KHz">
            <wire x2="1056" y1="1664" y2="1664" x1="816" />
        </branch>
        <branch name="ck_MHz">
            <wire x2="1056" y1="1744" y2="1744" x1="816" />
        </branch>
        <branch name="codigo_tecla_MHz(3:0)">
            <wire x2="1616" y1="1584" y2="1584" x1="1376" />
        </branch>
        <branch name="tecla_pulsada_MHz">
            <wire x2="1616" y1="1664" y2="1664" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="816" y="1584" name="codigo_tecla_KHz(3:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1664" name="tecla_pulsada_KHz" orien="R180" />
        <iomarker fontsize="28" x="816" y="1744" name="ck_MHz" orien="R180" />
        <iomarker fontsize="28" x="1616" y="1584" name="codigo_tecla_MHz(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1616" y="1664" name="tecla_pulsada_MHz" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1600" y1="1008" y2="1008" x1="1312" />
        </branch>
        <branch name="ck_MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1072" type="branch" />
            <wire x2="1504" y1="1072" y2="1072" x1="1360" />
            <wire x2="1600" y1="1072" y2="1072" x1="1504" />
        </branch>
        <instance x="1600" y="1104" name="XLXI_9" orien="R0">
        </instance>
        <branch name="tecla_pulsada_MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1008" type="branch" />
            <wire x2="2128" y1="1008" y2="1008" x1="1984" />
            <wire x2="2304" y1="1008" y2="1008" x1="2128" />
        </branch>
        <instance x="928" y="1104" name="XLXI_10" orien="R0">
        </instance>
        <branch name="tecla_pulsada_KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1008" type="branch" />
            <wire x2="768" y1="1008" y2="1008" x1="608" />
            <wire x2="928" y1="1008" y2="1008" x1="768" />
        </branch>
        <branch name="ck_MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1072" type="branch" />
            <wire x2="768" y1="1072" y2="1072" x1="608" />
            <wire x2="928" y1="1072" y2="1072" x1="768" />
        </branch>
        <branch name="codigo_tecla_KHz(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="720" type="branch" />
            <wire x2="768" y1="720" y2="720" x1="608" />
            <wire x2="928" y1="720" y2="720" x1="768" />
        </branch>
        <branch name="ck_MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="784" type="branch" />
            <wire x2="768" y1="784" y2="784" x1="608" />
            <wire x2="928" y1="784" y2="784" x1="768" />
        </branch>
        <branch name="codigo_tecla_MHz(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="720" type="branch" />
            <wire x2="1472" y1="720" y2="720" x1="1312" />
            <wire x2="1632" y1="720" y2="720" x1="1472" />
        </branch>
        <instance x="928" y="816" name="XLXI_17(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="32" type="instance" />
        </instance>
        <rect style="linestyle:Dash" width="2504" x="92" y="116" height="152" />
        <text style="fontsize:40;fontname:Arial" x="496" y="200">Sincronizacion de los datos del teclado. Pasamos de un reloj de KHz a MHz muestreando 2 veces</text>
        <text style="fontsize:56;fontname:Arial" x="2140" y="336">sinc_entrada.sch</text>
    </sheet>
</drawing>