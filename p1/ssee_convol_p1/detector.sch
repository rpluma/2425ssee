<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="dato" />
        <signal name="ck" />
        <signal name="dato_ok" />
        <port polarity="Input" name="dato" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="dato_ok" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato" name="D" />
            <blockpin signalname="dato_ok" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="dato">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1536" type="branch" />
            <wire x2="1200" y1="1536" y2="1536" x1="1072" />
            <wire x2="1312" y1="1536" y2="1536" x1="1200" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1616" type="branch" />
            <wire x2="1200" y1="1616" y2="1616" x1="1072" />
            <wire x2="1312" y1="1616" y2="1616" x1="1200" />
        </branch>
        <branch name="dato_ok">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1696" type="branch" />
            <wire x2="1200" y1="1696" y2="1696" x1="1072" />
            <wire x2="1312" y1="1696" y2="1696" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1536" name="dato" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1616" name="ck" orien="R180" />
        <iomarker fontsize="28" x="1312" y="1696" name="dato_ok" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="792" y="164">Muestrea la senal de entrada para estabilizarla</text>
        <rect style="linestyle:Dash" width="916" x="728" y="72" height="176" />
        <instance x="1008" y="1136" name="XLXI_1" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1008" type="branch" />
            <wire x2="912" y1="1008" y2="1008" x1="752" />
            <wire x2="1008" y1="1008" y2="1008" x1="912" />
        </branch>
        <branch name="dato_ok">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="880" type="branch" />
            <wire x2="1488" y1="880" y2="880" x1="1392" />
            <wire x2="1632" y1="880" y2="880" x1="1488" />
        </branch>
        <branch name="dato">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="880" type="branch" />
            <wire x2="912" y1="880" y2="880" x1="752" />
            <wire x2="1008" y1="880" y2="880" x1="912" />
        </branch>
    </sheet>
</drawing>