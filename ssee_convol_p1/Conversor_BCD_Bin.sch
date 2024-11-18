<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="unid(3:0)" />
        <signal name="dec(3:0)" />
        <signal name="cent(3:0)" />
        <signal name="ck" />
        <signal name="inicio" />
        <signal name="dato_nuevo" />
        <signal name="reset" />
        <signal name="dato_bin(7:0)" />
        <signal name="ldZ" />
        <signal name="ce_reg_salida" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="dato_bin_lsb" />
        <signal name="XLXN_17" />
        <signal name="XLXN_72" />
        <signal name="dato_bin_lsb,dato_desp(7:1)" />
        <signal name="XLXN_77" />
        <signal name="dato_desp(7:0)" />
        <port polarity="Input" name="unid(3:0)" />
        <port polarity="Input" name="dec(3:0)" />
        <port polarity="Input" name="cent(3:0)" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="inicio" />
        <port polarity="Output" name="dato_nuevo" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="dato_bin(7:0)" />
        <blockdef name="BCD_A_Bin">
            <timestamp>2014-11-9T16:23:42</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
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
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="control_bcd_bin">
            <timestamp>2014-11-9T17:26:20</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="BCD_A_Bin" name="XLXI_1">
            <blockpin signalname="XLXN_14" name="q0" />
            <blockpin signalname="XLXN_17" name="sin" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="cent(3:0)" name="d(3:0)" />
            <blockpin signalname="ldZ" name="ldZ" />
        </block>
        <block symbolname="BCD_A_Bin" name="XLXI_3">
            <blockpin signalname="dato_bin_lsb" name="q0" />
            <blockpin signalname="XLXN_15" name="sin" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="unid(3:0)" name="d(3:0)" />
            <blockpin signalname="ldZ" name="ldZ" />
        </block>
        <block symbolname="BCD_A_Bin" name="XLXI_2">
            <blockpin signalname="XLXN_15" name="q0" />
            <blockpin signalname="XLXN_14" name="sin" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dec(3:0)" name="d(3:0)" />
            <blockpin signalname="ldZ" name="ldZ" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="fd8re" name="XLXI_16">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ce_reg_salida" name="CE" />
            <blockpin signalname="dato_desp(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_72" name="R" />
            <blockpin signalname="dato_bin(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_72" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_24">
            <blockpin signalname="XLXN_77" name="G" />
        </block>
        <block symbolname="fd8re" name="XLXI_23">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="ldZ" name="CE" />
            <blockpin signalname="dato_bin_lsb,dato_desp(7:1)" name="D(7:0)" />
            <blockpin signalname="XLXN_77" name="R" />
            <blockpin signalname="dato_desp(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="control_bcd_bin" name="XLXI_22">
            <blockpin signalname="ck" name="CK" />
            <blockpin signalname="inicio" name="inicio" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ce_reg_salida" name="ce_reg_salida" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ldZ" name="ldZ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="dato_bin(7:0)">
            <wire x2="976" y1="2480" y2="2480" x1="800" />
        </branch>
        <branch name="dato_nuevo">
            <wire x2="976" y1="2560" y2="2560" x1="800" />
        </branch>
        <branch name="unid(3:0)">
            <wire x2="576" y1="2160" y2="2160" x1="416" />
        </branch>
        <branch name="dec(3:0)">
            <wire x2="576" y1="2240" y2="2240" x1="416" />
        </branch>
        <branch name="cent(3:0)">
            <wire x2="576" y1="2320" y2="2320" x1="416" />
        </branch>
        <branch name="ck">
            <wire x2="576" y1="2400" y2="2400" x1="416" />
        </branch>
        <branch name="inicio">
            <wire x2="576" y1="2480" y2="2480" x1="416" />
        </branch>
        <branch name="reset">
            <wire x2="576" y1="2560" y2="2560" x1="416" />
        </branch>
        <iomarker fontsize="28" x="976" y="2480" name="dato_bin(7:0)" orien="R0" />
        <iomarker fontsize="28" x="976" y="2560" name="dato_nuevo" orien="R0" />
        <iomarker fontsize="28" x="416" y="2160" name="unid(3:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="2240" name="dec(3:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="2320" name="cent(3:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="2400" name="ck" orien="R180" />
        <iomarker fontsize="28" x="416" y="2480" name="inicio" orien="R180" />
        <iomarker fontsize="28" x="416" y="2560" name="reset" orien="R180" />
        <text style="fontsize:56;fontname:Arial" x="1264" y="140">Conversor BCD a Binario completo</text>
        <text style="fontsize:56;fontname:Arial" x="1264" y="220">(3 cifras BCD, datos binarios de 0 a 255)</text>
        <rect style="linestyle:Dash" width="1184" x="1156" y="68" height="236" />
        <instance x="592" y="912" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1808" y="912" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1184" y="912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="752" type="branch" />
            <wire x2="496" y1="752" y2="752" x1="384" />
            <wire x2="592" y1="752" y2="752" x1="496" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="816" type="branch" />
            <wire x2="480" y1="816" y2="816" x1="384" />
            <wire x2="592" y1="816" y2="816" x1="480" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="880" type="branch" />
            <wire x2="480" y1="880" y2="880" x1="384" />
            <wire x2="592" y1="880" y2="880" x1="480" />
        </branch>
        <branch name="dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="752" type="branch" />
            <wire x2="1088" y1="752" y2="752" x1="976" />
            <wire x2="1184" y1="752" y2="752" x1="1088" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="816" type="branch" />
            <wire x2="1072" y1="816" y2="816" x1="976" />
            <wire x2="1184" y1="816" y2="816" x1="1072" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="880" type="branch" />
            <wire x2="1072" y1="880" y2="880" x1="976" />
            <wire x2="1184" y1="880" y2="880" x1="1072" />
        </branch>
        <branch name="unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="752" type="branch" />
            <wire x2="1712" y1="752" y2="752" x1="1600" />
            <wire x2="1808" y1="752" y2="752" x1="1712" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="816" type="branch" />
            <wire x2="1696" y1="816" y2="816" x1="1600" />
            <wire x2="1808" y1="816" y2="816" x1="1696" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="880" type="branch" />
            <wire x2="1696" y1="880" y2="880" x1="1600" />
            <wire x2="1808" y1="880" y2="880" x1="1696" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1184" y1="688" y2="688" x1="976" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1808" y1="688" y2="688" x1="1568" />
        </branch>
        <branch name="dato_bin_lsb">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="688" type="branch" />
            <wire x2="2272" y1="688" y2="688" x1="2192" />
            <wire x2="2400" y1="688" y2="688" x1="2272" />
        </branch>
        <instance x="256" y="624" name="XLXI_4" orien="R90" />
        <branch name="XLXN_17">
            <wire x2="592" y1="688" y2="688" x1="384" />
        </branch>
        <rect style="linestyle:Dash" width="3388" x="124" y="408" height="560" />
        <text style="fontsize:56;fontname:Arial" x="756" y="488">Conversor BCD a Binario serie para 3 cifras BCD; primero LSB</text>
        <instance x="1552" y="1568" name="XLXI_16" orien="R0" />
        <branch name="dato_bin(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1312" type="branch" />
            <wire x2="2032" y1="1312" y2="1312" x1="1936" />
            <wire x2="2144" y1="1312" y2="1312" x1="2032" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1440" type="branch" />
            <wire x2="1440" y1="1440" y2="1440" x1="1344" />
            <wire x2="1552" y1="1440" y2="1440" x1="1440" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1376" type="branch" />
            <wire x2="1456" y1="1376" y2="1376" x1="1344" />
            <wire x2="1552" y1="1376" y2="1376" x1="1456" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="1552" y1="1536" y2="1536" x1="1344" />
        </branch>
        <instance x="1280" y="1664" name="XLXI_19" orien="R0" />
        <branch name="dato_bin_lsb,dato_desp(7:1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1312" type="branch" />
            <wire x2="704" y1="1312" y2="1312" x1="512" />
            <wire x2="720" y1="1312" y2="1312" x1="704" />
            <wire x2="928" y1="1312" y2="1312" x1="720" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="928" y1="1536" y2="1536" x1="720" />
        </branch>
        <instance x="656" y="1664" name="XLXI_24" orien="R0" />
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1440" type="branch" />
            <wire x2="816" y1="1440" y2="1440" x1="720" />
            <wire x2="928" y1="1440" y2="1440" x1="816" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1376" type="branch" />
            <wire x2="816" y1="1376" y2="1376" x1="720" />
            <wire x2="928" y1="1376" y2="1376" x1="816" />
        </branch>
        <instance x="928" y="1568" name="XLXI_23" orien="R0" />
        <branch name="dato_desp(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1312" type="branch" />
            <wire x2="1328" y1="1312" y2="1312" x1="1312" />
            <wire x2="1440" y1="1312" y2="1312" x1="1328" />
            <wire x2="1552" y1="1312" y2="1312" x1="1440" />
        </branch>
        <rect style="linestyle:Dash" width="3388" x="124" y="1036" height="668" />
        <text style="fontsize:56;fontname:Arial" x="752" y="1116">Registro serie-paralelo para formar el numero en binario de 8 bits</text>
        <rect style="linestyle:Dash" width="1784" x="1728" y="1812" height="500" />
        <text style="fontsize:56;fontname:Arial" x="1920" y="1908">Maquina de estados para controlar la conversion BCD-Bin</text>
        <instance x="2368" y="2240" name="XLXI_22" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2080" type="branch" />
            <wire x2="2256" y1="2080" y2="2080" x1="2160" />
            <wire x2="2368" y1="2080" y2="2080" x1="2256" />
        </branch>
        <branch name="inicio">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2144" type="branch" />
            <wire x2="2256" y1="2144" y2="2144" x1="2160" />
            <wire x2="2368" y1="2144" y2="2144" x1="2256" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2208" type="branch" />
            <wire x2="2256" y1="2208" y2="2208" x1="2160" />
            <wire x2="2368" y1="2208" y2="2208" x1="2256" />
        </branch>
        <branch name="ce_reg_salida">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="2080" type="branch" />
            <wire x2="2848" y1="2080" y2="2080" x1="2752" />
            <wire x2="2960" y1="2080" y2="2080" x1="2848" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="2144" type="branch" />
            <wire x2="2848" y1="2144" y2="2144" x1="2752" />
            <wire x2="2960" y1="2144" y2="2144" x1="2848" />
        </branch>
        <branch name="ldZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="2208" type="branch" />
            <wire x2="2848" y1="2208" y2="2208" x1="2752" />
            <wire x2="2960" y1="2208" y2="2208" x1="2848" />
        </branch>
    </sheet>
</drawing>