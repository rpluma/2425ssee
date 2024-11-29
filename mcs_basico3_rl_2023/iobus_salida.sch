<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="io_write_strobe" />
        <signal name="io_addr_strobe" />
        <signal name="escritura_dir_0" />
        <signal name="escritura_dir_0_b0" />
        <signal name="io_write_data(7:0)" />
        <signal name="ck" />
        <signal name="XLXN_48" />
        <signal name="dato_escrito(7:0)" />
        <signal name="io_write_data(15:8)" />
        <signal name="escritura_dir_0_b1" />
        <signal name="dato_escrito(15:8)" />
        <signal name="io_write_data(23:16)" />
        <signal name="escritura_dir_0_b2" />
        <signal name="dato_escrito(23:16)" />
        <signal name="io_write_data(31:24)" />
        <signal name="escritura_dir_0_b3" />
        <signal name="dato_escrito(31:24)" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_194" />
        <signal name="io_read_strobe" />
        <signal name="gpi1(7:0)" />
        <signal name="lectura_dir_0" />
        <signal name="io_ready" />
        <signal name="direccion_0" />
        <signal name="io_byte_enable(0)" />
        <signal name="io_byte_enable(1)" />
        <signal name="io_byte_enable(2)" />
        <signal name="io_byte_enable(3)" />
        <signal name="io_byte_enable(3:0)" />
        <signal name="io_address(31:0)" />
        <signal name="dato_escrito(31:0)" />
        <signal name="io_write_data(31:0)" />
        <signal name="io_read_data(31:0)" />
        <signal name="io_address(15:0)" />
        <signal name="XLXN_282" />
        <signal name="XLXN_278" />
        <signal name="io_read_data(7:0)" />
        <signal name="io_read_data(31:8)" />
        <signal name="XLXN_283(15:0)" />
        <port polarity="Input" name="io_write_strobe" />
        <port polarity="Input" name="io_addr_strobe" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="io_read_strobe" />
        <port polarity="Input" name="gpi1(7:0)" />
        <port polarity="Output" name="io_ready" />
        <port polarity="Input" name="io_byte_enable(3:0)" />
        <port polarity="Input" name="io_address(31:0)" />
        <port polarity="Output" name="dato_escrito(31:0)" />
        <port polarity="Input" name="io_write_data(31:0)" />
        <port polarity="Output" name="io_read_data(31:0)" />
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="comp16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_48" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_5">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="escritura_dir_0_b0" name="CE" />
            <blockpin signalname="XLXN_48" name="CLR" />
            <blockpin signalname="io_write_data(7:0)" name="D(7:0)" />
            <blockpin signalname="dato_escrito(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_51">
            <blockpin signalname="XLXN_194" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_53">
            <blockpin signalname="XLXN_191" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_54">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="escritura_dir_0_b2" name="CE" />
            <blockpin signalname="XLXN_191" name="CLR" />
            <blockpin signalname="io_write_data(23:16)" name="D(7:0)" />
            <blockpin signalname="dato_escrito(23:16)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_55">
            <blockpin signalname="XLXN_192" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_56">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="escritura_dir_0_b3" name="CE" />
            <blockpin signalname="XLXN_192" name="CLR" />
            <blockpin signalname="io_write_data(31:24)" name="D(7:0)" />
            <blockpin signalname="dato_escrito(31:24)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_52">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="escritura_dir_0_b1" name="CE" />
            <blockpin signalname="XLXN_194" name="CLR" />
            <blockpin signalname="io_write_data(15:8)" name="D(7:0)" />
            <blockpin signalname="dato_escrito(15:8)" name="Q(7:0)" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="io_write_strobe" name="I0" />
            <blockpin signalname="io_addr_strobe" name="I1" />
            <blockpin signalname="direccion_0" name="I2" />
            <blockpin signalname="escritura_dir_0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_57">
            <blockpin signalname="io_byte_enable(0)" name="I0" />
            <blockpin signalname="escritura_dir_0" name="I1" />
            <blockpin signalname="escritura_dir_0_b0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_58">
            <blockpin signalname="io_byte_enable(1)" name="I0" />
            <blockpin signalname="escritura_dir_0" name="I1" />
            <blockpin signalname="escritura_dir_0_b1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_71">
            <blockpin signalname="io_byte_enable(2)" name="I0" />
            <blockpin signalname="escritura_dir_0" name="I1" />
            <blockpin signalname="escritura_dir_0_b2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_72">
            <blockpin signalname="io_byte_enable(3)" name="I0" />
            <blockpin signalname="escritura_dir_0" name="I1" />
            <blockpin signalname="escritura_dir_0_b3" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_2">
            <attr value="0004" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_283(15:0)" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_86">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="XLXN_282" name="D" />
            <blockpin signalname="io_ready" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_87">
            <blockpin signalname="lectura_dir_0" name="I0" />
            <blockpin signalname="escritura_dir_0" name="I1" />
            <blockpin signalname="XLXN_282" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_80">
            <blockpin signalname="io_read_strobe" name="I0" />
            <blockpin signalname="io_addr_strobe" name="I1" />
            <blockpin signalname="direccion_0" name="I2" />
            <blockpin signalname="lectura_dir_0" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_81">
            <blockpin signalname="XLXN_278" name="G" />
        </block>
        <block symbolname="fd8ce" name="XLXI_82">
            <blockpin signalname="ck" name="C" />
            <blockpin signalname="lectura_dir_0" name="CE" />
            <blockpin signalname="XLXN_278" name="CLR" />
            <blockpin signalname="gpi1(7:0)" name="D(7:0)" />
            <blockpin signalname="io_read_data(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_83">
            <attr value="000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="io_read_data(31:8)" name="O" />
        </block>
        <block symbolname="comp16" name="XLXI_88">
            <blockpin signalname="io_address(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_283(15:0)" name="B(15:0)" />
            <blockpin signalname="direccion_0" name="EQ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="io_write_data(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="864" type="branch" />
            <wire x2="384" y1="864" y2="864" x1="240" />
            <wire x2="512" y1="864" y2="864" x1="384" />
        </branch>
        <instance x="368" y="1248" name="XLXI_6" orien="R0" />
        <instance x="512" y="1120" name="XLXI_5" orien="R0" />
        <branch name="escritura_dir_0_b0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="928" type="branch" />
            <wire x2="384" y1="928" y2="928" x1="240" />
            <wire x2="512" y1="928" y2="928" x1="384" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="992" type="branch" />
            <wire x2="384" y1="992" y2="992" x1="240" />
            <wire x2="512" y1="992" y2="992" x1="384" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="512" y1="1088" y2="1088" x1="432" />
            <wire x2="432" y1="1088" y2="1120" x1="432" />
        </branch>
        <branch name="dato_escrito(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="864" type="branch" />
            <wire x2="1040" y1="864" y2="864" x1="896" />
            <wire x2="1168" y1="864" y2="864" x1="1040" />
        </branch>
        <branch name="io_write_data(15:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="864" type="branch" />
            <wire x2="1440" y1="864" y2="864" x1="1296" />
            <wire x2="1568" y1="864" y2="864" x1="1440" />
        </branch>
        <instance x="1424" y="1248" name="XLXI_51" orien="R0" />
        <branch name="escritura_dir_0_b1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="928" type="branch" />
            <wire x2="1440" y1="928" y2="928" x1="1296" />
            <wire x2="1568" y1="928" y2="928" x1="1440" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="992" type="branch" />
            <wire x2="1440" y1="992" y2="992" x1="1296" />
            <wire x2="1568" y1="992" y2="992" x1="1440" />
        </branch>
        <branch name="dato_escrito(15:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="864" type="branch" />
            <wire x2="2096" y1="864" y2="864" x1="1952" />
            <wire x2="2224" y1="864" y2="864" x1="2096" />
        </branch>
        <branch name="io_write_data(23:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1472" type="branch" />
            <wire x2="368" y1="1472" y2="1472" x1="224" />
            <wire x2="496" y1="1472" y2="1472" x1="368" />
        </branch>
        <instance x="352" y="1856" name="XLXI_53" orien="R0" />
        <instance x="496" y="1728" name="XLXI_54" orien="R0" />
        <branch name="escritura_dir_0_b2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1536" type="branch" />
            <wire x2="368" y1="1536" y2="1536" x1="224" />
            <wire x2="496" y1="1536" y2="1536" x1="368" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1600" type="branch" />
            <wire x2="368" y1="1600" y2="1600" x1="224" />
            <wire x2="496" y1="1600" y2="1600" x1="368" />
        </branch>
        <branch name="dato_escrito(23:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1472" type="branch" />
            <wire x2="1024" y1="1472" y2="1472" x1="880" />
            <wire x2="1152" y1="1472" y2="1472" x1="1024" />
        </branch>
        <branch name="io_write_data(31:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1472" type="branch" />
            <wire x2="1424" y1="1472" y2="1472" x1="1280" />
            <wire x2="1552" y1="1472" y2="1472" x1="1424" />
        </branch>
        <instance x="1408" y="1856" name="XLXI_55" orien="R0" />
        <instance x="1552" y="1728" name="XLXI_56" orien="R0" />
        <branch name="escritura_dir_0_b3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1536" type="branch" />
            <wire x2="1424" y1="1536" y2="1536" x1="1280" />
            <wire x2="1552" y1="1536" y2="1536" x1="1424" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1600" type="branch" />
            <wire x2="1424" y1="1600" y2="1600" x1="1280" />
            <wire x2="1552" y1="1600" y2="1600" x1="1424" />
        </branch>
        <branch name="dato_escrito(31:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1472" type="branch" />
            <wire x2="2080" y1="1472" y2="1472" x1="1936" />
            <wire x2="2208" y1="1472" y2="1472" x1="2080" />
        </branch>
        <instance x="1568" y="1120" name="XLXI_52" orien="R0" />
        <branch name="XLXN_191">
            <wire x2="496" y1="1696" y2="1696" x1="416" />
            <wire x2="416" y1="1696" y2="1728" x1="416" />
        </branch>
        <branch name="XLXN_192">
            <wire x2="1552" y1="1696" y2="1696" x1="1472" />
            <wire x2="1472" y1="1696" y2="1728" x1="1472" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="1568" y1="1088" y2="1088" x1="1488" />
            <wire x2="1488" y1="1088" y2="1120" x1="1488" />
        </branch>
        <rect style="linestyle:Dash" width="3048" x="84" y="44" height="2028" />
        <rect style="linestyle:Dash" width="3048" x="84" y="2148" height="1544" />
        <branch name="io_addr_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="432" type="branch" />
            <wire x2="400" y1="432" y2="432" x1="256" />
            <wire x2="560" y1="432" y2="432" x1="400" />
        </branch>
        <branch name="io_write_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="496" type="branch" />
            <wire x2="400" y1="496" y2="496" x1="256" />
            <wire x2="560" y1="496" y2="496" x1="400" />
        </branch>
        <instance x="560" y="560" name="XLXI_4" orien="R0" />
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="432" type="branch" />
            <wire x2="896" y1="432" y2="432" x1="816" />
            <wire x2="1024" y1="432" y2="432" x1="896" />
        </branch>
        <branch name="direccion_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="368" type="branch" />
            <wire x2="416" y1="368" y2="368" x1="256" />
            <wire x2="560" y1="368" y2="368" x1="416" />
        </branch>
        <instance x="1440" y="416" name="XLXI_57" orien="R0" />
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="288" type="branch" />
            <wire x2="1328" y1="288" y2="288" x1="1168" />
            <wire x2="1440" y1="288" y2="288" x1="1328" />
        </branch>
        <branch name="io_byte_enable(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="352" type="branch" />
            <wire x2="1328" y1="352" y2="352" x1="1168" />
            <wire x2="1440" y1="352" y2="352" x1="1328" />
        </branch>
        <branch name="escritura_dir_0_b0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="320" type="branch" />
            <wire x2="1824" y1="320" y2="320" x1="1696" />
            <wire x2="2000" y1="320" y2="320" x1="1824" />
        </branch>
        <instance x="1440" y="592" name="XLXI_58" orien="R0" />
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="464" type="branch" />
            <wire x2="1328" y1="464" y2="464" x1="1168" />
            <wire x2="1440" y1="464" y2="464" x1="1328" />
        </branch>
        <branch name="io_byte_enable(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="528" type="branch" />
            <wire x2="1328" y1="528" y2="528" x1="1168" />
            <wire x2="1440" y1="528" y2="528" x1="1328" />
        </branch>
        <branch name="escritura_dir_0_b1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="496" type="branch" />
            <wire x2="1824" y1="496" y2="496" x1="1696" />
            <wire x2="2000" y1="496" y2="496" x1="1824" />
        </branch>
        <instance x="2480" y="416" name="XLXI_71" orien="R0" />
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="288" type="branch" />
            <wire x2="2368" y1="288" y2="288" x1="2208" />
            <wire x2="2480" y1="288" y2="288" x1="2368" />
        </branch>
        <branch name="io_byte_enable(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="352" type="branch" />
            <wire x2="2368" y1="352" y2="352" x1="2208" />
            <wire x2="2480" y1="352" y2="352" x1="2368" />
        </branch>
        <branch name="escritura_dir_0_b2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="320" type="branch" />
            <wire x2="2864" y1="320" y2="320" x1="2736" />
            <wire x2="3040" y1="320" y2="320" x1="2864" />
        </branch>
        <instance x="2480" y="592" name="XLXI_72" orien="R0" />
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="464" type="branch" />
            <wire x2="2368" y1="464" y2="464" x1="2208" />
            <wire x2="2480" y1="464" y2="464" x1="2368" />
        </branch>
        <branch name="io_byte_enable(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="528" type="branch" />
            <wire x2="2368" y1="528" y2="528" x1="2208" />
            <wire x2="2480" y1="528" y2="528" x1="2368" />
        </branch>
        <branch name="escritura_dir_0_b3">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="496" type="branch" />
            <wire x2="2864" y1="496" y2="496" x1="2736" />
            <wire x2="3040" y1="496" y2="496" x1="2864" />
        </branch>
        <branch name="io_byte_enable(3:0)">
            <wire x2="4368" y1="3328" y2="3328" x1="4192" />
        </branch>
        <branch name="io_address(31:0)">
            <wire x2="4368" y1="3264" y2="3264" x1="4192" />
        </branch>
        <branch name="io_write_strobe">
            <wire x2="4368" y1="3200" y2="3200" x1="4192" />
        </branch>
        <branch name="io_read_strobe">
            <wire x2="4368" y1="3136" y2="3136" x1="4192" />
        </branch>
        <branch name="io_addr_strobe">
            <wire x2="4368" y1="3072" y2="3072" x1="4192" />
        </branch>
        <branch name="dato_escrito(31:0)">
            <wire x2="4672" y1="3456" y2="3456" x1="4496" />
        </branch>
        <branch name="io_write_data(31:0)">
            <wire x2="4368" y1="3392" y2="3392" x1="4192" />
        </branch>
        <branch name="ck">
            <wire x2="4368" y1="3008" y2="3008" x1="4192" />
        </branch>
        <branch name="io_read_data(31:0)">
            <wire x2="4672" y1="3584" y2="3584" x1="4496" />
        </branch>
        <branch name="gpi1(7:0)">
            <wire x2="4368" y1="3584" y2="3584" x1="4192" />
        </branch>
        <branch name="io_ready">
            <wire x2="4672" y1="3520" y2="3520" x1="4496" />
        </branch>
        <iomarker fontsize="28" x="4192" y="3328" name="io_byte_enable(3:0)" orien="R180" />
        <iomarker fontsize="28" x="4192" y="3264" name="io_address(31:0)" orien="R180" />
        <iomarker fontsize="28" x="4192" y="3200" name="io_write_strobe" orien="R180" />
        <iomarker fontsize="28" x="4192" y="3136" name="io_read_strobe" orien="R180" />
        <iomarker fontsize="28" x="4192" y="3072" name="io_addr_strobe" orien="R180" />
        <iomarker fontsize="28" x="4672" y="3456" name="dato_escrito(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4192" y="3392" name="io_write_data(31:0)" orien="R180" />
        <iomarker fontsize="28" x="4192" y="3008" name="ck" orien="R180" />
        <iomarker fontsize="28" x="4672" y="3584" name="io_read_data(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4192" y="3584" name="gpi1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="4672" y="3520" name="io_ready" orien="R0" />
        <rect style="linestyle:Dash" width="2048" x="3244" y="48" height="952" />
        <instance x="3856" y="528" name="XLXI_2" orien="R0">
        </instance>
        <branch name="io_address(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="368" type="branch" />
            <wire x2="4032" y1="368" y2="368" x1="3872" />
            <wire x2="4176" y1="368" y2="368" x1="4032" />
        </branch>
        <branch name="direccion_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="464" type="branch" />
            <wire x2="4640" y1="464" y2="464" x1="4560" />
            <wire x2="4800" y1="464" y2="464" x1="4640" />
        </branch>
        <text style="fontsize:44;fontname:Arial" x="4036" y="900">Direccion base a la que responder</text>
        <rect style="linestyle:Dash" width="2048" x="3244" y="1088" height="984" />
        <instance x="4224" y="1680" name="XLXI_86" orien="R0" />
        <instance x="3840" y="1520" name="XLXI_87" orien="R0" />
        <branch name="XLXN_282">
            <wire x2="4224" y1="1424" y2="1424" x1="4096" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="1552" type="branch" />
            <wire x2="4176" y1="1552" y2="1552" x1="4064" />
            <wire x2="4224" y1="1552" y2="1552" x1="4176" />
        </branch>
        <branch name="io_ready">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4704" y="1424" type="branch" />
            <wire x2="4704" y1="1424" y2="1424" x1="4608" />
            <wire x2="4832" y1="1424" y2="1424" x1="4704" />
        </branch>
        <branch name="escritura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="1392" type="branch" />
            <wire x2="3744" y1="1392" y2="1392" x1="3616" />
            <wire x2="3840" y1="1392" y2="1392" x1="3744" />
        </branch>
        <branch name="lectura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="1456" type="branch" />
            <wire x2="3744" y1="1456" y2="1456" x1="3616" />
            <wire x2="3840" y1="1456" y2="1456" x1="3744" />
        </branch>
        <text style="fontsize:44;fontname:Arial" x="3872" y="1912">Generacion del IO_Ready para finalizar el ciclo</text>
        <branch name="io_addr_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2432" type="branch" />
            <wire x2="608" y1="2432" y2="2432" x1="464" />
            <wire x2="768" y1="2432" y2="2432" x1="608" />
        </branch>
        <branch name="io_read_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2496" type="branch" />
            <wire x2="608" y1="2496" y2="2496" x1="464" />
            <wire x2="768" y1="2496" y2="2496" x1="608" />
        </branch>
        <instance x="768" y="2560" name="XLXI_80" orien="R0" />
        <branch name="lectura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="2432" type="branch" />
            <wire x2="1104" y1="2432" y2="2432" x1="1024" />
            <wire x2="1232" y1="2432" y2="2432" x1="1104" />
        </branch>
        <branch name="gpi1(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2784" type="branch" />
            <wire x2="576" y1="2784" y2="2784" x1="432" />
            <wire x2="704" y1="2784" y2="2784" x1="576" />
        </branch>
        <instance x="560" y="3168" name="XLXI_81" orien="R0" />
        <instance x="704" y="3040" name="XLXI_82" orien="R0" />
        <branch name="lectura_dir_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2848" type="branch" />
            <wire x2="576" y1="2848" y2="2848" x1="432" />
            <wire x2="704" y1="2848" y2="2848" x1="576" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2912" type="branch" />
            <wire x2="576" y1="2912" y2="2912" x1="432" />
            <wire x2="704" y1="2912" y2="2912" x1="576" />
        </branch>
        <branch name="XLXN_278">
            <wire x2="704" y1="3008" y2="3008" x1="624" />
            <wire x2="624" y1="3008" y2="3040" x1="624" />
        </branch>
        <branch name="io_read_data(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2784" type="branch" />
            <wire x2="1232" y1="2784" y2="2784" x1="1088" />
            <wire x2="1360" y1="2784" y2="2784" x1="1232" />
        </branch>
        <instance x="944" y="3104" name="XLXI_83" orien="R0">
        </instance>
        <branch name="io_read_data(31:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="3136" type="branch" />
            <wire x2="1232" y1="3136" y2="3136" x1="1088" />
            <wire x2="1360" y1="3136" y2="3136" x1="1232" />
        </branch>
        <branch name="direccion_0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2368" type="branch" />
            <wire x2="608" y1="2368" y2="2368" x1="464" />
            <wire x2="768" y1="2368" y2="2368" x1="608" />
        </branch>
        <text style="fontsize:44;fontname:Arial" x="552" y="2012">Escritura de datos desde el IOBus del MicroBlaze. Se decodifica la direccion y se modifican solo los bytes indicados</text>
        <text style="fontsize:44;fontname:Arial" x="452" y="3584">Lectura de datos hacia el IOBus del MicroBlaze. Se decodifica la direccion y se envia un solo byte, el resto esta a 0</text>
        <instance x="4176" y="688" name="XLXI_88" orien="R0" />
        <branch name="XLXN_283(15:0)">
            <wire x2="4176" y1="560" y2="560" x1="4000" />
        </branch>
    </sheet>
</drawing>