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
        <signal name="dato_ent(7:0)" />
        <signal name="indice(2:0)" />
        <signal name="x_i(7:0)" />
        <signal name="x_1(7:0)" />
        <signal name="x_2(7:0)" />
        <signal name="x_3(7:0)" />
        <signal name="x_4(7:0)" />
        <signal name="x_5(7:0)" />
        <signal name="x_6(7:0)" />
        <signal name="x_7(7:0)" />
        <signal name="uno" />
        <signal name="indice(0)" />
        <signal name="indice(1)" />
        <signal name="indice(2)" />
        <signal name="x_0(7:0)" />
        <port polarity="Input" name="dato_nuevo" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_ent(7:0)" />
        <port polarity="Input" name="indice(2:0)" />
        <port polarity="Output" name="x_i(7:0)" />
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
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="m8_1e" name="XLXI_9(7:0)">
            <blockpin signalname="x_0(7:0)" name="D0" />
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
        <block symbolname="fde" name="XLXI_11(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="dato_ent(7:0)" name="D" />
            <blockpin signalname="x_0(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_15(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_0(7:0)" name="D" />
            <blockpin signalname="x_1(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_16(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_1(7:0)" name="D" />
            <blockpin signalname="x_2(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_17(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_2(7:0)" name="D" />
            <blockpin signalname="x_3(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_18(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_3(7:0)" name="D" />
            <blockpin signalname="x_4(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_19(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_4(7:0)" name="D" />
            <blockpin signalname="x_5(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_20(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_5(7:0)" name="D" />
            <blockpin signalname="x_6(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_21(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_nuevo" name="CE" />
            <blockpin signalname="x_6(7:0)" name="D" />
            <blockpin signalname="x_7(7:0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="dato_nuevo">
            <wire x2="656" y1="432" y2="432" x1="432" />
        </branch>
        <branch name="ck">
            <wire x2="656" y1="560" y2="560" x1="432" />
        </branch>
        <branch name="dato_ent(7:0)">
            <wire x2="656" y1="368" y2="368" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="368" name="dato_ent(7:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="432" name="dato_nuevo" orien="R180" />
        <iomarker fontsize="28" x="432" y="560" name="ck" orien="R180" />
        <branch name="indice(2:0)">
            <wire x2="656" y1="640" y2="640" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="640" name="indice(2:0)" orien="R180" />
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1824" type="branch" />
            <wire x2="256" y1="1824" y2="1824" x1="240" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1888" type="branch" />
            <wire x2="256" y1="1888" y2="1888" x1="240" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1952" type="branch" />
            <wire x2="256" y1="1952" y2="1952" x1="240" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1824" type="branch" />
            <wire x2="656" y1="1824" y2="1824" x1="640" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1824" type="branch" />
            <wire x2="976" y1="1824" y2="1824" x1="960" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1888" type="branch" />
            <wire x2="976" y1="1888" y2="1888" x1="960" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1952" type="branch" />
            <wire x2="976" y1="1952" y2="1952" x1="960" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1824" type="branch" />
            <wire x2="1376" y1="1824" y2="1824" x1="1360" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1344" type="branch" />
            <wire x2="1376" y1="1344" y2="1344" x1="1360" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1472" type="branch" />
            <wire x2="976" y1="1472" y2="1472" x1="960" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1408" type="branch" />
            <wire x2="976" y1="1408" y2="1408" x1="960" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1344" type="branch" />
            <wire x2="976" y1="1344" y2="1344" x1="960" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1824" type="branch" />
            <wire x2="1696" y1="1824" y2="1824" x1="1680" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1888" type="branch" />
            <wire x2="1696" y1="1888" y2="1888" x1="1680" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1952" type="branch" />
            <wire x2="1696" y1="1952" y2="1952" x1="1680" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1824" type="branch" />
            <wire x2="2144" y1="1824" y2="1824" x1="2080" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1344" type="branch" />
            <wire x2="1696" y1="1344" y2="1344" x1="1680" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1408" type="branch" />
            <wire x2="1696" y1="1408" y2="1408" x1="1680" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1472" type="branch" />
            <wire x2="1696" y1="1472" y2="1472" x1="1680" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1344" type="branch" />
            <wire x2="2096" y1="1344" y2="1344" x1="2080" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1824" type="branch" />
            <wire x2="2416" y1="1824" y2="1824" x1="2400" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1888" type="branch" />
            <wire x2="2416" y1="1888" y2="1888" x1="2400" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1952" type="branch" />
            <wire x2="2416" y1="1952" y2="1952" x1="2400" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1824" type="branch" />
            <wire x2="2816" y1="1824" y2="1824" x1="2800" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1344" type="branch" />
            <wire x2="2416" y1="1344" y2="1344" x1="2400" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1408" type="branch" />
            <wire x2="2416" y1="1408" y2="1408" x1="2400" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1472" type="branch" />
            <wire x2="2416" y1="1472" y2="1472" x1="2400" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1344" type="branch" />
            <wire x2="2816" y1="1344" y2="1344" x1="2800" />
        </branch>
        <instance x="800" y="448" name="XLXI_10" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="480" type="branch" />
            <wire x2="864" y1="448" y2="480" x1="864" />
            <wire x2="896" y1="480" y2="480" x1="864" />
            <wire x2="944" y1="480" y2="480" x1="896" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="336" type="branch" />
            <wire x2="2112" y1="336" y2="336" x1="2032" />
        </branch>
        <branch name="x_1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="400" type="branch" />
            <wire x2="2112" y1="400" y2="400" x1="2032" />
        </branch>
        <branch name="x_2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="464" type="branch" />
            <wire x2="2112" y1="464" y2="464" x1="2032" />
        </branch>
        <branch name="x_3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="528" type="branch" />
            <wire x2="2112" y1="528" y2="528" x1="2032" />
        </branch>
        <branch name="x_4(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="592" type="branch" />
            <wire x2="2112" y1="592" y2="592" x1="2032" />
        </branch>
        <branch name="x_5(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="656" type="branch" />
            <wire x2="2112" y1="656" y2="656" x1="2032" />
        </branch>
        <branch name="x_6(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="720" type="branch" />
            <wire x2="2112" y1="720" y2="720" x1="2032" />
        </branch>
        <branch name="x_7(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="784" type="branch" />
            <wire x2="2112" y1="784" y2="784" x1="2032" />
        </branch>
        <branch name="indice(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="848" type="branch" />
            <wire x2="2112" y1="848" y2="848" x1="2032" />
        </branch>
        <branch name="indice(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="912" type="branch" />
            <wire x2="2112" y1="912" y2="912" x1="2032" />
        </branch>
        <branch name="indice(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="976" type="branch" />
            <wire x2="2112" y1="976" y2="976" x1="2032" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1040" type="branch" />
            <wire x2="2112" y1="1040" y2="1040" x1="2032" />
        </branch>
        <branch name="x_i(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="560" type="branch" />
            <wire x2="2496" y1="560" y2="560" x1="2432" />
        </branch>
        <instance x="2112" y="1072" name="XLXI_9(7:0)" orien="R0" />
        <branch name="x_i(7:0)">
            <wire x2="2720" y1="352" y2="352" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="352" name="x_i(7:0)" orien="R0" />
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1344" type="branch" />
            <wire x2="256" y1="1344" y2="1344" x1="240" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1408" type="branch" />
            <wire x2="256" y1="1408" y2="1408" x1="240" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1472" type="branch" />
            <wire x2="240" y1="1472" y2="1472" x1="224" />
            <wire x2="256" y1="1472" y2="1472" x1="240" />
        </branch>
        <branch name="x_0(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1344" type="branch" />
            <wire x2="656" y1="1344" y2="1344" x1="640" />
        </branch>
        <instance x="256" y="1600" name="XLXI_11(7:0)" orien="R0" />
        <instance x="976" y="1600" name="XLXI_15(7:0)" orien="R0" />
        <instance x="1696" y="1600" name="XLXI_16(7:0)" orien="R0" />
        <instance x="2416" y="1600" name="XLXI_17(7:0)" orien="R0" />
        <instance x="256" y="2080" name="XLXI_18(7:0)" orien="R0" />
        <instance x="976" y="2080" name="XLXI_19(7:0)" orien="R0" />
        <instance x="1696" y="2080" name="XLXI_20(7:0)" orien="R0" />
        <instance x="2416" y="2080" name="XLXI_21(7:0)" orien="R0" />
    </sheet>
</drawing>