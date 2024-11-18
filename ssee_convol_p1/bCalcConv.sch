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
        <signal name="c_i(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="acumular" />
        <signal name="inicializar" />
        <signal name="XLXN_17(0:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_74(7:0)" />
        <signal name="xi_por_ci(15:0)" />
        <signal name="xi_por_ci(15:8)" />
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
            <timestamp>2024-10-30T15:20:40</timestamp>
            <rect width="400" x="32" y="40" height="228" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="432" y1="96" y2="96" style="linewidth:W" x1="464" />
        </blockdef>
        <blockdef name="bIpMemory">
            <timestamp>2024-10-30T15:9:10</timestamp>
            <rect width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="bIpMultiplier">
            <timestamp>2024-10-30T15:27:59</timestamp>
            <rect width="404" x="32" y="32" height="248" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="432" y1="96" y2="96" style="linewidth:W" x1="464" />
        </blockdef>
        <blockdef name="biPAccumlator">
            <timestamp>2024-10-30T15:34:10</timestamp>
            <rect width="276" x="32" y="32" height="268" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="304" y1="80" y2="80" style="linewidth:W" x1="336" />
        </blockdef>
        <blockdef name="fsm_convol">
            <timestamp>2024-10-30T14:27:21</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="bIpCont_i" name="XLXI_4">
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="incrementar" name="ce" />
            <blockpin signalname="inicializar" name="sclr" />
            <blockpin signalname="indice(2:0)" name="q(2:0)" />
        </block>
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
        <block symbolname="fsm_convol" name="XLXI_16">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="inicializar" name="inicializar" />
            <blockpin signalname="acumular" name="acumular" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
            <blockpin signalname="incrementar" name="incrementar" />
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
            <blockpin signalname="dato_sal(7:0)" name="q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="432" type="branch" />
            <wire x2="592" y1="432" y2="432" x1="544" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="528" type="branch" />
            <wire x2="592" y1="528" y2="528" x1="528" />
        </branch>
        <instance x="592" y="288" name="XLXI_4" orien="R0">
        </instance>
        <branch name="incrementar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="464" type="branch" />
            <wire x2="592" y1="464" y2="464" x1="544" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="384" type="branch" />
            <wire x2="1248" y1="384" y2="384" x1="1056" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="704" type="branch" />
            <wire x2="672" y1="704" y2="704" x1="656" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="768" type="branch" />
            <wire x2="672" y1="768" y2="768" x1="656" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="832" type="branch" />
            <wire x2="672" y1="832" y2="832" x1="656" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="896" type="branch" />
            <wire x2="672" y1="896" y2="896" x1="656" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="960" type="branch" />
            <wire x2="672" y1="960" y2="960" x1="656" />
        </branch>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="704" type="branch" />
            <wire x2="1280" y1="704" y2="704" x1="1056" />
            <wire x2="1392" y1="704" y2="704" x1="1280" />
        </branch>
        <instance x="672" y="992" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1312" type="branch" />
            <wire x2="576" y1="1312" y2="1312" x1="560" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1120" type="branch" />
            <wire x2="576" y1="1120" y2="1120" x1="560" />
        </branch>
        <instance x="576" y="1040" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_17(0:0)">
            <wire x2="576" y1="1248" y2="1248" x1="560" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="576" y1="1152" y2="1152" x1="560" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="128" type="branch" />
            <wire x2="1520" y1="128" y2="128" x1="1504" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="224" type="branch" />
            <wire x2="1520" y1="224" y2="224" x1="1504" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="320" type="branch" />
            <wire x2="1520" y1="320" y2="320" x1="1504" />
        </branch>
        <branch name="incrementar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="320" type="branch" />
            <wire x2="1952" y1="320" y2="320" x1="1936" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="256" type="branch" />
            <wire x2="1952" y1="256" y2="256" x1="1936" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="192" type="branch" />
            <wire x2="1952" y1="192" y2="192" x1="1936" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="128" type="branch" />
            <wire x2="1952" y1="128" y2="128" x1="1936" />
        </branch>
        <instance x="1520" y="352" name="XLXI_16" orien="R0">
        </instance>
        <instance x="1392" y="624" name="XLXI_6" orien="R0">
        </instance>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="768" type="branch" />
            <wire x2="1200" y1="1120" y2="1120" x1="1152" />
            <wire x2="1200" y1="768" y2="1120" x1="1200" />
            <wire x2="1296" y1="768" y2="768" x1="1200" />
            <wire x2="1376" y1="768" y2="768" x1="1296" />
            <wire x2="1392" y1="768" y2="768" x1="1376" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="864" type="branch" />
            <wire x2="1392" y1="864" y2="864" x1="1328" />
        </branch>
        <rect width="868" x="360" y="292" height="1132" />
        <rect width="516" x="1364" y="576" height="452" />
        <branch name="xi_por_ci(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="720" type="branch" />
            <wire x2="1936" y1="720" y2="720" x1="1856" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="128" type="branch" />
            <wire x2="576" y1="128" y2="128" x1="560" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="256" type="branch" />
            <wire x2="576" y1="256" y2="256" x1="560" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="192" type="branch" />
            <wire x2="576" y1="192" y2="192" x1="560" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="64" type="branch" />
            <wire x2="576" y1="64" y2="64" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="64" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="560" y="128" name="dato_nuevo" orien="R180" />
        <iomarker fontsize="28" x="560" y="192" name="reset" orien="R180" />
        <iomarker fontsize="28" x="560" y="256" name="ck" orien="R180" />
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="64" type="branch" />
            <wire x2="2480" y1="64" y2="64" x1="2464" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="128" type="branch" />
            <wire x2="2480" y1="128" y2="128" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2480" y="64" name="dato_sal(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2480" y="128" name="dato_sal_sync" orien="R0" />
        <rect width="564" x="2128" y="832" height="452" />
        <instance x="2256" y="880" name="XLXI_7" orien="R0">
        </instance>
        <branch name="xi_por_ci(15:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="960" type="branch" />
            <wire x2="2256" y1="960" y2="960" x1="2112" />
        </branch>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="960" type="branch" />
            <wire x2="2720" y1="960" y2="960" x1="2592" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1152" type="branch" />
            <wire x2="2256" y1="1152" y2="1152" x1="2096" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1088" type="branch" />
            <wire x2="2256" y1="1088" y2="1088" x1="2112" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="992" type="branch" />
            <wire x2="2256" y1="992" y2="992" x1="2112" />
        </branch>
    </sheet>
</drawing>