<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck_20KHz" />
        <signal name="reset" />
        <signal name="ck_300Hz" />
        <signal name="fila_pad(4:1)" />
        <signal name="fila(4:1)" />
        <signal name="XLXN_406(4:1)" />
        <signal name="XLXN_407(4:1)" />
        <signal name="col_pad(4:1)" />
        <signal name="col(4:1)" />
        <signal name="reset_pad" />
        <signal name="ck_100MHz" />
        <signal name="ck_100MHz_pad" />
        <signal name="ck_5MHz" />
        <signal name="locked_OK" />
        <signal name="lockedZ" />
        <signal name="cuenta_dcm(15:0)" />
        <signal name="cuenta_dcm(7)" />
        <signal name="cuenta_dcm(13)" />
        <signal name="seg3(7:0)" />
        <signal name="seg2(7:0)" />
        <signal name="seg1(7:0)" />
        <signal name="seg0(7:0)" />
        <signal name="sw_i(7:0)" />
        <signal name="reset_i" />
        <signal name="display(7:0)" />
        <signal name="display_pad(7:0)" />
        <signal name="ce_display_neg(4:1)" />
        <signal name="ce_display_neg_pad(4:1)" />
        <signal name="signo_sal_pad" />
        <signal name="signo_sal" />
        <signal name="ck_display_externo_pad" />
        <signal name="XLXN_390" />
        <signal name="XLXN_388" />
        <signal name="XLXN_385" />
        <signal name="XLXN_384" />
        <signal name="XLXN_460" />
        <signal name="boton_der_i" />
        <signal name="boton_izq_i" />
        <signal name="boton_arr_i" />
        <signal name="boton_aba_i" />
        <signal name="boton_der_pad" />
        <signal name="boton_izq_pad" />
        <signal name="boton_arr_pad" />
        <signal name="boton_aba_pad" />
        <signal name="sw_pad(7:0)" />
        <signal name="EppASTB" />
        <signal name="EppDSTB" />
        <signal name="EppWRITE" />
        <signal name="boton_der_i,boton_aba_i,boton_izq_i,boton_arr_i,reset_i" />
        <signal name="uart_rx_pad" />
        <signal name="EppWAIT" />
        <signal name="DB(7:0)" />
        <signal name="sw(7:0)" />
        <signal name="boton_der,boton_aba,boton_izq,boton_arr,reset" />
        <signal name="uart_rx" />
        <signal name="led_pad(7:0)" />
        <signal name="seg_pad(7:0)" />
        <signal name="anodo_pad(3:0)" />
        <signal name="uart_tx_pad" />
        <signal name="uart_tx" />
        <signal name="led(7:0)" />
        <signal name="gpo2(7:0)" />
        <signal name="io_addr_strobe" />
        <signal name="io_read_strobe" />
        <signal name="io_write_strobe" />
        <signal name="io_address(31:0)" />
        <signal name="io_byte_enable(3:0)" />
        <signal name="io_write_data(31:0)" />
        <signal name="io_read_data(31:0)" />
        <signal name="io_ready" />
        <signal name="boton_aba,boton_arr,boton_izq,boton_der" />
        <signal name="dato_escrito(31:0)" />
        <signal name="cero" />
        <signal name="uno" />
        <signal name="gpo2(3:0)" />
        <signal name="cero,cero,cero,cero" />
        <signal name="dato_escrito(3:0)" />
        <signal name="led(3:0)" />
        <signal name="cero,uno,cero,uno" />
        <port polarity="BiDirectional" name="fila_pad(4:1)" />
        <port polarity="Input" name="col_pad(4:1)" />
        <port polarity="Input" name="reset_pad" />
        <port polarity="Input" name="ck_100MHz_pad" />
        <port polarity="Output" name="display_pad(7:0)" />
        <port polarity="Output" name="ce_display_neg_pad(4:1)" />
        <port polarity="Output" name="signo_sal_pad" />
        <port polarity="Output" name="ck_display_externo_pad" />
        <port polarity="Input" name="boton_der_pad" />
        <port polarity="Input" name="boton_izq_pad" />
        <port polarity="Input" name="boton_arr_pad" />
        <port polarity="Input" name="boton_aba_pad" />
        <port polarity="Input" name="sw_pad(7:0)" />
        <port polarity="Input" name="EppASTB" />
        <port polarity="Input" name="EppDSTB" />
        <port polarity="Input" name="EppWRITE" />
        <port polarity="Input" name="uart_rx_pad" />
        <port polarity="Output" name="EppWAIT" />
        <port polarity="BiDirectional" name="DB(7:0)" />
        <port polarity="Output" name="led_pad(7:0)" />
        <port polarity="Output" name="seg_pad(7:0)" />
        <port polarity="Output" name="anodo_pad(3:0)" />
        <port polarity="Output" name="uart_tx_pad" />
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ofd8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
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
        <blockdef name="obuft">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="startup_spartan6">
            <timestamp>2008-10-8T16:19:43</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="oddr2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="192" x="64" y="-304" height="484" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="320" y1="-192" y2="-192" x1="256" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="0" y1="128" y2="128" x1="64" />
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
        <blockdef name="ofd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <blockdef name="dcm_100m_5m">
            <timestamp>2016-10-8T15:34:3</timestamp>
            <rect width="544" x="32" y="32" height="284" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="576" y1="80" y2="80" x1="608" />
            <line x2="576" y1="176" y2="176" x1="608" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="576" y1="272" y2="272" x1="608" />
        </blockdef>
        <blockdef name="cont_16bits">
            <timestamp>2016-10-8T15:40:18</timestamp>
            <rect width="432" x="32" y="32" height="188" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="464" y1="80" y2="80" style="linewidth:W" x1="496" />
        </blockdef>
        <blockdef name="ifd4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="ifd8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="Remote_Lab">
            <timestamp>2022-10-7T9:28:48</timestamp>
            <line x2="464" y1="96" y2="96" x1="400" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="336" x="64" y="-704" height="832" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <rect width="64" x="400" y="-556" height="24" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
        </blockdef>
        <blockdef name="microcontrolador_mcs">
            <timestamp>2015-10-27T9:9:21</timestamp>
            <rect width="704" x="32" y="32" height="1696" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="736" y1="80" y2="80" x1="768" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="736" y1="112" y2="112" x1="768" />
            <line x2="736" y1="368" y2="368" x1="768" />
            <line x2="32" y1="304" y2="304" style="linewidth:W" x1="0" />
            <line x2="736" y1="784" y2="784" style="linewidth:W" x1="768" />
            <line x2="736" y1="816" y2="816" style="linewidth:W" x1="768" />
            <line x2="736" y1="912" y2="912" x1="768" />
            <line x2="32" y1="432" y2="432" style="linewidth:W" x1="0" />
            <line x2="736" y1="944" y2="944" x1="768" />
            <line x2="736" y1="976" y2="976" x1="768" />
            <line x2="736" y1="1008" y2="1008" x1="768" />
            <line x2="736" y1="1040" y2="1040" style="linewidth:W" x1="768" />
            <line x2="736" y1="1072" y2="1072" style="linewidth:W" x1="768" />
            <line x2="736" y1="1104" y2="1104" style="linewidth:W" x1="768" />
            <line x2="736" y1="1136" y2="1136" style="linewidth:W" x1="768" />
            <line x2="736" y1="1168" y2="1168" x1="768" />
        </blockdef>
        <blockdef name="iobus_salida">
            <timestamp>2015-10-27T20:0:20</timestamp>
            <rect width="416" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-492" height="24" />
            <line x2="544" y1="-480" y2="-480" x1="480" />
            <rect width="64" x="480" y="-268" height="24" />
            <line x2="544" y1="-256" y2="-256" x1="480" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="displays_7seg_nexys3_RemLab">
            <timestamp>2020-10-1T16:51:34</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-284" height="24" />
            <line x2="464" y1="-272" y2="-272" x1="400" />
            <rect width="64" x="400" y="-204" height="24" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-124" height="24" />
            <line x2="464" y1="-112" y2="-112" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="obuft" name="XLXI_114(4:1)">
            <blockpin signalname="XLXN_406(4:1)" name="I" />
            <blockpin signalname="XLXN_407(4:1)" name="T" />
            <blockpin signalname="fila_pad(4:1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_118(4:1)">
            <blockpin signalname="fila(4:1)" name="I" />
            <blockpin signalname="XLXN_407(4:1)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_134(4:1)">
            <blockpin signalname="XLXN_406(4:1)" name="P" />
        </block>
        <block symbolname="ifd" name="XLXI_279(4:1)">
            <blockpin signalname="ck_300Hz" name="C" />
            <blockpin signalname="col_pad(4:1)" name="D" />
            <blockpin signalname="col(4:1)" name="Q" />
        </block>
        <block symbolname="ibuf" name="XLXI_30">
            <blockpin signalname="reset_pad" name="I" />
            <blockpin signalname="reset_i" name="O" />
        </block>
        <block symbolname="startup_spartan6" name="XLXI_138">
            <blockpin name="CLK" />
            <blockpin signalname="reset" name="GSR" />
            <blockpin signalname="reset" name="GTS" />
            <blockpin name="KEYCLEARB" />
            <blockpin name="CFGCLK" />
            <blockpin name="CFGMCLK" />
            <blockpin name="EOS" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="locked_OK" name="I" />
            <blockpin signalname="lockedZ" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_14">
            <blockpin signalname="cuenta_dcm(7)" name="I" />
            <blockpin signalname="ck_20KHz" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_314">
            <blockpin signalname="cuenta_dcm(13)" name="I" />
            <blockpin signalname="ck_300Hz" name="O" />
        </block>
        <block symbolname="ofd" name="XLXI_288(4:1)">
            <blockpin signalname="ck_20KHz" name="C" />
            <blockpin signalname="ce_display_neg(4:1)" name="D" />
            <blockpin signalname="ce_display_neg_pad(4:1)" name="Q" />
        </block>
        <block symbolname="ofd" name="XLXI_165">
            <blockpin signalname="ck_20KHz" name="C" />
            <blockpin signalname="signo_sal" name="D" />
            <blockpin signalname="signo_sal_pad" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_186">
            <blockpin signalname="XLXN_388" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_185">
            <blockpin signalname="XLXN_390" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_292">
            <blockpin signalname="XLXN_385" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_176">
            <blockpin signalname="XLXN_384" name="P" />
        </block>
        <block symbolname="oddr2" name="XLXI_142">
            <blockpin signalname="XLXN_384" name="D0" />
            <blockpin signalname="XLXN_385" name="D1" />
            <blockpin signalname="XLXN_460" name="C0" />
            <blockpin signalname="ck_20KHz" name="C1" />
            <blockpin signalname="XLXN_390" name="CE" />
            <blockpin signalname="XLXN_388" name="R" />
            <blockpin signalname="ck_display_externo_pad" name="Q" />
            <blockpin signalname="XLXN_388" name="S" />
        </block>
        <block symbolname="inv" name="XLXI_304">
            <blockpin signalname="ck_20KHz" name="I" />
            <blockpin signalname="XLXN_460" name="O" />
        </block>
        <block symbolname="ofd8" name="XLXI_35">
            <blockpin signalname="ck_20KHz" name="C" />
            <blockpin signalname="display(7:0)" name="D(7:0)" />
            <blockpin signalname="display_pad(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_737(7:0)">
            <blockpin signalname="display(7:0)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_745(4:1)">
            <blockpin signalname="ce_display_neg(4:1)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_746">
            <blockpin signalname="signo_sal" name="G" />
        </block>
        <block symbolname="ifd4" name="XLXI_180">
            <blockpin signalname="ck_20KHz" name="C" />
            <blockpin signalname="boton_der_pad" name="D0" />
            <blockpin signalname="boton_izq_pad" name="D1" />
            <blockpin signalname="boton_arr_pad" name="D2" />
            <blockpin signalname="boton_aba_pad" name="D3" />
            <blockpin signalname="boton_der_i" name="Q0" />
            <blockpin signalname="boton_izq_i" name="Q1" />
            <blockpin signalname="boton_arr_i" name="Q2" />
            <blockpin signalname="boton_aba_i" name="Q3" />
        </block>
        <block symbolname="ifd8" name="XLXI_387">
            <blockpin signalname="ck_20KHz" name="C" />
            <blockpin signalname="sw_pad(7:0)" name="D(7:0)" />
            <blockpin signalname="sw_i(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="Remote_Lab" name="XLXI_865">
            <blockpin signalname="ck_100MHz" name="Clk" />
            <blockpin signalname="EppASTB" name="EppASTB" />
            <blockpin signalname="EppDSTB" name="EppDSTB" />
            <blockpin signalname="EppWRITE" name="EppWRITE" />
            <blockpin signalname="uart_rx_pad" name="RsRx" />
            <blockpin signalname="uart_tx" name="TxInternal" />
            <blockpin signalname="sw_i(7:0)" name="sw(7:0)" />
            <blockpin signalname="boton_der_i,boton_aba_i,boton_izq_i,boton_arr_i,reset_i" name="btn(4:0)" />
            <blockpin signalname="led(7:0)" name="LedInternal(7:0)" />
            <blockpin signalname="seg3(7:0)" name="SevenSeg3(7:0)" />
            <blockpin signalname="seg2(7:0)" name="SevenSeg2(7:0)" />
            <blockpin signalname="seg1(7:0)" name="SevenSeg1(7:0)" />
            <blockpin signalname="seg0(7:0)" name="SevenSeg0(7:0)" />
            <blockpin signalname="DB(7:0)" name="EppDB(7:0)" />
            <blockpin signalname="EppWAIT" name="EppWAIT" />
            <blockpin signalname="uart_rx" name="RxInternal" />
            <blockpin signalname="uart_tx_pad" name="RsTx" />
            <blockpin signalname="sw(7:0)" name="swInternal(7:0)" />
            <blockpin signalname="boton_der,boton_aba,boton_izq,boton_arr,reset" name="btnInternal(4:0)" />
            <blockpin signalname="led_pad(7:0)" name="Led(7:0)" />
            <blockpin signalname="seg_pad(7:0)" name="seg(7:0)" />
            <blockpin signalname="anodo_pad(3:0)" name="an(3:0)" />
        </block>
        <block symbolname="dcm_100m_5m" name="XLXI_866">
            <blockpin signalname="ck_100MHz_pad" name="clk_in1" />
            <blockpin signalname="ck_100MHz" name="clk_out1" />
            <blockpin signalname="ck_5MHz" name="clk_out2" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="locked_OK" name="locked" />
        </block>
        <block symbolname="cont_16bits" name="XLXI_867">
            <blockpin signalname="ck_5MHz" name="clk" />
            <blockpin signalname="lockedZ" name="sclr" />
            <blockpin signalname="cuenta_dcm(15:0)" name="q(15:0)" />
        </block>
        <block symbolname="microcontrolador_mcs" name="mcs_0">
            <blockpin signalname="ck_100MHz" name="clk" />
            <blockpin signalname="lockedZ" name="reset" />
            <blockpin signalname="uart_tx" name="uart_tx" />
            <blockpin signalname="uart_rx" name="uart_rx" />
            <blockpin name="fit1_toggle" />
            <blockpin name="fit1_interrupt" />
            <blockpin signalname="sw(7:0)" name="gpi1(7:0)" />
            <blockpin signalname="led(7:0)" name="gpo1(7:0)" />
            <blockpin signalname="gpo2(7:0)" name="gpo2(7:0)" />
            <blockpin name="intc_irq" />
            <blockpin signalname="boton_aba,boton_arr,boton_izq,boton_der" name="intc_interrupt(3:0)" />
            <blockpin signalname="io_addr_strobe" name="io_addr_strobe" />
            <blockpin signalname="io_read_strobe" name="io_read_strobe" />
            <blockpin signalname="io_write_strobe" name="io_write_strobe" />
            <blockpin signalname="io_address(31:0)" name="io_address(31:0)" />
            <blockpin signalname="io_byte_enable(3:0)" name="io_byte_enable(3:0)" />
            <blockpin signalname="io_write_data(31:0)" name="io_write_data(31:0)" />
            <blockpin signalname="io_read_data(31:0)" name="io_read_data(31:0)" />
            <blockpin signalname="io_ready" name="io_ready" />
        </block>
        <block symbolname="iobus_salida" name="XLXI_183">
            <blockpin signalname="io_write_strobe" name="io_write_strobe" />
            <blockpin signalname="io_addr_strobe" name="io_addr_strobe" />
            <blockpin signalname="ck_100MHz" name="ck" />
            <blockpin signalname="io_byte_enable(3:0)" name="io_byte_enable(3:0)" />
            <blockpin signalname="io_address(31:0)" name="io_address(31:0)" />
            <blockpin signalname="io_read_strobe" name="io_read_strobe" />
            <blockpin signalname="io_write_data(31:0)" name="io_write_data(31:0)" />
            <blockpin signalname="sw(7:0)" name="gpi1(7:0)" />
            <blockpin signalname="dato_escrito(31:0)" name="dato_escrito(31:0)" />
            <blockpin signalname="io_read_data(31:0)" name="io_read_data(31:0)" />
            <blockpin signalname="io_ready" name="io_ready" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_32">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="displays_7seg_nexys3_RemLab" name="XLXI_873">
            <blockpin signalname="led(3:0)" name="mill_bcd(3:0)" />
            <blockpin signalname="dato_escrito(3:0)" name="cent_bcd(3:0)" />
            <blockpin signalname="cero,cero,cero,cero" name="dec_bcd(3:0)" />
            <blockpin signalname="gpo2(3:0)" name="unid_bcd(3:0)" />
            <blockpin signalname="ck_20KHz" name="ck_display" />
            <blockpin signalname="cero,uno,cero,uno" name="punto_dec(3:0)" />
            <blockpin name="anodo(3:0)" />
            <blockpin signalname="seg3(7:0)" name="siete_seg3(7:0)" />
            <blockpin signalname="seg2(7:0)" name="siete_seg2(7:0)" />
            <blockpin signalname="seg1(7:0)" name="siete_seg1(7:0)" />
            <blockpin signalname="seg0(7:0)" name="siete_seg0(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="784" y="4976" name="XLXI_114(4:1)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="448" y="4912" name="XLXI_118(4:1)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="fila_pad(4:1)">
            <wire x2="1248" y1="4944" y2="4944" x1="1008" />
        </branch>
        <branch name="fila(4:1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="4880" type="branch" />
            <wire x2="368" y1="4880" y2="4880" x1="256" />
            <wire x2="448" y1="4880" y2="4880" x1="368" />
        </branch>
        <branch name="XLXN_406(4:1)">
            <wire x2="704" y1="5040" y2="5040" x1="384" />
            <wire x2="704" y1="4944" y2="5040" x1="704" />
            <wire x2="784" y1="4944" y2="4944" x1="704" />
        </branch>
        <instance x="384" y="5104" name="XLXI_134(4:1)" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="32" y="-120" type="instance" />
        </instance>
        <branch name="XLXN_407(4:1)">
            <wire x2="784" y1="4880" y2="4880" x1="672" />
        </branch>
        <instance x="672" y="4736" name="XLXI_279(4:1)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="-32" type="instance" />
        </instance>
        <branch name="ck_300Hz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="560" y="4608" type="branch" />
            <wire x2="560" y1="4608" y2="4608" x1="416" />
            <wire x2="672" y1="4608" y2="4608" x1="560" />
        </branch>
        <branch name="col_pad(4:1)">
            <wire x2="672" y1="4480" y2="4480" x1="416" />
        </branch>
        <branch name="col(4:1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="4480" type="branch" />
            <wire x2="1152" y1="4480" y2="4480" x1="1056" />
            <wire x2="1280" y1="4480" y2="4480" x1="1152" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="272" y="5220">PADS de entrada/salida para teclado hexa</text>
        <rect style="linestyle:Dash" width="1580" x="80" y="4248" height="1060" />
        <rect style="linestyle:Dash" width="1580" x="80" y="3584" height="588" />
        <branch name="reset_pad">
            <wire x2="368" y1="3808" y2="3808" x1="288" />
        </branch>
        <iomarker fontsize="28" x="1248" y="4944" name="fila_pad(4:1)" orien="R0" />
        <iomarker fontsize="28" x="416" y="4480" name="col_pad(4:1)" orien="R180" />
        <rect style="linestyle:Dash" width="1912" x="80" y="2084" height="1416" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2336" type="branch" />
            <wire x2="592" y1="2336" y2="2336" x1="432" />
            <wire x2="688" y1="2336" y2="2336" x1="592" />
        </branch>
        <branch name="ck_100MHz_pad">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2240" type="branch" />
            <wire x2="576" y1="2240" y2="2240" x1="432" />
            <wire x2="688" y1="2240" y2="2240" x1="576" />
        </branch>
        <branch name="ck_5MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2336" type="branch" />
            <wire x2="1408" y1="2336" y2="2336" x1="1296" />
            <wire x2="1536" y1="2336" y2="2336" x1="1408" />
        </branch>
        <branch name="locked_OK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2432" type="branch" />
            <wire x2="1408" y1="2432" y2="2432" x1="1296" />
            <wire x2="1536" y1="2432" y2="2432" x1="1408" />
        </branch>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2240" type="branch" />
            <wire x2="1408" y1="2240" y2="2240" x1="1296" />
            <wire x2="1536" y1="2240" y2="2240" x1="1408" />
        </branch>
        <branch name="ck_5MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2624" type="branch" />
            <wire x2="576" y1="2624" y2="2624" x1="432" />
            <wire x2="768" y1="2624" y2="2624" x1="576" />
        </branch>
        <branch name="locked_OK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="2720" type="branch" />
            <wire x2="400" y1="2720" y2="2720" x1="272" />
            <wire x2="448" y1="2720" y2="2720" x1="400" />
        </branch>
        <instance x="448" y="2752" name="XLXI_87" orien="R0" />
        <branch name="lockedZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="2720" type="branch" />
            <wire x2="688" y1="2720" y2="2720" x1="672" />
            <wire x2="768" y1="2720" y2="2720" x1="688" />
        </branch>
        <branch name="cuenta_dcm(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="2624" type="branch" />
            <wire x2="1392" y1="2624" y2="2624" x1="1264" />
            <wire x2="1536" y1="2624" y2="2624" x1="1392" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="128" y="3432">Se toma el bit 13 del contador de 16 bits para dividir el reloj hasta 300 Hz.</text>
        <text style="fontsize:56;fontname:Arial" x="128" y="3348">Se toma el bit 7 del contador de 16 bits para dividir el reloj hasta 20 KHz.</text>
        <instance x="912" y="2944" name="XLXI_14" orien="R0" />
        <branch name="cuenta_dcm(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2912" type="branch" />
            <wire x2="784" y1="2912" y2="2912" x1="592" />
            <wire x2="912" y1="2912" y2="2912" x1="784" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2912" type="branch" />
            <wire x2="1264" y1="2912" y2="2912" x1="1136" />
            <wire x2="1456" y1="2912" y2="2912" x1="1264" />
        </branch>
        <instance x="912" y="3088" name="XLXI_314" orien="R0" />
        <branch name="cuenta_dcm(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="3056" type="branch" />
            <wire x2="784" y1="3056" y2="3056" x1="592" />
            <wire x2="912" y1="3056" y2="3056" x1="784" />
        </branch>
        <branch name="ck_300Hz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="3056" type="branch" />
            <wire x2="1264" y1="3056" y2="3056" x1="1136" />
            <wire x2="1456" y1="3056" y2="3056" x1="1264" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="120" y="3184">Generacion de reloj. Se usa el DCM para sincronizar el reloj de</text>
        <text style="fontsize:56;fontname:Arial" x="120" y="3264">100 MHz de la entrada, y para obtener un reloj de 5 MHz.</text>
        <iomarker fontsize="28" x="432" y="2240" name="ck_100MHz_pad" orien="R180" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="3808" type="branch" />
            <wire x2="976" y1="3808" y2="3808" x1="880" />
            <wire x2="1056" y1="3808" y2="3808" x1="976" />
            <wire x2="1168" y1="3808" y2="3808" x1="1056" />
            <wire x2="1056" y1="3808" y2="3872" x1="1056" />
            <wire x2="1168" y1="3872" y2="3872" x1="1056" />
        </branch>
        <branch name="reset_i">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="640" y="3808" type="branch" />
            <wire x2="640" y1="3808" y2="3808" x1="592" />
            <wire x2="720" y1="3808" y2="3808" x1="640" />
        </branch>
        <iomarker fontsize="28" x="288" y="3808" name="reset_pad" orien="R180" />
        <instance x="368" y="3840" name="XLXI_30" orien="R0" />
        <instance x="1168" y="3968" name="XLXI_138" orien="R0">
        </instance>
        <text style="fontsize:56;fontname:Arial" x="580" y="4088">Modulo de STARTUP</text>
        <branch name="display(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6256" y="3520" type="branch" />
            <wire x2="6000" y1="3520" y2="3536" x1="6000" />
            <wire x2="6256" y1="3520" y2="3520" x1="6000" />
            <wire x2="6400" y1="3520" y2="3520" x1="6256" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6256" y="3648" type="branch" />
            <wire x2="6256" y1="3648" y2="3648" x1="6080" />
            <wire x2="6400" y1="3648" y2="3648" x1="6256" />
        </branch>
        <branch name="display_pad(7:0)">
            <wire x2="7104" y1="3520" y2="3520" x1="6784" />
        </branch>
        <instance x="6400" y="4160" name="XLXI_288(4:1)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="-48" type="instance" />
        </instance>
        <branch name="ce_display_neg(4:1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6272" y="3904" type="branch" />
            <wire x2="5968" y1="3904" y2="3920" x1="5968" />
            <wire x2="6272" y1="3904" y2="3904" x1="5968" />
            <wire x2="6400" y1="3904" y2="3904" x1="6272" />
        </branch>
        <branch name="ce_display_neg_pad(4:1)">
            <wire x2="7120" y1="3904" y2="3904" x1="6784" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6288" y="4032" type="branch" />
            <wire x2="6288" y1="4032" y2="4032" x1="6096" />
            <wire x2="6400" y1="4032" y2="4032" x1="6288" />
        </branch>
        <branch name="signo_sal_pad">
            <wire x2="7120" y1="4288" y2="4288" x1="6784" />
        </branch>
        <instance x="6400" y="4544" name="XLXI_165" orien="R0" />
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6288" y="4416" type="branch" />
            <wire x2="6288" y1="4416" y2="4416" x1="6096" />
            <wire x2="6400" y1="4416" y2="4416" x1="6288" />
        </branch>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6272" y="4288" type="branch" />
            <wire x2="5968" y1="4288" y2="4304" x1="5968" />
            <wire x2="6272" y1="4288" y2="4288" x1="5968" />
            <wire x2="6400" y1="4288" y2="4288" x1="6272" />
        </branch>
        <instance x="6176" y="5008" name="XLXI_186" orien="R90" />
        <instance x="6288" y="5040" name="XLXI_185" orien="R270" />
        <instance x="6112" y="4688" name="XLXI_292" orien="R90" />
        <instance x="6352" y="4752" name="XLXI_176" orien="R270" />
        <instance x="6448" y="4944" name="XLXI_142" orien="R0" />
        <branch name="ck_display_externo_pad">
            <wire x2="6832" y1="4752" y2="4752" x1="6768" />
        </branch>
        <branch name="XLXN_390">
            <wire x2="6352" y1="4976" y2="4976" x1="6288" />
            <wire x2="6352" y1="4944" y2="4976" x1="6352" />
            <wire x2="6448" y1="4944" y2="4944" x1="6352" />
        </branch>
        <branch name="XLXN_388">
            <wire x2="6384" y1="5072" y2="5072" x1="6304" />
            <wire x2="6448" y1="5072" y2="5072" x1="6384" />
            <wire x2="6448" y1="5008" y2="5008" x1="6384" />
            <wire x2="6384" y1="5008" y2="5072" x1="6384" />
        </branch>
        <branch name="XLXN_385">
            <wire x2="6448" y1="4752" y2="4752" x1="6240" />
        </branch>
        <branch name="XLXN_384">
            <wire x2="6448" y1="4688" y2="4688" x1="6352" />
        </branch>
        <instance x="6128" y="4848" name="XLXI_304" orien="R0" />
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6352" y="4880" type="branch" />
            <wire x2="6032" y1="4816" y2="4880" x1="6032" />
            <wire x2="6352" y1="4880" y2="4880" x1="6032" />
            <wire x2="6448" y1="4880" y2="4880" x1="6352" />
            <wire x2="6128" y1="4816" y2="4816" x1="6032" />
        </branch>
        <branch name="XLXN_460">
            <wire x2="6448" y1="4816" y2="4816" x1="6352" />
        </branch>
        <instance x="6400" y="3776" name="XLXI_35" orien="R0" />
        <text style="fontsize:56;fontname:Arial" x="6072" y="4544">PADS de salida para displays 7 segmentos auxiliares</text>
        <text style="fontsize:56;fontname:Arial" x="6136" y="5204">DDR de salida para el reloj de los displays</text>
        <text style="fontsize:56;fontname:Arial" x="6048" y="5272">7 segmentos auxiliares (CK de 20 KHz NEGADO)</text>
        <rect style="linestyle:Dash" width="1796" x="5744" y="3344" height="1972" />
        <instance x="5936" y="3664" name="XLXI_737(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-144" y="-88" type="instance" />
        </instance>
        <instance x="5904" y="4048" name="XLXI_745(4:1)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="80" y="-88" type="instance" />
        </instance>
        <instance x="5904" y="4432" name="XLXI_746" orien="R0" />
        <iomarker fontsize="28" x="7104" y="3520" name="display_pad(7:0)" orien="R0" />
        <iomarker fontsize="28" x="7120" y="4288" name="signo_sal_pad" orien="R0" />
        <iomarker fontsize="28" x="6832" y="4752" name="ck_display_externo_pad" orien="R0" />
        <iomarker fontsize="28" x="7120" y="3904" name="ce_display_neg_pad(4:1)" orien="R0" />
        <rect style="linestyle:Dash" width="1580" x="1712" y="4616" height="692" />
        <text style="fontsize:56;fontname:Arial" x="1752" y="5236">Muestreo de las senales de los 4 botones de la placa Nexys3</text>
        <branch name="boton_der_i">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="4784" type="branch" />
            <wire x2="2848" y1="4784" y2="4784" x1="2752" />
            <wire x2="2976" y1="4784" y2="4784" x1="2848" />
        </branch>
        <branch name="boton_izq_i">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="4848" type="branch" />
            <wire x2="2848" y1="4848" y2="4848" x1="2752" />
            <wire x2="2976" y1="4848" y2="4848" x1="2848" />
        </branch>
        <branch name="boton_arr_i">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="4912" type="branch" />
            <wire x2="2848" y1="4912" y2="4912" x1="2752" />
            <wire x2="2976" y1="4912" y2="4912" x1="2848" />
        </branch>
        <branch name="boton_aba_i">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="4976" type="branch" />
            <wire x2="2848" y1="4976" y2="4976" x1="2752" />
            <wire x2="2976" y1="4976" y2="4976" x1="2848" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="5104" type="branch" />
            <wire x2="2288" y1="5104" y2="5104" x1="2176" />
            <wire x2="2368" y1="5104" y2="5104" x1="2288" />
        </branch>
        <instance x="2368" y="5232" name="XLXI_180" orien="R0" />
        <branch name="boton_der_pad">
            <wire x2="2368" y1="4784" y2="4784" x1="2064" />
        </branch>
        <branch name="boton_izq_pad">
            <wire x2="2368" y1="4848" y2="4848" x1="2064" />
        </branch>
        <branch name="boton_arr_pad">
            <wire x2="2368" y1="4912" y2="4912" x1="2064" />
        </branch>
        <branch name="boton_aba_pad">
            <wire x2="2368" y1="4976" y2="4976" x1="2064" />
        </branch>
        <instance x="2368" y="4480" name="XLXI_387" orien="R0" />
        <text style="fontsize:56;fontname:Arial" x="1736" y="4472">Muestreo de las senales de los 8 switches de la placa Nexys3</text>
        <rect style="linestyle:Dash" width="1580" x="1712" y="4068" height="472" />
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="4352" type="branch" />
            <wire x2="2288" y1="4352" y2="4352" x1="2176" />
            <wire x2="2368" y1="4352" y2="4352" x1="2288" />
        </branch>
        <branch name="sw_pad(7:0)">
            <wire x2="2368" y1="4224" y2="4224" x1="2064" />
        </branch>
        <branch name="sw_i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="4224" type="branch" />
            <wire x2="2864" y1="4224" y2="4224" x1="2752" />
            <wire x2="2976" y1="4224" y2="4224" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2064" y="4784" name="boton_der_pad" orien="R180" />
        <iomarker fontsize="28" x="2064" y="4848" name="boton_izq_pad" orien="R180" />
        <iomarker fontsize="28" x="2064" y="4912" name="boton_arr_pad" orien="R180" />
        <iomarker fontsize="28" x="2064" y="4976" name="boton_aba_pad" orien="R180" />
        <iomarker fontsize="28" x="2064" y="4224" name="sw_pad(7:0)" orien="R180" />
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3024" type="branch" />
            <wire x2="3232" y1="3024" y2="3024" x1="3136" />
        </branch>
        <branch name="EppASTB">
            <wire x2="3232" y1="3088" y2="3088" x1="3136" />
        </branch>
        <branch name="EppDSTB">
            <wire x2="3232" y1="3152" y2="3152" x1="3136" />
        </branch>
        <branch name="EppWRITE">
            <wire x2="3232" y1="3216" y2="3216" x1="3136" />
        </branch>
        <branch name="sw_i(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3280" type="branch" />
            <wire x2="3232" y1="3280" y2="3280" x1="3136" />
        </branch>
        <branch name="boton_der_i,boton_aba_i,boton_izq_i,boton_arr_i,reset_i">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3344" type="branch" />
            <wire x2="3232" y1="3344" y2="3344" x1="3136" />
        </branch>
        <rect width="1060" x="2132" y="3440" height="492" />
        <rect width="1056" x="2132" y="3248" height="120" />
        <text style="fontsize:36;fontname:Arial" x="2164" y="3280">Senales de entrada muestreadas</text>
        <rect style="linestyle:Dash" width="2672" x="2096" y="2868" height="1112" />
        <branch name="led(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3472" type="branch" />
            <wire x2="3232" y1="3472" y2="3472" x1="3136" />
        </branch>
        <branch name="seg3(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3536" type="branch" />
            <wire x2="3232" y1="3536" y2="3536" x1="3136" />
        </branch>
        <branch name="seg2(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3600" type="branch" />
            <wire x2="3232" y1="3600" y2="3600" x1="3136" />
        </branch>
        <branch name="seg1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3664" type="branch" />
            <wire x2="3232" y1="3664" y2="3664" x1="3136" />
        </branch>
        <branch name="seg0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3728" type="branch" />
            <wire x2="3232" y1="3728" y2="3728" x1="3136" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="3404" y="3916">Control de REMOTE_LAB</text>
        <branch name="uart_rx_pad">
            <wire x2="3232" y1="3408" y2="3408" x1="3120" />
        </branch>
        <branch name="EppWAIT">
            <wire x2="3776" y1="3088" y2="3088" x1="3696" />
        </branch>
        <branch name="DB(7:0)">
            <wire x2="3776" y1="3152" y2="3152" x1="3696" />
        </branch>
        <branch name="sw(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="3280" type="branch" />
            <wire x2="3776" y1="3280" y2="3280" x1="3696" />
        </branch>
        <branch name="boton_der,boton_aba,boton_izq,boton_arr,reset">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="3344" type="branch" />
            <wire x2="3776" y1="3344" y2="3344" x1="3696" />
        </branch>
        <rect width="736" x="3724" y="3240" height="200" />
        <branch name="uart_rx">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="3408" type="branch" />
            <wire x2="3776" y1="3408" y2="3408" x1="3696" />
        </branch>
        <branch name="led_pad(7:0)">
            <wire x2="3776" y1="3472" y2="3472" x1="3696" />
        </branch>
        <branch name="seg_pad(7:0)">
            <wire x2="3776" y1="3536" y2="3536" x1="3696" />
        </branch>
        <branch name="anodo_pad(3:0)">
            <wire x2="3776" y1="3600" y2="3600" x1="3696" />
        </branch>
        <branch name="uart_tx_pad">
            <wire x2="3776" y1="3792" y2="3792" x1="3696" />
        </branch>
        <branch name="uart_tx">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="3792" type="branch" />
            <wire x2="3232" y1="3792" y2="3792" x1="3136" />
        </branch>
        <rect width="1028" x="3724" y="3448" height="184" />
        <text style="fontsize:36;fontname:Arial" x="4040" y="3564">displays 7 segmentos de la placa Nexys3</text>
        <text style="fontsize:36;fontname:Arial" x="4040" y="3508">PADS de salida para los 8 leds y los</text>
        <text style="fontsize:36;fontname:Arial" x="3944" y="3268">Senales de entrada</text>
        <text style="fontsize:36;fontname:Arial" x="2316" y="3892">Senales de salida</text>
        <iomarker fontsize="28" x="3136" y="3088" name="EppASTB" orien="R180" />
        <iomarker fontsize="28" x="3136" y="3152" name="EppDSTB" orien="R180" />
        <iomarker fontsize="28" x="3136" y="3216" name="EppWRITE" orien="R180" />
        <iomarker fontsize="28" x="3120" y="3408" name="uart_rx_pad" orien="R180" />
        <iomarker fontsize="28" x="3776" y="3088" name="EppWAIT" orien="R0" />
        <iomarker fontsize="28" x="3776" y="3152" name="DB(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3776" y="3472" name="led_pad(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3776" y="3536" name="seg_pad(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3776" y="3600" name="anodo_pad(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3776" y="3792" name="uart_tx_pad" orien="R0" />
        <instance x="3232" y="3696" name="XLXI_865" orien="R0">
        </instance>
        <text style="fontsize:56;fontname:Arial" x="6936" y="196">mcs_basico3_top.sch</text>
        <text style="fontsize:56;fontname:Arial" x="3700" y="2528">source ipcore_dir/microblaze_mcs_setup.tcl</text>
        <text style="fontsize:56;fontname:Arial" x="3700" y="2640">microblaze_mcs_data2mem workspace/hello_world/Debug/hello_world.elf</text>
        <rect style="linestyle:Dash" width="6572" x="76" y="48" height="1344" />
        <instance x="688" y="2160" name="XLXI_866" orien="R0">
        </instance>
        <instance x="768" y="2544" name="XLXI_867" orien="R0">
        </instance>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6128" y="1520" type="branch" />
            <wire x2="6128" y1="1520" y2="1520" x1="6016" />
            <wire x2="6192" y1="1520" y2="1520" x1="6128" />
        </branch>
        <branch name="lockedZ">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6144" y="1552" type="branch" />
            <wire x2="6144" y1="1552" y2="1552" x1="6016" />
            <wire x2="6192" y1="1552" y2="1552" x1="6144" />
        </branch>
        <branch name="uart_rx">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6144" y="1584" type="branch" />
            <wire x2="6144" y1="1584" y2="1584" x1="6016" />
            <wire x2="6192" y1="1584" y2="1584" x1="6144" />
        </branch>
        <branch name="sw(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6112" y="1744" type="branch" />
            <wire x2="6112" y1="1744" y2="1744" x1="6016" />
            <wire x2="6192" y1="1744" y2="1744" x1="6112" />
        </branch>
        <branch name="uart_tx">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7056" y="1520" type="branch" />
            <wire x2="7056" y1="1520" y2="1520" x1="6960" />
            <wire x2="7136" y1="1520" y2="1520" x1="7056" />
        </branch>
        <branch name="led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7056" y="2224" type="branch" />
            <wire x2="7056" y1="2224" y2="2224" x1="6960" />
            <wire x2="7136" y1="2224" y2="2224" x1="7056" />
        </branch>
        <instance x="6192" y="1440" name="mcs_0" orien="R0">
        </instance>
        <branch name="boton_aba,boton_arr,boton_izq,boton_der">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5888" y="1872" type="branch" />
            <wire x2="5888" y1="1872" y2="1872" x1="5568" />
            <wire x2="6192" y1="1872" y2="1872" x1="5888" />
        </branch>
        <branch name="gpo2(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7056" y="2256" type="branch" />
            <wire x2="7056" y1="2256" y2="2256" x1="6960" />
            <wire x2="7136" y1="2256" y2="2256" x1="7056" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="6368" y="3252">MicroBlaze MCS</text>
        <branch name="io_addr_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2384" type="branch" />
            <wire x2="7088" y1="2384" y2="2384" x1="6960" />
            <wire x2="7232" y1="2384" y2="2384" x1="7088" />
        </branch>
        <branch name="io_read_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2416" type="branch" />
            <wire x2="7088" y1="2416" y2="2416" x1="6960" />
            <wire x2="7232" y1="2416" y2="2416" x1="7088" />
        </branch>
        <branch name="io_write_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2448" type="branch" />
            <wire x2="7088" y1="2448" y2="2448" x1="6960" />
            <wire x2="7232" y1="2448" y2="2448" x1="7088" />
        </branch>
        <branch name="io_address(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2480" type="branch" />
            <wire x2="7088" y1="2480" y2="2480" x1="6960" />
            <wire x2="7232" y1="2480" y2="2480" x1="7088" />
        </branch>
        <branch name="io_byte_enable(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2512" type="branch" />
            <wire x2="7088" y1="2512" y2="2512" x1="6960" />
            <wire x2="7232" y1="2512" y2="2512" x1="7088" />
        </branch>
        <branch name="io_write_data(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2544" type="branch" />
            <wire x2="7088" y1="2544" y2="2544" x1="6960" />
            <wire x2="7232" y1="2544" y2="2544" x1="7088" />
        </branch>
        <branch name="io_read_data(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2576" type="branch" />
            <wire x2="7088" y1="2576" y2="2576" x1="6960" />
            <wire x2="7232" y1="2576" y2="2576" x1="7088" />
        </branch>
        <branch name="io_ready">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="7088" y="2608" type="branch" />
            <wire x2="7088" y1="2608" y2="2608" x1="6960" />
            <wire x2="7232" y1="2608" y2="2608" x1="7088" />
        </branch>
        <branch name="io_write_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="544" type="branch" />
            <wire x2="2048" y1="544" y2="544" x1="1888" />
            <wire x2="2176" y1="544" y2="544" x1="2048" />
        </branch>
        <branch name="io_addr_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="608" type="branch" />
            <wire x2="2048" y1="608" y2="608" x1="1888" />
            <wire x2="2176" y1="608" y2="608" x1="2048" />
        </branch>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="672" type="branch" />
            <wire x2="2032" y1="672" y2="672" x1="1888" />
            <wire x2="2176" y1="672" y2="672" x1="2032" />
        </branch>
        <branch name="io_byte_enable(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="736" type="branch" />
            <wire x2="2048" y1="736" y2="736" x1="1888" />
            <wire x2="2176" y1="736" y2="736" x1="2048" />
        </branch>
        <branch name="io_address(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="800" type="branch" />
            <wire x2="2048" y1="800" y2="800" x1="1888" />
            <wire x2="2176" y1="800" y2="800" x1="2048" />
        </branch>
        <branch name="io_read_strobe">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="864" type="branch" />
            <wire x2="2048" y1="864" y2="864" x1="1888" />
            <wire x2="2176" y1="864" y2="864" x1="2048" />
        </branch>
        <branch name="dato_escrito(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="544" type="branch" />
            <wire x2="2864" y1="544" y2="544" x1="2720" />
            <wire x2="3008" y1="544" y2="544" x1="2864" />
        </branch>
        <branch name="io_write_data(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="928" type="branch" />
            <wire x2="2048" y1="928" y2="928" x1="1888" />
            <wire x2="2176" y1="928" y2="928" x1="2048" />
        </branch>
        <branch name="sw(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="992" type="branch" />
            <wire x2="2048" y1="992" y2="992" x1="1888" />
            <wire x2="2176" y1="992" y2="992" x1="2048" />
        </branch>
        <instance x="2176" y="1024" name="XLXI_183" orien="R0">
        </instance>
        <branch name="io_read_data(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="768" type="branch" />
            <wire x2="2864" y1="768" y2="768" x1="2720" />
            <wire x2="3008" y1="768" y2="768" x1="2864" />
        </branch>
        <branch name="io_ready">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="992" type="branch" />
            <wire x2="2864" y1="992" y2="992" x1="2720" />
            <wire x2="3008" y1="992" y2="992" x1="2864" />
        </branch>
        <rect style="linestyle:Dash" width="1528" x="1708" y="256" height="920" />
        <text style="fontsize:56;fontname:Arial" x="1924" y="316">Comunicacion con el IOBus del MicroBlaze</text>
        <branch name="cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6224" y="832" type="branch" />
            <wire x2="6128" y1="832" y2="848" x1="6128" />
            <wire x2="6224" y1="832" y2="832" x1="6128" />
            <wire x2="6320" y1="832" y2="832" x1="6224" />
        </branch>
        <instance x="6064" y="976" name="XLXI_31" orien="R0" />
        <instance x="6064" y="704" name="XLXI_32" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6224" y="752" type="branch" />
            <wire x2="6128" y1="704" y2="752" x1="6128" />
            <wire x2="6224" y1="752" y2="752" x1="6128" />
            <wire x2="6320" y1="752" y2="752" x1="6224" />
        </branch>
        <rect style="linestyle:Dash" width="1528" x="3708" y="256" height="920" />
        <text style="fontsize:56;fontname:Arial" x="3816" y="320">Control de los displays de 7 segmentos de la Nexys 3</text>
        <instance x="4256" y="944" name="XLXI_873" orien="R0">
        </instance>
        <branch name="gpo2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="784" type="branch" />
            <wire x2="4144" y1="784" y2="784" x1="4016" />
            <wire x2="4256" y1="784" y2="784" x1="4144" />
        </branch>
        <branch name="cero,cero,cero,cero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="720" type="branch" />
            <wire x2="4144" y1="720" y2="720" x1="4016" />
            <wire x2="4256" y1="720" y2="720" x1="4144" />
        </branch>
        <branch name="dato_escrito(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="656" type="branch" />
            <wire x2="4144" y1="656" y2="656" x1="4016" />
            <wire x2="4256" y1="656" y2="656" x1="4144" />
        </branch>
        <branch name="led(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="592" type="branch" />
            <wire x2="4144" y1="592" y2="592" x1="4016" />
            <wire x2="4256" y1="592" y2="592" x1="4144" />
        </branch>
        <branch name="cero,uno,cero,uno">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="912" type="branch" />
            <wire x2="4144" y1="912" y2="912" x1="4016" />
            <wire x2="4256" y1="912" y2="912" x1="4144" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="848" type="branch" />
            <wire x2="4144" y1="848" y2="848" x1="4016" />
            <wire x2="4256" y1="848" y2="848" x1="4144" />
        </branch>
        <branch name="seg0(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="912" type="branch" />
            <wire x2="4848" y1="912" y2="912" x1="4720" />
            <wire x2="4960" y1="912" y2="912" x1="4848" />
        </branch>
        <branch name="seg1(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="832" type="branch" />
            <wire x2="4848" y1="832" y2="832" x1="4720" />
            <wire x2="4960" y1="832" y2="832" x1="4848" />
        </branch>
        <branch name="seg2(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="752" type="branch" />
            <wire x2="4848" y1="752" y2="752" x1="4720" />
            <wire x2="4960" y1="752" y2="752" x1="4848" />
        </branch>
        <branch name="seg3(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="672" type="branch" />
            <wire x2="4848" y1="672" y2="672" x1="4720" />
            <wire x2="4960" y1="672" y2="672" x1="4848" />
        </branch>
    </sheet>
</drawing>