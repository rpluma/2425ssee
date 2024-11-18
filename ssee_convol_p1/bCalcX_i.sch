<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="dato_nuevo" />
        <signal name="ck" />
        <signal name="dato_ent(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="x_1(7:0)" />
        <signal name="x_2(7:0)" />
        <signal name="x_3(7:0)" />
        <signal name="x_4(7:0)" />
        <signal name="x_5(7:0)" />
        <signal name="x_6(7:0)" />
        <signal name="x_7(7:0)" />
        <signal name="uno" />
        <signal name="x_0(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="XLXN_1(7:0)" />
        <signal name="indice(2)" />
        <signal name="indice(1)" />
        <signal name="indice(0)" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Input" name="indice(2:0)" />
        <port polarity="Output" name="x_i(7:0)" />
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="fd" name="XLXI_23(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_1(7:0)" name="D" />
            <blockpin signalname="x_i(7:0)" name="Q" />
        </block>
        <block symbolname="m8_1e" name="XLXI_9(7:0)">
            <blockpin signalname="x_0(7:0)" name="D0" />
            <blockpin signalname="x_1(7:0)" name="D1" />
            <blockpin signalname="x_2(7:0)" name="D2" />
            <blockpin signalname="x_3(7:0)" name="D3" />
            <blockpin signalname="x_4(7:0)" name="D4" />
            <blockpin signalname="x_5(7:0)" name="D5" />
            <blockpin signalname="x_6(7:0)" name="D6" />
            <blockpin signalname="x_7(7:0)" name="D7" />
            <blockpin signalname="uno" name="E" />
            <blockpin signalname="indice(0)" name="S0" />
            <blockpin signalname="indice(1)" name="S1" />
            <blockpin signalname="indice(2)" name="S2" />
            <blockpin signalname="XLXN_1(7:0)" name="O" />
        </block>
        <block symbolname="fde" name="XLXI_18(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_3(7:0)" name="D" />
            <blockpin signalname="x_4(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_19(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_4(7:0)" name="D" />
            <blockpin signalname="x_5(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_20(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_5(7:0)" name="D" />
            <blockpin signalname="x_6(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_21(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_6(7:0)" name="D" />
            <blockpin signalname="x_7(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_11(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="dato_ent(7:0)" name="D" />
            <blockpin signalname="x_0(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_15(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_0(7:0)" name="D" />
            <blockpin signalname="x_1(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_16(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_1(7:0)" name="D" />
            <blockpin signalname="x_2(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_17(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_2(7:0)" name="D" />
            <blockpin signalname="x_3(7:0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="ck">
            <wire x2="448" y1="560" y2="560" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="560" name="ck" orien="R180" />
        <branch name="indice(2:0)">
            <wire x2="448" y1="640" y2="640" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="640" name="indice(2:0)" orien="R180" />
        <instance x="1456" y="2176" name="XLXI_10" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="2208" type="branch" />
            <wire x2="1520" y1="2176" y2="2208" x1="1520" />
            <wire x2="1552" y1="2208" y2="2208" x1="1520" />
            <wire x2="1600" y1="2208" y2="2208" x1="1552" />
        </branch>
        <rect width="3196" x="60" y="260" height="452" />
        <branch name="x_i(7:0)">
            <wire x2="2960" y1="448" y2="448" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="2960" y="448" name="x_i(7:0)" orien="R0" />
        <branch name="dato_nuevo">
            <wire x2="448" y1="480" y2="480" x1="432" />
        </branch>
        <branch name="dato_ent(7:0)">
            <wire x2="448" y1="416" y2="416" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="416" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="480" name="dato_nuevo" orien="R180" />
        <rect width="2340" x="544" y="268" height="436" />
        <text style="fontsize:44;fontname:Arial" x="168" y="320">Entradas</text>
        <text style="fontsize:44;fontname:Arial" x="3000" y="320">Salidas</text>
        <text style="fontsize:40;fontname:Arial" x="600" y="320">1. Los ultimos 8 datos se almacenan en un registro de desplazamiento</text>
        <text style="fontsize:40;fontname:Arial" x="600" y="384">2. El multipliexor a la salida permite elegir el dato de entrada a emparejar con cada coeficiente</text>
        <text style="fontsize:40;fontname:Arial" x="600" y="448">3. El registro tras el multipexor acompasa la salida de este bloque con la salida del coeficiente en memoria</text>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="1808" type="branch" />
            <wire x2="3136" y1="1808" y2="1808" x1="3120" />
        </branch>
        <instance x="2736" y="2064" name="XLXI_23(7:0)" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1936" type="branch" />
            <wire x2="2736" y1="1936" y2="1936" x1="2720" />
        </branch>
        <branch name="XLXN_1(7:0)">
            <wire x2="2736" y1="1808" y2="1808" x1="2720" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2288" type="branch" />
            <wire x2="2400" y1="2288" y2="2288" x1="2320" />
        </branch>
        <branch name="indice(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2224" type="branch" />
            <wire x2="2400" y1="2224" y2="2224" x1="2320" />
        </branch>
        <branch name="indice(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2160" type="branch" />
            <wire x2="2400" y1="2160" y2="2160" x1="2320" />
        </branch>
        <branch name="indice(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2096" type="branch" />
            <wire x2="2400" y1="2096" y2="2096" x1="2320" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2032" type="branch" />
            <wire x2="2400" y1="2032" y2="2032" x1="2320" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1968" type="branch" />
            <wire x2="2400" y1="1968" y2="1968" x1="2320" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1904" type="branch" />
            <wire x2="2400" y1="1904" y2="1904" x1="2320" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1840" type="branch" />
            <wire x2="2400" y1="1840" y2="1840" x1="2320" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1776" type="branch" />
            <wire x2="2400" y1="1776" y2="1776" x1="2320" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1712" type="branch" />
            <wire x2="2400" y1="1712" y2="1712" x1="2320" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1648" type="branch" />
            <wire x2="2400" y1="1648" y2="1648" x1="2320" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1584" type="branch" />
            <wire x2="2400" y1="1584" y2="1584" x1="2320" />
        </branch>
        <instance x="2400" y="2320" name="XLXI_9(7:0)" orien="R0" />
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1280" type="branch" />
            <wire x2="432" y1="1280" y2="1280" x1="416" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1344" type="branch" />
            <wire x2="432" y1="1344" y2="1344" x1="416" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1408" type="branch" />
            <wire x2="432" y1="1408" y2="1408" x1="416" />
        </branch>
        <instance x="432" y="1536" name="XLXI_18(7:0)" orien="R0" />
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1280" type="branch" />
            <wire x2="944" y1="1280" y2="1280" x1="816" />
            <wire x2="976" y1="1280" y2="1280" x1="944" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1344" type="branch" />
            <wire x2="976" y1="1344" y2="1344" x1="960" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1408" type="branch" />
            <wire x2="976" y1="1408" y2="1408" x1="960" />
        </branch>
        <instance x="976" y="1536" name="XLXI_19(7:0)" orien="R0" />
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1280" type="branch" />
            <wire x2="1504" y1="1280" y2="1280" x1="1360" />
            <wire x2="1552" y1="1280" y2="1280" x1="1504" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1408" type="branch" />
            <wire x2="1552" y1="1408" y2="1408" x1="1536" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1344" type="branch" />
            <wire x2="1552" y1="1344" y2="1344" x1="1536" />
        </branch>
        <instance x="1552" y="1536" name="XLXI_20(7:0)" orien="R0" />
        <instance x="2128" y="1536" name="XLXI_21(7:0)" orien="R0" />
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1280" type="branch" />
            <wire x2="2528" y1="1280" y2="1280" x1="2512" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1408" type="branch" />
            <wire x2="2128" y1="1408" y2="1408" x1="2112" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1344" type="branch" />
            <wire x2="2128" y1="1344" y2="1344" x1="2112" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1280" type="branch" />
            <wire x2="2016" y1="1280" y2="1280" x1="1936" />
            <wire x2="2128" y1="1280" y2="1280" x1="2016" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="912" type="branch" />
            <wire x2="416" y1="912" y2="912" x1="400" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="976" type="branch" />
            <wire x2="416" y1="976" y2="976" x1="400" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1040" type="branch" />
            <wire x2="400" y1="1040" y2="1040" x1="384" />
            <wire x2="416" y1="1040" y2="1040" x1="400" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="912" type="branch" />
            <wire x2="928" y1="912" y2="912" x1="800" />
            <wire x2="960" y1="912" y2="912" x1="928" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1040" type="branch" />
            <wire x2="960" y1="1040" y2="1040" x1="944" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="976" type="branch" />
            <wire x2="960" y1="976" y2="976" x1="944" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="912" type="branch" />
            <wire x2="1488" y1="912" y2="912" x1="1344" />
            <wire x2="1536" y1="912" y2="912" x1="1488" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="976" type="branch" />
            <wire x2="1536" y1="976" y2="976" x1="1520" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1040" type="branch" />
            <wire x2="1536" y1="1040" y2="1040" x1="1520" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="912" type="branch" />
            <wire x2="2512" y1="912" y2="912" x1="2496" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1040" type="branch" />
            <wire x2="2112" y1="1040" y2="1040" x1="2096" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="976" type="branch" />
            <wire x2="2112" y1="976" y2="976" x1="2096" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="912" type="branch" />
            <wire x2="2016" y1="912" y2="912" x1="1920" />
            <wire x2="2112" y1="912" y2="912" x1="2016" />
        </branch>
        <instance x="416" y="1168" name="XLXI_11(7:0)" orien="R0" />
        <instance x="960" y="1168" name="XLXI_15(7:0)" orien="R0" />
        <instance x="1536" y="1168" name="XLXI_16(7:0)" orien="R0" />
        <instance x="2112" y="1168" name="XLXI_17(7:0)" orien="R0" />
        <text style="fontsize:44;fontname:Arial" x="880" y="208">Bloque bCalcX_i: Almacena y devuelve el dato de entrada correspondiente al indice</text>
    </sheet>
</drawing>