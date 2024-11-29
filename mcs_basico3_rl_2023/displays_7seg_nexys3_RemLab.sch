<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="mill_bcd(3:0)" />
        <signal name="cent_bcd(3:0)" />
        <signal name="dec_bcd(3:0)" />
        <signal name="unid_bcd(3:0)" />
        <signal name="anodo(0)" />
        <signal name="anodo(1)" />
        <signal name="anodo(2)" />
        <signal name="anodo(3)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="sel0" />
        <signal name="sel1" />
        <signal name="ck_display" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="anodo(3:0)" />
        <signal name="siete_seg3(7:0)" />
        <signal name="siete_seg2(7:0)" />
        <signal name="siete_seg1(7:0)" />
        <signal name="siete_seg0(7:0)" />
        <signal name="punto_dec(3:0)" />
        <signal name="siete_seg3(7)" />
        <signal name="punto_dec(0)" />
        <signal name="siete_seg0(7)" />
        <signal name="punto_dec(1)" />
        <signal name="siete_seg1(7)" />
        <signal name="punto_dec(2)" />
        <signal name="siete_seg2(7)" />
        <signal name="punto_dec(3)" />
        <signal name="siete_seg3(6:0)" />
        <signal name="siete_seg2(6:0)" />
        <signal name="siete_seg1(6:0)" />
        <signal name="siete_seg0(6:0)" />
        <signal name="XLXN_91(6:0)" />
        <signal name="XLXN_92(6:0)" />
        <signal name="XLXN_93(6:0)" />
        <signal name="XLXN_94(6:0)" />
        <port polarity="Input" name="mill_bcd(3:0)" />
        <port polarity="Input" name="cent_bcd(3:0)" />
        <port polarity="Input" name="dec_bcd(3:0)" />
        <port polarity="Input" name="unid_bcd(3:0)" />
        <port polarity="Input" name="ck_display" />
        <port polarity="Output" name="anodo(3:0)" />
        <port polarity="Output" name="siete_seg3(7:0)" />
        <port polarity="Output" name="siete_seg2(7:0)" />
        <port polarity="Output" name="siete_seg1(7:0)" />
        <port polarity="Output" name="siete_seg0(7:0)" />
        <port polarity="Input" name="punto_dec(3:0)" />
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="bcd_7seg_neg">
            <timestamp>2015-10-29T12:7:4</timestamp>
            <rect width="416" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
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
        <blockdef name="fdse">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="fdce" name="XLXI_7">
            <blockpin signalname="ck_display" name="C" />
            <blockpin signalname="XLXN_20" name="CE" />
            <blockpin signalname="XLXN_61" name="CLR" />
            <blockpin signalname="anodo(3)" name="D" />
            <blockpin signalname="anodo(0)" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_20" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="XLXN_18" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_17" name="P" />
        </block>
        <block symbolname="nand2" name="XLXI_26">
            <blockpin signalname="anodo(3)" name="I0" />
            <blockpin signalname="anodo(2)" name="I1" />
            <blockpin signalname="sel1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_27">
            <blockpin signalname="anodo(3)" name="I0" />
            <blockpin signalname="anodo(1)" name="I1" />
            <blockpin signalname="sel0" name="O" />
        </block>
        <block symbolname="fdse" name="XLXI_30">
            <blockpin signalname="ck_display" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="anodo(0)" name="D" />
            <blockpin signalname="XLXN_60" name="S" />
            <blockpin signalname="anodo(1)" name="Q" />
        </block>
        <block symbolname="fdse" name="XLXI_31">
            <blockpin signalname="ck_display" name="C" />
            <blockpin signalname="XLXN_18" name="CE" />
            <blockpin signalname="anodo(1)" name="D" />
            <blockpin signalname="XLXN_59" name="S" />
            <blockpin signalname="anodo(2)" name="Q" />
        </block>
        <block symbolname="fdse" name="XLXI_32">
            <blockpin signalname="ck_display" name="C" />
            <blockpin signalname="XLXN_17" name="CE" />
            <blockpin signalname="anodo(2)" name="D" />
            <blockpin signalname="XLXN_58" name="S" />
            <blockpin signalname="anodo(3)" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_33">
            <blockpin signalname="XLXN_61" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_34">
            <blockpin signalname="XLXN_60" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_35">
            <blockpin signalname="XLXN_59" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_36">
            <blockpin signalname="XLXN_58" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="punto_dec(3)" name="I" />
            <blockpin signalname="siete_seg3(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="punto_dec(2)" name="I" />
            <blockpin signalname="siete_seg2(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="punto_dec(1)" name="I" />
            <blockpin signalname="siete_seg1(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_49">
            <blockpin signalname="punto_dec(0)" name="I" />
            <blockpin signalname="siete_seg0(7)" name="O" />
        </block>
        <block symbolname="bcd_7seg_neg" name="XLXI_38">
            <blockpin signalname="cent_bcd(3:0)" name="BCD(3:0)" />
            <blockpin signalname="XLXN_92(6:0)" name="SEGMENTO_NEG(6:0)" />
        </block>
        <block symbolname="bcd_7seg_neg" name="XLXI_39">
            <blockpin signalname="dec_bcd(3:0)" name="BCD(3:0)" />
            <blockpin signalname="XLXN_93(6:0)" name="SEGMENTO_NEG(6:0)" />
        </block>
        <block symbolname="bcd_7seg_neg" name="XLXI_40">
            <blockpin signalname="unid_bcd(3:0)" name="BCD(3:0)" />
            <blockpin signalname="XLXN_94(6:0)" name="SEGMENTO_NEG(6:0)" />
        </block>
        <block symbolname="bcd_7seg_neg" name="XLXI_16">
            <blockpin signalname="mill_bcd(3:0)" name="BCD(3:0)" />
            <blockpin signalname="XLXN_91(6:0)" name="SEGMENTO_NEG(6:0)" />
        </block>
        <block symbolname="inv" name="XLXI_50(6:0)">
            <blockpin signalname="XLXN_91(6:0)" name="I" />
            <blockpin signalname="siete_seg3(6:0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_51(6:0)">
            <blockpin signalname="XLXN_92(6:0)" name="I" />
            <blockpin signalname="siete_seg2(6:0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_52(6:0)">
            <blockpin signalname="XLXN_93(6:0)" name="I" />
            <blockpin signalname="siete_seg1(6:0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_53(6:0)">
            <blockpin signalname="XLXN_94(6:0)" name="I" />
            <blockpin signalname="siete_seg0(6:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="256" y="592" name="XLXI_7" orien="R0" />
        <branch name="anodo(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="336" type="branch" />
            <wire x2="736" y1="336" y2="336" x1="640" />
            <wire x2="864" y1="336" y2="336" x1="736" />
        </branch>
        <branch name="anodo(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="336" type="branch" />
            <wire x2="1344" y1="336" y2="336" x1="1248" />
            <wire x2="1456" y1="336" y2="336" x1="1344" />
        </branch>
        <branch name="anodo(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="336" type="branch" />
            <wire x2="1968" y1="336" y2="336" x1="1840" />
            <wire x2="2096" y1="336" y2="336" x1="1968" />
        </branch>
        <branch name="anodo(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="336" type="branch" />
            <wire x2="2624" y1="96" y2="96" x1="112" />
            <wire x2="2624" y1="96" y2="336" x1="2624" />
            <wire x2="112" y1="96" y2="336" x1="112" />
            <wire x2="256" y1="336" y2="336" x1="112" />
            <wire x2="2528" y1="336" y2="336" x1="2480" />
            <wire x2="2624" y1="336" y2="336" x1="2528" />
        </branch>
        <branch name="ck_display">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="464" type="branch" />
            <wire x2="224" y1="464" y2="464" x1="112" />
            <wire x2="256" y1="464" y2="464" x1="224" />
        </branch>
        <branch name="ck_display">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="464" type="branch" />
            <wire x2="1424" y1="464" y2="464" x1="1312" />
            <wire x2="1456" y1="464" y2="464" x1="1424" />
        </branch>
        <branch name="ck_display">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="464" type="branch" />
            <wire x2="832" y1="464" y2="464" x1="720" />
            <wire x2="864" y1="464" y2="464" x1="832" />
        </branch>
        <branch name="ck_display">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="464" type="branch" />
            <wire x2="2064" y1="464" y2="464" x1="1952" />
            <wire x2="2096" y1="464" y2="464" x1="2064" />
        </branch>
        <instance x="160" y="464" name="XLXI_12" orien="R270" />
        <instance x="784" y="464" name="XLXI_13" orien="R270" />
        <instance x="1376" y="464" name="XLXI_14" orien="R270" />
        <instance x="2016" y="464" name="XLXI_15" orien="R270" />
        <branch name="XLXN_17">
            <wire x2="2096" y1="400" y2="400" x1="2016" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1456" y1="400" y2="400" x1="1376" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="800" y1="400" y2="400" x1="784" />
            <wire x2="864" y1="400" y2="400" x1="800" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="256" y1="400" y2="400" x1="160" />
        </branch>
        <instance x="320" y="896" name="XLXI_26" orien="R0" />
        <instance x="320" y="1072" name="XLXI_27" orien="R0" />
        <branch name="anodo(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="768" type="branch" />
            <wire x2="240" y1="768" y2="768" x1="128" />
            <wire x2="320" y1="768" y2="768" x1="240" />
        </branch>
        <branch name="anodo(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="832" type="branch" />
            <wire x2="240" y1="832" y2="832" x1="128" />
            <wire x2="320" y1="832" y2="832" x1="240" />
        </branch>
        <branch name="anodo(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="944" type="branch" />
            <wire x2="240" y1="944" y2="944" x1="128" />
            <wire x2="320" y1="944" y2="944" x1="240" />
        </branch>
        <branch name="anodo(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1008" type="branch" />
            <wire x2="240" y1="1008" y2="1008" x1="128" />
            <wire x2="320" y1="1008" y2="1008" x1="240" />
        </branch>
        <branch name="sel1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="624" y="800" type="branch" />
            <wire x2="624" y1="800" y2="800" x1="576" />
            <wire x2="736" y1="800" y2="800" x1="624" />
        </branch>
        <branch name="sel0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="624" y="976" type="branch" />
            <wire x2="624" y1="976" y2="976" x1="576" />
            <wire x2="736" y1="976" y2="976" x1="624" />
        </branch>
        <instance x="1456" y="592" name="XLXI_31" orien="R0" />
        <instance x="2096" y="592" name="XLXI_32" orien="R0" />
        <instance x="80" y="496" name="XLXI_33" orien="R90" />
        <instance x="688" y="176" name="XLXI_34" orien="R90" />
        <instance x="1280" y="176" name="XLXI_35" orien="R90" />
        <instance x="1920" y="176" name="XLXI_36" orien="R90" />
        <branch name="XLXN_58">
            <wire x2="2096" y1="240" y2="240" x1="2048" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1456" y1="240" y2="240" x1="1408" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="832" y1="240" y2="240" x1="816" />
            <wire x2="864" y1="240" y2="240" x1="832" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="256" y1="560" y2="560" x1="208" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="1904" y="1760">displays_7seg_nexys3.sch</text>
        <branch name="anodo(3:0)">
            <wire x2="2416" y1="1376" y2="1376" x1="2240" />
        </branch>
        <branch name="siete_seg3(7:0)">
            <wire x2="2416" y1="1440" y2="1440" x1="2240" />
        </branch>
        <branch name="siete_seg2(7:0)">
            <wire x2="2416" y1="1504" y2="1504" x1="2240" />
        </branch>
        <branch name="siete_seg1(7:0)">
            <wire x2="2416" y1="1552" y2="1552" x1="2240" />
        </branch>
        <branch name="siete_seg0(7:0)">
            <wire x2="2416" y1="1600" y2="1600" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1376" name="anodo(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1440" name="siete_seg3(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1504" name="siete_seg2(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1552" name="siete_seg1(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1600" name="siete_seg0(7:0)" orien="R0" />
        <branch name="punto_dec(3:0)">
            <wire x2="448" y1="1520" y2="1520" x1="288" />
        </branch>
        <branch name="mill_bcd(3:0)">
            <wire x2="448" y1="1584" y2="1584" x1="288" />
        </branch>
        <branch name="cent_bcd(3:0)">
            <wire x2="448" y1="1648" y2="1648" x1="288" />
        </branch>
        <branch name="dec_bcd(3:0)">
            <wire x2="448" y1="1712" y2="1712" x1="288" />
        </branch>
        <branch name="unid_bcd(3:0)">
            <wire x2="448" y1="1776" y2="1776" x1="288" />
        </branch>
        <branch name="ck_display">
            <wire x2="448" y1="1456" y2="1456" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1520" name="punto_dec(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1584" name="mill_bcd(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1648" name="cent_bcd(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1712" name="dec_bcd(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1776" name="unid_bcd(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1456" name="ck_display" orien="R180" />
        <branch name="siete_seg3(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1376" type="branch" />
            <wire x2="1424" y1="1376" y2="1376" x1="1280" />
            <wire x2="1536" y1="1376" y2="1376" x1="1424" />
        </branch>
        <branch name="punto_dec(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1664" type="branch" />
            <wire x2="944" y1="1664" y2="1664" x1="832" />
            <wire x2="1056" y1="1664" y2="1664" x1="944" />
        </branch>
        <branch name="siete_seg0(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1664" type="branch" />
            <wire x2="1424" y1="1664" y2="1664" x1="1280" />
            <wire x2="1536" y1="1664" y2="1664" x1="1424" />
        </branch>
        <branch name="punto_dec(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1568" type="branch" />
            <wire x2="944" y1="1568" y2="1568" x1="832" />
            <wire x2="1056" y1="1568" y2="1568" x1="944" />
        </branch>
        <branch name="siete_seg1(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1568" type="branch" />
            <wire x2="1424" y1="1568" y2="1568" x1="1280" />
            <wire x2="1536" y1="1568" y2="1568" x1="1424" />
        </branch>
        <branch name="punto_dec(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1472" type="branch" />
            <wire x2="944" y1="1472" y2="1472" x1="832" />
            <wire x2="1056" y1="1472" y2="1472" x1="944" />
        </branch>
        <branch name="siete_seg2(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1472" type="branch" />
            <wire x2="1424" y1="1472" y2="1472" x1="1280" />
            <wire x2="1536" y1="1472" y2="1472" x1="1424" />
        </branch>
        <branch name="punto_dec(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1376" type="branch" />
            <wire x2="944" y1="1376" y2="1376" x1="832" />
            <wire x2="1056" y1="1376" y2="1376" x1="944" />
        </branch>
        <instance x="1056" y="1504" name="XLXI_47" orien="R0" />
        <instance x="1056" y="1600" name="XLXI_48" orien="R0" />
        <instance x="1056" y="1696" name="XLXI_49" orien="R0" />
        <instance x="864" y="592" name="XLXI_30" orien="R0" />
        <branch name="mill_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="704" type="branch" />
            <wire x2="1040" y1="704" y2="704" x1="928" />
            <wire x2="1152" y1="704" y2="704" x1="1040" />
        </branch>
        <branch name="cent_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="864" type="branch" />
            <wire x2="1040" y1="864" y2="864" x1="928" />
            <wire x2="1152" y1="864" y2="864" x1="1040" />
        </branch>
        <instance x="1152" y="896" name="XLXI_38" orien="R0">
        </instance>
        <branch name="dec_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1024" type="branch" />
            <wire x2="1040" y1="1024" y2="1024" x1="928" />
            <wire x2="1152" y1="1024" y2="1024" x1="1040" />
        </branch>
        <instance x="1152" y="1056" name="XLXI_39" orien="R0">
        </instance>
        <branch name="unid_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1184" type="branch" />
            <wire x2="1040" y1="1184" y2="1184" x1="928" />
            <wire x2="1152" y1="1184" y2="1184" x1="1040" />
        </branch>
        <instance x="1152" y="1216" name="XLXI_40" orien="R0">
        </instance>
        <instance x="1152" y="736" name="XLXI_16" orien="R0">
        </instance>
        <instance x="1808" y="736" name="XLXI_50(6:0)" orien="R0" />
        <instance x="1808" y="896" name="XLXI_51(6:0)" orien="R0" />
        <instance x="1808" y="1056" name="XLXI_52(6:0)" orien="R0" />
        <branch name="siete_seg3(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="704" type="branch" />
            <wire x2="2112" y1="704" y2="704" x1="2032" />
        </branch>
        <branch name="siete_seg2(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="864" type="branch" />
            <wire x2="2112" y1="864" y2="864" x1="2032" />
        </branch>
        <branch name="siete_seg1(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1024" type="branch" />
            <wire x2="2112" y1="1024" y2="1024" x1="2032" />
        </branch>
        <branch name="siete_seg0(6:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1184" type="branch" />
            <wire x2="2112" y1="1184" y2="1184" x1="2032" />
        </branch>
        <instance x="1808" y="1216" name="XLXI_53(6:0)" orien="R0" />
        <branch name="XLXN_91(6:0)">
            <wire x2="1808" y1="704" y2="704" x1="1696" />
        </branch>
        <branch name="XLXN_92(6:0)">
            <wire x2="1808" y1="864" y2="864" x1="1696" />
        </branch>
        <branch name="XLXN_93(6:0)">
            <wire x2="1808" y1="1024" y2="1024" x1="1696" />
        </branch>
        <branch name="XLXN_94(6:0)">
            <wire x2="1808" y1="1184" y2="1184" x1="1696" />
        </branch>
        <instance x="1056" y="1408" name="XLXI_46" orien="R0" />
    </sheet>
</drawing>