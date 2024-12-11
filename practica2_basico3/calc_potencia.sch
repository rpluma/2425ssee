<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="TemOb(7:0)" />
        <signal name="TemIn(7:0)" />
        <signal name="ck" />
        <signal name="potencia(7:0)" />
        <signal name="TemMin(7:0)" />
        <signal name="Tem_n" />
        <signal name="TemMax(7:0)" />
        <signal name="reset" />
        <signal name="calor(7:0)" />
        <signal name="s" />
        <signal name="res(7)" />
        <signal name="rango(7:0)" />
        <signal name="TemObj(7:0)" />
        <signal name="Tem_p" />
        <signal name="sel_sum(1)" />
        <signal name="sa(15:0)" />
        <signal name="res(15:0)" />
        <signal name="potencia_p" />
        <signal name="ce_rango" />
        <signal name="ce_calorx100" />
        <signal name="ce_calor" />
        <signal name="sumador" />
        <signal name="sb(12:0)" />
        <signal name="res(7:0)" />
        <signal name="sel_sum(0)" />
        <signal name="calorx100(15:0)" />
        <signal name="c,c,c,c,c,c,c,c,TemInt(7:0)" />
        <signal name="s,s,calor(7:0),c,c,c,c,c,c" />
        <signal name="c,c,c,c,c,c,c,c,LimSup(7:0)" />
        <signal name="LimSup(7:0)" />
        <signal name="LimInf(7:0)" />
        <signal name="c,c,c,c,c,TemObj(7:0)" />
        <signal name="calor(7:0),c,c,c,c,c" />
        <signal name="s,s,s,calor(7:0),c,c" />
        <signal name="c,c,c,c,c,LimInf(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_105" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_70" />
        <signal name="TemInt(7:0)" />
        <signal name="XLXN_42" />
        <signal name="add" />
        <signal name="divisor" />
        <signal name="quot(7:0)" />
        <signal name="c" />
        <signal name="sel_sum(1:0)" />
        <signal name="quot(15:0)" />
        <port polarity="Input" name="TemOb(7:0)" />
        <port polarity="Input" name="TemIn(7:0)" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="potencia(7:0)" />
        <port polarity="Input" name="TemMin(7:0)" />
        <port polarity="Input" name="Tem_n" />
        <port polarity="Input" name="TemMax(7:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="potencia_p" />
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
        <blockdef name="bIpSumRes">
            <timestamp>2024-12-4T9:50:3</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="256" y1="112" y2="112" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="bIpDividir">
            <timestamp>2024-12-4T9:56:38</timestamp>
            <rect width="512" x="32" y="32" height="352" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" style="linewidth:W" x1="0" />
            <line x2="544" y1="80" y2="80" x1="576" />
            <line x2="544" y1="208" y2="208" style="linewidth:W" x1="576" />
            <line x2="544" y1="240" y2="240" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="fsm_calcpotencia">
            <timestamp>2024-12-4T11:38:29</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="fde" name="XLXI_87">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_calor" name="CE" />
            <blockpin signalname="res(7)" name="D" />
            <blockpin signalname="s" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_84(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_calor" name="CE" />
            <blockpin signalname="res(7:0)" name="D" />
            <blockpin signalname="calor(7:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_86(15:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_calorx100" name="CE" />
            <blockpin signalname="res(15:0)" name="D" />
            <blockpin signalname="calorx100(15:0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_92(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_rango" name="CE" />
            <blockpin signalname="res(7:0)" name="D" />
            <blockpin signalname="rango(7:0)" name="Q" />
        </block>
        <block symbolname="m4_1e" name="XLXI_95(15:0)">
            <blockpin signalname="c,c,c,c,c,c,c,c,TemInt(7:0)" name="D0" />
            <blockpin signalname="s,s,calor(7:0),c,c,c,c,c,c" name="D1" />
            <blockpin signalname="calorx100(15:0)" name="D2" />
            <blockpin signalname="c,c,c,c,c,c,c,c,LimSup(7:0)" name="D3" />
            <blockpin signalname="sumador" name="E" />
            <blockpin signalname="sel_sum(0)" name="S0" />
            <blockpin signalname="sel_sum(1)" name="S1" />
            <blockpin signalname="sa(15:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_37(7:0)">
            <blockpin signalname="TemMax(7:0)" name="D0" />
            <blockpin signalname="TemObj(7:0)" name="D1" />
            <blockpin signalname="s" name="S0" />
            <blockpin signalname="LimSup(7:0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_76(7:0)">
            <blockpin signalname="TemObj(7:0)" name="D0" />
            <blockpin signalname="TemMin(7:0)" name="D1" />
            <blockpin signalname="s" name="S0" />
            <blockpin signalname="LimInf(7:0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_97(12:0)">
            <blockpin signalname="c,c,c,c,c,TemObj(7:0)" name="D0" />
            <blockpin signalname="calor(7:0),c,c,c,c,c" name="D1" />
            <blockpin signalname="s,s,s,calor(7:0),c,c" name="D2" />
            <blockpin signalname="c,c,c,c,c,LimInf(7:0)" name="D3" />
            <blockpin signalname="sumador" name="E" />
            <blockpin signalname="sel_sum(0)" name="S0" />
            <blockpin signalname="sel_sum(1)" name="S1" />
            <blockpin signalname="sb(12:0)" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_5(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="TemOb(7:0)" name="D" />
            <blockpin signalname="XLXN_12(7:0)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_1(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_12(7:0)" name="D" />
            <blockpin signalname="TemObj(7:0)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_6(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="TemIn(7:0)" name="D" />
            <blockpin signalname="XLXN_14(7:0)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2(7:0)">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_14(7:0)" name="D" />
            <blockpin signalname="TemInt(7:0)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="Tem_n" name="D" />
            <blockpin signalname="XLXN_105" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_58">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_105" name="D" />
            <blockpin signalname="XLXN_42" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_70" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="Tem_p" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_9">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_42" name="D" />
            <blockpin signalname="XLXN_38" name="Q" />
        </block>
        <block symbolname="bIpSumRes" name="XLXI_93">
            <blockpin signalname="sa(15:0)" name="a(15:0)" />
            <blockpin signalname="sb(12:0)" name="b(12:0)" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="res(15:0)" name="s(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_143(7:0)">
            <blockpin signalname="quot(7:0)" name="I" />
            <blockpin signalname="potencia(7:0)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_130">
            <blockpin signalname="c" name="G" />
        </block>
        <block symbolname="fsm_calcpotencia" name="XLXI_98">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="Tem_p" name="Tem_p" />
            <blockpin signalname="sumador" name="sumador" />
            <blockpin signalname="divisor" name="divisor" />
            <blockpin signalname="ce_calor" name="ce_calor" />
            <blockpin signalname="ce_calorx100" name="ce_calorx100" />
            <blockpin signalname="ce_rango" name="ce_rango" />
            <blockpin signalname="potencia_p" name="potencia_p" />
            <blockpin signalname="add" name="sum" />
            <blockpin signalname="sel_sum(1:0)" name="sel_sum(1:0)" />
        </block>
        <block symbolname="bIpDividir" name="XLXI_94">
            <blockpin signalname="ck" name="clk" />
            <blockpin signalname="divisor" name="ce" />
            <blockpin signalname="calorx100(15:0)" name="dividend(15:0)" />
            <blockpin signalname="rango(7:0)" name="divisor(7:0)" />
            <blockpin name="rfd" />
            <blockpin signalname="quot(15:0)" name="quotient(15:0)" />
            <blockpin name="fractional(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3136" y="1040" name="XLXI_87" orien="R0" />
        <branch name="res(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="384" type="branch" />
            <wire x2="3136" y1="384" y2="384" x1="3120" />
        </branch>
        <branch name="ce_calor">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="448" type="branch" />
            <wire x2="3136" y1="448" y2="448" x1="3120" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="512" type="branch" />
            <wire x2="3136" y1="512" y2="512" x1="3120" />
        </branch>
        <branch name="calor(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3536" y="384" type="branch" />
            <wire x2="3536" y1="384" y2="384" x1="3520" />
        </branch>
        <instance x="3136" y="640" name="XLXI_84(7:0)" orien="R0" />
        <branch name="s">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3536" y="784" type="branch" />
            <wire x2="3536" y1="784" y2="784" x1="3520" />
        </branch>
        <branch name="res(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="784" type="branch" />
            <wire x2="3136" y1="784" y2="784" x1="3120" />
        </branch>
        <branch name="ce_calor">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="848" type="branch" />
            <wire x2="3136" y1="848" y2="848" x1="3120" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="912" type="branch" />
            <wire x2="3136" y1="912" y2="912" x1="3120" />
        </branch>
        <instance x="4016" y="640" name="XLXI_86(15:0)" orien="R0" />
        <branch name="res(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="384" type="branch" />
            <wire x2="4016" y1="384" y2="384" x1="4000" />
        </branch>
        <branch name="ce_calorx100">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="448" type="branch" />
            <wire x2="4016" y1="448" y2="448" x1="4000" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="512" type="branch" />
            <wire x2="4016" y1="512" y2="512" x1="4000" />
        </branch>
        <branch name="calorx100(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4416" y="384" type="branch" />
            <wire x2="4416" y1="384" y2="384" x1="4400" />
        </branch>
        <instance x="3984" y="1040" name="XLXI_92(7:0)" orien="R0" />
        <branch name="res(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3968" y="784" type="branch" />
            <wire x2="3984" y1="784" y2="784" x1="3968" />
        </branch>
        <branch name="ce_rango">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3968" y="848" type="branch" />
            <wire x2="3984" y1="848" y2="848" x1="3968" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3968" y="912" type="branch" />
            <wire x2="3984" y1="912" y2="912" x1="3968" />
        </branch>
        <branch name="rango(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4384" y="784" type="branch" />
            <wire x2="4384" y1="784" y2="784" x1="4368" />
        </branch>
        <rect width="1840" x="2880" y="80" height="1136" />
        <rect width="2324" x="476" y="80" height="1136" />
        <instance x="4144" y="1792" name="XLXI_95(15:0)" orien="R0" />
        <branch name="c,c,c,c,c,c,c,c,TemInt(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1376" type="branch" />
            <wire x2="4144" y1="1376" y2="1376" x1="4112" />
        </branch>
        <branch name="s,s,calor(7:0),c,c,c,c,c,c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1440" type="branch" />
            <wire x2="4144" y1="1440" y2="1440" x1="4112" />
        </branch>
        <branch name="calorx100(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1504" type="branch" />
            <wire x2="4144" y1="1504" y2="1504" x1="4112" />
        </branch>
        <branch name="c,c,c,c,c,c,c,c,LimSup(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1568" type="branch" />
            <wire x2="4144" y1="1568" y2="1568" x1="4112" />
        </branch>
        <branch name="sel_sum(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1632" type="branch" />
            <wire x2="4144" y1="1632" y2="1632" x1="4112" />
        </branch>
        <branch name="sel_sum(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1696" type="branch" />
            <wire x2="4144" y1="1696" y2="1696" x1="4112" />
        </branch>
        <branch name="sumador">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1760" type="branch" />
            <wire x2="4144" y1="1760" y2="1760" x1="4112" />
        </branch>
        <branch name="sa(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="1472" type="branch" />
            <wire x2="4496" y1="1472" y2="1472" x1="4464" />
        </branch>
        <branch name="TemMax(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="1536" type="branch" />
            <wire x2="3184" y1="1536" y2="1536" x1="3136" />
        </branch>
        <branch name="TemObj(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="1600" type="branch" />
            <wire x2="3184" y1="1600" y2="1600" x1="3136" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="1664" type="branch" />
            <wire x2="3184" y1="1664" y2="1664" x1="3136" />
        </branch>
        <branch name="LimSup(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="1568" type="branch" />
            <wire x2="3552" y1="1568" y2="1568" x1="3504" />
        </branch>
        <instance x="3184" y="1696" name="XLXI_37(7:0)" orien="R0" />
        <branch name="TemObj(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="2112" type="branch" />
            <wire x2="3168" y1="2112" y2="2112" x1="3152" />
            <wire x2="3200" y1="2112" y2="2112" x1="3168" />
        </branch>
        <branch name="TemMin(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="2176" type="branch" />
            <wire x2="3168" y1="2176" y2="2176" x1="3152" />
            <wire x2="3200" y1="2176" y2="2176" x1="3168" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="2240" type="branch" />
            <wire x2="3168" y1="2240" y2="2240" x1="3152" />
            <wire x2="3200" y1="2240" y2="2240" x1="3168" />
        </branch>
        <branch name="LimInf(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="2144" type="branch" />
            <wire x2="3552" y1="2144" y2="2144" x1="3520" />
            <wire x2="3568" y1="2144" y2="2144" x1="3552" />
        </branch>
        <instance x="3200" y="2272" name="XLXI_76(7:0)" orien="R0" />
        <rect width="1840" x="2880" y="1280" height="1120" />
        <instance x="4144" y="2368" name="XLXI_97(12:0)" orien="R0" />
        <branch name="c,c,c,c,c,TemObj(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1952" type="branch" />
            <wire x2="4144" y1="1952" y2="1952" x1="4112" />
        </branch>
        <branch name="calor(7:0),c,c,c,c,c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2016" type="branch" />
            <wire x2="4144" y1="2016" y2="2016" x1="4112" />
        </branch>
        <branch name="s,s,s,calor(7:0),c,c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2080" type="branch" />
            <wire x2="4144" y1="2080" y2="2080" x1="4112" />
        </branch>
        <branch name="c,c,c,c,c,LimInf(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2144" type="branch" />
            <wire x2="4144" y1="2144" y2="2144" x1="4112" />
        </branch>
        <branch name="sel_sum(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2208" type="branch" />
            <wire x2="4144" y1="2208" y2="2208" x1="4112" />
        </branch>
        <branch name="sel_sum(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2272" type="branch" />
            <wire x2="4144" y1="2272" y2="2272" x1="4112" />
        </branch>
        <branch name="sumador">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="2336" type="branch" />
            <wire x2="4144" y1="2336" y2="2336" x1="4112" />
        </branch>
        <branch name="sb(12:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="2048" type="branch" />
            <wire x2="4496" y1="2048" y2="2048" x1="4464" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="768" type="branch" />
            <wire x2="1184" y1="768" y2="768" x1="1168" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="1184" y1="640" y2="640" x1="1088" />
        </branch>
        <branch name="Tem_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="320" type="branch" />
            <wire x2="704" y1="320" y2="320" x1="688" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="448" type="branch" />
            <wire x2="704" y1="448" y2="448" x1="688" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="448" type="branch" />
            <wire x2="1184" y1="448" y2="448" x1="1168" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="1184" y1="320" y2="320" x1="1088" />
        </branch>
        <branch name="TemOb(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="640" type="branch" />
            <wire x2="704" y1="640" y2="640" x1="688" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="768" type="branch" />
            <wire x2="704" y1="768" y2="768" x1="688" />
        </branch>
        <instance x="704" y="896" name="XLXI_5(7:0)" orien="R0" />
        <instance x="1184" y="896" name="XLXI_1(7:0)" orien="R0" />
        <branch name="TemIn(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="960" type="branch" />
            <wire x2="704" y1="960" y2="960" x1="688" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1088" type="branch" />
            <wire x2="704" y1="1088" y2="1088" x1="688" />
        </branch>
        <instance x="704" y="1216" name="XLXI_6(7:0)" orien="R0" />
        <branch name="XLXN_14(7:0)">
            <wire x2="1104" y1="960" y2="960" x1="1088" />
            <wire x2="1184" y1="960" y2="960" x1="1104" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1088" type="branch" />
            <wire x2="1184" y1="1088" y2="1088" x1="1168" />
        </branch>
        <instance x="1184" y="1216" name="XLXI_2(7:0)" orien="R0" />
        <instance x="704" y="576" name="XLXI_4" orien="R0" />
        <instance x="1184" y="576" name="XLXI_58" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2096" y1="320" y2="320" x1="2080" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="448" type="branch" />
            <wire x2="1680" y1="448" y2="448" x1="1664" />
            <wire x2="1696" y1="448" y2="448" x1="1680" />
        </branch>
        <instance x="2368" y="288" name="XLXI_11" orien="R0" />
        <branch name="XLXN_70">
            <wire x2="2336" y1="320" y2="320" x1="2320" />
            <wire x2="2336" y1="224" y2="320" x1="2336" />
            <wire x2="2368" y1="224" y2="224" x1="2336" />
        </branch>
        <instance x="2096" y="352" name="XLXI_10" orien="R0" />
        <branch name="TemObj(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="640" type="branch" />
            <wire x2="1600" y1="640" y2="640" x1="1568" />
        </branch>
        <branch name="TemInt(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="960" type="branch" />
            <wire x2="1600" y1="960" y2="960" x1="1568" />
        </branch>
        <branch name="Tem_p">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="192" type="branch" />
            <wire x2="2656" y1="192" y2="192" x1="2624" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1632" y1="320" y2="320" x1="1568" />
            <wire x2="1648" y1="320" y2="320" x1="1632" />
            <wire x2="1696" y1="320" y2="320" x1="1648" />
            <wire x2="2368" y1="160" y2="160" x1="1648" />
            <wire x2="1648" y1="160" y2="320" x1="1648" />
        </branch>
        <instance x="1696" y="576" name="XLXI_9" orien="R0" />
        <instance x="2176" y="1360" name="XLXI_93" orien="R0">
        </instance>
        <branch name="sa(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1440" type="branch" />
            <wire x2="2144" y1="1440" y2="1440" x1="2112" />
            <wire x2="2176" y1="1440" y2="1440" x1="2144" />
        </branch>
        <branch name="sb(12:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1472" type="branch" />
            <wire x2="2144" y1="1472" y2="1472" x1="2112" />
            <wire x2="2176" y1="1472" y2="1472" x1="2144" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1536" type="branch" />
            <wire x2="2144" y1="1536" y2="1536" x1="2112" />
            <wire x2="2176" y1="1536" y2="1536" x1="2144" />
        </branch>
        <branch name="res(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1472" type="branch" />
            <wire x2="2496" y1="1472" y2="1472" x1="2464" />
        </branch>
        <instance x="2208" y="2352" name="XLXI_143(7:0)" orien="R0" />
        <branch name="quot(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2320" type="branch" />
            <wire x2="2208" y1="2320" y2="2320" x1="2176" />
        </branch>
        <branch name="potencia(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="2320" type="branch" />
            <wire x2="2464" y1="2320" y2="2320" x1="2432" />
        </branch>
        <branch name="Tem_n">
            <wire x2="816" y1="1472" y2="1472" x1="752" />
        </branch>
        <branch name="TemOb(7:0)">
            <wire x2="816" y1="1552" y2="1552" x1="736" />
        </branch>
        <branch name="TemIn(7:0)">
            <wire x2="816" y1="1632" y2="1632" x1="736" />
        </branch>
        <branch name="potencia(7:0)">
            <wire x2="624" y1="2096" y2="2096" x1="544" />
        </branch>
        <branch name="potencia_p">
            <wire x2="624" y1="2160" y2="2160" x1="544" />
        </branch>
        <branch name="TemMax(7:0)">
            <wire x2="816" y1="1808" y2="1808" x1="784" />
        </branch>
        <branch name="TemMin(7:0)">
            <wire x2="816" y1="1728" y2="1728" x1="784" />
        </branch>
        <branch name="ck">
            <wire x2="816" y1="1888" y2="1888" x1="704" />
        </branch>
        <branch name="reset">
            <wire x2="816" y1="1952" y2="1952" x1="704" />
        </branch>
        <iomarker fontsize="28" x="752" y="1472" name="Tem_n" orien="R180" />
        <iomarker fontsize="28" x="736" y="1552" name="TemOb(7:0)" orien="R180" />
        <iomarker fontsize="28" x="736" y="1632" name="TemIn(7:0)" orien="R180" />
        <iomarker fontsize="28" x="624" y="2096" name="potencia(7:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="2160" name="potencia_p" orien="R0" />
        <iomarker fontsize="28" x="784" y="1808" name="TemMax(7:0)" orien="R180" />
        <iomarker fontsize="28" x="784" y="1728" name="TemMin(7:0)" orien="R180" />
        <iomarker fontsize="28" x="704" y="1888" name="ck" orien="R180" />
        <iomarker fontsize="28" x="704" y="1952" name="reset" orien="R180" />
        <rect width="396" x="480" y="1280" height="1120" />
        <instance x="592" y="2368" name="XLXI_130" orien="R0" />
        <branch name="c">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="2208" type="branch" />
            <wire x2="656" y1="2208" y2="2240" x1="656" />
            <wire x2="704" y1="2208" y2="2208" x1="656" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1504" type="branch" />
            <wire x2="1120" y1="1504" y2="1504" x1="1088" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1728" type="branch" />
            <wire x2="1120" y1="1728" y2="1728" x1="1088" />
        </branch>
        <branch name="Tem_p">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1952" type="branch" />
            <wire x2="1120" y1="1952" y2="1952" x1="1072" />
        </branch>
        <branch name="sel_sum(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1952" type="branch" />
            <wire x2="1536" y1="1952" y2="1952" x1="1504" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1888" type="branch" />
            <wire x2="1536" y1="1888" y2="1888" x1="1504" />
        </branch>
        <branch name="potencia_p">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1824" type="branch" />
            <wire x2="1536" y1="1824" y2="1824" x1="1504" />
        </branch>
        <branch name="ce_rango">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1760" type="branch" />
            <wire x2="1536" y1="1760" y2="1760" x1="1504" />
        </branch>
        <branch name="ce_calorx100">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1696" type="branch" />
            <wire x2="1536" y1="1696" y2="1696" x1="1504" />
        </branch>
        <branch name="ce_calor">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1632" type="branch" />
            <wire x2="1536" y1="1632" y2="1632" x1="1504" />
        </branch>
        <branch name="divisor">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1568" type="branch" />
            <wire x2="1536" y1="1568" y2="1568" x1="1504" />
        </branch>
        <branch name="sumador">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1504" type="branch" />
            <wire x2="1536" y1="1504" y2="1504" x1="1504" />
        </branch>
        <instance x="1120" y="1984" name="XLXI_98" orien="R0">
        </instance>
        <rect width="800" x="920" y="1280" height="1120" />
        <rect width="1048" x="1756" y="1280" height="1116" />
        <instance x="2048" y="1840" name="XLXI_94" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1920" type="branch" />
            <wire x2="2016" y1="1920" y2="1920" x1="1984" />
            <wire x2="2048" y1="1920" y2="1920" x1="2016" />
        </branch>
        <branch name="divisor">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1952" type="branch" />
            <wire x2="2016" y1="1952" y2="1952" x1="1984" />
            <wire x2="2048" y1="1952" y2="1952" x1="2016" />
        </branch>
        <branch name="calorx100(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2048" type="branch" />
            <wire x2="2016" y1="2048" y2="2048" x1="1984" />
            <wire x2="2048" y1="2048" y2="2048" x1="2016" />
        </branch>
        <branch name="rango(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2080" type="branch" />
            <wire x2="2016" y1="2080" y2="2080" x1="1984" />
            <wire x2="2048" y1="2080" y2="2080" x1="2016" />
        </branch>
        <branch name="quot(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2048" type="branch" />
            <wire x2="2656" y1="2048" y2="2048" x1="2624" />
        </branch>
    </sheet>
</drawing>