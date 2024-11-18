<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="dato_sal(7:0)" />
        <signal name="dato_sal_sync" />
        <signal name="ck" />
        <signal name="signo_sal" />
        <signal name="dato_sal_pos_sync" />
        <signal name="dato_sal_pos(7:0)" />
        <signal name="ceros(7:0)" />
        <signal name="dato_sal(7)" />
        <signal name="XLXN_5" />
        <port polarity="Input" name="dato_sal(7:0)" />
        <port polarity="Input" name="dato_sal_sync" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="signo_sal" />
        <port polarity="Output" name="dato_sal_pos_sync" />
        <port polarity="Output" name="dato_sal_pos(7:0)" />
        <blockdef name="bIpSumador">
            <timestamp>2024-10-30T10:14:35</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="256" y1="112" y2="112" style="linewidth:W" x1="288" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="bIpSumador" name="XLXI_2">
            <blockpin signalname="ceros(7:0)" name="a(7:0)" />
            <blockpin signalname="dato_sal(7:0)" name="b(7:0)" />
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="XLXN_5" name="add" />
            <blockpin signalname="dato_sal_sync" name="ce" />
            <blockpin signalname="dato_sal_pos(7:0)" name="s(7:0)" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_sal_sync" name="CE" />
            <blockpin signalname="dato_sal(7)" name="D" />
            <blockpin signalname="signo_sal" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_5(7:0)">
            <blockpin signalname="ceros(7:0)" name="G" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="dato_sal_sync" name="D" />
            <blockpin signalname="dato_sal_pos_sync" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="dato_sal(7)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="496" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1088" y="1312" name="XLXI_4" orien="R0" />
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="800" type="branch" />
            <wire x2="528" y1="800" y2="800" x1="432" />
            <wire x2="432" y1="800" y2="928" x1="432" />
        </branch>
        <branch name="ceros(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="576" type="branch" />
            <wire x2="1056" y1="576" y2="576" x1="1040" />
            <wire x2="1120" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="608" type="branch" />
            <wire x2="1056" y1="608" y2="608" x1="1040" />
            <wire x2="1120" y1="608" y2="608" x1="1056" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="640" type="branch" />
            <wire x2="1056" y1="640" y2="640" x1="1040" />
            <wire x2="1120" y1="640" y2="640" x1="1056" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="736" type="branch" />
            <wire x2="1056" y1="736" y2="736" x1="1040" />
            <wire x2="1120" y1="736" y2="736" x1="1056" />
        </branch>
        <branch name="dato_sal(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1056" type="branch" />
            <wire x2="1088" y1="1056" y2="1056" x1="1040" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1120" type="branch" />
            <wire x2="1088" y1="1120" y2="1120" x1="1040" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1184" type="branch" />
            <wire x2="1088" y1="1184" y2="1184" x1="1040" />
        </branch>
        <branch name="dato_sal_pos(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="608" type="branch" />
            <wire x2="1504" y1="608" y2="608" x1="1408" />
            <wire x2="1520" y1="608" y2="608" x1="1504" />
        </branch>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1056" type="branch" />
            <wire x2="1520" y1="1056" y2="1056" x1="1472" />
        </branch>
        <instance x="368" y="1056" name="XLXI_5(7:0)" orien="R0" />
        <instance x="1088" y="1664" name="XLXI_6" orien="R0" />
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1408" type="branch" />
            <wire x2="1088" y1="1408" y2="1408" x1="1024" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1536" type="branch" />
            <wire x2="1088" y1="1536" y2="1536" x1="1008" />
        </branch>
        <branch name="dato_sal_pos_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1408" type="branch" />
            <wire x2="1568" y1="1408" y2="1408" x1="1472" />
        </branch>
        <branch name="dato_sal(7:0)">
            <wire x2="448" y1="528" y2="528" x1="416" />
        </branch>
        <branch name="dato_sal_sync">
            <wire x2="448" y1="592" y2="592" x1="416" />
        </branch>
        <branch name="ck">
            <wire x2="448" y1="656" y2="656" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="528" name="dato_sal(7:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="592" name="dato_sal_sync" orien="R180" />
        <iomarker fontsize="28" x="416" y="656" name="ck" orien="R180" />
        <branch name="dato_sal_pos(7:0)">
            <wire x2="2112" y1="576" y2="576" x1="2064" />
        </branch>
        <branch name="dato_sal_pos_sync">
            <wire x2="2112" y1="656" y2="656" x1="2064" />
        </branch>
        <branch name="signo_sal">
            <wire x2="2112" y1="736" y2="736" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2112" y="576" name="dato_sal_pos(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2112" y="656" name="dato_sal_pos_sync" orien="R0" />
        <iomarker fontsize="28" x="2112" y="736" name="signo_sal" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1120" y1="672" y2="672" x1="976" />
        </branch>
        <instance x="752" y="704" name="XLXI_7" orien="R0" />
        <branch name="dato_sal(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="672" type="branch" />
            <wire x2="752" y1="672" y2="672" x1="736" />
        </branch>
    </sheet>
</drawing>