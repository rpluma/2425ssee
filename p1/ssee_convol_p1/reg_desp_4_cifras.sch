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
        <signal name="entrada(3:0)" />
        <signal name="dato1(3:0)" />
        <signal name="dato2(3:0)" />
        <signal name="dato3(3:0)" />
        <signal name="dato4(3:0)" />
        <signal name="sinc_reset" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="entrada(3:0)" />
        <port polarity="Output" name="dato1(3:0)" />
        <port polarity="Output" name="dato2(3:0)" />
        <port polarity="Output" name="dato3(3:0)" />
        <port polarity="Output" name="dato4(3:0)" />
        <port polarity="Input" name="sinc_reset" />
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
        <block symbolname="fdre" name="XLXI_18(3:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="entrada(3:0)" name="D" />
            <blockpin signalname="sinc_reset" name="R" />
            <blockpin signalname="dato1(3:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_19(3:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="dato1(3:0)" name="D" />
            <blockpin signalname="sinc_reset" name="R" />
            <blockpin signalname="dato2(3:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_20(3:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="dato2(3:0)" name="D" />
            <blockpin signalname="sinc_reset" name="R" />
            <blockpin signalname="dato3(3:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_21(3:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="dato3(3:0)" name="D" />
            <blockpin signalname="sinc_reset" name="R" />
            <blockpin signalname="dato4(3:0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="560" type="branch" />
            <wire x2="816" y1="560" y2="560" x1="736" />
            <wire x2="864" y1="560" y2="560" x1="816" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="496" type="branch" />
            <wire x2="816" y1="496" y2="496" x1="736" />
            <wire x2="864" y1="496" y2="496" x1="816" />
        </branch>
        <branch name="dato1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="432" type="branch" />
            <wire x2="768" y1="432" y2="432" x1="656" />
            <wire x2="864" y1="432" y2="432" x1="768" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="560" type="branch" />
            <wire x2="1408" y1="560" y2="560" x1="1328" />
            <wire x2="1456" y1="560" y2="560" x1="1408" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="496" type="branch" />
            <wire x2="1408" y1="496" y2="496" x1="1328" />
            <wire x2="1456" y1="496" y2="496" x1="1408" />
        </branch>
        <branch name="dato2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="432" type="branch" />
            <wire x2="1360" y1="432" y2="432" x1="1248" />
            <wire x2="1456" y1="432" y2="432" x1="1360" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="560" type="branch" />
            <wire x2="2000" y1="560" y2="560" x1="1920" />
            <wire x2="2048" y1="560" y2="560" x1="2000" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="496" type="branch" />
            <wire x2="2000" y1="496" y2="496" x1="1920" />
            <wire x2="2048" y1="496" y2="496" x1="2000" />
        </branch>
        <branch name="dato3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="432" type="branch" />
            <wire x2="1952" y1="432" y2="432" x1="1840" />
            <wire x2="2048" y1="432" y2="432" x1="1952" />
        </branch>
        <branch name="dato4(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="432" type="branch" />
            <wire x2="2544" y1="432" y2="432" x1="2432" />
            <wire x2="2640" y1="432" y2="432" x1="2544" />
        </branch>
        <branch name="entrada(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="176" y="432" type="branch" />
            <wire x2="176" y1="432" y2="432" x1="64" />
            <wire x2="272" y1="432" y2="432" x1="176" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="496" type="branch" />
            <wire x2="224" y1="496" y2="496" x1="144" />
            <wire x2="272" y1="496" y2="496" x1="224" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="560" type="branch" />
            <wire x2="224" y1="560" y2="560" x1="144" />
            <wire x2="272" y1="560" y2="560" x1="224" />
        </branch>
        <rect style="linestyle:Dash" width="2504" x="104" y="84" height="152" />
        <branch name="entrada(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1648" type="branch" />
            <wire x2="544" y1="1648" y2="1648" x1="432" />
            <wire x2="640" y1="1648" y2="1648" x1="544" />
        </branch>
        <branch name="dato1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1648" type="branch" />
            <wire x2="1120" y1="1648" y2="1648" x1="1008" />
            <wire x2="1216" y1="1648" y2="1648" x1="1120" />
        </branch>
        <branch name="dato2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1712" type="branch" />
            <wire x2="1120" y1="1712" y2="1712" x1="1008" />
            <wire x2="1216" y1="1712" y2="1712" x1="1120" />
        </branch>
        <branch name="dato3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1776" type="branch" />
            <wire x2="1120" y1="1776" y2="1776" x1="1008" />
            <wire x2="1216" y1="1776" y2="1776" x1="1120" />
        </branch>
        <branch name="dato4(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1840" type="branch" />
            <wire x2="1120" y1="1840" y2="1840" x1="1008" />
            <wire x2="1216" y1="1840" y2="1840" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="432" y="1648" name="entrada(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1216" y="1648" name="dato1(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1712" name="dato2(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1776" name="dato3(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1840" name="dato4(3:0)" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="804" y="160">Registro de desplazamiento de 4 datos de 4 bits</text>
        <instance x="272" y="688" name="XLXI_18(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-32" type="instance" />
        </instance>
        <instance x="864" y="688" name="XLXI_19(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-32" type="instance" />
        </instance>
        <instance x="1456" y="688" name="XLXI_20(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-32" type="instance" />
        </instance>
        <instance x="2048" y="688" name="XLXI_21(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-32" type="instance" />
        </instance>
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="656" type="branch" />
            <wire x2="224" y1="656" y2="656" x1="144" />
            <wire x2="272" y1="656" y2="656" x1="224" />
        </branch>
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="656" type="branch" />
            <wire x2="816" y1="656" y2="656" x1="736" />
            <wire x2="864" y1="656" y2="656" x1="816" />
        </branch>
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="656" type="branch" />
            <wire x2="1408" y1="656" y2="656" x1="1328" />
            <wire x2="1456" y1="656" y2="656" x1="1408" />
        </branch>
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="656" type="branch" />
            <wire x2="2000" y1="656" y2="656" x1="1920" />
            <wire x2="2048" y1="656" y2="656" x1="2000" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1840" type="branch" />
            <wire x2="528" y1="1840" y2="1840" x1="432" />
            <wire x2="640" y1="1840" y2="1840" x1="528" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1776" type="branch" />
            <wire x2="528" y1="1776" y2="1776" x1="432" />
            <wire x2="640" y1="1776" y2="1776" x1="528" />
        </branch>
        <iomarker fontsize="28" x="432" y="1776" name="ce" orien="R180" />
        <iomarker fontsize="28" x="432" y="1840" name="ck" orien="R180" />
        <branch name="sinc_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1712" type="branch" />
            <wire x2="528" y1="1712" y2="1712" x1="432" />
            <wire x2="640" y1="1712" y2="1712" x1="528" />
        </branch>
        <iomarker fontsize="28" x="432" y="1712" name="sinc_reset" orien="R180" />
    </sheet>
</drawing>