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
        <signal name="indice(2:0)" />
        <signal name="x_i(7:0)" />
        <signal name="x_0(7:0)" />
        <signal name="x_1(7:0)" />
        <signal name="x_2(7:0)" />
        <signal name="x_3(7:0)" />
        <signal name="x_4(7:0)" />
        <signal name="x_5(7:0)" />
        <signal name="x_6(7:0)" />
        <signal name="x_7(7:0)" />
        <signal name="indice(0)" />
        <signal name="indice(1)" />
        <signal name="indice(2)" />
        <signal name="XLXN_52" />
        <signal name="uno" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Input" name="indice(2:0)" />
        <port polarity="Output" name="x_i(7:0)" />
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
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="fdre" name="fdrex0(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="dato_ent(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_0(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex1(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="dato_ent(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_1(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex2(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_1(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_2(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex3(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_2(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_3(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex4(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_3(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_4(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex5(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_4(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_5(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex6(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_5(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_6(7:0)" name="Q" />
        </block>
        <block symbolname="fdre" name="fdrex7(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_6(7:0)" name="D" />
            <blockpin signalname="reset" name="R" />
            <blockpin signalname="x_7(7:0)" name="Q" />
        </block>
        <block symbolname="m8_1e" name="XLXI_9(7:0)">
            <blockpin signalname="dato_ent(7:0)" name="D0" />
            <blockpin signalname="x_1(7:0)" name="D1" />
            <blockpin signalname="x_2(7:0)" name="D2" />
            <blockpin signalname="x_3(7:0)" name="D3" />
            <blockpin signalname="x_4(7:0)" name="D4" />
            <blockpin signalname="x_5(7:0)" name="D5" />
            <blockpin signalname="x_6(7:0)" name="D6" />
            <blockpin signalname="x_7(7:0)" name="D7" />
            <blockpin signalname="uno" name="E" />
            <blockpin signalname="indice(0)" name="S0" />
            <blockpin signalname="indice(1)" name="S1" />
            <blockpin signalname="indice(2)" name="S2" />
            <blockpin signalname="x_i(7:0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="uno" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="dato_nuevo">
            <wire x2="656" y1="432" y2="432" x1="432" />
        </branch>
        <branch name="ck">
            <wire x2="656" y1="560" y2="560" x1="432" />
        </branch>
        <branch name="reset">
            <wire x2="656" y1="496" y2="496" x1="432" />
        </branch>
        <branch name="dato_ent(7:0)">
            <wire x2="656" y1="368" y2="368" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="368" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="432" name="dato_nuevo" orien="R180" />
        <iomarker fontsize="28" x="432" y="496" name="reset" orien="R180" />
        <iomarker fontsize="28" x="432" y="560" name="ck" orien="R180" />
        <branch name="indice(2:0)">
            <wire x2="656" y1="640" y2="640" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="640" name="indice(2:0)" orien="R180" />
        <branch name="x_i(7:0)">
            <wire x2="2960" y1="352" y2="352" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2960" y="352" name="x_i(7:0)" orien="R0" />
        <instance x="448" y="1552" name="fdrex0(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1296" type="branch" />
            <wire x2="448" y1="1296" y2="1296" x1="352" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1360" type="branch" />
            <wire x2="448" y1="1360" y2="1360" x1="352" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1424" type="branch" />
            <wire x2="448" y1="1424" y2="1424" x1="352" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1520" type="branch" />
            <wire x2="448" y1="1520" y2="1520" x1="352" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1296" type="branch" />
            <wire x2="896" y1="1296" y2="1296" x1="832" />
        </branch>
        <instance x="1264" y="1568" name="fdrex1(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1312" type="branch" />
            <wire x2="1264" y1="1312" y2="1312" x1="1168" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1376" type="branch" />
            <wire x2="1264" y1="1376" y2="1376" x1="1168" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1440" type="branch" />
            <wire x2="1264" y1="1440" y2="1440" x1="1168" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1536" type="branch" />
            <wire x2="1264" y1="1536" y2="1536" x1="1168" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1312" type="branch" />
            <wire x2="1712" y1="1312" y2="1312" x1="1648" />
        </branch>
        <instance x="2128" y="1568" name="fdrex2(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1312" type="branch" />
            <wire x2="2128" y1="1312" y2="1312" x1="2032" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1376" type="branch" />
            <wire x2="2128" y1="1376" y2="1376" x1="2032" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1440" type="branch" />
            <wire x2="2128" y1="1440" y2="1440" x1="2032" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1536" type="branch" />
            <wire x2="2128" y1="1536" y2="1536" x1="2032" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1312" type="branch" />
            <wire x2="2576" y1="1312" y2="1312" x1="2512" />
        </branch>
        <instance x="2944" y="1568" name="fdrex3(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1312" type="branch" />
            <wire x2="2944" y1="1312" y2="1312" x1="2848" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1376" type="branch" />
            <wire x2="2944" y1="1376" y2="1376" x1="2848" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1440" type="branch" />
            <wire x2="2944" y1="1440" y2="1440" x1="2848" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1536" type="branch" />
            <wire x2="2944" y1="1536" y2="1536" x1="2848" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="1312" type="branch" />
            <wire x2="3392" y1="1312" y2="1312" x1="3328" />
        </branch>
        <instance x="432" y="2272" name="fdrex4(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="2016" type="branch" />
            <wire x2="432" y1="2016" y2="2016" x1="336" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="2080" type="branch" />
            <wire x2="432" y1="2080" y2="2080" x1="336" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="2144" type="branch" />
            <wire x2="432" y1="2144" y2="2144" x1="336" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="2240" type="branch" />
            <wire x2="432" y1="2240" y2="2240" x1="336" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2016" type="branch" />
            <wire x2="880" y1="2016" y2="2016" x1="816" />
        </branch>
        <instance x="1280" y="2272" name="fdrex5(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2016" type="branch" />
            <wire x2="1280" y1="2016" y2="2016" x1="1184" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2080" type="branch" />
            <wire x2="1280" y1="2080" y2="2080" x1="1184" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2144" type="branch" />
            <wire x2="1280" y1="2144" y2="2144" x1="1184" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2240" type="branch" />
            <wire x2="1280" y1="2240" y2="2240" x1="1184" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="2016" type="branch" />
            <wire x2="1728" y1="2016" y2="2016" x1="1664" />
        </branch>
        <instance x="2112" y="2240" name="fdrex6(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1984" type="branch" />
            <wire x2="2112" y1="1984" y2="1984" x1="2016" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="2048" type="branch" />
            <wire x2="2112" y1="2048" y2="2048" x1="2016" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="2112" type="branch" />
            <wire x2="2112" y1="2112" y2="2112" x1="2016" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="2208" type="branch" />
            <wire x2="2112" y1="2208" y2="2208" x1="2016" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1984" type="branch" />
            <wire x2="2560" y1="1984" y2="1984" x1="2496" />
        </branch>
        <instance x="2912" y="2224" name="fdrex7(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="0" type="instance" />
        </instance>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1968" type="branch" />
            <wire x2="2912" y1="1968" y2="1968" x1="2816" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="2032" type="branch" />
            <wire x2="2912" y1="2032" y2="2032" x1="2816" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="2096" type="branch" />
            <wire x2="2912" y1="2096" y2="2096" x1="2816" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="2192" type="branch" />
            <wire x2="2912" y1="2192" y2="2192" x1="2816" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="1968" type="branch" />
            <wire x2="3360" y1="1968" y2="1968" x1="3296" />
        </branch>
        <instance x="1424" y="1008" name="XLXI_9(7:0)" orien="R0" />
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="272" type="branch" />
            <wire x2="1424" y1="272" y2="272" x1="1344" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="336" type="branch" />
            <wire x2="1424" y1="336" y2="336" x1="1344" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="400" type="branch" />
            <wire x2="1424" y1="400" y2="400" x1="1344" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="464" type="branch" />
            <wire x2="1424" y1="464" y2="464" x1="1344" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="528" type="branch" />
            <wire x2="1424" y1="528" y2="528" x1="1344" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="592" type="branch" />
            <wire x2="1424" y1="592" y2="592" x1="1344" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="656" type="branch" />
            <wire x2="1424" y1="656" y2="656" x1="1344" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="720" type="branch" />
            <wire x2="1424" y1="720" y2="720" x1="1344" />
        </branch>
        <branch name="indice(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="784" type="branch" />
            <wire x2="1424" y1="784" y2="784" x1="1344" />
        </branch>
        <branch name="indice(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="848" type="branch" />
            <wire x2="1424" y1="848" y2="848" x1="1344" />
        </branch>
        <branch name="indice(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="912" type="branch" />
            <wire x2="1424" y1="912" y2="912" x1="1344" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="976" type="branch" />
            <wire x2="1424" y1="976" y2="976" x1="1344" />
        </branch>
        <instance x="880" y="336" name="XLXI_10" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="368" type="branch" />
            <wire x2="944" y1="336" y2="368" x1="944" />
            <wire x2="976" y1="368" y2="368" x1="944" />
            <wire x2="1024" y1="368" y2="368" x1="976" />
        </branch>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="496" type="branch" />
            <wire x2="1808" y1="496" y2="496" x1="1744" />
        </branch>
    </sheet>
</drawing>