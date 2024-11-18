<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck" />
        <signal name="dato_ent" />
        <signal name="dato_sinc" />
        <signal name="XLXN_4" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_ent" />
        <port polarity="Output" name="dato_sinc" />
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
            <blockpin signalname="dato_ent" name="D" />
            <blockpin signalname="XLXN_4" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="dato_sinc" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="720" y="864" name="XLXI_1" orien="R0" />
        <instance x="1376" y="864" name="XLXI_2" orien="R0" />
        <branch name="ck">
            <wire x2="704" y1="1456" y2="1456" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1456" name="ck" orien="R180" />
        <branch name="dato_ent">
            <wire x2="704" y1="1360" y2="1360" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1360" name="dato_ent" orien="R180" />
        <branch name="dato_sinc">
            <wire x2="1072" y1="1360" y2="1360" x1="896" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1360" name="dato_sinc" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1376" y1="608" y2="608" x1="1104" />
        </branch>
        <branch name="dato_sinc">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="608" type="branch" />
            <wire x2="1856" y1="608" y2="608" x1="1760" />
            <wire x2="2000" y1="608" y2="608" x1="1856" />
        </branch>
        <branch name="dato_ent">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="640" y="608" type="branch" />
            <wire x2="640" y1="608" y2="608" x1="512" />
            <wire x2="720" y1="608" y2="608" x1="640" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="640" y="736" type="branch" />
            <wire x2="640" y1="736" y2="736" x1="512" />
            <wire x2="720" y1="736" y2="736" x1="640" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="828" y="148">Sincroniza un dato con el reloj ck</text>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="736" type="branch" />
            <wire x2="1296" y1="736" y2="736" x1="1168" />
            <wire x2="1376" y1="736" y2="736" x1="1296" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="2264" y="144">sincroniza.sch</text>
    </sheet>
</drawing>