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
        <signal name="dat_sal(7:0)" />
        <signal name="dato_sal_sync" />
        <signal name="c_i(7:0)" />
        <signal name="x_i(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="acumular" />
        <signal name="inicializar" />
        <signal name="ceros(7:0)" />
        <signal name="xi_por_ci(15:0)" />
        <signal name="multiplicar" />
        <signal name="ceros(0)" />
        <signal name="res_parcl(7:0)" />
        <signal name="res_parc(13:6)" />
        <signal name="guardar" />
        <signal name="res_parc(15:0)" />
        <signal name="indice(3:0)" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Output" name="dat_sal(7:0)" />
        <port polarity="Output" name="dato_sal_sync" />
        <blockdef name="bCalcX_i">
            <timestamp>2024-10-31T17:57:36</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="264" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bIpMemory">
            <timestamp>2024-10-31T21:7:55</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="bIpMultiplier">
            <timestamp>2024-10-31T21:8:38</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="32" y1="304" y2="304" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="biPAccumlator">
            <timestamp>2024-10-31T21:9:26</timestamp>
            <rect width="224" x="32" y="32" height="352" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="fsm_convol">
            <timestamp>2024-10-31T17:54:2</timestamp>
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="288" x="64" y="-256" height="448" />
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
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="bIpMultiplier" name="XLXI_6">
            <blockpin signalname="x_i(7:0)" name="a(7:0)" />
            <blockpin signalname="c_i(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="multiplicar" name="ce" />
            <blockpin signalname="xi_por_ci(15:0)" name="p(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_17(7:0)">
            <blockpin signalname="ceros(7:0)" name="G" />
        </block>
        <block symbolname="biPAccumlator" name="XLXI_7">
            <blockpin signalname="xi_por_ci(15:0)" name="b(15:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="acumular" name="ce" />
            <blockpin signalname="inicializar" name="sclr" />
            <blockpin signalname="res_parc(15:0)" name="q(15:0)" />
        </block>
        <block symbolname="fsm_convol" name="XLXI_16">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="inicializar" name="inicializar" />
            <blockpin signalname="acumular" name="acumular" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
            <blockpin signalname="multiplicar" name="multiplicar" />
            <blockpin signalname="guardar" name="guardar" />
            <blockpin signalname="indice(3:0)" name="indice(3:0)" />
        </block>
        <block symbolname="fde" name="XLXI_18(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="guardar" name="CE" />
            <blockpin signalname="res_parcl(7:0)" name="D" />
            <blockpin signalname="dat_sal(7:0)" name="Q" />
        </block>
        <block symbolname="bCalcX_i" name="XLXI_2">
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_ent(7:0)" name="dato_ent(7:0)" />
            <blockpin signalname="indice(3:0)" name="indice(3:0)" />
            <blockpin signalname="x_i(7:0)" name="x_i(7:0)" />
        </block>
        <block symbolname="bIpMemory" name="XLXI_5">
            <blockpin signalname="indice(2:0)" name="addra(2:0)" />
            <blockpin signalname="ceros(7:0)" name="dina(7:0)" />
            <blockpin signalname="ceros(0)" name="wea(0:0)" />
            <blockpin signalname="ck" name="clka" />
            <blockpin signalname="c_i(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_21(7:0)">
            <blockpin signalname="res_parc(13:6)" name="I" />
            <blockpin signalname="res_parcl(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="704" type="branch" />
            <wire x2="1280" y1="704" y2="704" x1="976" />
            <wire x2="1424" y1="704" y2="704" x1="1280" />
        </branch>
        <branch name="c_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="768" type="branch" />
            <wire x2="1264" y1="1040" y2="1040" x1="1168" />
            <wire x2="1264" y1="768" y2="1040" x1="1264" />
            <wire x2="1424" y1="768" y2="768" x1="1264" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="864" type="branch" />
            <wire x2="1424" y1="864" y2="864" x1="1408" />
        </branch>
        <rect width="828" x="360" y="516" height="1864" />
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
        <branch name="dat_sal(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="64" type="branch" />
            <wire x2="2480" y1="64" y2="64" x1="2464" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="128" type="branch" />
            <wire x2="2480" y1="128" y2="128" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2480" y="64" name="dat_sal(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2480" y="128" name="dato_sal_sync" orien="R0" />
        <instance x="832" y="416" name="XLXI_17(7:0)" orien="R0" />
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="240" type="branch" />
            <wire x2="896" y1="240" y2="288" x1="896" />
            <wire x2="1024" y1="240" y2="240" x1="896" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="896" type="branch" />
            <wire x2="2176" y1="896" y2="896" x1="2160" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="832" type="branch" />
            <wire x2="2176" y1="832" y2="832" x1="2160" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="736" type="branch" />
            <wire x2="2176" y1="736" y2="736" x1="2160" />
        </branch>
        <instance x="2176" y="624" name="XLXI_7" orien="R0">
        </instance>
        <branch name="xi_por_ci(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="704" type="branch" />
            <wire x2="2096" y1="704" y2="704" x1="2000" />
            <wire x2="2176" y1="704" y2="704" x1="2096" />
        </branch>
        <instance x="1520" y="352" name="XLXI_16" orien="R0">
        </instance>
        <branch name="indice(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="384" type="branch" />
            <wire x2="1952" y1="384" y2="384" x1="1936" />
        </branch>
        <branch name="inicializar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="128" type="branch" />
            <wire x2="1952" y1="128" y2="128" x1="1936" />
        </branch>
        <branch name="acumular">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="192" type="branch" />
            <wire x2="1952" y1="192" y2="192" x1="1936" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="256" type="branch" />
            <wire x2="1952" y1="256" y2="256" x1="1936" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="320" type="branch" />
            <wire x2="1520" y1="320" y2="320" x1="1504" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="224" type="branch" />
            <wire x2="1520" y1="224" y2="224" x1="1504" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="128" type="branch" />
            <wire x2="1520" y1="128" y2="128" x1="1504" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="448" type="branch" />
            <wire x2="1952" y1="448" y2="448" x1="1936" />
        </branch>
        <branch name="multiplicar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="928" type="branch" />
            <wire x2="1424" y1="928" y2="928" x1="1408" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="704" type="branch" />
            <wire x2="592" y1="704" y2="704" x1="576" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="768" type="branch" />
            <wire x2="592" y1="768" y2="768" x1="576" />
        </branch>
        <branch name="indice(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="832" type="branch" />
            <wire x2="576" y1="832" y2="832" x1="560" />
            <wire x2="592" y1="832" y2="832" x1="576" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="896" type="branch" />
            <wire x2="592" y1="896" y2="896" x1="576" />
        </branch>
        <instance x="592" y="992" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1232" type="branch" />
            <wire x2="592" y1="1232" y2="1232" x1="576" />
        </branch>
        <branch name="indice(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1040" type="branch" />
            <wire x2="592" y1="1040" y2="1040" x1="576" />
        </branch>
        <instance x="592" y="960" name="XLXI_5" orien="R0">
        </instance>
        <branch name="ceros(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1168" type="branch" />
            <wire x2="592" y1="1168" y2="1168" x1="576" />
        </branch>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1072" type="branch" />
            <wire x2="592" y1="1072" y2="1072" x1="576" />
        </branch>
        <instance x="2288" y="1184" name="XLXI_21(7:0)" orien="R0" />
        <instance x="1424" y="624" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2560" y="1408" name="XLXI_18(7:0)" orien="R0" />
        <branch name="res_parcl(7:0)">
            <wire x2="2528" y1="1152" y2="1152" x1="2512" />
            <wire x2="2560" y1="1152" y2="1152" x1="2528" />
        </branch>
        <branch name="res_parc(13:6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1152" type="branch" />
            <wire x2="2288" y1="1152" y2="1152" x1="2240" />
        </branch>
        <branch name="res_parc(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="704" type="branch" />
            <wire x2="2496" y1="704" y2="704" x1="2464" />
        </branch>
        <branch name="dat_sal(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1152" type="branch" />
            <wire x2="2976" y1="1152" y2="1152" x1="2944" />
        </branch>
        <branch name="guardar">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="1216" type="branch" />
            <wire x2="2560" y1="1216" y2="1216" x1="2544" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="1280" type="branch" />
            <wire x2="2560" y1="1280" y2="1280" x1="2544" />
        </branch>
        <branch name="guardar">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="512" type="branch" />
            <wire x2="1952" y1="512" y2="512" x1="1936" />
        </branch>
    </sheet>
</drawing>