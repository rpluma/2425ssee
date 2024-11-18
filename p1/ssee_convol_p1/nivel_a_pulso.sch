<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="ck" />
        <signal name="salida" />
        <signal name="entrada" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="salida" />
        <port polarity="Input" name="entrada" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="entrada" name="D" />
            <blockpin signalname="XLXN_1" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="entrada" name="I1" />
            <blockpin signalname="salida" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1024" y="992" name="XLXI_1" orien="R0" />
        <instance x="1632" y="800" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1632" y1="736" y2="736" x1="1408" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="864" type="branch" />
            <wire x2="864" y1="864" y2="864" x1="720" />
            <wire x2="1024" y1="864" y2="864" x1="864" />
        </branch>
        <branch name="salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="704" type="branch" />
            <wire x2="2032" y1="704" y2="704" x1="1888" />
            <wire x2="2224" y1="704" y2="704" x1="2032" />
        </branch>
        <branch name="entrada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="736" type="branch" />
            <wire x2="864" y1="736" y2="736" x1="720" />
            <wire x2="976" y1="736" y2="736" x1="864" />
            <wire x2="1024" y1="736" y2="736" x1="976" />
            <wire x2="1472" y1="464" y2="464" x1="976" />
            <wire x2="1472" y1="464" y2="672" x1="1472" />
            <wire x2="1632" y1="672" y2="672" x1="1472" />
            <wire x2="976" y1="464" y2="736" x1="976" />
        </branch>
        <iomarker fontsize="28" x="720" y="736" name="entrada" orien="R180" />
        <iomarker fontsize="28" x="720" y="864" name="ck" orien="R180" />
        <iomarker fontsize="28" x="2224" y="704" name="salida" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="552" y="156">Convierte una senal activa por nivel a '1' logico a un pulso activo a '1' durante un solo ciclo de reloj</text>
        <rect style="linestyle:Dash" width="1968" x="424" y="84" height="152" />
        <text style="fontsize:56;fontname:Arial" x="2180" y="352">nivel_a_pulso.sch</text>
    </sheet>
</drawing>