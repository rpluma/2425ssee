<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="tecla(0)" />
        <signal name="codigo_tecla(3:0)" />
        <signal name="tecla_pulsada" />
        <signal name="ck_teclado" />
        <signal name="ce_tecla_pulsada" />
        <signal name="tecla_codif0" />
        <signal name="tecla_codif1" />
        <signal name="tecla_codif2" />
        <signal name="tecla_codif3" />
        <signal name="codigo_tecla(3)" />
        <signal name="codigo_tecla(2)" />
        <signal name="codigo_tecla(1)" />
        <signal name="codigo_tecla(0)" />
        <signal name="XLXN_141" />
        <signal name="XLXN_209" />
        <signal name="XLXN_210" />
        <signal name="tecla_pulsada_nivel" />
        <signal name="tecla(1)" />
        <signal name="tecla(2)" />
        <signal name="tecla(3)" />
        <signal name="tecla(4)" />
        <signal name="tecla(5)" />
        <signal name="tecla(6)" />
        <signal name="tecla(7)" />
        <signal name="tecla(8)" />
        <signal name="tecla(9)" />
        <signal name="tecla(10)" />
        <signal name="tecla(11)" />
        <signal name="tecla(12)" />
        <signal name="tecla(13)" />
        <signal name="tecla(14)" />
        <signal name="tecla(15)" />
        <signal name="tecla(15:0)" />
        <port polarity="Input" name="tecla(0)" />
        <port polarity="Output" name="codigo_tecla(3:0)" />
        <port polarity="Output" name="tecla_pulsada" />
        <port polarity="Input" name="ck_teclado" />
        <port polarity="Input" name="tecla(15:0)" />
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <blockdef name="fd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="nivel_a_pulso">
            <timestamp>2016-10-8T17:30:25</timestamp>
            <rect width="256" x="64" y="-128" height="136" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_141" name="G" />
        </block>
        <block symbolname="fd" name="XLXI_12">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="ce_tecla_pulsada" name="D" />
            <blockpin signalname="tecla_pulsada" name="Q" />
        </block>
        <block symbolname="fd4ce" name="XLXI_10">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="ce_tecla_pulsada" name="CE" />
            <blockpin signalname="XLXN_141" name="CLR" />
            <blockpin signalname="tecla_codif0" name="D0" />
            <blockpin signalname="tecla_codif1" name="D1" />
            <blockpin signalname="tecla_codif2" name="D2" />
            <blockpin signalname="tecla_codif3" name="D3" />
            <blockpin signalname="codigo_tecla(0)" name="Q0" />
            <blockpin signalname="codigo_tecla(1)" name="Q1" />
            <blockpin signalname="codigo_tecla(2)" name="Q2" />
            <blockpin signalname="codigo_tecla(3)" name="Q3" />
        </block>
        <block symbolname="or8" name="XLXI_1">
            <blockpin signalname="tecla(15)" name="I0" />
            <blockpin signalname="tecla(14)" name="I1" />
            <blockpin signalname="tecla(13)" name="I2" />
            <blockpin signalname="tecla(12)" name="I3" />
            <blockpin signalname="tecla(11)" name="I4" />
            <blockpin signalname="tecla(10)" name="I5" />
            <blockpin signalname="tecla(9)" name="I6" />
            <blockpin signalname="tecla(8)" name="I7" />
            <blockpin signalname="tecla_codif3" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_3">
            <blockpin signalname="tecla(15)" name="I0" />
            <blockpin signalname="tecla(14)" name="I1" />
            <blockpin signalname="tecla(11)" name="I2" />
            <blockpin signalname="tecla(10)" name="I3" />
            <blockpin signalname="tecla(7)" name="I4" />
            <blockpin signalname="tecla(6)" name="I5" />
            <blockpin signalname="tecla(3)" name="I6" />
            <blockpin signalname="tecla(2)" name="I7" />
            <blockpin signalname="tecla_codif1" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_4">
            <blockpin signalname="tecla(15)" name="I0" />
            <blockpin signalname="tecla(14)" name="I1" />
            <blockpin signalname="tecla(13)" name="I2" />
            <blockpin signalname="tecla(12)" name="I3" />
            <blockpin signalname="tecla(7)" name="I4" />
            <blockpin signalname="tecla(6)" name="I5" />
            <blockpin signalname="tecla(5)" name="I6" />
            <blockpin signalname="tecla(4)" name="I7" />
            <blockpin signalname="tecla_codif2" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_5">
            <blockpin signalname="tecla(15)" name="I0" />
            <blockpin signalname="tecla(13)" name="I1" />
            <blockpin signalname="tecla(11)" name="I2" />
            <blockpin signalname="tecla(9)" name="I3" />
            <blockpin signalname="tecla(7)" name="I4" />
            <blockpin signalname="tecla(5)" name="I5" />
            <blockpin signalname="tecla(3)" name="I6" />
            <blockpin signalname="tecla(1)" name="I7" />
            <blockpin signalname="tecla_codif0" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_13">
            <blockpin signalname="tecla(7)" name="I0" />
            <blockpin signalname="tecla(6)" name="I1" />
            <blockpin signalname="tecla(5)" name="I2" />
            <blockpin signalname="tecla(4)" name="I3" />
            <blockpin signalname="tecla(3)" name="I4" />
            <blockpin signalname="tecla(2)" name="I5" />
            <blockpin signalname="tecla(1)" name="I6" />
            <blockpin signalname="tecla(0)" name="I7" />
            <blockpin signalname="XLXN_209" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_14">
            <blockpin signalname="tecla(15)" name="I0" />
            <blockpin signalname="tecla(14)" name="I1" />
            <blockpin signalname="tecla(13)" name="I2" />
            <blockpin signalname="tecla(12)" name="I3" />
            <blockpin signalname="tecla(11)" name="I4" />
            <blockpin signalname="tecla(10)" name="I5" />
            <blockpin signalname="tecla(9)" name="I6" />
            <blockpin signalname="tecla(8)" name="I7" />
            <blockpin signalname="XLXN_210" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_210" name="I0" />
            <blockpin signalname="XLXN_209" name="I1" />
            <blockpin signalname="tecla_pulsada_nivel" name="O" />
        </block>
        <block symbolname="nivel_a_pulso" name="XLXI_41">
            <blockpin signalname="ce_tecla_pulsada" name="salida" />
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="tecla_pulsada_nivel" name="entrada" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="codigo_tecla(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="2576" type="branch" />
            <wire x2="944" y1="2576" y2="2576" x1="784" />
            <wire x2="1088" y1="2576" y2="2576" x1="944" />
        </branch>
        <iomarker fontsize="28" x="1088" y="2576" name="codigo_tecla(3:0)" orien="R0" />
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="2496" type="branch" />
            <wire x2="944" y1="2496" y2="2496" x1="784" />
            <wire x2="1088" y1="2496" y2="2496" x1="944" />
        </branch>
        <iomarker fontsize="28" x="1088" y="2496" name="tecla_pulsada" orien="R0" />
        <instance x="1520" y="2336" name="XLXI_11" orien="R0" />
        <branch name="codigo_tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1888" type="branch" />
            <wire x2="2176" y1="1888" y2="1888" x1="2048" />
            <wire x2="2288" y1="1888" y2="1888" x1="2176" />
        </branch>
        <branch name="codigo_tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1824" type="branch" />
            <wire x2="2176" y1="1824" y2="1824" x1="2048" />
            <wire x2="2288" y1="1824" y2="1824" x1="2176" />
        </branch>
        <branch name="codigo_tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1760" type="branch" />
            <wire x2="2176" y1="1760" y2="1760" x1="2048" />
            <wire x2="2288" y1="1760" y2="1760" x1="2176" />
        </branch>
        <branch name="codigo_tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1696" type="branch" />
            <wire x2="2176" y1="1696" y2="1696" x1="2048" />
            <wire x2="2288" y1="1696" y2="1696" x1="2176" />
        </branch>
        <instance x="2800" y="1968" name="XLXI_12" orien="R0" />
        <branch name="ce_tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1712" type="branch" />
            <wire x2="2688" y1="1712" y2="1712" x1="2560" />
            <wire x2="2800" y1="1712" y2="1712" x1="2688" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1840" type="branch" />
            <wire x2="2688" y1="1840" y2="1840" x1="2560" />
            <wire x2="2800" y1="1840" y2="1840" x1="2688" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3312" y="1712" type="branch" />
            <wire x2="3312" y1="1712" y2="1712" x1="3184" />
            <wire x2="3424" y1="1712" y2="1712" x1="3312" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="1584" y1="2112" y2="2192" x1="1584" />
            <wire x2="1584" y1="2192" y2="2208" x1="1584" />
            <wire x2="1664" y1="2112" y2="2112" x1="1584" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="2016" type="branch" />
            <wire x2="1552" y1="2016" y2="2016" x1="1424" />
            <wire x2="1664" y1="2016" y2="2016" x1="1552" />
        </branch>
        <branch name="ce_tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1952" type="branch" />
            <wire x2="1552" y1="1952" y2="1952" x1="1424" />
            <wire x2="1664" y1="1952" y2="1952" x1="1552" />
        </branch>
        <branch name="tecla_codif3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1888" type="branch" />
            <wire x2="1552" y1="1888" y2="1888" x1="1424" />
            <wire x2="1664" y1="1888" y2="1888" x1="1552" />
        </branch>
        <branch name="tecla_codif2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1824" type="branch" />
            <wire x2="1552" y1="1824" y2="1824" x1="1424" />
            <wire x2="1664" y1="1824" y2="1824" x1="1552" />
        </branch>
        <branch name="tecla_codif1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1760" type="branch" />
            <wire x2="1552" y1="1760" y2="1760" x1="1424" />
            <wire x2="1664" y1="1760" y2="1760" x1="1552" />
        </branch>
        <branch name="tecla_codif0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1696" type="branch" />
            <wire x2="1552" y1="1696" y2="1696" x1="1424" />
            <wire x2="1664" y1="1696" y2="1696" x1="1552" />
        </branch>
        <instance x="1664" y="2144" name="XLXI_10" orien="R0" />
        <instance x="352" y="848" name="XLXI_1" orien="R0" />
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="784" type="branch" />
            <wire x2="240" y1="784" y2="784" x1="112" />
            <wire x2="352" y1="784" y2="784" x1="240" />
        </branch>
        <branch name="tecla(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="720" type="branch" />
            <wire x2="240" y1="720" y2="720" x1="112" />
            <wire x2="352" y1="720" y2="720" x1="240" />
        </branch>
        <branch name="tecla(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="656" type="branch" />
            <wire x2="240" y1="656" y2="656" x1="112" />
            <wire x2="352" y1="656" y2="656" x1="240" />
        </branch>
        <branch name="tecla(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="592" type="branch" />
            <wire x2="240" y1="592" y2="592" x1="112" />
            <wire x2="352" y1="592" y2="592" x1="240" />
        </branch>
        <branch name="tecla(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="528" type="branch" />
            <wire x2="240" y1="528" y2="528" x1="112" />
            <wire x2="352" y1="528" y2="528" x1="240" />
        </branch>
        <branch name="tecla(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="464" type="branch" />
            <wire x2="240" y1="464" y2="464" x1="112" />
            <wire x2="352" y1="464" y2="464" x1="240" />
        </branch>
        <branch name="tecla(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="400" type="branch" />
            <wire x2="240" y1="400" y2="400" x1="112" />
            <wire x2="352" y1="400" y2="400" x1="240" />
        </branch>
        <branch name="tecla(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="336" type="branch" />
            <wire x2="240" y1="336" y2="336" x1="112" />
            <wire x2="352" y1="336" y2="336" x1="240" />
        </branch>
        <instance x="352" y="1488" name="XLXI_3" orien="R0" />
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1424" type="branch" />
            <wire x2="240" y1="1424" y2="1424" x1="112" />
            <wire x2="352" y1="1424" y2="1424" x1="240" />
        </branch>
        <branch name="tecla(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1360" type="branch" />
            <wire x2="240" y1="1360" y2="1360" x1="112" />
            <wire x2="352" y1="1360" y2="1360" x1="240" />
        </branch>
        <branch name="tecla(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1296" type="branch" />
            <wire x2="240" y1="1296" y2="1296" x1="112" />
            <wire x2="352" y1="1296" y2="1296" x1="240" />
        </branch>
        <branch name="tecla(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1232" type="branch" />
            <wire x2="240" y1="1232" y2="1232" x1="112" />
            <wire x2="352" y1="1232" y2="1232" x1="240" />
        </branch>
        <branch name="tecla(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1168" type="branch" />
            <wire x2="240" y1="1168" y2="1168" x1="112" />
            <wire x2="352" y1="1168" y2="1168" x1="240" />
        </branch>
        <branch name="tecla(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1104" type="branch" />
            <wire x2="240" y1="1104" y2="1104" x1="112" />
            <wire x2="352" y1="1104" y2="1104" x1="240" />
        </branch>
        <branch name="tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1040" type="branch" />
            <wire x2="240" y1="1040" y2="1040" x1="112" />
            <wire x2="352" y1="1040" y2="1040" x1="240" />
        </branch>
        <branch name="tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="976" type="branch" />
            <wire x2="240" y1="976" y2="976" x1="112" />
            <wire x2="352" y1="976" y2="976" x1="240" />
        </branch>
        <instance x="1296" y="848" name="XLXI_4" orien="R0" />
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="784" type="branch" />
            <wire x2="1184" y1="784" y2="784" x1="1056" />
            <wire x2="1296" y1="784" y2="784" x1="1184" />
        </branch>
        <branch name="tecla(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="720" type="branch" />
            <wire x2="1184" y1="720" y2="720" x1="1056" />
            <wire x2="1296" y1="720" y2="720" x1="1184" />
        </branch>
        <branch name="tecla(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="656" type="branch" />
            <wire x2="1184" y1="656" y2="656" x1="1056" />
            <wire x2="1296" y1="656" y2="656" x1="1184" />
        </branch>
        <branch name="tecla(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="592" type="branch" />
            <wire x2="1184" y1="592" y2="592" x1="1056" />
            <wire x2="1296" y1="592" y2="592" x1="1184" />
        </branch>
        <branch name="tecla(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="528" type="branch" />
            <wire x2="1184" y1="528" y2="528" x1="1056" />
            <wire x2="1296" y1="528" y2="528" x1="1184" />
        </branch>
        <branch name="tecla(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="464" type="branch" />
            <wire x2="1184" y1="464" y2="464" x1="1056" />
            <wire x2="1296" y1="464" y2="464" x1="1184" />
        </branch>
        <branch name="tecla(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="400" type="branch" />
            <wire x2="1184" y1="400" y2="400" x1="1056" />
            <wire x2="1296" y1="400" y2="400" x1="1184" />
        </branch>
        <branch name="tecla(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="336" type="branch" />
            <wire x2="1184" y1="336" y2="336" x1="1056" />
            <wire x2="1296" y1="336" y2="336" x1="1184" />
        </branch>
        <instance x="1296" y="1488" name="XLXI_5" orien="R0" />
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1424" type="branch" />
            <wire x2="1184" y1="1424" y2="1424" x1="1056" />
            <wire x2="1296" y1="1424" y2="1424" x1="1184" />
        </branch>
        <branch name="tecla(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1360" type="branch" />
            <wire x2="1184" y1="1360" y2="1360" x1="1056" />
            <wire x2="1296" y1="1360" y2="1360" x1="1184" />
        </branch>
        <branch name="tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="976" type="branch" />
            <wire x2="1184" y1="976" y2="976" x1="1056" />
            <wire x2="1296" y1="976" y2="976" x1="1184" />
        </branch>
        <branch name="tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1040" type="branch" />
            <wire x2="1184" y1="1040" y2="1040" x1="1056" />
            <wire x2="1296" y1="1040" y2="1040" x1="1184" />
        </branch>
        <branch name="tecla(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1104" type="branch" />
            <wire x2="1184" y1="1104" y2="1104" x1="1056" />
            <wire x2="1296" y1="1104" y2="1104" x1="1184" />
        </branch>
        <branch name="tecla(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1168" type="branch" />
            <wire x2="1184" y1="1168" y2="1168" x1="1056" />
            <wire x2="1296" y1="1168" y2="1168" x1="1184" />
        </branch>
        <branch name="tecla(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1232" type="branch" />
            <wire x2="1184" y1="1232" y2="1232" x1="1056" />
            <wire x2="1296" y1="1232" y2="1232" x1="1184" />
        </branch>
        <branch name="tecla(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1296" type="branch" />
            <wire x2="1184" y1="1296" y2="1296" x1="1056" />
            <wire x2="1296" y1="1296" y2="1296" x1="1184" />
        </branch>
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1344" type="branch" />
            <wire x2="2160" y1="1344" y2="1344" x1="2032" />
            <wire x2="2272" y1="1344" y2="1344" x1="2160" />
        </branch>
        <branch name="tecla(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1280" type="branch" />
            <wire x2="2160" y1="1280" y2="1280" x1="2032" />
            <wire x2="2272" y1="1280" y2="1280" x1="2160" />
        </branch>
        <branch name="tecla(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1216" type="branch" />
            <wire x2="2160" y1="1216" y2="1216" x1="2032" />
            <wire x2="2272" y1="1216" y2="1216" x1="2160" />
        </branch>
        <branch name="tecla(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1152" type="branch" />
            <wire x2="2160" y1="1152" y2="1152" x1="2032" />
            <wire x2="2272" y1="1152" y2="1152" x1="2160" />
        </branch>
        <branch name="tecla(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1088" type="branch" />
            <wire x2="2160" y1="1088" y2="1088" x1="2032" />
            <wire x2="2272" y1="1088" y2="1088" x1="2160" />
        </branch>
        <branch name="tecla(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1024" type="branch" />
            <wire x2="2160" y1="1024" y2="1024" x1="2032" />
            <wire x2="2272" y1="1024" y2="1024" x1="2160" />
        </branch>
        <branch name="tecla(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="960" type="branch" />
            <wire x2="2160" y1="960" y2="960" x1="2032" />
            <wire x2="2272" y1="960" y2="960" x1="2160" />
        </branch>
        <branch name="tecla(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="896" type="branch" />
            <wire x2="2160" y1="896" y2="896" x1="2032" />
            <wire x2="2272" y1="896" y2="896" x1="2160" />
        </branch>
        <branch name="tecla(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="784" type="branch" />
            <wire x2="2160" y1="784" y2="784" x1="2032" />
            <wire x2="2272" y1="784" y2="784" x1="2160" />
        </branch>
        <branch name="tecla(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="720" type="branch" />
            <wire x2="2160" y1="720" y2="720" x1="2032" />
            <wire x2="2272" y1="720" y2="720" x1="2160" />
        </branch>
        <branch name="tecla(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="656" type="branch" />
            <wire x2="2160" y1="656" y2="656" x1="2032" />
            <wire x2="2272" y1="656" y2="656" x1="2160" />
        </branch>
        <branch name="tecla(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="592" type="branch" />
            <wire x2="2160" y1="592" y2="592" x1="2032" />
            <wire x2="2272" y1="592" y2="592" x1="2160" />
        </branch>
        <branch name="tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="528" type="branch" />
            <wire x2="2160" y1="528" y2="528" x1="2032" />
            <wire x2="2272" y1="528" y2="528" x1="2160" />
        </branch>
        <branch name="tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="464" type="branch" />
            <wire x2="2160" y1="464" y2="464" x1="2032" />
            <wire x2="2272" y1="464" y2="464" x1="2160" />
        </branch>
        <branch name="tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="400" type="branch" />
            <wire x2="2160" y1="400" y2="400" x1="2032" />
            <wire x2="2272" y1="400" y2="400" x1="2160" />
        </branch>
        <branch name="tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="336" type="branch" />
            <wire x2="2160" y1="336" y2="336" x1="2032" />
            <wire x2="2272" y1="336" y2="336" x1="2160" />
        </branch>
        <instance x="2272" y="848" name="XLXI_13" orien="R0" />
        <instance x="2272" y="1408" name="XLXI_14" orien="R0" />
        <instance x="2592" y="944" name="XLXI_15" orien="R0" />
        <branch name="XLXN_209">
            <wire x2="2560" y1="560" y2="560" x1="2528" />
            <wire x2="2560" y1="560" y2="816" x1="2560" />
            <wire x2="2592" y1="816" y2="816" x1="2560" />
        </branch>
        <branch name="XLXN_210">
            <wire x2="2560" y1="1120" y2="1120" x1="2528" />
            <wire x2="2560" y1="880" y2="1120" x1="2560" />
            <wire x2="2592" y1="880" y2="880" x1="2560" />
        </branch>
        <branch name="tecla_pulsada_nivel">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="848" type="branch" />
            <wire x2="2976" y1="848" y2="848" x1="2848" />
            <wire x2="3072" y1="848" y2="848" x1="2976" />
        </branch>
        <branch name="tecla_codif3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="560" type="branch" />
            <wire x2="624" y1="560" y2="560" x1="608" />
            <wire x2="720" y1="560" y2="560" x1="624" />
            <wire x2="912" y1="560" y2="560" x1="720" />
        </branch>
        <branch name="tecla_codif1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1200" type="branch" />
            <wire x2="624" y1="1200" y2="1200" x1="608" />
            <wire x2="720" y1="1200" y2="1200" x1="624" />
            <wire x2="912" y1="1200" y2="1200" x1="720" />
        </branch>
        <branch name="tecla_codif2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="560" type="branch" />
            <wire x2="1568" y1="560" y2="560" x1="1552" />
            <wire x2="1664" y1="560" y2="560" x1="1568" />
            <wire x2="1856" y1="560" y2="560" x1="1664" />
        </branch>
        <branch name="tecla_codif0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1200" type="branch" />
            <wire x2="1568" y1="1200" y2="1200" x1="1552" />
            <wire x2="1664" y1="1200" y2="1200" x1="1568" />
            <wire x2="1856" y1="1200" y2="1200" x1="1664" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="912" type="branch" />
            <wire x2="2992" y1="912" y2="912" x1="2864" />
            <wire x2="3072" y1="912" y2="912" x1="2992" />
        </branch>
        <instance x="3072" y="944" name="XLXI_41" orien="R0">
        </instance>
        <branch name="ce_tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="848" type="branch" />
            <wire x2="3552" y1="848" y2="848" x1="3456" />
            <wire x2="3680" y1="848" y2="848" x1="3552" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="744" y="148">Codifica la tecla pulsada en un bus de 4 bits, y lo acompana con un pulso en la senal 'tecla_pulsada'</text>
        <rect style="linestyle:Dash" width="2312" x="640" y="52" height="176" />
        <text style="fontsize:56;fontname:Arial" x="3280" y="168">codif_tecla.sch</text>
        <branch name="tecla(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="2576" type="branch" />
            <wire x2="416" y1="2576" y2="2576" x1="336" />
            <wire x2="560" y1="2576" y2="2576" x1="416" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="2496" type="branch" />
            <wire x2="416" y1="2496" y2="2496" x1="336" />
            <wire x2="560" y1="2496" y2="2496" x1="416" />
        </branch>
        <iomarker fontsize="28" x="336" y="2576" name="tecla(15:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="2496" name="ck_teclado" orien="R180" />
    </sheet>
</drawing>