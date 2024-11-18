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
        <signal name="dato_sal(7:0)" />
        <signal name="dato_sal_sync" />
        <signal name="incrementar" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17(0:0)" />
        <signal name="c_i(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="xi_por_ci(15:0)" />
        <signal name="acumular" />
        <signal name="XLXN_30(7:0)" />
        <signal name="xi_por_ci(15:8)" />
        <signal name="inicializar" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Output" name="dato_sal(7:0)" />
        <port polarity="Output" name="dato_sal_sync" />
        <blockdef name="bCalcX_i">
            <timestamp>2024-10-30T8:27:55</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="bIpCont_i">
            <timestamp>2024-10-30T8:39:41</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="32" y1="304" y2="304" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="bIpMemory">
            <timestamp>2024-10-30T8:57:28</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="bIpMultiplier">
            <timestamp>2024-10-30T9:25:6</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="biPAccumlator">
            <timestamp>2024-10-30T9:12:29</timestamp>
            <rect width="224" x="32" y="32" height="352" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <block symbolname="bCalcX_i" name="XLXI_2">
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="inicializar" name="reset" />
            <blockpin signalname="dato_ent(7:0)" name="dato_ent(7:0)" />
            <blockpin signalname="indice(2:0)" name="indice(2:0)" />
            <blockpin signalname="x_i(7:0)" name="x_i(7:0)" />
        </block>
        <block symbolname="bIpMemory" name="XLXI_5">
            <blockpin signalname="indice(2:0)" name="addra(2:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="dina(7:0)" />
            <blockpin signalname="XLXN_17(0:0)" name="wea(0:0)" />
            <blockpin signalname="ck" name="clka" />
            <blockpin signalname="c_i(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="bIpCont_i" name="XLXI_4">
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="incrementar" name="ce" />
            <blockpin signalname="inicializar" name="sclr" />
            <blockpin signalname="indice(2:0)" name="q(2:0)" />
        </block>
        <block symbolname="bIpMultiplier" name="XLXI_6">
            <blockpin signalname="x_i(7:0)" name="a(7:0)" />
            <blockpin signalname="c_i(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="xi_por_ci(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="biPAccumlator" name="XLXI_7">
            <blockpin signalname="xi_por_ci(15:8)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="acumular" name="ce" />
            <blockpin signalname="inicializar" name="sclr" />
            <blockpin signalname="XLXN_30(7:0)" name="q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="176" type="branch" />
            <wire x2="384" y1="176" y2="176" x1="256" />
            <wire x2="480" y1="176" y2="176" x1="384" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="304" type="branch" />
            <wire x2="384" y1="304" y2="304" x1="256" />
            <wire x2="480" y1="304" y2="304" x1="384" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="240" type="branch" />
            <wire x2="384" y1="240" y2="240" x1="256" />
            <wire x2="480" y1="240" y2="240" x1="384" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="112" type="branch" />
            <wire x2="384" y1="112" y2="112" x1="256" />
            <wire x2="480" y1="112" y2="112" x1="384" />
        </branch>
        <iomarker fontsize="28" x="256" y="112" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="176" name="dato_nuevo" orien="R180" />
        <iomarker fontsize="28" x="256" y="240" name="reset" orien="R180" />
        <iomarker fontsize="28" x="256" y="304" name="ck" orien="R180" />
        <instance x="480" y="368" name="XLXI_4" orien="R0">
        </instance>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3056" y="160" type="branch" />
            <wire x2="3056" y1="160" y2="160" x1="2928" />
            <wire x2="3168" y1="160" y2="160" x1="3056" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3056" y="224" type="branch" />
            <wire x2="3056" y1="224" y2="224" x1="2928" />
            <wire x2="3168" y1="224" y2="224" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3168" y="160" name="dato_sal(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3168" y="224" name="dato_sal_sync" orien="R0" />
        <instance x="496" y="1296" name="XLXI_5" orien="R0">
        </instance>
        <instance x="720" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="576" type="branch" />
            <wire x2="480" y1="576" y2="576" x1="400" />
        </branch>
        <branch name="incrementar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="608" type="branch" />
            <wire x2="480" y1="608" y2="608" x1="400" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="672" type="branch" />
            <wire x2="480" y1="672" y2="672" x1="400" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="944" type="branch" />
            <wire x2="720" y1="944" y2="944" x1="400" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1008" type="branch" />
            <wire x2="720" y1="1008" y2="1008" x1="400" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1072" type="branch" />
            <wire x2="720" y1="1072" y2="1072" x1="400" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1136" type="branch" />
            <wire x2="720" y1="1136" y2="1136" x1="400" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1200" type="branch" />
            <wire x2="720" y1="1200" y2="1200" x1="400" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1376" type="branch" />
            <wire x2="496" y1="1376" y2="1376" x1="400" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="496" y1="1408" y2="1408" x1="400" />
        </branch>
        <branch name="XLXN_17(0:0)">
            <wire x2="496" y1="1504" y2="1504" x1="400" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1568" type="branch" />
            <wire x2="496" y1="1568" y2="1568" x1="400" />
        </branch>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1376" type="branch" />
            <wire x2="1088" y1="1376" y2="1376" x1="1072" />
            <wire x2="1120" y1="1376" y2="1376" x1="1088" />
            <wire x2="1200" y1="1376" y2="1376" x1="1120" />
        </branch>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="944" type="branch" />
            <wire x2="1200" y1="944" y2="944" x1="1104" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="512" type="branch" />
            <wire x2="1200" y1="512" y2="512" x1="1056" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1104" type="branch" />
            <wire x2="1520" y1="1104" y2="1104" x1="1504" />
            <wire x2="1600" y1="1104" y2="1104" x1="1520" />
        </branch>
        <branch name="xi_por_ci(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="944" type="branch" />
            <wire x2="2256" y1="944" y2="944" x1="2176" />
        </branch>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="944" type="branch" />
            <wire x2="1520" y1="944" y2="944" x1="1504" />
            <wire x2="1600" y1="944" y2="944" x1="1520" />
        </branch>
        <instance x="1600" y="864" name="XLXI_6" orien="R0">
        </instance>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1008" type="branch" />
            <wire x2="1520" y1="1008" y2="1008" x1="1504" />
            <wire x2="1600" y1="1008" y2="1008" x1="1520" />
        </branch>
        <instance x="2800" y="864" name="XLXI_7" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="976" type="branch" />
            <wire x2="2736" y1="976" y2="976" x1="2720" />
            <wire x2="2800" y1="976" y2="976" x1="2736" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1072" type="branch" />
            <wire x2="2800" y1="1072" y2="1072" x1="2720" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1136" type="branch" />
            <wire x2="2800" y1="1136" y2="1136" x1="2720" />
        </branch>
        <branch name="XLXN_30(7:0)">
            <wire x2="3152" y1="944" y2="944" x1="3088" />
        </branch>
        <branch name="xi_por_ci(15:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="944" type="branch" />
            <wire x2="2800" y1="944" y2="944" x1="2720" />
        </branch>
    </sheet>
</drawing>