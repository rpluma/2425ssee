<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck" />
        <signal name="initZ" />
        <signal name="load" />
        <signal name="dato_bin_entero(7:0)" />
        <signal name="ce_reg_salida" />
        <signal name="bin_serie_msb" />
        <signal name="inicio" />
        <signal name="reset" />
        <signal name="dato_nuevo" />
        <signal name="XLXN_116" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="dec_tmp(3:0)" />
        <signal name="unid_tmp(3:0)" />
        <signal name="cent_tmp(3:0)" />
        <signal name="dec_tmp(0)" />
        <signal name="dec_tmp(1)" />
        <signal name="dec_tmp(2)" />
        <signal name="dec_tmp(3)" />
        <signal name="dec(0)" />
        <signal name="dec(1)" />
        <signal name="dec(2)" />
        <signal name="dec(3)" />
        <signal name="cent_tmp(0)" />
        <signal name="cent_tmp(1)" />
        <signal name="cent_tmp(2)" />
        <signal name="cent_tmp(3)" />
        <signal name="cent(0)" />
        <signal name="cent(1)" />
        <signal name="cent(2)" />
        <signal name="cent(3)" />
        <signal name="unid_tmp(0)" />
        <signal name="unid_tmp(1)" />
        <signal name="unid_tmp(2)" />
        <signal name="unid_tmp(3)" />
        <signal name="unid(0)" />
        <signal name="unid(1)" />
        <signal name="unid(2)" />
        <signal name="unid(3)" />
        <signal name="XLXN_198" />
        <signal name="XLXN_199" />
        <signal name="XLXN_200" />
        <signal name="unid(3:0)" />
        <signal name="dec(3:0)" />
        <signal name="cent(3:0)" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="dato_bin_entero(7:0)" />
        <port polarity="Input" name="inicio" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="dato_nuevo" />
        <port polarity="Output" name="unid(3:0)" />
        <port polarity="Output" name="dec(3:0)" />
        <port polarity="Output" name="cent(3:0)" />
        <blockdef name="Bin_A_BCD">
            <timestamp>2024-11-4T10:23:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="regdesp8b">
            <timestamp>2024-11-4T10:28:15</timestamp>
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="316" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
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
        <blockdef name="control_bin_bcd">
            <timestamp>2024-11-4T10:28:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="regdesp8b" name="XLXI_9">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="initZ" name="ce" />
            <blockpin signalname="XLXN_116" name="sinc_reset" />
            <blockpin signalname="load" name="load" />
            <blockpin signalname="dato_bin_entero(7:0)" name="data(7:0)" />
            <blockpin signalname="bin_serie_msb" name="ser_out_msb" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_116" name="G" />
        </block>
        <block symbolname="Bin_A_BCD" name="XLXI_2">
            <blockpin signalname="initZ" name="initZ" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="XLXN_9" name="mod_in" />
            <blockpin signalname="XLXN_8" name="mod_out" />
            <blockpin signalname="dec_tmp(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="Bin_A_BCD" name="XLXI_1">
            <blockpin signalname="initZ" name="initZ" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="bin_serie_msb" name="mod_in" />
            <blockpin signalname="XLXN_9" name="mod_out" />
            <blockpin signalname="unid_tmp(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="Bin_A_BCD" name="XLXI_3">
            <blockpin signalname="initZ" name="initZ" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="XLXN_8" name="mod_in" />
            <blockpin name="mod_out" />
            <blockpin signalname="cent_tmp(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="fd4re" name="XLXI_35">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_reg_salida" name="CE" />
            <blockpin signalname="dec_tmp(0)" name="D0" />
            <blockpin signalname="dec_tmp(1)" name="D1" />
            <blockpin signalname="dec_tmp(2)" name="D2" />
            <blockpin signalname="dec_tmp(3)" name="D3" />
            <blockpin signalname="XLXN_199" name="R" />
            <blockpin signalname="dec(0)" name="Q0" />
            <blockpin signalname="dec(1)" name="Q1" />
            <blockpin signalname="dec(2)" name="Q2" />
            <blockpin signalname="dec(3)" name="Q3" />
        </block>
        <block symbolname="fd4re" name="XLXI_37">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_reg_salida" name="CE" />
            <blockpin signalname="cent_tmp(0)" name="D0" />
            <blockpin signalname="cent_tmp(1)" name="D1" />
            <blockpin signalname="cent_tmp(2)" name="D2" />
            <blockpin signalname="cent_tmp(3)" name="D3" />
            <blockpin signalname="XLXN_200" name="R" />
            <blockpin signalname="cent(0)" name="Q0" />
            <blockpin signalname="cent(1)" name="Q1" />
            <blockpin signalname="cent(2)" name="Q2" />
            <blockpin signalname="cent(3)" name="Q3" />
        </block>
        <block symbolname="fd4re" name="XLXI_31">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_reg_salida" name="CE" />
            <blockpin signalname="unid_tmp(0)" name="D0" />
            <blockpin signalname="unid_tmp(1)" name="D1" />
            <blockpin signalname="unid_tmp(2)" name="D2" />
            <blockpin signalname="unid_tmp(3)" name="D3" />
            <blockpin signalname="XLXN_198" name="R" />
            <blockpin signalname="unid(0)" name="Q0" />
            <blockpin signalname="unid(1)" name="Q1" />
            <blockpin signalname="unid(2)" name="Q2" />
            <blockpin signalname="unid(3)" name="Q3" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="XLXN_198" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_36">
            <blockpin signalname="XLXN_199" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_38">
            <blockpin signalname="XLXN_200" name="G" />
        </block>
        <block symbolname="control_bin_bcd" name="XLXI_46">
            <blockpin signalname="ck" name="CK" />
            <blockpin signalname="inicio" name="inicio" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ce_reg_salida" name="ce_reg_salida" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="initZ" name="initZ" />
            <blockpin signalname="load" name="load" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="896" type="branch" />
            <wire x2="576" y1="896" y2="896" x1="448" />
            <wire x2="736" y1="896" y2="896" x1="576" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="832" type="branch" />
            <wire x2="576" y1="832" y2="832" x1="448" />
            <wire x2="736" y1="832" y2="832" x1="576" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="704" type="branch" />
            <wire x2="576" y1="704" y2="704" x1="448" />
            <wire x2="736" y1="704" y2="704" x1="576" />
        </branch>
        <branch name="dato_bin_entero(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="640" type="branch" />
            <wire x2="592" y1="640" y2="640" x1="448" />
            <wire x2="736" y1="640" y2="640" x1="592" />
        </branch>
        <branch name="XLXN_116">
            <wire x2="736" y1="768" y2="768" x1="480" />
        </branch>
        <branch name="bin_serie_msb">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="640" type="branch" />
            <wire x2="1232" y1="640" y2="640" x1="1120" />
            <wire x2="1328" y1="640" y2="640" x1="1232" />
        </branch>
        <instance x="736" y="928" name="XLXI_9" orien="R0">
        </instance>
        <instance x="352" y="704" name="XLXI_26" orien="R90" />
        <rect style="linestyle:Dash" width="2164" x="196" y="404" height="576" />
        <rect style="linestyle:Dash" width="2980" x="1240" y="92" height="228" />
        <text style="fontsize:56;fontname:Arial" x="280" y="472">Registro de desplazamiento carga paralelo-salida serie de 8 bits (primero MSB)</text>
        <rect style="linestyle:Dash" width="2868" x="196" y="1060" height="488" />
        <text style="fontsize:56;fontname:Arial" x="832" y="1136">Conversor Binario a BCD serie para 3 cifras BCD; primero MSB</text>
        <instance x="1536" y="1488" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1456" type="branch" />
            <wire x2="1488" y1="1456" y2="1456" x1="1424" />
            <wire x2="1536" y1="1456" y2="1456" x1="1488" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1392" type="branch" />
            <wire x2="1488" y1="1392" y2="1392" x1="1424" />
            <wire x2="1536" y1="1392" y2="1392" x1="1488" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1936" y1="1328" y2="1328" x1="1920" />
            <wire x2="2336" y1="1328" y2="1328" x1="1936" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1520" y1="1328" y2="1328" x1="1104" />
            <wire x2="1536" y1="1328" y2="1328" x1="1520" />
        </branch>
        <branch name="dec_tmp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1456" type="branch" />
            <wire x2="2016" y1="1456" y2="1456" x1="1920" />
            <wire x2="2096" y1="1456" y2="1456" x1="2016" />
        </branch>
        <instance x="720" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <branch name="unid_tmp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1456" type="branch" />
            <wire x2="1216" y1="1456" y2="1456" x1="1104" />
            <wire x2="1280" y1="1456" y2="1456" x1="1216" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1456" type="branch" />
            <wire x2="672" y1="1456" y2="1456" x1="608" />
            <wire x2="720" y1="1456" y2="1456" x1="672" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1392" type="branch" />
            <wire x2="672" y1="1392" y2="1392" x1="608" />
            <wire x2="720" y1="1392" y2="1392" x1="672" />
        </branch>
        <branch name="bin_serie_msb">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1328" type="branch" />
            <wire x2="672" y1="1328" y2="1328" x1="608" />
            <wire x2="720" y1="1328" y2="1328" x1="672" />
        </branch>
        <instance x="2336" y="1488" name="XLXI_3" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1456" type="branch" />
            <wire x2="2288" y1="1456" y2="1456" x1="2224" />
            <wire x2="2336" y1="1456" y2="1456" x1="2288" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1392" type="branch" />
            <wire x2="2288" y1="1392" y2="1392" x1="2224" />
            <wire x2="2336" y1="1392" y2="1392" x1="2288" />
        </branch>
        <branch name="cent_tmp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1456" type="branch" />
            <wire x2="2816" y1="1456" y2="1456" x1="2720" />
            <wire x2="2896" y1="1456" y2="1456" x1="2816" />
        </branch>
        <instance x="1552" y="2352" name="XLXI_35" orien="R0" />
        <branch name="dec_tmp(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1904" type="branch" />
            <wire x2="1472" y1="1904" y2="1904" x1="1376" />
            <wire x2="1552" y1="1904" y2="1904" x1="1472" />
        </branch>
        <branch name="dec_tmp(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1968" type="branch" />
            <wire x2="1472" y1="1968" y2="1968" x1="1376" />
            <wire x2="1552" y1="1968" y2="1968" x1="1472" />
        </branch>
        <branch name="dec_tmp(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="2032" type="branch" />
            <wire x2="1472" y1="2032" y2="2032" x1="1376" />
            <wire x2="1552" y1="2032" y2="2032" x1="1472" />
        </branch>
        <branch name="dec_tmp(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="2096" type="branch" />
            <wire x2="1472" y1="2096" y2="2096" x1="1376" />
            <wire x2="1552" y1="2096" y2="2096" x1="1472" />
        </branch>
        <branch name="dec(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1904" type="branch" />
            <wire x2="2000" y1="1904" y2="1904" x1="1936" />
            <wire x2="2096" y1="1904" y2="1904" x1="2000" />
        </branch>
        <branch name="dec(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1968" type="branch" />
            <wire x2="2000" y1="1968" y2="1968" x1="1936" />
            <wire x2="2096" y1="1968" y2="1968" x1="2000" />
        </branch>
        <branch name="dec(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2032" type="branch" />
            <wire x2="2000" y1="2032" y2="2032" x1="1936" />
            <wire x2="2096" y1="2032" y2="2032" x1="2000" />
        </branch>
        <branch name="dec(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2096" type="branch" />
            <wire x2="2000" y1="2096" y2="2096" x1="1936" />
            <wire x2="2096" y1="2096" y2="2096" x1="2000" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2160" type="branch" />
            <wire x2="1488" y1="2160" y2="2160" x1="1376" />
            <wire x2="1552" y1="2160" y2="2160" x1="1488" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2224" type="branch" />
            <wire x2="1488" y1="2224" y2="2224" x1="1376" />
            <wire x2="1552" y1="2224" y2="2224" x1="1488" />
        </branch>
        <instance x="2352" y="2352" name="XLXI_37" orien="R0" />
        <branch name="cent_tmp(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1904" type="branch" />
            <wire x2="2272" y1="1904" y2="1904" x1="2176" />
            <wire x2="2352" y1="1904" y2="1904" x1="2272" />
        </branch>
        <branch name="cent_tmp(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1968" type="branch" />
            <wire x2="2272" y1="1968" y2="1968" x1="2176" />
            <wire x2="2352" y1="1968" y2="1968" x1="2272" />
        </branch>
        <branch name="cent_tmp(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="2032" type="branch" />
            <wire x2="2272" y1="2032" y2="2032" x1="2176" />
            <wire x2="2352" y1="2032" y2="2032" x1="2272" />
        </branch>
        <branch name="cent_tmp(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="2096" type="branch" />
            <wire x2="2272" y1="2096" y2="2096" x1="2176" />
            <wire x2="2352" y1="2096" y2="2096" x1="2272" />
        </branch>
        <branch name="cent(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="1904" type="branch" />
            <wire x2="2800" y1="1904" y2="1904" x1="2736" />
            <wire x2="2896" y1="1904" y2="1904" x1="2800" />
        </branch>
        <branch name="cent(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="1968" type="branch" />
            <wire x2="2800" y1="1968" y2="1968" x1="2736" />
            <wire x2="2896" y1="1968" y2="1968" x1="2800" />
        </branch>
        <branch name="cent(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="2032" type="branch" />
            <wire x2="2800" y1="2032" y2="2032" x1="2736" />
            <wire x2="2896" y1="2032" y2="2032" x1="2800" />
        </branch>
        <branch name="cent(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="2096" type="branch" />
            <wire x2="2800" y1="2096" y2="2096" x1="2736" />
            <wire x2="2896" y1="2096" y2="2096" x1="2800" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="2160" type="branch" />
            <wire x2="2288" y1="2160" y2="2160" x1="2176" />
            <wire x2="2352" y1="2160" y2="2160" x1="2288" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="2224" type="branch" />
            <wire x2="2288" y1="2224" y2="2224" x1="2176" />
            <wire x2="2352" y1="2224" y2="2224" x1="2288" />
        </branch>
        <branch name="unid_tmp(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1904" type="branch" />
            <wire x2="656" y1="1904" y2="1904" x1="560" />
            <wire x2="736" y1="1904" y2="1904" x1="656" />
        </branch>
        <branch name="unid_tmp(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1968" type="branch" />
            <wire x2="656" y1="1968" y2="1968" x1="560" />
            <wire x2="736" y1="1968" y2="1968" x1="656" />
        </branch>
        <branch name="unid_tmp(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="2032" type="branch" />
            <wire x2="656" y1="2032" y2="2032" x1="560" />
            <wire x2="736" y1="2032" y2="2032" x1="656" />
        </branch>
        <branch name="unid_tmp(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="2096" type="branch" />
            <wire x2="656" y1="2096" y2="2096" x1="560" />
            <wire x2="736" y1="2096" y2="2096" x1="656" />
        </branch>
        <branch name="unid(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1904" type="branch" />
            <wire x2="1184" y1="1904" y2="1904" x1="1120" />
            <wire x2="1280" y1="1904" y2="1904" x1="1184" />
        </branch>
        <branch name="unid(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1968" type="branch" />
            <wire x2="1184" y1="1968" y2="1968" x1="1120" />
            <wire x2="1280" y1="1968" y2="1968" x1="1184" />
        </branch>
        <branch name="unid(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2032" type="branch" />
            <wire x2="1184" y1="2032" y2="2032" x1="1120" />
            <wire x2="1280" y1="2032" y2="2032" x1="1184" />
        </branch>
        <branch name="unid(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="2096" type="branch" />
            <wire x2="1184" y1="2096" y2="2096" x1="1120" />
            <wire x2="1280" y1="2096" y2="2096" x1="1184" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2160" type="branch" />
            <wire x2="672" y1="2160" y2="2160" x1="560" />
            <wire x2="736" y1="2160" y2="2160" x1="672" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2224" type="branch" />
            <wire x2="672" y1="2224" y2="2224" x1="560" />
            <wire x2="736" y1="2224" y2="2224" x1="672" />
        </branch>
        <instance x="736" y="2352" name="XLXI_31" orien="R0" />
        <branch name="XLXN_198">
            <wire x2="560" y1="2320" y2="2352" x1="560" />
            <wire x2="736" y1="2320" y2="2320" x1="560" />
        </branch>
        <instance x="496" y="2480" name="XLXI_32" orien="R0" />
        <instance x="1312" y="2464" name="XLXI_36" orien="R0" />
        <instance x="2112" y="2464" name="XLXI_38" orien="R0" />
        <branch name="XLXN_199">
            <wire x2="1552" y1="2320" y2="2320" x1="1376" />
            <wire x2="1376" y1="2320" y2="2336" x1="1376" />
        </branch>
        <branch name="XLXN_200">
            <wire x2="2352" y1="2320" y2="2320" x1="2176" />
            <wire x2="2176" y1="2320" y2="2336" x1="2176" />
        </branch>
        <rect style="linestyle:Dash" width="2868" x="196" y="1632" height="896" />
        <text style="fontsize:56;fontname:Arial" x="1048" y="1696">Carga de cifras BCD en registros de salida</text>
        <rect style="linestyle:Dash" width="1848" x="3348" y="1068" height="620" />
        <text style="fontsize:56;fontname:Arial" x="3568" y="1168">Maquina de estados para controlar la conversion Bin-BCD</text>
        <instance x="4064" y="1600" name="XLXI_46" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="1376" type="branch" />
            <wire x2="3984" y1="1376" y2="1376" x1="3840" />
            <wire x2="4064" y1="1376" y2="1376" x1="3984" />
        </branch>
        <branch name="inicio">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="1472" type="branch" />
            <wire x2="3984" y1="1472" y2="1472" x1="3840" />
            <wire x2="4064" y1="1472" y2="1472" x1="3984" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="1568" type="branch" />
            <wire x2="3984" y1="1568" y2="1568" x1="3840" />
            <wire x2="4064" y1="1568" y2="1568" x1="3984" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4528" y="1376" type="branch" />
            <wire x2="4528" y1="1376" y2="1376" x1="4448" />
            <wire x2="4672" y1="1376" y2="1376" x1="4528" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4512" y="1440" type="branch" />
            <wire x2="4512" y1="1440" y2="1440" x1="4448" />
            <wire x2="4672" y1="1440" y2="1440" x1="4512" />
        </branch>
        <branch name="initZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4528" y="1504" type="branch" />
            <wire x2="4528" y1="1504" y2="1504" x1="4448" />
            <wire x2="4672" y1="1504" y2="1504" x1="4528" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4528" y="1568" type="branch" />
            <wire x2="4464" y1="1568" y2="1568" x1="4448" />
            <wire x2="4528" y1="1568" y2="1568" x1="4464" />
            <wire x2="4672" y1="1568" y2="1568" x1="4528" />
        </branch>
        <branch name="dato_bin_entero(7:0)">
            <wire x2="4096" y1="2064" y2="2064" x1="3936" />
        </branch>
        <branch name="unid(3:0)">
            <wire x2="4496" y1="2256" y2="2256" x1="4336" />
        </branch>
        <branch name="dec(3:0)">
            <wire x2="4496" y1="2192" y2="2192" x1="4336" />
        </branch>
        <branch name="cent(3:0)">
            <wire x2="4496" y1="2128" y2="2128" x1="4336" />
        </branch>
        <branch name="dato_nuevo">
            <wire x2="4496" y1="2064" y2="2064" x1="4336" />
        </branch>
        <iomarker fontsize="28" x="3936" y="2064" name="dato_bin_entero(7:0)" orien="R180" />
        <iomarker fontsize="28" x="4496" y="2256" name="unid(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4496" y="2192" name="dec(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4496" y="2128" name="cent(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4496" y="2064" name="dato_nuevo" orien="R0" />
        <text style="fontsize:56;fontname:Arial" x="4584" y="204">Conversor_Bin_BCD.sch</text>
        <branch name="ck">
            <wire x2="4096" y1="2256" y2="2256" x1="3936" />
        </branch>
        <branch name="reset">
            <wire x2="4096" y1="2192" y2="2192" x1="3936" />
        </branch>
        <branch name="inicio">
            <wire x2="4096" y1="2128" y2="2128" x1="3936" />
        </branch>
        <iomarker fontsize="28" x="3936" y="2256" name="ck" orien="R180" />
        <iomarker fontsize="28" x="3936" y="2192" name="reset" orien="R180" />
        <iomarker fontsize="28" x="3936" y="2128" name="inicio" orien="R180" />
        <text style="fontsize:56;fontname:Arial" x="2020" y="152">Conversor Binario a BCD completo de 3 cifras enteras</text>
        <text style="fontsize:56;fontname:Arial" x="1968" y="244">(Datos binarios enteros de 8 bits; 3 cifras enteras en BCD)</text>
    </sheet>
</drawing>