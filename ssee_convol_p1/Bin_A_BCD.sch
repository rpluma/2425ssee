<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="initZ" />
        <signal name="ck" />
        <signal name="mod_out" />
        <signal name="mod_in" />
        <signal name="cero" />
        <signal name="uno" />
        <signal name="q(3:0)" />
        <signal name="init" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_64" />
        <signal name="q(0)" />
        <signal name="q(1)" />
        <signal name="q(2)" />
        <signal name="q(3)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_85" />
        <signal name="XLXN_87" />
        <port polarity="Input" name="initZ" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="mod_out" />
        <port polarity="Input" name="mod_in" />
        <port polarity="Output" name="q(3:0)" />
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
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
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
        <blockdef name="fdr">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="compm4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_54">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_55">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="fdr" name="XLXI_39">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="init" name="R" />
            <blockpin signalname="q(2)" name="Q" />
        </block>
        <block symbolname="fdr" name="XLXI_40">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="init" name="R" />
            <blockpin signalname="q(1)" name="Q" />
        </block>
        <block symbolname="fdr" name="XLXI_41">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="mod_in" name="D" />
            <blockpin signalname="init" name="R" />
            <blockpin signalname="q(0)" name="Q" />
        </block>
        <block symbolname="fdr" name="XLXI_38">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="init" name="R" />
            <blockpin signalname="q(3)" name="Q" />
        </block>
        <block symbolname="m2_1" name="XLXI_13">
            <blockpin signalname="q(1)" name="D0" />
            <blockpin signalname="XLXN_49" name="D1" />
            <blockpin signalname="mod_out" name="S0" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_30">
            <blockpin signalname="q(0)" name="D0" />
            <blockpin signalname="XLXN_50" name="D1" />
            <blockpin signalname="mod_out" name="S0" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_12">
            <blockpin signalname="q(2)" name="D0" />
            <blockpin signalname="XLXN_48" name="D1" />
            <blockpin signalname="mod_out" name="S0" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="compm4" name="XLXI_53">
            <blockpin signalname="q(0)" name="A0" />
            <blockpin signalname="q(1)" name="A1" />
            <blockpin signalname="q(2)" name="A2" />
            <blockpin signalname="q(3)" name="A3" />
            <blockpin signalname="cero" name="B0" />
            <blockpin signalname="cero" name="B1" />
            <blockpin signalname="uno" name="B2" />
            <blockpin signalname="cero" name="B3" />
            <blockpin signalname="XLXN_42" name="GT" />
            <blockpin name="LT" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="initZ" name="I1" />
            <blockpin signalname="mod_out" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="q(0)" name="I" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_10">
            <blockpin signalname="q(0)" name="I0" />
            <blockpin signalname="q(1)" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="q(0)" name="I0" />
            <blockpin signalname="q(3)" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_56">
            <blockpin signalname="initZ" name="I" />
            <blockpin signalname="init" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="mod_in">
            <wire x2="3376" y1="800" y2="800" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3072" y="800" name="mod_in" orien="R180" />
        <branch name="initZ">
            <wire x2="3376" y1="880" y2="880" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3072" y="880" name="initZ" orien="R180" />
        <branch name="mod_out">
            <wire x2="3408" y1="992" y2="992" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3408" y="992" name="mod_out" orien="R0" />
        <branch name="q(3:0)">
            <wire x2="3408" y1="1088" y2="1088" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3408" y="1088" name="q(3:0)" orien="R0" />
        <branch name="ck">
            <wire x2="3376" y1="720" y2="720" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3072" y="720" name="ck" orien="R180" />
        <instance x="3360" y="2352" name="XLXI_54" orien="R0" />
        <instance x="3360" y="2000" name="XLXI_55" orien="R0" />
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="2192" type="branch" />
            <wire x2="3328" y1="2192" y2="2192" x1="3248" />
            <wire x2="3424" y1="2192" y2="2192" x1="3328" />
            <wire x2="3424" y1="2192" y2="2224" x1="3424" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="2080" type="branch" />
            <wire x2="3328" y1="2080" y2="2080" x1="3248" />
            <wire x2="3424" y1="2080" y2="2080" x1="3328" />
            <wire x2="3424" y1="2000" y2="2080" x1="3424" />
        </branch>
        <branch name="init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1088" type="branch" />
            <wire x2="1952" y1="1088" y2="1088" x1="1776" />
            <wire x2="2032" y1="1088" y2="1088" x1="1952" />
        </branch>
        <branch name="init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1520" type="branch" />
            <wire x2="1952" y1="1520" y2="1520" x1="1776" />
            <wire x2="2032" y1="1520" y2="1520" x1="1952" />
        </branch>
        <branch name="init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1952" type="branch" />
            <wire x2="1952" y1="1952" y2="1952" x1="1776" />
            <wire x2="2032" y1="1952" y2="1952" x1="1952" />
        </branch>
        <instance x="2032" y="1120" name="XLXI_39" orien="R0" />
        <instance x="2032" y="1552" name="XLXI_40" orien="R0" />
        <instance x="2032" y="1984" name="XLXI_41" orien="R0" />
        <branch name="init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="640" type="branch" />
            <wire x2="1952" y1="640" y2="640" x1="1776" />
            <wire x2="2032" y1="640" y2="640" x1="1952" />
        </branch>
        <instance x="2032" y="672" name="XLXI_38" orien="R0" />
        <instance x="1408" y="992" name="XLXI_13" orien="R0" />
        <instance x="1408" y="1424" name="XLXI_30" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2032" y1="416" y2="416" x1="1728" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2032" y1="864" y2="864" x1="1728" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2032" y1="1296" y2="1296" x1="1728" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="544" type="branch" />
            <wire x2="1936" y1="544" y2="544" x1="1776" />
            <wire x2="2032" y1="544" y2="544" x1="1936" />
        </branch>
        <instance x="1408" y="544" name="XLXI_12" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="992" type="branch" />
            <wire x2="1936" y1="992" y2="992" x1="1776" />
            <wire x2="2032" y1="992" y2="992" x1="1936" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1424" type="branch" />
            <wire x2="1936" y1="1424" y2="1424" x1="1776" />
            <wire x2="2032" y1="1424" y2="1424" x1="1936" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1856" type="branch" />
            <wire x2="1936" y1="1856" y2="1856" x1="1776" />
            <wire x2="2032" y1="1856" y2="1856" x1="1936" />
        </branch>
        <branch name="mod_out">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1472" type="branch" />
            <wire x2="592" y1="1472" y2="1472" x1="464" />
            <wire x2="768" y1="1472" y2="1472" x1="592" />
            <wire x2="1408" y1="1472" y2="1472" x1="768" />
            <wire x2="768" y1="592" y2="1056" x1="768" />
            <wire x2="768" y1="1056" y2="1472" x1="768" />
            <wire x2="1408" y1="1056" y2="1056" x1="768" />
            <wire x2="1408" y1="592" y2="592" x1="768" />
            <wire x2="1408" y1="512" y2="592" x1="1408" />
            <wire x2="1408" y1="960" y2="1056" x1="1408" />
            <wire x2="1408" y1="1392" y2="1472" x1="1408" />
        </branch>
        <branch name="mod_in">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1728" type="branch" />
            <wire x2="592" y1="1728" y2="1728" x1="464" />
            <wire x2="2032" y1="1728" y2="1728" x1="592" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1728" type="branch" />
            <wire x2="2528" y1="1728" y2="1728" x1="2416" />
            <wire x2="2688" y1="1728" y2="1728" x1="2528" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1296" type="branch" />
            <wire x2="2528" y1="1296" y2="1296" x1="2416" />
            <wire x2="2688" y1="1296" y2="1296" x1="2528" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="864" type="branch" />
            <wire x2="2528" y1="864" y2="864" x1="2416" />
            <wire x2="2688" y1="864" y2="864" x1="2528" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="416" type="branch" />
            <wire x2="2528" y1="416" y2="416" x1="2416" />
            <wire x2="2688" y1="416" y2="416" x1="2528" />
        </branch>
        <instance x="1328" y="2688" name="XLXI_53" orien="R0" />
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2560" type="branch" />
            <wire x2="1216" y1="2560" y2="2560" x1="1040" />
            <wire x2="1328" y1="2560" y2="2560" x1="1216" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2496" type="branch" />
            <wire x2="1216" y1="2496" y2="2496" x1="1040" />
            <wire x2="1328" y1="2496" y2="2496" x1="1216" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2432" type="branch" />
            <wire x2="1216" y1="2432" y2="2432" x1="1040" />
            <wire x2="1328" y1="2432" y2="2432" x1="1216" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2368" type="branch" />
            <wire x2="1216" y1="2368" y2="2368" x1="1040" />
            <wire x2="1328" y1="2368" y2="2368" x1="1216" />
        </branch>
        <instance x="2128" y="2368" name="XLXI_8" orien="R0" />
        <branch name="mod_out">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="2272" type="branch" />
            <wire x2="2464" y1="2272" y2="2272" x1="2384" />
            <wire x2="2624" y1="2272" y2="2272" x1="2464" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2128" y1="2304" y2="2304" x1="1712" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="2240" type="branch" />
            <wire x2="2016" y1="2240" y2="2240" x1="1856" />
            <wire x2="2128" y1="2240" y2="2240" x1="2016" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2304" type="branch" />
            <wire x2="1232" y1="2304" y2="2304" x1="1040" />
            <wire x2="1328" y1="2304" y2="2304" x1="1232" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2240" type="branch" />
            <wire x2="1232" y1="2240" y2="2240" x1="1040" />
            <wire x2="1328" y1="2240" y2="2240" x1="1232" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2176" type="branch" />
            <wire x2="1232" y1="2176" y2="2176" x1="1040" />
            <wire x2="1328" y1="2176" y2="2176" x1="1232" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2112" type="branch" />
            <wire x2="1232" y1="2112" y2="2112" x1="1040" />
            <wire x2="1328" y1="2112" y2="2112" x1="1232" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1408" y1="448" y2="448" x1="1296" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1408" y1="896" y2="896" x1="1296" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1408" y1="1328" y2="1328" x1="1296" />
        </branch>
        <instance x="1072" y="1360" name="XLXI_11" orien="R0" />
        <instance x="1040" y="992" name="XLXI_10" orien="R0" />
        <instance x="1040" y="544" name="XLXI_9" orien="R0" />
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1328" type="branch" />
            <wire x2="960" y1="1328" y2="1328" x1="864" />
            <wire x2="1040" y1="1328" y2="1328" x1="960" />
            <wire x2="1072" y1="1328" y2="1328" x1="1040" />
            <wire x2="1408" y1="1264" y2="1264" x1="1040" />
            <wire x2="1040" y1="1264" y2="1328" x1="1040" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="864" type="branch" />
            <wire x2="912" y1="864" y2="864" x1="848" />
            <wire x2="992" y1="864" y2="864" x1="912" />
            <wire x2="1040" y1="864" y2="864" x1="992" />
            <wire x2="1408" y1="832" y2="832" x1="992" />
            <wire x2="992" y1="832" y2="864" x1="992" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="336" type="branch" />
            <wire x2="928" y1="336" y2="336" x1="848" />
            <wire x2="1280" y1="336" y2="336" x1="928" />
            <wire x2="1280" y1="336" y2="384" x1="1280" />
            <wire x2="1408" y1="384" y2="384" x1="1280" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="416" type="branch" />
            <wire x2="928" y1="416" y2="416" x1="848" />
            <wire x2="1040" y1="416" y2="416" x1="928" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="480" type="branch" />
            <wire x2="928" y1="480" y2="480" x1="848" />
            <wire x2="1040" y1="480" y2="480" x1="928" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="928" type="branch" />
            <wire x2="912" y1="928" y2="928" x1="848" />
            <wire x2="1040" y1="928" y2="928" x1="912" />
        </branch>
        <instance x="656" y="1920" name="XLXI_56" orien="R0" />
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1888" type="branch" />
            <wire x2="592" y1="1888" y2="1888" x1="448" />
            <wire x2="656" y1="1888" y2="1888" x1="592" />
        </branch>
        <branch name="init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1888" type="branch" />
            <wire x2="960" y1="1888" y2="1888" x1="880" />
            <wire x2="1104" y1="1888" y2="1888" x1="960" />
        </branch>
        <rect style="linestyle:Dash" width="1304" x="1140" y="52" height="148" />
        <text style="fontsize:56;fontname:Arial" x="1248" y="124">Conversor Binario a BCD serie (1 cifra BCD)</text>
    </sheet>
</drawing>