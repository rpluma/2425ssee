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
        <signal name="reset" />
        <signal name="dato_ent(7:0)" />
        <signal name="dat_sal(7:0)" />
        <signal name="dato_sal_sync" />
        <signal name="c_i(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="ventana(1:0),indice(2:0)" />
        <signal name="acumular" />
        <signal name="inicializar" />
        <signal name="ceros(7:0)" />
        <signal name="multiplicar" />
        <signal name="ceros(0)" />
        <signal name="guardar" />
        <signal name="indice(2:0)" />
        <signal name="xi_por_ci(15:0)" />
        <signal name="res_parc(15:0)" />
        <signal name="ventana(1:0)" />
        <signal name="res_parcl(7:0)" />
        <signal name="res_parc(13:6)" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Output" name="dat_sal(7:0)" />
        <port polarity="Output" name="dato_sal_sync" />
        <port polarity="Input" name="ventana(1:0)" />
        <blockdef name="bCalcX_i">
            <timestamp>2024-11-14T8:40:57</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="264" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bIpMemory">
            <timestamp>2024-11-13T18:23:26</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="bIpMultiplier">
            <timestamp>2024-11-4T12:47:54</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="32" y1="304" y2="304" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="biPAccumlator">
            <timestamp>2024-11-14T13:41:40</timestamp>
            <rect width="224" x="32" y="32" height="352" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="336" y2="336" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="fsm_convol">
            <timestamp>2024-11-14T10:56:54</timestamp>
            <line x2="416" y1="288" y2="288" x1="352" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="288" x="64" y="-256" height="576" />
        </blockdef>
        <block symbolname="bCalcX_i" name="XLXI_2">
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_ent(7:0)" name="dato_ent(7:0)" />
            <blockpin signalname="indice(2:0)" name="indice(2:0)" />
            <blockpin signalname="x_i(7:0)" name="x_i(7:0)" />
        </block>
        <block symbolname="bIpMemory" name="XLXI_5">
            <blockpin signalname="ventana(1:0),indice(2:0)" name="addra(4:0)" />
            <blockpin signalname="ceros(7:0)" name="dina(7:0)" />
            <blockpin signalname="ceros(0)" name="wea(0:0)" />
            <blockpin signalname="ck" name="clka" />
            <blockpin signalname="c_i(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="biPAccumlator" name="XLXI_7">
            <blockpin signalname="xi_por_ci(15:0)" name="b(15:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="acumular" name="ce" />
            <blockpin signalname="inicializar" name="sinit" />
            <blockpin signalname="res_parc(15:0)" name="q(18:0)" />
        </block>
        <block symbolname="bIpMultiplier" name="XLXI_6">
            <blockpin signalname="x_i(7:0)" name="a(7:0)" />
            <blockpin signalname="c_i(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="multiplicar" name="ce" />
            <blockpin signalname="xi_por_ci(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_21(7:0)">
            <blockpin signalname="res_parc(13:6)" name="I" />
            <blockpin signalname="res_parcl(7:0)" name="O" />
        </block>
        <block symbolname="fde" name="XLXI_18(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="guardar" name="CE" />
            <blockpin signalname="res_parcl(7:0)" name="D" />
            <blockpin signalname="dat_sal(7:0)" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_17(7:0)">
            <blockpin signalname="ceros(7:0)" name="G" />
        </block>
        <block symbolname="fsm_convol" name="XLXI_22">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="inicializar" name="inicializar" />
            <blockpin signalname="acumular" name="acumular" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
            <blockpin signalname="multiplicar" name="multiplicar" />
            <blockpin signalname="guardar" name="guardar" />
            <blockpin signalname="indice(2:0)" name="indice(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="704" type="branch" />
            <wire x2="1536" y1="704" y2="704" x1="976" />
            <wire x2="1536" y1="704" y2="1408" x1="1536" />
            <wire x2="1712" y1="1408" y2="1408" x1="1536" />
        </branch>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1472" type="branch" />
            <wire x2="1264" y1="1040" y2="1040" x1="1168" />
            <wire x2="1264" y1="1040" y2="1472" x1="1264" />
            <wire x2="1712" y1="1472" y2="1472" x1="1264" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="704" type="branch" />
            <wire x2="592" y1="704" y2="704" x1="576" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="768" type="branch" />
            <wire x2="592" y1="768" y2="768" x1="576" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="832" type="branch" />
            <wire x2="576" y1="832" y2="832" x1="560" />
            <wire x2="592" y1="832" y2="832" x1="576" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="896" type="branch" />
            <wire x2="592" y1="896" y2="896" x1="576" />
        </branch>
        <instance x="592" y="992" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1232" type="branch" />
            <wire x2="592" y1="1232" y2="1232" x1="576" />
        </branch>
        <branch name="ventana(1:0),indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1040" type="branch" />
            <wire x2="592" y1="1040" y2="1040" x1="576" />
        </branch>
        <instance x="592" y="960" name="XLXI_5" orien="R0">
        </instance>
        <branch name="ceros(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1168" type="branch" />
            <wire x2="592" y1="1168" y2="1168" x1="576" />
        </branch>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1072" type="branch" />
            <wire x2="592" y1="1072" y2="1072" x1="576" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1568" type="branch" />
            <wire x2="1712" y1="1568" y2="1568" x1="1696" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1536" type="branch" />
            <wire x2="2464" y1="1536" y2="1536" x1="2448" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1440" type="branch" />
            <wire x2="2464" y1="1440" y2="1440" x1="2448" />
        </branch>
        <instance x="2464" y="1328" name="XLXI_7" orien="R0">
        </instance>
        <branch name="xi_por_ci(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1408" type="branch" />
            <wire x2="2384" y1="1408" y2="1408" x1="2288" />
            <wire x2="2464" y1="1408" y2="1408" x1="2384" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1632" type="branch" />
            <wire x2="1712" y1="1632" y2="1632" x1="1696" />
        </branch>
        <instance x="1712" y="1328" name="XLXI_6" orien="R0">
        </instance>
        <branch name="res_parc(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1408" type="branch" />
            <wire x2="2784" y1="1408" y2="1408" x1="2752" />
        </branch>
        <rect width="3196" x="172" y="116" height="452" />
        <text style="fontsize:44;fontname:Arial" x="280" y="176">Entradas</text>
        <text style="fontsize:44;fontname:Arial" x="3112" y="176">Salidas</text>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="320" type="branch" />
            <wire x2="480" y1="320" y2="320" x1="464" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="448" type="branch" />
            <wire x2="480" y1="448" y2="448" x1="464" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="384" type="branch" />
            <wire x2="480" y1="384" y2="384" x1="464" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="256" type="branch" />
            <wire x2="480" y1="256" y2="256" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="256" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="320" name="dato_nuevo" orien="R180" />
        <iomarker fontsize="28" x="464" y="384" name="reset" orien="R180" />
        <iomarker fontsize="28" x="464" y="448" name="ck" orien="R180" />
        <branch name="ventana(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="512" type="branch" />
            <wire x2="496" y1="512" y2="512" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="512" name="ventana(1:0)" orien="R180" />
        <rect width="2216" x="704" y="120" height="440" />
        <branch name="dat_sal(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="304" type="branch" />
            <wire x2="3136" y1="304" y2="304" x1="3120" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="368" type="branch" />
            <wire x2="3136" y1="368" y2="368" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3136" y="304" name="dat_sal(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="368" name="dato_sal_sync" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="744" y="176">1. Los ultimos 8 datos de entrada se almacenan y acceden a traves de bCalcX_i</text>
        <text style="fontsize:40;fontname:Arial" x="740" y="240">2. La memoria contiene 4 versiones de coeficientes: 00=rectangular, 01=Hamming, 10=Hann, 11=Kaiser</text>
        <text style="fontsize:40;fontname:Arial" x="740" y="304">3. El multiplicador contiene una sola etapa de pipeline y se apaga para ahorrar energia</text>
        <text style="fontsize:40;fontname:Arial" x="740" y="368">4. El acumulador almacena los resultados parciales y se resetea con cada dato nuevo</text>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="992" type="branch" />
            <wire x2="2256" y1="992" y2="992" x1="2240" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="736" type="branch" />
            <wire x2="2256" y1="736" y2="736" x1="2240" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="800" type="branch" />
            <wire x2="2256" y1="800" y2="800" x1="2240" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="928" type="branch" />
            <wire x2="1824" y1="928" y2="928" x1="1808" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="832" type="branch" />
            <wire x2="1824" y1="832" y2="832" x1="1808" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="736" type="branch" />
            <wire x2="1824" y1="736" y2="736" x1="1808" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1056" type="branch" />
            <wire x2="2256" y1="1056" y2="1056" x1="2240" />
        </branch>
        <branch name="guardar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1120" type="branch" />
            <wire x2="2256" y1="1120" y2="1120" x1="2240" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="740" y="432">5. El registro a la salida del acumulador evita que los resultados parciales se vean fuera</text>
        <text style="fontsize:40;fontname:Arial" x="740" y="496">6. La maquina de estados genera las salidas que requiere el datapath</text>
        <instance x="2304" y="1936" name="XLXI_21(7:0)" orien="R0" />
        <branch name="res_parcl(7:0)">
            <wire x2="2544" y1="1904" y2="1904" x1="2528" />
            <wire x2="2576" y1="1904" y2="1904" x1="2544" />
        </branch>
        <branch name="res_parc(13:6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1904" type="branch" />
            <wire x2="2304" y1="1904" y2="1904" x1="2256" />
        </branch>
        <branch name="dat_sal(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="1904" type="branch" />
            <wire x2="2992" y1="1904" y2="1904" x1="2960" />
        </branch>
        <branch name="guardar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1968" type="branch" />
            <wire x2="2576" y1="1968" y2="1968" x1="2560" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="2032" type="branch" />
            <wire x2="2576" y1="2032" y2="2032" x1="2560" />
        </branch>
        <instance x="2576" y="2160" name="XLXI_18(7:0)" orien="R0" />
        <instance x="1424" y="2080" name="XLXI_17(7:0)" orien="R0" />
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1904" type="branch" />
            <wire x2="1488" y1="1904" y2="1952" x1="1488" />
            <wire x2="1616" y1="1904" y2="1904" x1="1488" />
        </branch>
        <text style="fontsize:44;fontname:Arial" x="1256" y="68">Bloque bCalcConv: Calculo de la convolucion</text>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1248" type="branch" />
            <wire x2="2256" y1="1248" y2="1248" x1="2240" />
        </branch>
        <instance x="1824" y="960" name="XLXI_22" orien="R0">
        </instance>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1664" type="branch" />
            <wire x2="2464" y1="1664" y2="1664" x1="2448" />
        </branch>
    </sheet>
</drawing>