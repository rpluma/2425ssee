<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck_teclado" />
        <signal name="ce_cuenta" />
        <signal name="fila4" />
        <signal name="fila3" />
        <signal name="fila2" />
        <signal name="fila1" />
        <signal name="col1" />
        <signal name="col2" />
        <signal name="col3" />
        <signal name="col4" />
        <signal name="XLXN_13" />
        <signal name="tecla(1)" />
        <signal name="tecla(2)" />
        <signal name="tecla(3)" />
        <signal name="tecla(15)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_45" />
        <signal name="tecla(7)" />
        <signal name="tecla(8)" />
        <signal name="tecla(9)" />
        <signal name="tecla(13)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_61" />
        <signal name="tecla(4)" />
        <signal name="tecla(5)" />
        <signal name="tecla(6)" />
        <signal name="tecla(14)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_77" />
        <signal name="tecla(10)" />
        <signal name="tecla(0)" />
        <signal name="tecla(11)" />
        <signal name="tecla(12)" />
        <signal name="XLXN_83" />
        <signal name="cuenta(0)" />
        <signal name="cuenta(1)" />
        <signal name="cuenta(2)" />
        <signal name="cuenta(2:0)" />
        <signal name="tecla(15:0)" />
        <port polarity="Input" name="ck_teclado" />
        <port polarity="Output" name="fila4" />
        <port polarity="Output" name="fila3" />
        <port polarity="Output" name="fila2" />
        <port polarity="Output" name="fila1" />
        <port polarity="Input" name="col1" />
        <port polarity="Input" name="col2" />
        <port polarity="Input" name="col3" />
        <port polarity="Input" name="col4" />
        <port polarity="Output" name="tecla(0)" />
        <port polarity="Output" name="tecla(15:0)" />
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
        <blockdef name="cont_anillo_ce">
            <timestamp>2013-11-23T15:49:35</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cont_3b">
            <timestamp>2013-11-30T18:31:44</timestamp>
            <rect width="272" x="32" y="32" height="60" />
            <line x2="32" y1="64" y2="64" x1="0" />
            <line x2="304" y1="64" y2="64" style="linewidth:W" x1="336" />
        </blockdef>
        <blockdef name="and5b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="fd4ce" name="XLXI_1">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="XLXN_13" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin signalname="col1" name="D0" />
            <blockpin signalname="col2" name="D1" />
            <blockpin signalname="col3" name="D2" />
            <blockpin signalname="col4" name="D3" />
            <blockpin signalname="tecla(1)" name="Q0" />
            <blockpin signalname="tecla(2)" name="Q1" />
            <blockpin signalname="tecla(3)" name="Q2" />
            <blockpin signalname="tecla(15)" name="Q3" />
        </block>
        <block symbolname="and5b3" name="XLXI_4">
            <blockpin signalname="fila4" name="I0" />
            <blockpin signalname="fila3" name="I1" />
            <blockpin signalname="fila2" name="I2" />
            <blockpin signalname="fila1" name="I3" />
            <blockpin signalname="ce_cuenta" name="I4" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="fd4ce" name="XLXI_9">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="XLXN_45" name="CE" />
            <blockpin signalname="XLXN_51" name="CLR" />
            <blockpin signalname="col1" name="D0" />
            <blockpin signalname="col2" name="D1" />
            <blockpin signalname="col3" name="D2" />
            <blockpin signalname="col4" name="D3" />
            <blockpin signalname="tecla(7)" name="Q0" />
            <blockpin signalname="tecla(8)" name="Q1" />
            <blockpin signalname="tecla(9)" name="Q2" />
            <blockpin signalname="tecla(13)" name="Q3" />
        </block>
        <block symbolname="and5b3" name="XLXI_10">
            <blockpin signalname="fila4" name="I0" />
            <blockpin signalname="fila1" name="I1" />
            <blockpin signalname="fila2" name="I2" />
            <blockpin signalname="fila3" name="I3" />
            <blockpin signalname="ce_cuenta" name="I4" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_51" name="G" />
        </block>
        <block symbolname="fd4ce" name="XLXI_12">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="XLXN_61" name="CE" />
            <blockpin signalname="XLXN_67" name="CLR" />
            <blockpin signalname="col1" name="D0" />
            <blockpin signalname="col2" name="D1" />
            <blockpin signalname="col3" name="D2" />
            <blockpin signalname="col4" name="D3" />
            <blockpin signalname="tecla(4)" name="Q0" />
            <blockpin signalname="tecla(5)" name="Q1" />
            <blockpin signalname="tecla(6)" name="Q2" />
            <blockpin signalname="tecla(14)" name="Q3" />
        </block>
        <block symbolname="and5b3" name="XLXI_13">
            <blockpin signalname="fila4" name="I0" />
            <blockpin signalname="fila3" name="I1" />
            <blockpin signalname="fila1" name="I2" />
            <blockpin signalname="fila2" name="I3" />
            <blockpin signalname="ce_cuenta" name="I4" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="XLXN_67" name="G" />
        </block>
        <block symbolname="fd4ce" name="XLXI_15">
            <blockpin signalname="ck_teclado" name="C" />
            <blockpin signalname="XLXN_77" name="CE" />
            <blockpin signalname="XLXN_83" name="CLR" />
            <blockpin signalname="col1" name="D0" />
            <blockpin signalname="col2" name="D1" />
            <blockpin signalname="col3" name="D2" />
            <blockpin signalname="col4" name="D3" />
            <blockpin signalname="tecla(10)" name="Q0" />
            <blockpin signalname="tecla(0)" name="Q1" />
            <blockpin signalname="tecla(11)" name="Q2" />
            <blockpin signalname="tecla(12)" name="Q3" />
        </block>
        <block symbolname="and5b3" name="XLXI_16">
            <blockpin signalname="fila1" name="I0" />
            <blockpin signalname="fila3" name="I1" />
            <blockpin signalname="fila2" name="I2" />
            <blockpin signalname="fila4" name="I3" />
            <blockpin signalname="ce_cuenta" name="I4" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="XLXN_83" name="G" />
        </block>
        <block symbolname="cont_anillo_ce" name="XLXI_2">
            <blockpin signalname="ck_teclado" name="ck" />
            <blockpin signalname="ce_cuenta" name="ce" />
            <blockpin signalname="fila4" name="ce4" />
            <blockpin signalname="fila3" name="ce3" />
            <blockpin signalname="fila2" name="ce2" />
            <blockpin signalname="fila1" name="ce1" />
        </block>
        <block symbolname="cont_3b" name="XLXI_3">
            <blockpin signalname="ck_teclado" name="clk" />
            <blockpin signalname="cuenta(2:0)" name="q(2:0)" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="cuenta(2)" name="I0" />
            <blockpin signalname="cuenta(1)" name="I1" />
            <blockpin signalname="cuenta(0)" name="I2" />
            <blockpin signalname="ce_cuenta" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1072" y="1152" name="XLXI_1" orien="R0" />
        <instance x="576" y="1152" name="XLXI_4" orien="R0" />
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="704" type="branch" />
            <wire x2="992" y1="704" y2="704" x1="848" />
            <wire x2="1072" y1="704" y2="704" x1="992" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="768" type="branch" />
            <wire x2="992" y1="768" y2="768" x1="848" />
            <wire x2="1072" y1="768" y2="768" x1="992" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="832" type="branch" />
            <wire x2="992" y1="832" y2="832" x1="848" />
            <wire x2="1072" y1="832" y2="832" x1="992" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="896" type="branch" />
            <wire x2="992" y1="896" y2="896" x1="848" />
            <wire x2="1072" y1="896" y2="896" x1="992" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1072" y1="960" y2="960" x1="832" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1024" type="branch" />
            <wire x2="992" y1="1024" y2="1024" x1="848" />
            <wire x2="1072" y1="1024" y2="1024" x1="992" />
        </branch>
        <branch name="tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="704" type="branch" />
            <wire x2="1520" y1="704" y2="704" x1="1456" />
            <wire x2="1664" y1="704" y2="704" x1="1520" />
        </branch>
        <branch name="tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="768" type="branch" />
            <wire x2="1520" y1="768" y2="768" x1="1456" />
            <wire x2="1664" y1="768" y2="768" x1="1520" />
        </branch>
        <branch name="tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="832" type="branch" />
            <wire x2="1520" y1="832" y2="832" x1="1456" />
            <wire x2="1664" y1="832" y2="832" x1="1520" />
        </branch>
        <branch name="tecla(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="896" type="branch" />
            <wire x2="1520" y1="896" y2="896" x1="1456" />
            <wire x2="1664" y1="896" y2="896" x1="1520" />
        </branch>
        <instance x="960" y="1328" name="XLXI_5" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1072" y1="1120" y2="1120" x1="1024" />
            <wire x2="1024" y1="1120" y2="1200" x1="1024" />
        </branch>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="832" type="branch" />
            <wire x2="464" y1="832" y2="832" x1="320" />
            <wire x2="576" y1="832" y2="832" x1="464" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="896" type="branch" />
            <wire x2="464" y1="896" y2="896" x1="320" />
            <wire x2="576" y1="896" y2="896" x1="464" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="960" type="branch" />
            <wire x2="464" y1="960" y2="960" x1="320" />
            <wire x2="576" y1="960" y2="960" x1="464" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1024" type="branch" />
            <wire x2="464" y1="1024" y2="1024" x1="320" />
            <wire x2="576" y1="1024" y2="1024" x1="464" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1088" type="branch" />
            <wire x2="464" y1="1088" y2="1088" x1="320" />
            <wire x2="576" y1="1088" y2="1088" x1="464" />
        </branch>
        <instance x="1072" y="2016" name="XLXI_9" orien="R0" />
        <instance x="576" y="2016" name="XLXI_10" orien="R0" />
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1568" type="branch" />
            <wire x2="992" y1="1568" y2="1568" x1="848" />
            <wire x2="1072" y1="1568" y2="1568" x1="992" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1632" type="branch" />
            <wire x2="992" y1="1632" y2="1632" x1="848" />
            <wire x2="1072" y1="1632" y2="1632" x1="992" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1696" type="branch" />
            <wire x2="992" y1="1696" y2="1696" x1="848" />
            <wire x2="1072" y1="1696" y2="1696" x1="992" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1760" type="branch" />
            <wire x2="992" y1="1760" y2="1760" x1="848" />
            <wire x2="1072" y1="1760" y2="1760" x1="992" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1072" y1="1824" y2="1824" x1="832" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1888" type="branch" />
            <wire x2="992" y1="1888" y2="1888" x1="848" />
            <wire x2="1072" y1="1888" y2="1888" x1="992" />
        </branch>
        <branch name="tecla(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1568" type="branch" />
            <wire x2="1520" y1="1568" y2="1568" x1="1456" />
            <wire x2="1664" y1="1568" y2="1568" x1="1520" />
        </branch>
        <branch name="tecla(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1632" type="branch" />
            <wire x2="1520" y1="1632" y2="1632" x1="1456" />
            <wire x2="1664" y1="1632" y2="1632" x1="1520" />
        </branch>
        <branch name="tecla(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1696" type="branch" />
            <wire x2="1520" y1="1696" y2="1696" x1="1456" />
            <wire x2="1664" y1="1696" y2="1696" x1="1520" />
        </branch>
        <branch name="tecla(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1760" type="branch" />
            <wire x2="1520" y1="1760" y2="1760" x1="1456" />
            <wire x2="1664" y1="1760" y2="1760" x1="1520" />
        </branch>
        <instance x="960" y="2192" name="XLXI_11" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1072" y1="1984" y2="1984" x1="1024" />
            <wire x2="1024" y1="1984" y2="2064" x1="1024" />
        </branch>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1696" type="branch" />
            <wire x2="464" y1="1696" y2="1696" x1="320" />
            <wire x2="576" y1="1696" y2="1696" x1="464" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1760" type="branch" />
            <wire x2="464" y1="1760" y2="1760" x1="320" />
            <wire x2="576" y1="1760" y2="1760" x1="464" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1824" type="branch" />
            <wire x2="464" y1="1824" y2="1824" x1="320" />
            <wire x2="576" y1="1824" y2="1824" x1="464" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1888" type="branch" />
            <wire x2="464" y1="1888" y2="1888" x1="320" />
            <wire x2="576" y1="1888" y2="1888" x1="464" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1952" type="branch" />
            <wire x2="464" y1="1952" y2="1952" x1="320" />
            <wire x2="576" y1="1952" y2="1952" x1="464" />
        </branch>
        <instance x="2800" y="1152" name="XLXI_12" orien="R0" />
        <instance x="2304" y="1152" name="XLXI_13" orien="R0" />
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="704" type="branch" />
            <wire x2="2720" y1="704" y2="704" x1="2576" />
            <wire x2="2800" y1="704" y2="704" x1="2720" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="768" type="branch" />
            <wire x2="2720" y1="768" y2="768" x1="2576" />
            <wire x2="2800" y1="768" y2="768" x1="2720" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="832" type="branch" />
            <wire x2="2720" y1="832" y2="832" x1="2576" />
            <wire x2="2800" y1="832" y2="832" x1="2720" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="896" type="branch" />
            <wire x2="2720" y1="896" y2="896" x1="2576" />
            <wire x2="2800" y1="896" y2="896" x1="2720" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2800" y1="960" y2="960" x1="2560" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1024" type="branch" />
            <wire x2="2720" y1="1024" y2="1024" x1="2576" />
            <wire x2="2800" y1="1024" y2="1024" x1="2720" />
        </branch>
        <branch name="tecla(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="704" type="branch" />
            <wire x2="3248" y1="704" y2="704" x1="3184" />
            <wire x2="3392" y1="704" y2="704" x1="3248" />
        </branch>
        <branch name="tecla(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="768" type="branch" />
            <wire x2="3248" y1="768" y2="768" x1="3184" />
            <wire x2="3392" y1="768" y2="768" x1="3248" />
        </branch>
        <branch name="tecla(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="832" type="branch" />
            <wire x2="3248" y1="832" y2="832" x1="3184" />
            <wire x2="3392" y1="832" y2="832" x1="3248" />
        </branch>
        <branch name="tecla(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="896" type="branch" />
            <wire x2="3248" y1="896" y2="896" x1="3184" />
            <wire x2="3392" y1="896" y2="896" x1="3248" />
        </branch>
        <instance x="2688" y="1328" name="XLXI_14" orien="R0" />
        <branch name="XLXN_67">
            <wire x2="2800" y1="1120" y2="1120" x1="2752" />
            <wire x2="2752" y1="1120" y2="1200" x1="2752" />
        </branch>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="832" type="branch" />
            <wire x2="2192" y1="832" y2="832" x1="2048" />
            <wire x2="2304" y1="832" y2="832" x1="2192" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="896" type="branch" />
            <wire x2="2192" y1="896" y2="896" x1="2048" />
            <wire x2="2304" y1="896" y2="896" x1="2192" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="960" type="branch" />
            <wire x2="2192" y1="960" y2="960" x1="2048" />
            <wire x2="2304" y1="960" y2="960" x1="2192" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1024" type="branch" />
            <wire x2="2192" y1="1024" y2="1024" x1="2048" />
            <wire x2="2304" y1="1024" y2="1024" x1="2192" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1088" type="branch" />
            <wire x2="2192" y1="1088" y2="1088" x1="2048" />
            <wire x2="2304" y1="1088" y2="1088" x1="2192" />
        </branch>
        <instance x="2800" y="2016" name="XLXI_15" orien="R0" />
        <instance x="2304" y="2016" name="XLXI_16" orien="R0" />
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1568" type="branch" />
            <wire x2="2720" y1="1568" y2="1568" x1="2576" />
            <wire x2="2800" y1="1568" y2="1568" x1="2720" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1632" type="branch" />
            <wire x2="2720" y1="1632" y2="1632" x1="2576" />
            <wire x2="2800" y1="1632" y2="1632" x1="2720" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1696" type="branch" />
            <wire x2="2720" y1="1696" y2="1696" x1="2576" />
            <wire x2="2800" y1="1696" y2="1696" x1="2720" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1760" type="branch" />
            <wire x2="2720" y1="1760" y2="1760" x1="2576" />
            <wire x2="2800" y1="1760" y2="1760" x1="2720" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2800" y1="1824" y2="1824" x1="2560" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1888" type="branch" />
            <wire x2="2720" y1="1888" y2="1888" x1="2576" />
            <wire x2="2800" y1="1888" y2="1888" x1="2720" />
        </branch>
        <branch name="tecla(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1568" type="branch" />
            <wire x2="3248" y1="1568" y2="1568" x1="3184" />
            <wire x2="3392" y1="1568" y2="1568" x1="3248" />
        </branch>
        <branch name="tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1632" type="branch" />
            <wire x2="3248" y1="1632" y2="1632" x1="3184" />
            <wire x2="3392" y1="1632" y2="1632" x1="3248" />
        </branch>
        <branch name="tecla(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1696" type="branch" />
            <wire x2="3248" y1="1696" y2="1696" x1="3184" />
            <wire x2="3392" y1="1696" y2="1696" x1="3248" />
        </branch>
        <branch name="tecla(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1760" type="branch" />
            <wire x2="3248" y1="1760" y2="1760" x1="3184" />
            <wire x2="3392" y1="1760" y2="1760" x1="3248" />
        </branch>
        <instance x="2688" y="2192" name="XLXI_17" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="2800" y1="1984" y2="1984" x1="2752" />
            <wire x2="2752" y1="1984" y2="2064" x1="2752" />
        </branch>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1696" type="branch" />
            <wire x2="2192" y1="1696" y2="1696" x1="2048" />
            <wire x2="2304" y1="1696" y2="1696" x1="2192" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1760" type="branch" />
            <wire x2="2192" y1="1760" y2="1760" x1="2048" />
            <wire x2="2304" y1="1760" y2="1760" x1="2192" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1824" type="branch" />
            <wire x2="2192" y1="1824" y2="1824" x1="2048" />
            <wire x2="2304" y1="1824" y2="1824" x1="2192" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1888" type="branch" />
            <wire x2="2192" y1="1888" y2="1888" x1="2048" />
            <wire x2="2304" y1="1888" y2="1888" x1="2192" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1952" type="branch" />
            <wire x2="2192" y1="1952" y2="1952" x1="2048" />
            <wire x2="2304" y1="1952" y2="1952" x1="2192" />
        </branch>
        <branch name="col1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2352" type="branch" />
            <wire x2="832" y1="2352" y2="2352" x1="688" />
            <wire x2="944" y1="2352" y2="2352" x1="832" />
        </branch>
        <branch name="col2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2416" type="branch" />
            <wire x2="832" y1="2416" y2="2416" x1="688" />
            <wire x2="944" y1="2416" y2="2416" x1="832" />
        </branch>
        <branch name="col3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2480" type="branch" />
            <wire x2="832" y1="2480" y2="2480" x1="688" />
            <wire x2="944" y1="2480" y2="2480" x1="832" />
        </branch>
        <branch name="col4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2544" type="branch" />
            <wire x2="832" y1="2544" y2="2544" x1="688" />
            <wire x2="944" y1="2544" y2="2544" x1="832" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2608" type="branch" />
            <wire x2="832" y1="2608" y2="2608" x1="688" />
            <wire x2="944" y1="2608" y2="2608" x1="832" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2352" type="branch" />
            <wire x2="1344" y1="2352" y2="2352" x1="1200" />
            <wire x2="1456" y1="2352" y2="2352" x1="1344" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2416" type="branch" />
            <wire x2="1344" y1="2416" y2="2416" x1="1200" />
            <wire x2="1456" y1="2416" y2="2416" x1="1344" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2480" type="branch" />
            <wire x2="1344" y1="2480" y2="2480" x1="1200" />
            <wire x2="1456" y1="2480" y2="2480" x1="1344" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2544" type="branch" />
            <wire x2="1344" y1="2544" y2="2544" x1="1200" />
            <wire x2="1456" y1="2544" y2="2544" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="688" y="2352" name="col1" orien="R180" />
        <iomarker fontsize="28" x="688" y="2416" name="col2" orien="R180" />
        <iomarker fontsize="28" x="688" y="2480" name="col3" orien="R180" />
        <iomarker fontsize="28" x="688" y="2544" name="col4" orien="R180" />
        <iomarker fontsize="28" x="688" y="2608" name="ck_teclado" orien="R180" />
        <iomarker fontsize="28" x="1456" y="2352" name="fila1" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2416" name="fila2" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2480" name="fila3" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2544" name="fila4" orien="R0" />
        <rect style="linestyle:Dash" width="1484" x="2268" y="104" height="448" />
        <instance x="1616" y="400" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="304" y="272" type="branch" />
            <wire x2="304" y1="272" y2="272" x1="208" />
            <wire x2="400" y1="272" y2="272" x1="304" />
        </branch>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="368" type="branch" />
            <wire x2="1552" y1="368" y2="368" x1="1408" />
            <wire x2="1616" y1="368" y2="368" x1="1552" />
        </branch>
        <branch name="ck_teclado">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="176" type="branch" />
            <wire x2="1568" y1="176" y2="176" x1="1408" />
            <wire x2="1616" y1="176" y2="176" x1="1568" />
        </branch>
        <branch name="fila4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="176" type="branch" />
            <wire x2="2096" y1="176" y2="176" x1="2000" />
            <wire x2="2208" y1="176" y2="176" x1="2096" />
        </branch>
        <branch name="fila3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="240" type="branch" />
            <wire x2="2096" y1="240" y2="240" x1="2000" />
            <wire x2="2208" y1="240" y2="240" x1="2096" />
        </branch>
        <branch name="fila2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="304" type="branch" />
            <wire x2="2096" y1="304" y2="304" x1="2000" />
            <wire x2="2208" y1="304" y2="304" x1="2096" />
        </branch>
        <branch name="fila1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="368" type="branch" />
            <wire x2="2096" y1="368" y2="368" x1="2000" />
            <wire x2="2208" y1="368" y2="368" x1="2096" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="2312" y="192">Utiliza un contador en anillo para generar el 'polling' en las filas de salida.</text>
        <text style="fontsize:40;fontname:Arial" x="2312" y="280">Utiliza otro contador de 3 bits para capturar la tecla pulsada</text>
        <text style="fontsize:40;fontname:Arial" x="2312" y="364">solo cada 8 ciclos de reloj, cuando se activa 'ce_cuenta'</text>
        <text style="fontsize:40;fontname:Arial" x="2312" y="456">Segun la fila activa y la columna que se lea a '1' se codifica la tecla pulsada</text>
        <instance x="400" y="208" name="XLXI_3" orien="R0">
        </instance>
        <branch name="ce_cuenta">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="496" type="branch" />
            <wire x2="912" y1="496" y2="496" x1="816" />
            <wire x2="1040" y1="496" y2="496" x1="912" />
        </branch>
        <instance x="560" y="624" name="XLXI_18" orien="R0" />
        <branch name="cuenta(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="432" type="branch" />
            <wire x2="464" y1="432" y2="432" x1="304" />
            <wire x2="560" y1="432" y2="432" x1="464" />
        </branch>
        <branch name="cuenta(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="496" type="branch" />
            <wire x2="464" y1="496" y2="496" x1="304" />
            <wire x2="560" y1="496" y2="496" x1="464" />
        </branch>
        <branch name="cuenta(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="464" y="560" type="branch" />
            <wire x2="464" y1="560" y2="560" x1="304" />
            <wire x2="560" y1="560" y2="560" x1="464" />
        </branch>
        <branch name="cuenta(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="272" type="branch" />
            <wire x2="752" y1="272" y2="272" x1="736" />
            <wire x2="848" y1="272" y2="272" x1="752" />
            <wire x2="960" y1="272" y2="272" x1="848" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="3352" y="616">teclado_4x4.sch</text>
        <branch name="tecla(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="2448" type="branch" />
            <wire x2="1920" y1="2448" y2="2448" x1="1856" />
            <wire x2="2064" y1="2448" y2="2448" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2064" y="2448" name="tecla(15:0)" orien="R0" />
    </sheet>
</drawing>