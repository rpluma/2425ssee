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
        <signal name="x_1(7:0)" />
        <signal name="x_2(7:0)" />
        <signal name="x_3(7:0)" />
        <signal name="x_4(7:0)" />
        <signal name="x_5(7:0)" />
        <signal name="x_6(7:0)" />
        <signal name="x_7(7:0)" />
        <signal name="x_0(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="XLXN_1(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="acceder" />
        <signal name="indice(2)" />
        <signal name="indice(1)" />
        <signal name="indice(0)" />
        <signal name="uno" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Output" name="x_i(7:0)" />
        <port polarity="Input" name="indice(2:0)" />
        <port polarity="Input" name="acceder" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
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
        <block symbolname="fde" name="XLXI_24(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="acceder" name="CE" />
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
        <block symbolname="vcc" name="XLXI_25">
            <blockpin signalname="uno" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
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
        <branch name="ck">
            <wire x2="448" y1="544" y2="544" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="544" name="ck" orien="R180" />
        <branch name="indice(2:0)">
            <wire x2="448" y1="608" y2="608" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="608" name="indice(2:0)" orien="R180" />
        <branch name="acceder">
            <wire x2="448" y1="656" y2="656" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="656" name="acceder" orien="R180" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2336" type="branch" />
            <wire x2="2192" y1="2336" y2="2336" x1="2176" />
            <wire x2="2256" y1="2336" y2="2336" x1="2192" />
        </branch>
        <branch name="indice(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2272" type="branch" />
            <wire x2="2192" y1="2272" y2="2272" x1="2176" />
            <wire x2="2256" y1="2272" y2="2272" x1="2192" />
        </branch>
        <branch name="indice(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2208" type="branch" />
            <wire x2="2192" y1="2208" y2="2208" x1="2176" />
            <wire x2="2256" y1="2208" y2="2208" x1="2192" />
        </branch>
        <branch name="indice(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2144" type="branch" />
            <wire x2="2192" y1="2144" y2="2144" x1="2176" />
            <wire x2="2256" y1="2144" y2="2144" x1="2192" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2080" type="branch" />
            <wire x2="2192" y1="2080" y2="2080" x1="2176" />
            <wire x2="2256" y1="2080" y2="2080" x1="2192" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2016" type="branch" />
            <wire x2="2192" y1="2016" y2="2016" x1="2176" />
            <wire x2="2256" y1="2016" y2="2016" x1="2192" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1952" type="branch" />
            <wire x2="2192" y1="1952" y2="1952" x1="2176" />
            <wire x2="2256" y1="1952" y2="1952" x1="2192" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1888" type="branch" />
            <wire x2="2192" y1="1888" y2="1888" x1="2176" />
            <wire x2="2256" y1="1888" y2="1888" x1="2192" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1824" type="branch" />
            <wire x2="2192" y1="1824" y2="1824" x1="2176" />
            <wire x2="2256" y1="1824" y2="1824" x1="2192" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1760" type="branch" />
            <wire x2="2192" y1="1760" y2="1760" x1="2176" />
            <wire x2="2256" y1="1760" y2="1760" x1="2192" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1696" type="branch" />
            <wire x2="2192" y1="1696" y2="1696" x1="2176" />
            <wire x2="2256" y1="1696" y2="1696" x1="2192" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1632" type="branch" />
            <wire x2="2192" y1="1632" y2="1632" x1="2176" />
            <wire x2="2256" y1="1632" y2="1632" x1="2192" />
        </branch>
        <instance x="2256" y="2368" name="XLXI_9(7:0)" orien="R0" />
        <branch name="acceder">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1920" type="branch" />
            <wire x2="2720" y1="1920" y2="1920" x1="2704" />
            <wire x2="2736" y1="1920" y2="1920" x1="2720" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1984" type="branch" />
            <wire x2="2720" y1="1984" y2="1984" x1="2704" />
            <wire x2="2736" y1="1984" y2="1984" x1="2720" />
        </branch>
        <branch name="XLXN_1(7:0)">
            <wire x2="2592" y1="1856" y2="1856" x1="2576" />
            <wire x2="2736" y1="1856" y2="1856" x1="2592" />
        </branch>
        <instance x="2736" y="2112" name="XLXI_24(7:0)" orien="R0" />
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="1856" type="branch" />
            <wire x2="3136" y1="1856" y2="1856" x1="3120" />
        </branch>
        <instance x="976" y="2080" name="XLXI_25" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="2112" type="branch" />
            <wire x2="1040" y1="2080" y2="2112" x1="1040" />
            <wire x2="1104" y1="2112" y2="2112" x1="1040" />
        </branch>
    </sheet>
</drawing>