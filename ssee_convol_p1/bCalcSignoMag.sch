<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="dato_sal(7:0)" />
        <signal name="signo_sal" />
        <signal name="dato_sal_pos_sync" />
        <signal name="dato_sal_pos(7:0)" />
        <signal name="ceros(7:0)" />
        <signal name="ck" />
        <signal name="dato_sal_sync" />
        <signal name="dato_sal(7)" />
        <signal name="XLXN_5" />
        <port polarity="Input" name="dato_sal(7:0)" />
        <port polarity="Output" name="signo_sal" />
        <port polarity="Output" name="dato_sal_pos_sync" />
        <port polarity="Output" name="dato_sal_pos(7:0)" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_sal_sync" />
        <blockdef name="bIpSumador">
            <timestamp>2024-11-4T12:49:21</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="256" y1="112" y2="112" style="linewidth:W" x1="288" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_sal_sync" name="D" />
            <blockpin signalname="dato_sal_pos_sync" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_sal_sync" name="CE" />
            <blockpin signalname="dato_sal(7)" name="D" />
            <blockpin signalname="signo_sal" name="Q" />
        </block>
        <block symbolname="bIpSumador" name="XLXI_2">
            <blockpin signalname="ceros(7:0)" name="a(7:0)" />
            <blockpin signalname="dato_sal(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="XLXN_5" name="add" />
            <blockpin signalname="dato_sal_sync" name="ce" />
            <blockpin signalname="dato_sal_pos(7:0)" name="s(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="dato_sal(7)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_5(7:0)">
            <blockpin signalname="ceros(7:0)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <text style="fontsize:44;fontname:Arial" x="424" y="240">Entradas</text>
        <text style="fontsize:44;fontname:Arial" x="3256" y="240">Salidas</text>
        <rect width="3196" x="316" y="180" height="452" />
        <rect width="2216" x="848" y="184" height="440" />
        <text style="fontsize:40;fontname:Arial" x="888" y="240">1. El valor absoluto depende del signo en dato_sal(7)</text>
        <branch name="dato_sal_pos(7:0)">
            <wire x2="3200" y1="352" y2="352" x1="3152" />
        </branch>
        <branch name="dato_sal_pos_sync">
            <wire x2="3200" y1="432" y2="432" x1="3152" />
        </branch>
        <branch name="signo_sal">
            <wire x2="3200" y1="512" y2="512" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3200" y="352" name="dato_sal_pos(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="432" name="dato_sal_pos_sync" orien="R0" />
        <iomarker fontsize="28" x="3200" y="512" name="signo_sal" orien="R0" />
        <branch name="dato_sal_sync">
            <wire x2="688" y1="448" y2="448" x1="656" />
        </branch>
        <branch name="ck">
            <wire x2="688" y1="512" y2="512" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="448" name="dato_sal_sync" orien="R180" />
        <iomarker fontsize="28" x="656" y="512" name="ck" orien="R180" />
        <branch name="dato_sal(7:0)">
            <wire x2="688" y1="368" y2="368" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="368" name="dato_sal(7:0)" orien="R180" />
        <text style="fontsize:44;fontname:Arial" x="1220" y="120">Bloque bCalcSignoMag: Calculo del valor absoluto y el signo del resultado</text>
        <text style="fontsize:40;fontname:Arial" x="932" y="356">1b. Si es uno, el valor es negativo y se resta cero menos el valor</text>
        <text style="fontsize:40;fontname:Arial" x="932" y="304">1a. Si es cero, el valor es positivo y se suma cero mas el valor</text>
        <text style="fontsize:40;fontname:Arial" x="884" y="412">2. La senal ADD es uno para sumar, por lo que hay que invertir el bit de signo</text>
        <text style="fontsize:40;fontname:Arial" x="880" y="480">3. El signo de salida se guarda en un biestable controlado por CE</text>
        <text style="fontsize:40;fontname:Arial" x="880" y="544">4. El pulso de salida se genera con un biestable que restrasa un ciclo el pulso de entrada</text>
        <branch name="dato_sal(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="944" type="branch" />
            <wire x2="2208" y1="944" y2="944" x1="2160" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1008" type="branch" />
            <wire x2="2208" y1="1008" y2="1008" x1="2160" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1072" type="branch" />
            <wire x2="2208" y1="1072" y2="1072" x1="2160" />
        </branch>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="944" type="branch" />
            <wire x2="2640" y1="944" y2="944" x1="2592" />
        </branch>
        <instance x="2208" y="1552" name="XLXI_6" orien="R0" />
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1296" type="branch" />
            <wire x2="2208" y1="1296" y2="1296" x1="2144" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1424" type="branch" />
            <wire x2="2208" y1="1424" y2="1424" x1="2128" />
        </branch>
        <branch name="dato_sal_pos_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1296" type="branch" />
            <wire x2="2688" y1="1296" y2="1296" x1="2592" />
        </branch>
        <instance x="2208" y="1200" name="XLXI_4" orien="R0" />
        <instance x="1280" y="816" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="896" type="branch" />
            <wire x2="1216" y1="896" y2="896" x1="1200" />
            <wire x2="1280" y1="896" y2="896" x1="1216" />
        </branch>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="928" type="branch" />
            <wire x2="1216" y1="928" y2="928" x1="1200" />
            <wire x2="1280" y1="928" y2="928" x1="1216" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="960" type="branch" />
            <wire x2="1216" y1="960" y2="960" x1="1200" />
            <wire x2="1280" y1="960" y2="960" x1="1216" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1056" type="branch" />
            <wire x2="1216" y1="1056" y2="1056" x1="1200" />
            <wire x2="1280" y1="1056" y2="1056" x1="1216" />
        </branch>
        <branch name="dato_sal_pos(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="928" type="branch" />
            <wire x2="1664" y1="928" y2="928" x1="1568" />
            <wire x2="1680" y1="928" y2="928" x1="1664" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1280" y1="992" y2="992" x1="1136" />
        </branch>
        <instance x="912" y="1024" name="XLXI_7" orien="R0" />
        <branch name="dato_sal(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="992" type="branch" />
            <wire x2="912" y1="992" y2="992" x1="896" />
        </branch>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="976" type="branch" />
            <wire x2="576" y1="976" y2="976" x1="480" />
            <wire x2="480" y1="976" y2="1104" x1="480" />
        </branch>
        <instance x="416" y="1232" name="XLXI_5(7:0)" orien="R0" />
    </sheet>
</drawing>