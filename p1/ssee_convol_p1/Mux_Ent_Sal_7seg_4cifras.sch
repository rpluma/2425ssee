<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="punto_decimal(4:1)" />
        <signal name="conmuta_salida" />
        <signal name="cent_ent(3:0)" />
        <signal name="dec_ent(3:0)" />
        <signal name="conmuta_entrada" />
        <signal name="ck" />
        <signal name="XLXN_130" />
        <signal name="XLXN_132" />
        <signal name="entZ_sal" />
        <signal name="unid_ent(3:0)" />
        <signal name="cero" />
        <signal name="punto_decimal(1)" />
        <signal name="punto_decimal(2)" />
        <signal name="punto_decimal(3)" />
        <signal name="punto_decimal(4)" />
        <signal name="mill_ent(3:0)" />
        <signal name="unid_sal(3:0)" />
        <signal name="dec_sal(3:0)" />
        <signal name="cent_sal(3:0)" />
        <signal name="mill_sal(3:0)" />
        <signal name="unid(3:0)" />
        <signal name="dec(3:0)" />
        <signal name="cent(3:0)" />
        <signal name="mill(3:0)" />
        <signal name="signo_sal" />
        <signal name="signo_sal_def" />
        <port polarity="Output" name="punto_decimal(4:1)" />
        <port polarity="Input" name="conmuta_salida" />
        <port polarity="Input" name="cent_ent(3:0)" />
        <port polarity="Input" name="dec_ent(3:0)" />
        <port polarity="Input" name="conmuta_entrada" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="entZ_sal" />
        <port polarity="Input" name="unid_ent(3:0)" />
        <port polarity="Input" name="mill_ent(3:0)" />
        <port polarity="Input" name="unid_sal(3:0)" />
        <port polarity="Input" name="dec_sal(3:0)" />
        <port polarity="Input" name="cent_sal(3:0)" />
        <port polarity="Input" name="mill_sal(3:0)" />
        <port polarity="Output" name="unid(3:0)" />
        <port polarity="Output" name="dec(3:0)" />
        <port polarity="Output" name="cent(3:0)" />
        <port polarity="Output" name="mill(3:0)" />
        <port polarity="Input" name="signo_sal" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_130" name="G" />
        </block>
        <block symbolname="fdce" name="XLXI_5">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_132" name="CE" />
            <blockpin signalname="XLXN_130" name="CLR" />
            <blockpin signalname="conmuta_salida" name="D" />
            <blockpin signalname="entZ_sal" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="conmuta_salida" name="I0" />
            <blockpin signalname="conmuta_entrada" name="I1" />
            <blockpin signalname="XLXN_132" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_27">
            <blockpin signalname="signo_sal_def" name="I" />
            <blockpin signalname="punto_decimal(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_28">
            <blockpin signalname="signo_sal_def" name="I" />
            <blockpin signalname="punto_decimal(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="signo_sal_def" name="I" />
            <blockpin signalname="punto_decimal(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="signo_sal_def" name="I" />
            <blockpin signalname="punto_decimal(4)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_16(3:0)">
            <blockpin signalname="cent_ent(3:0)" name="D0" />
            <blockpin signalname="cent_sal(3:0)" name="D1" />
            <blockpin signalname="entZ_sal" name="S0" />
            <blockpin signalname="cent(3:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_17(3:0)">
            <blockpin signalname="mill_ent(3:0)" name="D0" />
            <blockpin signalname="mill_sal(3:0)" name="D1" />
            <blockpin signalname="entZ_sal" name="S0" />
            <blockpin signalname="mill(3:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_14(3:0)">
            <blockpin signalname="dec_ent(3:0)" name="D0" />
            <blockpin signalname="dec_sal(3:0)" name="D1" />
            <blockpin signalname="entZ_sal" name="S0" />
            <blockpin signalname="dec(3:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_15(3:0)">
            <blockpin signalname="unid_ent(3:0)" name="D0" />
            <blockpin signalname="unid_sal(3:0)" name="D1" />
            <blockpin signalname="entZ_sal" name="S0" />
            <blockpin signalname="unid(3:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_31">
            <blockpin signalname="cero" name="D0" />
            <blockpin signalname="signo_sal" name="D1" />
            <blockpin signalname="entZ_sal" name="S0" />
            <blockpin signalname="signo_sal_def" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="punto_decimal(4:1)">
            <wire x2="1504" y1="2576" y2="2576" x1="1264" />
        </branch>
        <branch name="conmuta_salida">
            <wire x2="848" y1="2320" y2="2320" x1="576" />
        </branch>
        <branch name="mill(3:0)">
            <wire x2="1504" y1="2512" y2="2512" x1="1264" />
        </branch>
        <branch name="cent(3:0)">
            <wire x2="1504" y1="2448" y2="2448" x1="1264" />
        </branch>
        <branch name="dec(3:0)">
            <wire x2="1504" y1="2384" y2="2384" x1="1264" />
        </branch>
        <branch name="unid(3:0)">
            <wire x2="1504" y1="2320" y2="2320" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1504" y="2576" name="punto_decimal(4:1)" orien="R0" />
        <iomarker fontsize="28" x="576" y="2320" name="conmuta_salida" orien="R180" />
        <iomarker fontsize="28" x="1504" y="2512" name="mill(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="2448" name="cent(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="2384" name="dec(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="2320" name="unid(3:0)" orien="R0" />
        <rect style="linestyle:Dash" width="2504" x="644" y="80" height="152" />
        <text style="fontsize:40;fontname:Arial" x="1004" y="160">Multiplexacion entre los datos tecleados a la entrada y los resultados de salida hacia los 7 segmentos</text>
        <instance x="752" y="1088" name="XLXI_2" orien="R0" />
        <branch name="XLXN_130">
            <wire x2="960" y1="912" y2="912" x1="816" />
            <wire x2="816" y1="912" y2="960" x1="816" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="816" type="branch" />
            <wire x2="896" y1="816" y2="816" x1="768" />
            <wire x2="960" y1="816" y2="816" x1="896" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="960" y1="752" y2="752" x1="768" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="688" type="branch" />
            <wire x2="1456" y1="688" y2="688" x1="1344" />
            <wire x2="1584" y1="688" y2="688" x1="1456" />
        </branch>
        <instance x="960" y="944" name="XLXI_5" orien="R0" />
        <instance x="512" y="848" name="XLXI_6" orien="R0" />
        <branch name="conmuta_entrada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="720" type="branch" />
            <wire x2="384" y1="720" y2="720" x1="240" />
            <wire x2="512" y1="720" y2="720" x1="384" />
        </branch>
        <branch name="conmuta_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="784" type="branch" />
            <wire x2="384" y1="784" y2="784" x1="240" />
            <wire x2="512" y1="784" y2="784" x1="384" />
        </branch>
        <branch name="conmuta_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="624" type="branch" />
            <wire x2="384" y1="624" y2="624" x1="240" />
            <wire x2="832" y1="624" y2="624" x1="384" />
            <wire x2="832" y1="624" y2="688" x1="832" />
            <wire x2="960" y1="688" y2="688" x1="832" />
        </branch>
        <instance x="2192" y="2544" name="XLXI_26" orien="R0" />
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2368" type="branch" />
            <wire x2="2192" y1="2368" y2="2368" x1="2128" />
            <wire x2="2256" y1="2368" y2="2368" x1="2192" />
            <wire x2="2256" y1="2368" y2="2416" x1="2256" />
        </branch>
        <rect style="linestyle:Dash" width="1796" x="116" y="344" height="788" />
        <text style="fontsize:40;fontname:Arial" x="220" y="416">Generacion de la senal 'entZ_sal' que nos indica el tipo de dato (de la entrada o de la salida)</text>
        <text style="fontsize:40;fontname:Arial" x="624" y="476">a mostrar en los diaplays de 7 segmentos</text>
        <rect style="linestyle:Dash" width="1796" x="116" y="1192" height="676" />
        <instance x="928" y="1488" name="XLXI_27" orien="R0" />
        <branch name="signo_sal_def">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1456" type="branch" />
            <wire x2="800" y1="1456" y2="1456" x1="608" />
            <wire x2="928" y1="1456" y2="1456" x1="800" />
        </branch>
        <branch name="punto_decimal(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1456" type="branch" />
            <wire x2="1264" y1="1456" y2="1456" x1="1152" />
            <wire x2="1456" y1="1456" y2="1456" x1="1264" />
        </branch>
        <instance x="928" y="1600" name="XLXI_28" orien="R0" />
        <branch name="punto_decimal(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1568" type="branch" />
            <wire x2="1264" y1="1568" y2="1568" x1="1152" />
            <wire x2="1456" y1="1568" y2="1568" x1="1264" />
        </branch>
        <instance x="928" y="1712" name="XLXI_29" orien="R0" />
        <branch name="signo_sal_def">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1680" type="branch" />
            <wire x2="800" y1="1680" y2="1680" x1="608" />
            <wire x2="928" y1="1680" y2="1680" x1="800" />
        </branch>
        <branch name="punto_decimal(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1680" type="branch" />
            <wire x2="1264" y1="1680" y2="1680" x1="1152" />
            <wire x2="1456" y1="1680" y2="1680" x1="1264" />
        </branch>
        <instance x="928" y="1824" name="XLXI_30" orien="R0" />
        <branch name="signo_sal_def">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1792" type="branch" />
            <wire x2="800" y1="1792" y2="1792" x1="608" />
            <wire x2="928" y1="1792" y2="1792" x1="800" />
        </branch>
        <branch name="punto_decimal(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1792" type="branch" />
            <wire x2="1264" y1="1792" y2="1792" x1="1152" />
            <wire x2="1456" y1="1792" y2="1792" x1="1264" />
        </branch>
        <branch name="signo_sal_def">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1568" type="branch" />
            <wire x2="800" y1="1568" y2="1568" x1="608" />
            <wire x2="928" y1="1568" y2="1568" x1="800" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="220" y="1248">Generacion del punto decimal (ninguno en fase de entrada de datos, 1 decimal en salida)</text>
        <rect style="linestyle:Dash" width="1680" x="1972" y="344" height="1900" />
        <instance x="2624" y="1472" name="XLXI_16(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-52" type="instance" />
        </instance>
        <branch name="cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1344" type="branch" />
            <wire x2="3104" y1="1344" y2="1344" x1="2944" />
            <wire x2="3232" y1="1344" y2="1344" x1="3104" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1440" type="branch" />
            <wire x2="2480" y1="1440" y2="1440" x1="2336" />
            <wire x2="2624" y1="1440" y2="1440" x1="2480" />
        </branch>
        <branch name="cent_sal(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1376" type="branch" />
            <wire x2="2480" y1="1376" y2="1376" x1="2336" />
            <wire x2="2624" y1="1376" y2="1376" x1="2480" />
        </branch>
        <branch name="cent_ent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1312" type="branch" />
            <wire x2="2480" y1="1312" y2="1312" x1="2336" />
            <wire x2="2624" y1="1312" y2="1312" x1="2480" />
        </branch>
        <instance x="2624" y="1792" name="XLXI_17(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-52" type="instance" />
        </instance>
        <branch name="mill(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1664" type="branch" />
            <wire x2="3104" y1="1664" y2="1664" x1="2944" />
            <wire x2="3232" y1="1664" y2="1664" x1="3104" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1760" type="branch" />
            <wire x2="2480" y1="1760" y2="1760" x1="2336" />
            <wire x2="2624" y1="1760" y2="1760" x1="2480" />
        </branch>
        <branch name="mill_sal(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1696" type="branch" />
            <wire x2="2480" y1="1696" y2="1696" x1="2336" />
            <wire x2="2624" y1="1696" y2="1696" x1="2480" />
        </branch>
        <branch name="mill_ent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1632" type="branch" />
            <wire x2="2480" y1="1632" y2="1632" x1="2336" />
            <wire x2="2624" y1="1632" y2="1632" x1="2480" />
        </branch>
        <instance x="2624" y="1152" name="XLXI_14(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-52" type="instance" />
        </instance>
        <branch name="dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1024" type="branch" />
            <wire x2="3104" y1="1024" y2="1024" x1="2944" />
            <wire x2="3232" y1="1024" y2="1024" x1="3104" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1120" type="branch" />
            <wire x2="2480" y1="1120" y2="1120" x1="2336" />
            <wire x2="2624" y1="1120" y2="1120" x1="2480" />
        </branch>
        <instance x="2624" y="832" name="XLXI_15(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-52" type="instance" />
        </instance>
        <branch name="unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="704" type="branch" />
            <wire x2="3104" y1="704" y2="704" x1="2944" />
            <wire x2="3232" y1="704" y2="704" x1="3104" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="800" type="branch" />
            <wire x2="2480" y1="800" y2="800" x1="2336" />
            <wire x2="2624" y1="800" y2="800" x1="2480" />
        </branch>
        <branch name="unid_sal(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="736" type="branch" />
            <wire x2="2480" y1="736" y2="736" x1="2336" />
            <wire x2="2624" y1="736" y2="736" x1="2480" />
        </branch>
        <branch name="unid_ent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="672" type="branch" />
            <wire x2="2480" y1="672" y2="672" x1="2336" />
            <wire x2="2624" y1="672" y2="672" x1="2480" />
        </branch>
        <branch name="dec_sal(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1056" type="branch" />
            <wire x2="2480" y1="1056" y2="1056" x1="2336" />
            <wire x2="2624" y1="1056" y2="1056" x1="2480" />
        </branch>
        <branch name="dec_ent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="992" type="branch" />
            <wire x2="2480" y1="992" y2="992" x1="2336" />
            <wire x2="2624" y1="992" y2="992" x1="2480" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="2044" y="416">Multiplexacion de los displays de 7 segmentos (datos de entrada o salida)</text>
        <branch name="entZ_sal">
            <wire x2="1504" y1="2256" y2="2256" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1504" y="2256" name="entZ_sal" orien="R0" />
        <branch name="cent_ent(3:0)">
            <wire x2="848" y1="2192" y2="2192" x1="576" />
        </branch>
        <branch name="dec_ent(3:0)">
            <wire x2="848" y1="2128" y2="2128" x1="576" />
        </branch>
        <branch name="unid_ent(3:0)">
            <wire x2="848" y1="2064" y2="2064" x1="576" />
        </branch>
        <branch name="conmuta_entrada">
            <wire x2="848" y1="2000" y2="2000" x1="576" />
        </branch>
        <branch name="ck">
            <wire x2="848" y1="1936" y2="1936" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="2192" name="cent_ent(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2128" name="dec_ent(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2064" name="unid_ent(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2000" name="conmuta_entrada" orien="R180" />
        <iomarker fontsize="28" x="576" y="1936" name="ck" orien="R180" />
        <branch name="mill_ent(3:0)">
            <wire x2="848" y1="2256" y2="2256" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="2256" name="mill_ent(3:0)" orien="R180" />
        <branch name="cent_sal(3:0)">
            <wire x2="848" y1="2512" y2="2512" x1="576" />
        </branch>
        <branch name="dec_sal(3:0)">
            <wire x2="848" y1="2448" y2="2448" x1="576" />
        </branch>
        <branch name="unid_sal(3:0)">
            <wire x2="848" y1="2384" y2="2384" x1="576" />
        </branch>
        <branch name="mill_sal(3:0)">
            <wire x2="848" y1="2576" y2="2576" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="2512" name="cent_sal(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2448" name="dec_sal(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2384" name="unid_sal(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="2576" name="mill_sal(3:0)" orien="R180" />
        <branch name="signo_sal">
            <wire x2="848" y1="2640" y2="2640" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="2640" name="signo_sal" orien="R180" />
        <instance x="2624" y="2112" name="XLXI_31" orien="R0" />
        <branch name="signo_sal_def">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1984" type="branch" />
            <wire x2="3104" y1="1984" y2="1984" x1="2944" />
            <wire x2="3232" y1="1984" y2="1984" x1="3104" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2080" type="branch" />
            <wire x2="2480" y1="2080" y2="2080" x1="2336" />
            <wire x2="2624" y1="2080" y2="2080" x1="2480" />
        </branch>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2016" type="branch" />
            <wire x2="2480" y1="2016" y2="2016" x1="2336" />
            <wire x2="2624" y1="2016" y2="2016" x1="2480" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1952" type="branch" />
            <wire x2="2480" y1="1952" y2="1952" x1="2336" />
            <wire x2="2624" y1="1952" y2="1952" x1="2480" />
        </branch>
    </sheet>
</drawing>