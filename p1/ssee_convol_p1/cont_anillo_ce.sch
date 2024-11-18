<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck" />
        <signal name="ce" />
        <signal name="ce4" />
        <signal name="ce3" />
        <signal name="ce2" />
        <signal name="ce1" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="ce" />
        <port polarity="Output" name="ce4" />
        <port polarity="Output" name="ce3" />
        <port polarity="Output" name="ce2" />
        <port polarity="Output" name="ce1" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <block symbolname="fdce" name="XLXI_1">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="XLXN_14" name="CLR" />
            <blockpin signalname="ce1" name="D" />
            <blockpin signalname="ce2" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_2">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="XLXN_15" name="CLR" />
            <blockpin signalname="ce2" name="D" />
            <blockpin signalname="ce3" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_3">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="XLXN_16" name="CLR" />
            <blockpin signalname="ce3" name="D" />
            <blockpin signalname="ce4" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_14" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="XLXN_15" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="fdse" name="XLXI_12">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="ce4" name="D" />
            <blockpin signalname="XLXN_17" name="S" />
            <blockpin signalname="ce1" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2688" height="1900">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1568" type="branch" />
            <wire x2="960" y1="1568" y2="1568" x1="896" />
            <wire x2="1072" y1="1568" y2="1568" x1="960" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1664" type="branch" />
            <wire x2="960" y1="1664" y2="1664" x1="896" />
            <wire x2="1072" y1="1664" y2="1664" x1="960" />
        </branch>
        <branch name="ce1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1568" type="branch" />
            <wire x2="1760" y1="1568" y2="1568" x1="1680" />
            <wire x2="1840" y1="1568" y2="1568" x1="1760" />
        </branch>
        <branch name="ce2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1648" type="branch" />
            <wire x2="1760" y1="1648" y2="1648" x1="1680" />
            <wire x2="1840" y1="1648" y2="1648" x1="1760" />
        </branch>
        <branch name="ce3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1728" type="branch" />
            <wire x2="1760" y1="1728" y2="1728" x1="1680" />
            <wire x2="1840" y1="1728" y2="1728" x1="1760" />
        </branch>
        <branch name="ce4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1808" type="branch" />
            <wire x2="1760" y1="1808" y2="1808" x1="1680" />
            <wire x2="1840" y1="1808" y2="1808" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="896" y="1568" name="ce" orien="R180" />
        <iomarker fontsize="28" x="896" y="1664" name="ck" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1568" name="ce1" orien="R0" />
        <iomarker fontsize="28" x="1840" y="1648" name="ce2" orien="R0" />
        <iomarker fontsize="28" x="1840" y="1728" name="ce3" orien="R0" />
        <iomarker fontsize="28" x="1840" y="1808" name="ce4" orien="R0" />
        <rect style="linestyle:Dash" width="656" x="156" y="40" height="168" />
        <text style="fontsize:40;fontname:Arial" x="200" y="128">Contador en anillo de 4 bits</text>
        <instance x="320" y="1120" name="XLXI_1" orien="R0" />
        <instance x="896" y="1120" name="XLXI_2" orien="R0" />
        <instance x="1504" y="1120" name="XLXI_3" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="304" y="992" type="branch" />
            <wire x2="304" y1="992" y2="992" x1="208" />
            <wire x2="320" y1="992" y2="992" x1="304" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="304" y="928" type="branch" />
            <wire x2="304" y1="928" y2="928" x1="208" />
            <wire x2="320" y1="928" y2="928" x1="304" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="880" y="992" type="branch" />
            <wire x2="880" y1="992" y2="992" x1="784" />
            <wire x2="896" y1="992" y2="992" x1="880" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="880" y="928" type="branch" />
            <wire x2="880" y1="928" y2="928" x1="784" />
            <wire x2="896" y1="928" y2="928" x1="880" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="992" type="branch" />
            <wire x2="1488" y1="992" y2="992" x1="1392" />
            <wire x2="1504" y1="992" y2="992" x1="1488" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="928" type="branch" />
            <wire x2="1488" y1="928" y2="928" x1="1392" />
            <wire x2="1504" y1="928" y2="928" x1="1488" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="992" type="branch" />
            <wire x2="2064" y1="992" y2="992" x1="1968" />
            <wire x2="2080" y1="992" y2="992" x1="2064" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="928" type="branch" />
            <wire x2="2048" y1="928" y2="928" x1="1968" />
            <wire x2="2080" y1="928" y2="928" x1="2048" />
        </branch>
        <branch name="ce2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="864" type="branch" />
            <wire x2="800" y1="864" y2="864" x1="704" />
            <wire x2="896" y1="864" y2="864" x1="800" />
        </branch>
        <branch name="ce3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="864" type="branch" />
            <wire x2="1392" y1="864" y2="864" x1="1280" />
            <wire x2="1504" y1="864" y2="864" x1="1392" />
        </branch>
        <branch name="ce4">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="864" type="branch" />
            <wire x2="1968" y1="864" y2="864" x1="1888" />
            <wire x2="2080" y1="864" y2="864" x1="1968" />
        </branch>
        <branch name="ce1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="864" type="branch" />
            <wire x2="2544" y1="448" y2="448" x1="256" />
            <wire x2="2544" y1="448" y2="864" x1="2544" />
            <wire x2="256" y1="448" y2="864" x1="256" />
            <wire x2="320" y1="864" y2="864" x1="256" />
            <wire x2="2496" y1="864" y2="864" x1="2464" />
            <wire x2="2544" y1="864" y2="864" x1="2496" />
        </branch>
        <instance x="256" y="1312" name="XLXI_8" orien="R0" />
        <instance x="832" y="1312" name="XLXI_9" orien="R0" />
        <instance x="1440" y="1312" name="XLXI_10" orien="R0" />
        <instance x="1904" y="752" name="XLXI_11" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="320" y1="1088" y2="1184" x1="320" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="896" y1="1088" y2="1184" x1="896" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1504" y1="1088" y2="1184" x1="1504" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2080" y1="608" y2="608" x1="1968" />
            <wire x2="2080" y1="608" y2="768" x1="2080" />
            <wire x2="1968" y1="608" y2="624" x1="1968" />
        </branch>
        <instance x="2080" y="1120" name="XLXI_12" orien="R0" />
    </sheet>
</drawing>