<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck" />
        <signal name="ce" />
        <signal name="sinc_reset" />
        <signal name="load" />
        <signal name="data(7:0)" />
        <signal name="ser_out_msb" />
        <signal name="q(6:0),cero" />
        <signal name="q(7:0)" />
        <signal name="cero" />
        <signal name="q(7)" />
        <signal name="XLXN_26(7:0)" />
        <signal name="ce_total" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="sinc_reset" />
        <port polarity="Input" name="load" />
        <port polarity="Input" name="data(7:0)" />
        <port polarity="Output" name="ser_out_msb" />
        <blockdef name="fdre">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
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
        <block symbolname="m2_1" name="XLXI_2(7:0)">
            <blockpin signalname="q(6:0),cero" name="D0" />
            <blockpin signalname="data(7:0)" name="D1" />
            <blockpin signalname="load" name="S0" />
            <blockpin signalname="XLXN_26(7:0)" name="O" />
        </block>
        <block symbolname="fdre" name="XLXI_1(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_total" name="CE" />
            <blockpin signalname="XLXN_26(7:0)" name="D" />
            <blockpin signalname="sinc_reset" name="R" />
            <blockpin signalname="q(7:0)" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="q(7)" name="I" />
            <blockpin signalname="ser_out_msb" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="load" name="I0" />
            <blockpin signalname="ce" name="I1" />
            <blockpin signalname="ce_total" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ck">
            <wire x2="560" y1="1776" y2="1776" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="1776" name="ck" orien="R180" />
        <branch name="sinc_reset">
            <wire x2="560" y1="1712" y2="1712" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="1712" name="sinc_reset" orien="R180" />
        <branch name="ce">
            <wire x2="560" y1="1648" y2="1648" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="1648" name="ce" orien="R180" />
        <branch name="load">
            <wire x2="560" y1="1584" y2="1584" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="1584" name="load" orien="R180" />
        <branch name="data(7:0)">
            <wire x2="560" y1="1520" y2="1520" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="1520" name="data(7:0)" orien="R180" />
        <branch name="ser_out_msb">
            <wire x2="864" y1="1776" y2="1776" x1="720" />
        </branch>
        <iomarker fontsize="28" x="864" y="1776" name="ser_out_msb" orien="R0" />
        <rect style="linestyle:Dash" width="2164" x="260" y="84" height="164" />
        <instance x="832" y="784" name="XLXI_2(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-52" type="instance" />
        </instance>
        <branch name="q(6:0),cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="624" type="branch" />
            <wire x2="704" y1="624" y2="624" x1="560" />
            <wire x2="832" y1="624" y2="624" x1="704" />
        </branch>
        <branch name="data(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="688" type="branch" />
            <wire x2="688" y1="688" y2="688" x1="560" />
            <wire x2="832" y1="688" y2="688" x1="688" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="752" type="branch" />
            <wire x2="688" y1="752" y2="752" x1="560" />
            <wire x2="832" y1="752" y2="752" x1="688" />
        </branch>
        <instance x="1600" y="912" name="XLXI_1(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-32" type="instance" />
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="784" type="branch" />
            <wire x2="1536" y1="784" y2="784" x1="1456" />
            <wire x2="1600" y1="784" y2="784" x1="1536" />
        </branch>
        <branch name="q(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="656" type="branch" />
            <wire x2="2128" y1="656" y2="656" x1="1984" />
            <wire x2="2256" y1="656" y2="656" x1="2128" />
        </branch>
        <instance x="288" y="816" name="XLXI_10" orien="R0" />
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="608" type="branch" />
            <wire x2="272" y1="608" y2="608" x1="192" />
            <wire x2="352" y1="608" y2="608" x1="272" />
            <wire x2="352" y1="608" y2="688" x1="352" />
        </branch>
        <branch name="q(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1152" type="branch" />
            <wire x2="1632" y1="1152" y2="1152" x1="1488" />
            <wire x2="1696" y1="1152" y2="1152" x1="1632" />
        </branch>
        <instance x="1696" y="1184" name="XLXI_6" orien="R0" />
        <branch name="ser_out_msb">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1152" type="branch" />
            <wire x2="2000" y1="1152" y2="1152" x1="1920" />
            <wire x2="2128" y1="1152" y2="1152" x1="2000" />
        </branch>
        <branch name="XLXN_26(7:0)">
            <wire x2="1600" y1="656" y2="656" x1="1152" />
        </branch>
        <branch name="ce_total">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="720" type="branch" />
            <wire x2="1552" y1="720" y2="720" x1="1456" />
            <wire x2="1600" y1="720" y2="720" x1="1552" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="896" type="branch" />
            <wire x2="704" y1="896" y2="896" x1="560" />
            <wire x2="784" y1="896" y2="896" x1="704" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="960" type="branch" />
            <wire x2="704" y1="960" y2="960" x1="560" />
            <wire x2="784" y1="960" y2="960" x1="704" />
        </branch>
        <branch name="ce_total">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="928" type="branch" />
            <wire x2="1120" y1="928" y2="928" x1="1040" />
            <wire x2="1216" y1="928" y2="928" x1="1120" />
        </branch>
        <instance x="784" y="1024" name="XLXI_19" orien="R0" />
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="880" type="branch" />
            <wire x2="1536" y1="880" y2="880" x1="1456" />
            <wire x2="1600" y1="880" y2="880" x1="1536" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="344" y="164">Registro de desplazamiento carga paralelo-salida serie de 8 bits (primero MSB)</text>
        <text style="fontsize:56;fontname:Arial" x="2204" y="340">regdesp8b.sch</text>
    </sheet>
</drawing>