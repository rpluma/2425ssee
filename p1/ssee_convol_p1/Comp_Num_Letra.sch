<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="cod_tecla(0)" />
        <signal name="cod_tecla(1)" />
        <signal name="cod_tecla(2)" />
        <signal name="cod_tecla(3)" />
        <signal name="cero" />
        <signal name="uno" />
        <signal name="tecla_pulsada" />
        <signal name="ck" />
        <signal name="carga_cifra" />
        <signal name="letra_a" />
        <signal name="letra_c" />
        <signal name="cifra(3:0)" />
        <signal name="XLXN_169" />
        <signal name="XLXN_19" />
        <signal name="ce_carga_cifra" />
        <signal name="XLXN_64" />
        <signal name="cifra(0)" />
        <signal name="cifra(1)" />
        <signal name="cifra(2)" />
        <signal name="cifra(3)" />
        <signal name="XLXN_170" />
        <signal name="cod_tecla(3:0)" />
        <signal name="entZ_sal" />
        <signal name="ce_letra_c" />
        <signal name="ce_letra_a" />
        <port polarity="Input" name="tecla_pulsada" />
        <port polarity="Input" name="ck" />
        <port polarity="Output" name="carga_cifra" />
        <port polarity="Output" name="letra_a" />
        <port polarity="Output" name="letra_c" />
        <port polarity="Output" name="cifra(3:0)" />
        <port polarity="Input" name="cod_tecla(3:0)" />
        <port polarity="Input" name="entZ_sal" />
        <blockdef name="comp4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="320" y1="-352" y2="-352" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="fd4re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="comp4" name="XLXI_24">
            <blockpin signalname="cod_tecla(0)" name="A0" />
            <blockpin signalname="cod_tecla(1)" name="A1" />
            <blockpin signalname="cod_tecla(2)" name="A2" />
            <blockpin signalname="cod_tecla(3)" name="A3" />
            <blockpin signalname="cero" name="B0" />
            <blockpin signalname="uno" name="B1" />
            <blockpin signalname="cero" name="B2" />
            <blockpin signalname="uno" name="B3" />
            <blockpin signalname="XLXN_169" name="EQ" />
        </block>
        <block symbolname="compm4" name="XLXI_4">
            <blockpin signalname="cod_tecla(0)" name="A0" />
            <blockpin signalname="cod_tecla(1)" name="A1" />
            <blockpin signalname="cod_tecla(2)" name="A2" />
            <blockpin signalname="cod_tecla(3)" name="A3" />
            <blockpin signalname="cero" name="B0" />
            <blockpin signalname="uno" name="B1" />
            <blockpin signalname="cero" name="B2" />
            <blockpin signalname="uno" name="B3" />
            <blockpin name="GT" />
            <blockpin signalname="XLXN_19" name="LT" />
        </block>
        <block symbolname="fd4re" name="XLXI_14">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_carga_cifra" name="CE" />
            <blockpin signalname="cod_tecla(0)" name="D0" />
            <blockpin signalname="cod_tecla(1)" name="D1" />
            <blockpin signalname="cod_tecla(2)" name="D2" />
            <blockpin signalname="cod_tecla(3)" name="D3" />
            <blockpin signalname="XLXN_64" name="R" />
            <blockpin signalname="cifra(0)" name="Q0" />
            <blockpin signalname="cifra(1)" name="Q1" />
            <blockpin signalname="cifra(2)" name="Q2" />
            <blockpin signalname="cifra(3)" name="Q3" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_64" name="G" />
        </block>
        <block symbolname="comp4" name="XLXI_35">
            <blockpin signalname="cod_tecla(0)" name="A0" />
            <blockpin signalname="cod_tecla(1)" name="A1" />
            <blockpin signalname="cod_tecla(2)" name="A2" />
            <blockpin signalname="cod_tecla(3)" name="A3" />
            <blockpin signalname="cero" name="B0" />
            <blockpin signalname="cero" name="B1" />
            <blockpin signalname="uno" name="B2" />
            <blockpin signalname="uno" name="B3" />
            <blockpin signalname="XLXN_170" name="EQ" />
        </block>
        <block symbolname="fd" name="XLXI_37">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_letra_c" name="D" />
            <blockpin signalname="letra_c" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="tecla_pulsada" name="I0" />
            <blockpin signalname="XLXN_170" name="I1" />
            <blockpin signalname="ce_letra_c" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_40">
            <blockpin signalname="entZ_sal" name="I0" />
            <blockpin signalname="tecla_pulsada" name="I1" />
            <blockpin signalname="XLXN_169" name="I2" />
            <blockpin signalname="ce_letra_a" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_26">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_letra_a" name="D" />
            <blockpin signalname="letra_a" name="Q" />
        </block>
        <block symbolname="and3b1" name="XLXI_42">
            <blockpin signalname="entZ_sal" name="I0" />
            <blockpin signalname="tecla_pulsada" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="ce_carga_cifra" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_carga_cifra" name="D" />
            <blockpin signalname="carga_cifra" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ck">
            <wire x2="784" y1="3664" y2="3664" x1="608" />
        </branch>
        <branch name="letra_c">
            <wire x2="1216" y1="3664" y2="3664" x1="1024" />
        </branch>
        <branch name="carga_cifra">
            <wire x2="1216" y1="3504" y2="3504" x1="1024" />
        </branch>
        <branch name="letra_a">
            <wire x2="1216" y1="3584" y2="3584" x1="1024" />
        </branch>
        <branch name="cifra(3:0)">
            <wire x2="1216" y1="3424" y2="3424" x1="1024" />
        </branch>
        <instance x="2096" y="3728" name="XLXI_2" orien="R0" />
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="3552" type="branch" />
            <wire x2="2096" y1="3552" y2="3552" x1="2032" />
            <wire x2="2160" y1="3552" y2="3552" x1="2096" />
            <wire x2="2160" y1="3552" y2="3600" x1="2160" />
        </branch>
        <instance x="2368" y="3632" name="XLXI_3" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="3696" type="branch" />
            <wire x2="2368" y1="3696" y2="3696" x1="2304" />
            <wire x2="2432" y1="3696" y2="3696" x1="2368" />
            <wire x2="2432" y1="3632" y2="3696" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="608" y="3664" name="ck" orien="R180" />
        <iomarker fontsize="28" x="1216" y="3664" name="letra_c" orien="R0" />
        <iomarker fontsize="28" x="1216" y="3504" name="carga_cifra" orien="R0" />
        <iomarker fontsize="28" x="1216" y="3584" name="letra_a" orien="R0" />
        <iomarker fontsize="28" x="1216" y="3424" name="cifra(3:0)" orien="R0" />
        <instance x="448" y="2416" name="XLXI_24" orien="R0" />
        <branch name="cod_tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1840" type="branch" />
            <wire x2="368" y1="1840" y2="1840" x1="240" />
            <wire x2="448" y1="1840" y2="1840" x1="368" />
        </branch>
        <branch name="cod_tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1904" type="branch" />
            <wire x2="368" y1="1904" y2="1904" x1="240" />
            <wire x2="448" y1="1904" y2="1904" x1="368" />
        </branch>
        <branch name="cod_tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1968" type="branch" />
            <wire x2="368" y1="1968" y2="1968" x1="240" />
            <wire x2="448" y1="1968" y2="1968" x1="368" />
        </branch>
        <branch name="cod_tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2032" type="branch" />
            <wire x2="368" y1="2032" y2="2032" x1="240" />
            <wire x2="448" y1="2032" y2="2032" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2096" type="branch" />
            <wire x2="368" y1="2096" y2="2096" x1="240" />
            <wire x2="448" y1="2096" y2="2096" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2160" type="branch" />
            <wire x2="368" y1="2160" y2="2160" x1="240" />
            <wire x2="448" y1="2160" y2="2160" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2224" type="branch" />
            <wire x2="368" y1="2224" y2="2224" x1="240" />
            <wire x2="448" y1="2224" y2="2224" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2288" type="branch" />
            <wire x2="368" y1="2288" y2="2288" x1="240" />
            <wire x2="448" y1="2288" y2="2288" x1="368" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2128" type="branch" />
            <wire x2="976" y1="2128" y2="2128" x1="864" />
            <wire x2="1088" y1="2128" y2="2128" x1="976" />
        </branch>
        <branch name="XLXN_169">
            <wire x2="1088" y1="2064" y2="2064" x1="832" />
        </branch>
        <branch name="cod_tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="784" type="branch" />
            <wire x2="368" y1="784" y2="784" x1="240" />
            <wire x2="448" y1="784" y2="784" x1="368" />
        </branch>
        <branch name="cod_tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="848" type="branch" />
            <wire x2="368" y1="848" y2="848" x1="240" />
            <wire x2="448" y1="848" y2="848" x1="368" />
        </branch>
        <branch name="cod_tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="912" type="branch" />
            <wire x2="368" y1="912" y2="912" x1="240" />
            <wire x2="448" y1="912" y2="912" x1="368" />
        </branch>
        <branch name="cod_tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="976" type="branch" />
            <wire x2="368" y1="976" y2="976" x1="240" />
            <wire x2="448" y1="976" y2="976" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1040" type="branch" />
            <wire x2="368" y1="1040" y2="1040" x1="240" />
            <wire x2="448" y1="1040" y2="1040" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1104" type="branch" />
            <wire x2="368" y1="1104" y2="1104" x1="240" />
            <wire x2="448" y1="1104" y2="1104" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1168" type="branch" />
            <wire x2="368" y1="1168" y2="1168" x1="240" />
            <wire x2="448" y1="1168" y2="1168" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1232" type="branch" />
            <wire x2="368" y1="1232" y2="1232" x1="240" />
            <wire x2="448" y1="1232" y2="1232" x1="368" />
        </branch>
        <instance x="448" y="1360" name="XLXI_4" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1088" y1="1040" y2="1040" x1="832" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1104" type="branch" />
            <wire x2="976" y1="1104" y2="1104" x1="864" />
            <wire x2="1088" y1="1104" y2="1104" x1="976" />
        </branch>
        <instance x="2720" y="1376" name="XLXI_14" orien="R0" />
        <branch name="cod_tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="928" type="branch" />
            <wire x2="2640" y1="928" y2="928" x1="2512" />
            <wire x2="2720" y1="928" y2="928" x1="2640" />
        </branch>
        <branch name="cod_tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="992" type="branch" />
            <wire x2="2640" y1="992" y2="992" x1="2512" />
            <wire x2="2720" y1="992" y2="992" x1="2640" />
        </branch>
        <branch name="cod_tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1056" type="branch" />
            <wire x2="2640" y1="1056" y2="1056" x1="2512" />
            <wire x2="2720" y1="1056" y2="1056" x1="2640" />
        </branch>
        <branch name="cod_tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1120" type="branch" />
            <wire x2="2640" y1="1120" y2="1120" x1="2512" />
            <wire x2="2720" y1="1120" y2="1120" x1="2640" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1248" type="branch" />
            <wire x2="2640" y1="1248" y2="1248" x1="2512" />
            <wire x2="2720" y1="1248" y2="1248" x1="2640" />
        </branch>
        <branch name="ce_carga_cifra">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1184" type="branch" />
            <wire x2="2640" y1="1184" y2="1184" x1="2512" />
            <wire x2="2720" y1="1184" y2="1184" x1="2640" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2720" y1="1344" y2="1344" x1="2592" />
            <wire x2="2592" y1="1344" y2="1360" x1="2592" />
        </branch>
        <branch name="cifra(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="928" type="branch" />
            <wire x2="3232" y1="928" y2="928" x1="3104" />
            <wire x2="3360" y1="928" y2="928" x1="3232" />
        </branch>
        <branch name="cifra(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="992" type="branch" />
            <wire x2="3232" y1="992" y2="992" x1="3104" />
            <wire x2="3360" y1="992" y2="992" x1="3232" />
        </branch>
        <branch name="cifra(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="1056" type="branch" />
            <wire x2="3232" y1="1056" y2="1056" x1="3104" />
            <wire x2="3360" y1="1056" y2="1056" x1="3232" />
        </branch>
        <branch name="cifra(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="1120" type="branch" />
            <wire x2="3232" y1="1120" y2="1120" x1="3104" />
            <wire x2="3360" y1="1120" y2="1120" x1="3232" />
        </branch>
        <instance x="2528" y="1488" name="XLXI_15" orien="R0" />
        <rect style="linestyle:Dash" width="4676" x="180" y="608" height="928" />
        <rect style="linestyle:Dash" width="4676" x="180" y="1668" height="756" />
        <instance x="448" y="3296" name="XLXI_35" orien="R0" />
        <branch name="cod_tecla(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2720" type="branch" />
            <wire x2="368" y1="2720" y2="2720" x1="240" />
            <wire x2="448" y1="2720" y2="2720" x1="368" />
        </branch>
        <branch name="cod_tecla(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2784" type="branch" />
            <wire x2="368" y1="2784" y2="2784" x1="240" />
            <wire x2="448" y1="2784" y2="2784" x1="368" />
        </branch>
        <branch name="cod_tecla(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2848" type="branch" />
            <wire x2="368" y1="2848" y2="2848" x1="240" />
            <wire x2="448" y1="2848" y2="2848" x1="368" />
        </branch>
        <branch name="cod_tecla(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2912" type="branch" />
            <wire x2="368" y1="2912" y2="2912" x1="240" />
            <wire x2="448" y1="2912" y2="2912" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2976" type="branch" />
            <wire x2="368" y1="2976" y2="2976" x1="240" />
            <wire x2="448" y1="2976" y2="2976" x1="368" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="3040" type="branch" />
            <wire x2="368" y1="3040" y2="3040" x1="240" />
            <wire x2="448" y1="3040" y2="3040" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="3104" type="branch" />
            <wire x2="368" y1="3104" y2="3104" x1="240" />
            <wire x2="448" y1="3104" y2="3104" x1="368" />
        </branch>
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="3168" type="branch" />
            <wire x2="368" y1="3168" y2="3168" x1="240" />
            <wire x2="448" y1="3168" y2="3168" x1="368" />
        </branch>
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="3008" type="branch" />
            <wire x2="976" y1="3008" y2="3008" x1="864" />
            <wire x2="1088" y1="3008" y2="3008" x1="976" />
        </branch>
        <branch name="XLXN_170">
            <wire x2="1088" y1="2944" y2="2944" x1="832" />
        </branch>
        <rect style="linestyle:Dash" width="4676" x="180" y="2552" height="756" />
        <text style="fontsize:56;fontname:Arial" x="1092" y="696">Comprobacion de si se ha presionado un numero en el teclado; si es asi, se pasa a la salida 'cifra(3:0)' junto a 'carga_cifra'</text>
        <text style="fontsize:56;fontname:Arial" x="1096" y="1768">Se comprueba si se ha presionado la 'A'</text>
        <text style="fontsize:56;fontname:Arial" x="1080" y="2648">Se comprueba si se ha presionado la 'C' (sin tener en cuenta 'entZ_sal')</text>
        <branch name="tecla_pulsada">
            <wire x2="784" y1="3504" y2="3504" x1="608" />
        </branch>
        <branch name="cod_tecla(3:0)">
            <wire x2="784" y1="3424" y2="3424" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="3504" name="tecla_pulsada" orien="R180" />
        <iomarker fontsize="28" x="608" y="3424" name="cod_tecla(3:0)" orien="R180" />
        <branch name="entZ_sal">
            <wire x2="784" y1="3584" y2="3584" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="3584" name="entZ_sal" orien="R180" />
        <instance x="1536" y="3232" name="XLXI_37" orien="R0" />
        <branch name="ce_letra_c">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2976" type="branch" />
            <wire x2="1440" y1="2976" y2="2976" x1="1344" />
            <wire x2="1536" y1="2976" y2="2976" x1="1440" />
        </branch>
        <branch name="letra_c">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2976" type="branch" />
            <wire x2="2048" y1="2976" y2="2976" x1="1920" />
            <wire x2="2176" y1="2976" y2="2976" x1="2048" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="3104" type="branch" />
            <wire x2="1488" y1="3104" y2="3104" x1="1376" />
            <wire x2="1536" y1="3104" y2="3104" x1="1488" />
        </branch>
        <instance x="1088" y="3072" name="XLXI_36" orien="R0" />
        <instance x="1088" y="2256" name="XLXI_40" orien="R0" />
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2192" type="branch" />
            <wire x2="976" y1="2192" y2="2192" x1="864" />
            <wire x2="1088" y1="2192" y2="2192" x1="976" />
        </branch>
        <branch name="ce_letra_a">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2128" type="branch" />
            <wire x2="1424" y1="2128" y2="2128" x1="1344" />
            <wire x2="1536" y1="2128" y2="2128" x1="1424" />
        </branch>
        <instance x="1536" y="2384" name="XLXI_26" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2256" type="branch" />
            <wire x2="1488" y1="2256" y2="2256" x1="1376" />
            <wire x2="1536" y1="2256" y2="2256" x1="1488" />
        </branch>
        <branch name="letra_a">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2128" type="branch" />
            <wire x2="2048" y1="2128" y2="2128" x1="1920" />
            <wire x2="2176" y1="2128" y2="2128" x1="2048" />
        </branch>
        <instance x="1088" y="1232" name="XLXI_42" orien="R0" />
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1168" type="branch" />
            <wire x2="976" y1="1168" y2="1168" x1="864" />
            <wire x2="1088" y1="1168" y2="1168" x1="976" />
        </branch>
        <branch name="ce_carga_cifra">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1104" type="branch" />
            <wire x2="1424" y1="1104" y2="1104" x1="1344" />
            <wire x2="1536" y1="1104" y2="1104" x1="1424" />
        </branch>
        <instance x="1536" y="1360" name="XLXI_6" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1232" type="branch" />
            <wire x2="1488" y1="1232" y2="1232" x1="1376" />
            <wire x2="1536" y1="1232" y2="1232" x1="1488" />
        </branch>
        <branch name="carga_cifra">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1104" type="branch" />
            <wire x2="2048" y1="1104" y2="1104" x1="1920" />
            <wire x2="2176" y1="1104" y2="1104" x1="2048" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="1460" y="268">* Si es un numero se envia a la salida en 'cifra' junto con 'carga_cifra'</text>
        <text style="fontsize:56;fontname:Arial" x="1460" y="380">* Si es la letra 'A' o 'C' se activa la salida oportuna</text>
        <rect style="linestyle:Dash" width="3328" x="956" y="84" height="424" />
        <text style="fontsize:56;fontname:Arial" x="1116" y="152">Comparacion del dato de entrada (siempre que se este en modo de entrada de datos, 'entZsal = 0', salvo para 'letra_c'):</text>
    </sheet>
</drawing>