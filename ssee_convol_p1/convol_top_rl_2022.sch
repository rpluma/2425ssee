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
        <signal name="ck_5MHz" />
        <signal name="locked_OK" />
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
        <signal name="col(1)" />
        <signal name="col(2)" />
        <signal name="col(3)" />
        <signal name="col(4)" />
        <signal name="fila(1)" />
        <signal name="fila(2)" />
        <signal name="fila(3)" />
        <signal name="fila(4)" />
        <signal name="tecla_pulsada_KHz" />
        <signal name="codigo_tecla_KHz(3:0)" />
        <signal name="cod_tecla_sinc(3:0)" />
        <signal name="tecla_pulsada_sinc" />
        <signal name="ceros(3:0)" />
        <signal name="uno(7:0)" />
        <signal name="mill_bcd(3:0)" />
        <signal name="cent_bcd(3:0)" />
        <signal name="dec_bcd(3:0)" />
        <signal name="unid_bcd(3:0)" />
        <signal name="punto_dec(3:0)" />
        <signal name="ck_100MHz_pad" />
        <signal name="XLXN_1" />
        <signal name="cuenta_dcm(15:0)" />
        <signal name="sw(1:0)" />
        <port polarity="BiDirectional" name="fila_pad(4:1)" />
        <port polarity="Input" name="col_pad(4:1)" />
        <port polarity="Input" name="reset_pad" />
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
        <port polarity="Input" name="ck_100MHz_pad" />
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
            <timestamp>2024-11-4T12:46:9</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="304" y2="304" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
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
        <blockdef name="teclado_hexa_completo">
            <timestamp>2016-11-4T13:8:2</timestamp>
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1328" y2="-1328" x1="64" />
            <line x2="0" y1="-1280" y2="-1280" x1="64" />
            <line x2="0" y1="-1232" y2="-1232" x1="64" />
            <line x2="496" y1="-1376" y2="-1376" x1="432" />
            <line x2="496" y1="-1328" y2="-1328" x1="432" />
            <line x2="496" y1="-1280" y2="-1280" x1="432" />
            <line x2="496" y1="-1232" y2="-1232" x1="432" />
            <rect width="368" x="64" y="-1408" height="356" />
            <rect width="64" x="432" y="-1100" height="24" />
            <line x2="496" y1="-1088" y2="-1088" x1="432" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <rect width="64" x="432" y="-1196" height="24" />
            <line x2="496" y1="-1184" y2="-1184" x1="432" />
            <line x2="496" y1="-1136" y2="-1136" x1="432" />
        </blockdef>
        <blockdef name="sinc_entrada">
            <timestamp>2014-11-11T19:0:49</timestamp>
            <rect width="544" x="64" y="-192" height="220" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="608" y="-172" height="24" />
            <line x2="672" y1="-160" y2="-160" x1="608" />
            <line x2="672" y1="-80" y2="-80" x1="608" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
        </blockdef>
        <blockdef name="displays_7seg_nexys3_RemLab">
            <timestamp>2020-10-1T16:51:36</timestamp>
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
        <blockdef name="bloque_convol">
            <timestamp>2024-11-13T18:54:24</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="480" y="-300" height="24" />
            <line x2="544" y1="-288" y2="-288" x1="480" />
            <rect width="64" x="480" y="-236" height="24" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="64" x="480" y="-108" height="24" />
            <line x2="544" y1="-96" y2="-96" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
            <rect width="416" x="64" y="-320" height="384" />
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
        <block symbolname="gnd" name="XLXI_871(7:0)">
            <blockpin signalname="led(7:0)" name="G" />
        </block>
        <block symbolname="teclado_hexa_completo" name="XLXI_1">
            <blockpin signalname="col(1)" name="col1" />
            <blockpin signalname="col(2)" name="col2" />
            <blockpin signalname="col(3)" name="col3" />
            <blockpin signalname="col(4)" name="col4" />
            <blockpin signalname="fila(1)" name="fila1" />
            <blockpin signalname="fila(2)" name="fila2" />
            <blockpin signalname="fila(3)" name="fila3" />
            <blockpin signalname="fila(4)" name="fila4" />
            <blockpin name="tecla(15:0)" />
            <blockpin signalname="ck_300Hz" name="ck_teclado" />
            <blockpin signalname="codigo_tecla_KHz(3:0)" name="codigo_tecla(3:0)" />
            <blockpin signalname="tecla_pulsada_KHz" name="tecla_pulsada" />
        </block>
        <block symbolname="sinc_entrada" name="XLXI_867">
            <blockpin signalname="codigo_tecla_KHz(3:0)" name="codigo_tecla_KHz(3:0)" />
            <blockpin signalname="cod_tecla_sinc(3:0)" name="codigo_tecla_MHz(3:0)" />
            <blockpin signalname="tecla_pulsada_sinc" name="tecla_pulsada_MHz" />
            <blockpin signalname="tecla_pulsada_KHz" name="tecla_pulsada_KHz" />
            <blockpin signalname="ck_100MHz" name="ck_MHz" />
        </block>
        <block symbolname="gnd" name="XLXI_708(3:0)">
            <blockpin signalname="ceros(3:0)" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_860(7:0)">
            <blockpin signalname="uno(7:0)" name="P" />
        </block>
        <block symbolname="displays_7seg_nexys3_RemLab" name="XLXI_864">
            <blockpin signalname="mill_bcd(3:0)" name="mill_bcd(3:0)" />
            <blockpin signalname="cent_bcd(3:0)" name="cent_bcd(3:0)" />
            <blockpin signalname="dec_bcd(3:0)" name="dec_bcd(3:0)" />
            <blockpin signalname="unid_bcd(3:0)" name="unid_bcd(3:0)" />
            <blockpin signalname="ck_20KHz" name="ck_display" />
            <blockpin signalname="punto_dec(3:0)" name="punto_dec(3:0)" />
            <blockpin name="anodo(3:0)" />
            <blockpin signalname="seg3(7:0)" name="siete_seg3(7:0)" />
            <blockpin signalname="seg2(7:0)" name="siete_seg2(7:0)" />
            <blockpin signalname="seg1(7:0)" name="siete_seg1(7:0)" />
            <blockpin signalname="seg0(7:0)" name="siete_seg0(7:0)" />
        </block>
        <block symbolname="bloque_convol" name="XLXI_872">
            <blockpin signalname="ck_100MHz" name="ck" />
            <blockpin signalname="cod_tecla_sinc(3:0)" name="cod_tecla(3:0)" />
            <blockpin signalname="tecla_pulsada_sinc" name="tecla_pulsada" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="punto_dec(3:0)" name="punto_decimal(4:1)" />
            <blockpin signalname="mill_bcd(3:0)" name="display1(3:0)" />
            <blockpin signalname="cent_bcd(3:0)" name="display2(3:0)" />
            <blockpin signalname="dec_bcd(3:0)" name="display3(3:0)" />
            <blockpin signalname="unid_bcd(3:0)" name="display4(3:0)" />
            <blockpin signalname="sw(1:0)" name="ventana(1:0)" />
        </block>
        <block symbolname="dcm_100m_5m" name="XLXI_306">
            <blockpin signalname="ck_100MHz_pad" name="clk_in1" />
            <blockpin signalname="ck_100MHz" name="clk_out1" />
            <blockpin signalname="ck_5MHz" name="clk_out2" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="locked_OK" name="locked" />
        </block>
        <block symbolname="cont_16bits" name="XLXI_309">
            <blockpin signalname="ck_5MHz" name="clk" />
            <blockpin signalname="XLXN_1" name="sclr" />
            <blockpin signalname="cuenta_dcm(15:0)" name="q(15:0)" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="locked_OK" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
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
        <rect style="linestyle:Dash" width="6572" x="80" y="68" height="1344" />
        <rect style="linestyle:Dash" width="1912" x="80" y="1916" height="1584" />
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
        <instance x="2304" y="3728" name="XLXI_871(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-144" y="-88" type="instance" />
        </instance>
        <branch name="led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="3568" type="branch" />
            <wire x2="2368" y1="3568" y2="3600" x1="2368" />
            <wire x2="2464" y1="3568" y2="3568" x1="2368" />
            <wire x2="2640" y1="3568" y2="3568" x1="2464" />
        </branch>
        <instance x="464" y="1952" name="XLXI_1" orien="R0">
        </instance>
        <branch name="col(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="352" y="576" type="branch" />
            <wire x2="352" y1="576" y2="576" x1="240" />
            <wire x2="464" y1="576" y2="576" x1="352" />
        </branch>
        <branch name="col(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="352" y="624" type="branch" />
            <wire x2="352" y1="624" y2="624" x1="240" />
            <wire x2="464" y1="624" y2="624" x1="352" />
        </branch>
        <branch name="col(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="352" y="672" type="branch" />
            <wire x2="352" y1="672" y2="672" x1="240" />
            <wire x2="464" y1="672" y2="672" x1="352" />
        </branch>
        <branch name="col(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="352" y="720" type="branch" />
            <wire x2="352" y1="720" y2="720" x1="240" />
            <wire x2="464" y1="720" y2="720" x1="352" />
        </branch>
        <branch name="fila(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="576" type="branch" />
            <wire x2="1104" y1="576" y2="576" x1="960" />
            <wire x2="1200" y1="576" y2="576" x1="1104" />
        </branch>
        <branch name="fila(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="624" type="branch" />
            <wire x2="1104" y1="624" y2="624" x1="960" />
            <wire x2="1200" y1="624" y2="624" x1="1104" />
        </branch>
        <branch name="fila(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="672" type="branch" />
            <wire x2="1104" y1="672" y2="672" x1="960" />
            <wire x2="1200" y1="672" y2="672" x1="1104" />
        </branch>
        <branch name="fila(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="720" type="branch" />
            <wire x2="1104" y1="720" y2="720" x1="960" />
            <wire x2="1200" y1="720" y2="720" x1="1104" />
        </branch>
        <branch name="tecla_pulsada_KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="816" type="branch" />
            <wire x2="1152" y1="816" y2="816" x1="960" />
            <wire x2="1344" y1="816" y2="816" x1="1152" />
        </branch>
        <branch name="codigo_tecla_KHz(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="768" type="branch" />
            <wire x2="1152" y1="768" y2="768" x1="960" />
            <wire x2="1344" y1="768" y2="768" x1="1152" />
        </branch>
        <branch name="ck_300Hz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="352" y="768" type="branch" />
            <wire x2="352" y1="768" y2="768" x1="240" />
            <wire x2="464" y1="768" y2="768" x1="352" />
        </branch>
        <branch name="codigo_tecla_KHz(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="576" type="branch" />
            <wire x2="1808" y1="576" y2="576" x1="1632" />
            <wire x2="1952" y1="576" y2="576" x1="1808" />
        </branch>
        <branch name="tecla_pulsada_KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="656" type="branch" />
            <wire x2="1808" y1="656" y2="656" x1="1632" />
            <wire x2="1952" y1="656" y2="656" x1="1808" />
        </branch>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="736" type="branch" />
            <wire x2="1808" y1="736" y2="736" x1="1632" />
            <wire x2="1952" y1="736" y2="736" x1="1808" />
        </branch>
        <instance x="1952" y="736" name="XLXI_867" orien="R0">
        </instance>
        <branch name="cod_tecla_sinc(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="576" type="branch" />
            <wire x2="2800" y1="576" y2="576" x1="2624" />
            <wire x2="2944" y1="576" y2="576" x1="2800" />
        </branch>
        <branch name="tecla_pulsada_sinc">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="656" type="branch" />
            <wire x2="2800" y1="656" y2="656" x1="2624" />
            <wire x2="2944" y1="656" y2="656" x1="2800" />
        </branch>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="736" type="branch" />
            <wire x2="2832" y1="736" y2="736" x1="2704" />
            <wire x2="2944" y1="736" y2="736" x1="2832" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="816" type="branch" />
            <wire x2="2832" y1="816" y2="816" x1="2704" />
            <wire x2="2944" y1="816" y2="816" x1="2832" />
        </branch>
        <instance x="5264" y="800" name="XLXI_708(3:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-80" y="40" type="instance" />
        </instance>
        <branch name="ceros(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5248" y="624" type="branch" />
            <wire x2="5248" y1="624" y2="624" x1="5184" />
            <wire x2="5328" y1="624" y2="624" x1="5248" />
            <wire x2="5328" y1="624" y2="672" x1="5328" />
        </branch>
        <instance x="5440" y="640" name="XLXI_860(7:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="-144" type="instance" />
        </instance>
        <branch name="uno(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5568" y="816" type="branch" />
            <wire x2="5504" y1="640" y2="816" x1="5504" />
            <wire x2="5568" y1="816" y2="816" x1="5504" />
            <wire x2="5680" y1="816" y2="816" x1="5568" />
        </branch>
        <branch name="mill_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="640" type="branch" />
            <wire x2="3792" y1="640" y2="640" x1="3488" />
            <wire x2="4096" y1="640" y2="640" x1="3792" />
        </branch>
        <branch name="cent_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="704" type="branch" />
            <wire x2="3792" y1="704" y2="704" x1="3488" />
            <wire x2="4096" y1="704" y2="704" x1="3792" />
        </branch>
        <branch name="dec_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="768" type="branch" />
            <wire x2="3792" y1="768" y2="768" x1="3488" />
            <wire x2="4096" y1="768" y2="768" x1="3792" />
        </branch>
        <branch name="ck_20KHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="896" type="branch" />
            <wire x2="4000" y1="896" y2="896" x1="3888" />
            <wire x2="4096" y1="896" y2="896" x1="4000" />
        </branch>
        <branch name="seg0(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="960" type="branch" />
            <wire x2="4720" y1="960" y2="960" x1="4560" />
            <wire x2="4832" y1="960" y2="960" x1="4720" />
        </branch>
        <branch name="seg1(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="880" type="branch" />
            <wire x2="4720" y1="880" y2="880" x1="4560" />
            <wire x2="4832" y1="880" y2="880" x1="4720" />
        </branch>
        <branch name="seg2(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="800" type="branch" />
            <wire x2="4720" y1="800" y2="800" x1="4560" />
            <wire x2="4832" y1="800" y2="800" x1="4720" />
        </branch>
        <branch name="seg3(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="720" type="branch" />
            <wire x2="4720" y1="720" y2="720" x1="4560" />
            <wire x2="4832" y1="720" y2="720" x1="4720" />
        </branch>
        <branch name="unid_bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="832" type="branch" />
            <wire x2="3792" y1="832" y2="832" x1="3488" />
            <wire x2="4096" y1="832" y2="832" x1="3792" />
        </branch>
        <instance x="4096" y="992" name="XLXI_864" orien="R0">
        </instance>
        <branch name="punto_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="960" type="branch" />
            <wire x2="3984" y1="960" y2="960" x1="3840" />
            <wire x2="4096" y1="960" y2="960" x1="3984" />
        </branch>
        <branch name="punto_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3632" y="576" type="branch" />
            <wire x2="3632" y1="576" y2="576" x1="3488" />
            <wire x2="3744" y1="576" y2="576" x1="3632" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="6848" y="188">convolucion8d_rl_2022.sch</text>
        <text style="fontsize:56;fontname:Arial" x="2804" y="168">Calculo de la convolucion de 8 datos</text>
        <instance x="2944" y="864" name="XLXI_872" orien="R0">
        </instance>
        <instance x="688" y="1968" name="XLXI_306" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2144" type="branch" />
            <wire x2="592" y1="2144" y2="2144" x1="432" />
            <wire x2="688" y1="2144" y2="2144" x1="592" />
        </branch>
        <branch name="ck_100MHz_pad">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2048" type="branch" />
            <wire x2="576" y1="2048" y2="2048" x1="432" />
            <wire x2="688" y1="2048" y2="2048" x1="576" />
        </branch>
        <branch name="ck_5MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2144" type="branch" />
            <wire x2="1408" y1="2144" y2="2144" x1="1296" />
            <wire x2="1536" y1="2144" y2="2144" x1="1408" />
        </branch>
        <branch name="locked_OK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2240" type="branch" />
            <wire x2="1408" y1="2240" y2="2240" x1="1296" />
            <wire x2="1536" y1="2240" y2="2240" x1="1408" />
        </branch>
        <branch name="ck_100MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2048" type="branch" />
            <wire x2="1408" y1="2048" y2="2048" x1="1296" />
            <wire x2="1536" y1="2048" y2="2048" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="432" y="2048" name="ck_100MHz_pad" orien="R180" />
        <instance x="688" y="2336" name="XLXI_309" orien="R0">
        </instance>
        <instance x="368" y="2672" name="XLXI_87" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="608" y1="2640" y2="2640" x1="592" />
            <wire x2="688" y1="2640" y2="2640" x1="608" />
        </branch>
        <branch name="locked_OK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2640" type="branch" />
            <wire x2="320" y1="2640" y2="2640" x1="192" />
            <wire x2="368" y1="2640" y2="2640" x1="320" />
        </branch>
        <branch name="cuenta_dcm(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="2480" type="branch" />
            <wire x2="1392" y1="2480" y2="2480" x1="1264" />
            <wire x2="1536" y1="2480" y2="2480" x1="1392" />
        </branch>
        <branch name="ck_5MHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="2544" type="branch" />
            <wire x2="496" y1="2544" y2="2544" x1="352" />
            <wire x2="688" y1="2544" y2="2544" x1="496" />
        </branch>
        <branch name="sw(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="896" type="branch" />
            <wire x2="2944" y1="896" y2="896" x1="2880" />
        </branch>
    </sheet>
</drawing>