<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_89" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="ck" />
        <signal name="XLXN_137" />
        <signal name="ldZ" />
        <signal name="q1" />
        <signal name="q2" />
        <signal name="q3" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="d(3)" />
        <signal name="sin" />
        <signal name="d(3:0)" />
        <signal name="q0" />
        <signal name="d(2)" />
        <signal name="d(1)" />
        <signal name="c1" />
        <signal name="XLXN_53" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="d(0)" />
        <signal name="XLXN_82" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="ldZ" />
        <port polarity="Input" name="sin" />
        <port polarity="Input" name="d(3:0)" />
        <port polarity="Output" name="q0" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_13">
            <blockpin signalname="d(2)" name="D0" />
            <blockpin signalname="XLXN_49" name="D1" />
            <blockpin signalname="ldZ" name="S0" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_30">
            <blockpin signalname="d(1)" name="D0" />
            <blockpin signalname="q2" name="D1" />
            <blockpin signalname="ldZ" name="S0" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_12">
            <blockpin signalname="d(3)" name="D0" />
            <blockpin signalname="XLXN_48" name="D1" />
            <blockpin signalname="ldZ" name="S0" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="sin" name="I0" />
            <blockpin signalname="q3" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_56">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="q3" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_57">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_58">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_63">
            <blockpin signalname="sin" name="I0" />
            <blockpin signalname="q3" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_60">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_62" name="D" />
            <blockpin signalname="c1" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_61">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_53" name="D" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="m2_1" name="XLXI_62">
            <blockpin signalname="d(0)" name="D0" />
            <blockpin signalname="XLXN_82" name="D1" />
            <blockpin signalname="ldZ" name="S0" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_64">
            <blockpin signalname="q1" name="I0" />
            <blockpin signalname="c1" name="I1" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_65">
            <blockpin signalname="sin" name="I0" />
            <blockpin signalname="c1" name="I1" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_66">
            <blockpin signalname="q1" name="I0" />
            <blockpin signalname="sin" name="I1" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_67">
            <blockpin signalname="XLXN_60" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_59" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_68">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="ldZ" name="I1" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_82">
            <blockpin signalname="sin" name="I0" />
            <blockpin signalname="c1" name="I1" />
            <blockpin signalname="q1" name="I2" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1456" y="1168" name="XLXI_13" orien="R0" />
        <instance x="1456" y="1600" name="XLXI_30" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2080" y1="592" y2="592" x1="1776" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2080" y1="1040" y2="1040" x1="1776" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2080" y1="1472" y2="1472" x1="1776" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="720" type="branch" />
            <wire x2="1984" y1="720" y2="720" x1="1824" />
            <wire x2="2080" y1="720" y2="720" x1="1984" />
        </branch>
        <instance x="1456" y="720" name="XLXI_12" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1168" type="branch" />
            <wire x2="1984" y1="1168" y2="1168" x1="1824" />
            <wire x2="2080" y1="1168" y2="1168" x1="1984" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1600" type="branch" />
            <wire x2="1984" y1="1600" y2="1600" x1="1824" />
            <wire x2="2080" y1="1600" y2="1600" x1="1984" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1648" type="branch" />
            <wire x2="640" y1="1648" y2="1648" x1="512" />
            <wire x2="816" y1="1648" y2="1648" x1="640" />
            <wire x2="1456" y1="1648" y2="1648" x1="816" />
            <wire x2="816" y1="1648" y2="2576" x1="816" />
            <wire x2="1440" y1="2576" y2="2576" x1="816" />
            <wire x2="816" y1="768" y2="1232" x1="816" />
            <wire x2="816" y1="1232" y2="1648" x1="816" />
            <wire x2="1456" y1="1232" y2="1232" x1="816" />
            <wire x2="1456" y1="768" y2="768" x1="816" />
            <wire x2="1440" y1="2496" y2="2576" x1="1440" />
            <wire x2="1456" y1="688" y2="768" x1="1456" />
            <wire x2="1456" y1="1136" y2="1232" x1="1456" />
            <wire x2="1456" y1="1568" y2="1648" x1="1456" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1472" type="branch" />
            <wire x2="2576" y1="1472" y2="1472" x1="2464" />
            <wire x2="2736" y1="1472" y2="1472" x1="2576" />
        </branch>
        <branch name="q2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1040" type="branch" />
            <wire x2="2576" y1="1040" y2="1040" x1="2464" />
            <wire x2="2736" y1="1040" y2="1040" x1="2576" />
        </branch>
        <branch name="q3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="592" type="branch" />
            <wire x2="2576" y1="592" y2="592" x1="2464" />
            <wire x2="2736" y1="592" y2="592" x1="2576" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1456" y1="624" y2="624" x1="1344" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1456" y1="1072" y2="1072" x1="1344" />
        </branch>
        <branch name="q2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1504" type="branch" />
            <wire x2="960" y1="1504" y2="1504" x1="896" />
            <wire x2="1456" y1="1504" y2="1504" x1="960" />
        </branch>
        <instance x="1088" y="720" name="XLXI_9" orien="R0" />
        <branch name="d(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="512" type="branch" />
            <wire x2="976" y1="512" y2="512" x1="896" />
            <wire x2="1328" y1="512" y2="512" x1="976" />
            <wire x2="1328" y1="512" y2="560" x1="1328" />
            <wire x2="1456" y1="560" y2="560" x1="1328" />
        </branch>
        <branch name="q3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="592" type="branch" />
            <wire x2="976" y1="592" y2="592" x1="896" />
            <wire x2="1088" y1="592" y2="592" x1="976" />
        </branch>
        <branch name="sin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="656" type="branch" />
            <wire x2="976" y1="656" y2="656" x1="896" />
            <wire x2="1088" y1="656" y2="656" x1="976" />
        </branch>
        <branch name="sin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1104" type="branch" />
            <wire x2="960" y1="1104" y2="1104" x1="896" />
            <wire x2="1088" y1="1104" y2="1104" x1="960" />
        </branch>
        <branch name="d(3:0)">
            <wire x2="3392" y1="1120" y2="1120" x1="3088" />
        </branch>
        <branch name="ldZ">
            <wire x2="3392" y1="1200" y2="1200" x1="3088" />
        </branch>
        <branch name="ck">
            <wire x2="3392" y1="1040" y2="1040" x1="3088" />
        </branch>
        <branch name="q0">
            <wire x2="3424" y1="1392" y2="1392" x1="3184" />
        </branch>
        <branch name="sin">
            <wire x2="3392" y1="1280" y2="1280" x1="3088" />
        </branch>
        <instance x="2080" y="848" name="XLXI_56" orien="R0" />
        <instance x="2080" y="1296" name="XLXI_57" orien="R0" />
        <instance x="2080" y="1728" name="XLXI_58" orien="R0" />
        <instance x="1088" y="1168" name="XLXI_63" orien="R0" />
        <branch name="d(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="960" type="branch" />
            <wire x2="960" y1="960" y2="960" x1="896" />
            <wire x2="1328" y1="960" y2="960" x1="960" />
            <wire x2="1328" y1="960" y2="1008" x1="1328" />
            <wire x2="1456" y1="1008" y2="1008" x1="1328" />
        </branch>
        <branch name="q3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1040" type="branch" />
            <wire x2="960" y1="1040" y2="1040" x1="896" />
            <wire x2="1088" y1="1040" y2="1040" x1="960" />
        </branch>
        <branch name="d(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1440" type="branch" />
            <wire x2="960" y1="1440" y2="1440" x1="896" />
            <wire x2="1456" y1="1440" y2="1440" x1="960" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2096" type="branch" />
            <wire x2="1984" y1="2096" y2="2096" x1="1824" />
            <wire x2="2080" y1="2096" y2="2096" x1="1984" />
        </branch>
        <branch name="c1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1968" type="branch" />
            <wire x2="2576" y1="1968" y2="1968" x1="2464" />
            <wire x2="2736" y1="1968" y2="1968" x1="2576" />
        </branch>
        <instance x="2080" y="2224" name="XLXI_60" orien="R0" />
        <instance x="2080" y="2656" name="XLXI_61" orien="R0" />
        <instance x="1440" y="2528" name="XLXI_62" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="2080" y1="2400" y2="2400" x1="1760" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2528" type="branch" />
            <wire x2="1984" y1="2528" y2="2528" x1="1824" />
            <wire x2="2080" y1="2528" y2="2528" x1="1984" />
        </branch>
        <instance x="1072" y="1952" name="XLXI_64" orien="R0" />
        <instance x="1072" y="2096" name="XLXI_65" orien="R0" />
        <instance x="1072" y="2240" name="XLXI_66" orien="R0" />
        <instance x="1408" y="2128" name="XLXI_67" orien="R0" />
        <instance x="1744" y="2064" name="XLXI_68" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="1408" y1="2000" y2="2000" x1="1328" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1408" y1="1856" y2="1856" x1="1328" />
            <wire x2="1408" y1="1856" y2="1936" x1="1408" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1408" y1="2144" y2="2144" x1="1328" />
            <wire x2="1408" y1="2064" y2="2144" x1="1408" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1744" y1="2000" y2="2000" x1="1664" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2080" y1="1968" y2="1968" x1="2000" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1760" type="branch" />
            <wire x2="960" y1="1760" y2="1760" x1="896" />
            <wire x2="1680" y1="1760" y2="1760" x1="960" />
            <wire x2="1680" y1="1760" y2="1936" x1="1680" />
            <wire x2="1744" y1="1936" y2="1936" x1="1680" />
        </branch>
        <branch name="c1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1824" type="branch" />
            <wire x2="960" y1="1824" y2="1824" x1="896" />
            <wire x2="1072" y1="1824" y2="1824" x1="960" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1888" type="branch" />
            <wire x2="960" y1="1888" y2="1888" x1="896" />
            <wire x2="1072" y1="1888" y2="1888" x1="960" />
        </branch>
        <branch name="c1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1968" type="branch" />
            <wire x2="960" y1="1968" y2="1968" x1="896" />
            <wire x2="1072" y1="1968" y2="1968" x1="960" />
        </branch>
        <branch name="sin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2032" type="branch" />
            <wire x2="960" y1="2032" y2="2032" x1="896" />
            <wire x2="1072" y1="2032" y2="2032" x1="960" />
        </branch>
        <branch name="sin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2112" type="branch" />
            <wire x2="960" y1="2112" y2="2112" x1="896" />
            <wire x2="1072" y1="2112" y2="2112" x1="960" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2176" type="branch" />
            <wire x2="960" y1="2176" y2="2176" x1="896" />
            <wire x2="1072" y1="2176" y2="2176" x1="960" />
        </branch>
        <branch name="q0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2400" type="branch" />
            <wire x2="2576" y1="2400" y2="2400" x1="2464" />
            <wire x2="2736" y1="2400" y2="2400" x1="2576" />
        </branch>
        <instance x="1088" y="2560" name="XLXI_82" orien="R0" />
        <branch name="d(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2304" type="branch" />
            <wire x2="960" y1="2304" y2="2304" x1="896" />
            <wire x2="1376" y1="2304" y2="2304" x1="960" />
            <wire x2="1376" y1="2304" y2="2368" x1="1376" />
            <wire x2="1440" y1="2368" y2="2368" x1="1376" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="1440" y1="2432" y2="2432" x1="1344" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2368" type="branch" />
            <wire x2="960" y1="2368" y2="2368" x1="896" />
            <wire x2="1088" y1="2368" y2="2368" x1="960" />
        </branch>
        <branch name="c1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2432" type="branch" />
            <wire x2="960" y1="2432" y2="2432" x1="896" />
            <wire x2="1088" y1="2432" y2="2432" x1="960" />
        </branch>
        <branch name="sin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2496" type="branch" />
            <wire x2="960" y1="2496" y2="2496" x1="896" />
            <wire x2="1088" y1="2496" y2="2496" x1="960" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1120" name="d(3:0)" orien="R180" />
        <iomarker fontsize="28" x="3088" y="1200" name="ldZ" orien="R180" />
        <iomarker fontsize="28" x="3088" y="1040" name="ck" orien="R180" />
        <iomarker fontsize="28" x="3424" y="1392" name="q0" orien="R0" />
        <iomarker fontsize="28" x="3088" y="1280" name="sin" orien="R180" />
        <rect style="linestyle:Dash" width="1304" x="1140" y="84" height="148" />
        <text style="fontsize:56;fontname:Arial" x="1248" y="156">Conversor BCD a Binario serie (1 cifra BCD)</text>
    </sheet>
</drawing>