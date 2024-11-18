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
        <signal name="x_i(7:0)" />
        <signal name="acumular" />
        <signal name="inicializar" />
        <signal name="multiplicar" />
        <signal name="guardar" />
        <signal name="indice(2:0)" />
        <signal name="ventana(1:0)" />
        <signal name="res_parcl(7:0)" />
        <signal name="res_parc(13:6)" />
        <signal name="XLXN_2" />
        <signal name="acceder" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_31(7:0)" />
        <signal name="ceros(7:0)" />
        <signal name="c_i(7:0)" />
        <signal name="XLXN_85(7:0)" />
        <signal name="ceros(0)" />
        <signal name="ventana(1:0),indice(2:0)" />
        <signal name="XLXN_117(7:0)" />
        <signal name="xi_por_ci(15:0)" />
        <signal name="res_parc(18:0)" />
        <signal name="XLXN_125(7:0)" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Output" name="dat_sal(7:0)" />
        <port polarity="Output" name="dato_sal_sync" />
        <port polarity="Input" name="ventana(1:0)" />
        <blockdef name="bCalcX_i">
            <timestamp>2024-11-14T15:36:18</timestamp>
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-320" height="328" />
        </blockdef>
        <blockdef name="bIpMemory">
            <timestamp>2024-11-14T15:22:29</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
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
            <timestamp>2024-11-14T15:29:20</timestamp>
            <line x2="416" y1="352" y2="352" x1="352" />
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
            <rect width="288" x="64" y="-256" height="640" />
        </blockdef>
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
        <block symbolname="bCalcX_i" name="XLXI_2">
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_ent(7:0)" name="dato_ent(7:0)" />
            <blockpin signalname="indice(2:0)" name="indice(2:0)" />
            <blockpin signalname="x_i(7:0)" name="x_i(7:0)" />
            <blockpin signalname="acceder" name="acceder" />
        </block>
        <block symbolname="bIpMemory" name="XLXI_5">
            <blockpin signalname="ventana(1:0),indice(2:0)" name="addra(4:0)" />
            <blockpin signalname="ceros(7:0)" name="dina(7:0)" />
            <blockpin signalname="acceder" name="ena" />
            <blockpin signalname="ceros(0)" name="wea(0:0)" />
            <blockpin signalname="ck" name="clka" />
            <blockpin signalname="c_i(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="fsm_convol" name="XLXI_22">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="inicializar" name="inicializar" />
            <blockpin signalname="multiplicar" name="multiplicar" />
            <blockpin signalname="acumular" name="acumular" />
            <blockpin signalname="guardar" name="guardar" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
            <blockpin signalname="indice(2:0)" name="indice(2:0)" />
            <blockpin signalname="acceder" name="acceder" />
        </block>
        <block symbolname="biPAccumlator" name="XLXI_7">
            <blockpin signalname="xi_por_ci(15:0)" name="b(15:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="acumular" name="ce" />
            <blockpin signalname="inicializar" name="sinit" />
            <blockpin signalname="res_parc(18:0)" name="q(18:0)" />
        </block>
        <block symbolname="bIpMultiplier" name="XLXI_6">
            <blockpin signalname="x_i(7:0)" name="a(7:0)" />
            <blockpin signalname="c_i(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="multiplicar" name="ce" />
            <blockpin signalname="xi_por_ci(15:0)" name="p(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="784" type="branch" />
            <wire x2="1536" y1="768" y2="768" x1="688" />
            <wire x2="1536" y1="768" y2="784" x1="1536" />
            <wire x2="1536" y1="784" y2="1040" x1="1536" />
            <wire x2="1552" y1="1040" y2="1040" x1="1536" />
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
        <text style="fontsize:40;fontname:Arial" x="740" y="432">5. El registro a la salida del acumulador evita que los resultados parciales se vean fuera</text>
        <text style="fontsize:40;fontname:Arial" x="740" y="496">6. La maquina de estados genera las salidas que requiere el datapath</text>
        <instance x="2304" y="1936" name="XLXI_21(7:0)" orien="R0" />
        <branch name="res_parcl(7:0)">
            <wire x2="2576" y1="1904" y2="1904" x1="2528" />
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
        <text style="fontsize:44;fontname:Arial" x="1256" y="68">Bloque bCalcConv: Calculo de la convolucion</text>
        <instance x="336" y="2112" name="XLXI_17(7:0)" orien="R0" />
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1936" type="branch" />
            <wire x2="400" y1="1936" y2="1984" x1="400" />
            <wire x2="416" y1="1936" y2="1936" x1="400" />
        </branch>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1104" type="branch" />
            <wire x2="1456" y1="1104" y2="1104" x1="1392" />
            <wire x2="1552" y1="1104" y2="1104" x1="1456" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="768" type="branch" />
            <wire x2="304" y1="768" y2="768" x1="288" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="832" type="branch" />
            <wire x2="304" y1="832" y2="832" x1="288" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="896" type="branch" />
            <wire x2="288" y1="896" y2="896" x1="272" />
            <wire x2="304" y1="896" y2="896" x1="288" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="960" type="branch" />
            <wire x2="304" y1="960" y2="960" x1="288" />
        </branch>
        <instance x="304" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <branch name="acceder">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1168" type="branch" />
            <wire x2="816" y1="1168" y2="1168" x1="800" />
        </branch>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1136" type="branch" />
            <wire x2="816" y1="1136" y2="1136" x1="800" />
        </branch>
        <branch name="ceros(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1232" type="branch" />
            <wire x2="816" y1="1232" y2="1232" x1="800" />
        </branch>
        <branch name="ventana(1:0),indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1104" type="branch" />
            <wire x2="816" y1="1104" y2="1104" x1="800" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1296" type="branch" />
            <wire x2="816" y1="1296" y2="1296" x1="800" />
        </branch>
        <instance x="816" y="1024" name="XLXI_5" orien="R0">
        </instance>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1984" type="branch" />
            <wire x2="2048" y1="1984" y2="1984" x1="2032" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1728" type="branch" />
            <wire x2="2048" y1="1728" y2="1728" x1="2032" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1792" type="branch" />
            <wire x2="2048" y1="1792" y2="1792" x1="2032" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1920" type="branch" />
            <wire x2="1616" y1="1920" y2="1920" x1="1600" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1824" type="branch" />
            <wire x2="1616" y1="1824" y2="1824" x1="1600" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1728" type="branch" />
            <wire x2="1616" y1="1728" y2="1728" x1="1600" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2048" type="branch" />
            <wire x2="2048" y1="2048" y2="2048" x1="2032" />
        </branch>
        <branch name="guardar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2112" type="branch" />
            <wire x2="2048" y1="2112" y2="2112" x1="2032" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2240" type="branch" />
            <wire x2="2048" y1="2240" y2="2240" x1="2032" />
        </branch>
        <branch name="acceder">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="2304" type="branch" />
            <wire x2="2064" y1="2304" y2="2304" x1="2032" />
        </branch>
        <instance x="1616" y="1952" name="XLXI_22" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1200" type="branch" />
            <wire x2="1552" y1="1200" y2="1200" x1="1536" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1168" type="branch" />
            <wire x2="2304" y1="1168" y2="1168" x1="2288" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1072" type="branch" />
            <wire x2="2304" y1="1072" y2="1072" x1="2288" />
        </branch>
        <instance x="2304" y="960" name="XLXI_7" orien="R0">
        </instance>
        <branch name="xi_por_ci(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1040" type="branch" />
            <wire x2="2224" y1="1040" y2="1040" x1="2128" />
            <wire x2="2304" y1="1040" y2="1040" x1="2224" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1264" type="branch" />
            <wire x2="1552" y1="1264" y2="1264" x1="1536" />
        </branch>
        <instance x="1552" y="960" name="XLXI_6" orien="R0">
        </instance>
        <branch name="res_parc(18:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="1040" type="branch" />
            <wire x2="2624" y1="1040" y2="1040" x1="2592" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1296" type="branch" />
            <wire x2="2304" y1="1296" y2="1296" x1="2288" />
        </branch>
        <branch name="acceder">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1024" type="branch" />
            <wire x2="304" y1="1024" y2="1024" x1="288" />
        </branch>
    </sheet>
</drawing>