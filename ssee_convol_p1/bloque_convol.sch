<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ck" />
        <signal name="cod_tecla(3:0)" />
        <signal name="tecla_pulsada" />
        <signal name="reset" />
        <signal name="punto_decimal(4:1)" />
        <signal name="display1(3:0)" />
        <signal name="display2(3:0)" />
        <signal name="display3(3:0)" />
        <signal name="display4(3:0)" />
        <signal name="cifra(3:0)" />
        <signal name="carga_cifra" />
        <signal name="letra_a" />
        <signal name="letra_c" />
        <signal name="dato_nuevo" />
        <signal name="dato_ent(7:0)" />
        <signal name="entZ_sal" />
        <signal name="ent_unid(3:0)" />
        <signal name="ent_dec(3:0)" />
        <signal name="ceros(13:0)" />
        <signal name="sal_unid(3:0)" />
        <signal name="sal_cent(3:0)" />
        <signal name="sal_dec(3:0)" />
        <signal name="ent_cent(3:0)" />
        <signal name="dato_sal(7:0)" />
        <signal name="salida_bcd_nueva" />
        <signal name="ceros(3:0)" />
        <signal name="dato_sal_pos(7:0)" />
        <signal name="dato_sal_pos_sync" />
        <signal name="signo_sal" />
        <signal name="dato_sal_sync" />
        <signal name="ventana(1:0)" />
        <port polarity="Input" name="ck" />
        <port polarity="Input" name="cod_tecla(3:0)" />
        <port polarity="Input" name="tecla_pulsada" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="punto_decimal(4:1)" />
        <port polarity="Output" name="display1(3:0)" />
        <port polarity="Output" name="display2(3:0)" />
        <port polarity="Output" name="display3(3:0)" />
        <port polarity="Output" name="display4(3:0)" />
        <port polarity="Input" name="ventana(1:0)" />
        <blockdef name="Conversor_BCD_Bin">
            <timestamp>2024-11-4T10:35:22</timestamp>
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-384" height="388" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="64" x="352" y="-364" height="24" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
        </blockdef>
        <blockdef name="Comp_Num_Letra">
            <timestamp>2024-11-4T10:27:28</timestamp>
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="288" x="64" y="-256" height="320" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="reg_desp_4_cifras">
            <timestamp>2024-11-4T10:27:35</timestamp>
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-256" height="260" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
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
        <blockdef name="Mux_Ent_Sal_7seg_4cifras">
            <timestamp>2024-11-4T10:27:43</timestamp>
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="512" y="-684" height="24" />
            <line x2="576" y1="-672" y2="-672" x1="512" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-620" height="24" />
            <line x2="576" y1="-608" y2="-608" x1="512" />
            <rect width="64" x="512" y="-556" height="24" />
            <line x2="576" y1="-544" y2="-544" x1="512" />
            <rect width="64" x="512" y="-492" height="24" />
            <line x2="576" y1="-480" y2="-480" x1="512" />
            <rect width="64" x="512" y="-428" height="24" />
            <line x2="576" y1="-416" y2="-416" x1="512" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="448" x="64" y="-704" height="776" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Conversor_Bin_BCD_3cifras">
            <timestamp>2024-11-4T10:27:52</timestamp>
            <rect width="400" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-172" height="24" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bCalcSignoMag">
            <timestamp>2024-11-4T10:29:42</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="bCalcConv">
            <timestamp>2024-11-14T11:7:46</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-256" height="384" />
        </blockdef>
        <block symbolname="Comp_Num_Letra" name="XLXI_3">
            <blockpin signalname="tecla_pulsada" name="tecla_pulsada" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="cod_tecla(3:0)" name="cod_tecla(3:0)" />
            <blockpin signalname="entZ_sal" name="entZ_sal" />
            <blockpin signalname="carga_cifra" name="carga_cifra" />
            <blockpin signalname="letra_a" name="letra_a" />
            <blockpin signalname="letra_c" name="letra_c" />
            <blockpin signalname="cifra(3:0)" name="cifra(3:0)" />
        </block>
        <block symbolname="reg_desp_4_cifras" name="XLXI_6">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="carga_cifra" name="ce" />
            <blockpin signalname="cifra(3:0)" name="entrada(3:0)" />
            <blockpin signalname="dato_nuevo" name="sinc_reset" />
            <blockpin signalname="ent_unid(3:0)" name="dato1(3:0)" />
            <blockpin signalname="ent_dec(3:0)" name="dato2(3:0)" />
            <blockpin signalname="ent_cent(3:0)" name="dato3(3:0)" />
            <blockpin name="dato4(3:0)" />
        </block>
        <block symbolname="Conversor_BCD_Bin" name="XLXI_1">
            <blockpin signalname="ent_unid(3:0)" name="unid(3:0)" />
            <blockpin signalname="ent_dec(3:0)" name="dec(3:0)" />
            <blockpin signalname="ent_cent(3:0)" name="cent(3:0)" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="letra_a" name="inicio" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="dato_ent(7:0)" name="dato_bin(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_17(13:0)">
            <blockpin signalname="ceros(13:0)" name="G" />
        </block>
        <block symbolname="Mux_Ent_Sal_7seg_4cifras" name="XLXI_32">
            <blockpin signalname="salida_bcd_nueva" name="conmuta_salida" />
            <blockpin signalname="ent_cent(3:0)" name="cent_ent(3:0)" />
            <blockpin signalname="ent_dec(3:0)" name="dec_ent(3:0)" />
            <blockpin signalname="letra_c" name="conmuta_entrada" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="ent_unid(3:0)" name="unid_ent(3:0)" />
            <blockpin signalname="ceros(3:0)" name="mill_ent(3:0)" />
            <blockpin signalname="sal_unid(3:0)" name="unid_sal(3:0)" />
            <blockpin signalname="sal_dec(3:0)" name="dec_sal(3:0)" />
            <blockpin signalname="sal_cent(3:0)" name="cent_sal(3:0)" />
            <blockpin signalname="ceros(3:0)" name="mill_sal(3:0)" />
            <blockpin signalname="signo_sal" name="signo_sal" />
            <blockpin signalname="punto_decimal(4:1)" name="punto_decimal(4:1)" />
            <blockpin signalname="entZ_sal" name="entZ_sal" />
            <blockpin signalname="display4(3:0)" name="unid(3:0)" />
            <blockpin signalname="display3(3:0)" name="dec(3:0)" />
            <blockpin signalname="display2(3:0)" name="cent(3:0)" />
            <blockpin signalname="display1(3:0)" name="mill(3:0)" />
        </block>
        <block symbolname="Conversor_Bin_BCD_3cifras" name="XLXI_33">
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="dato_sal_pos(7:0)" name="dato_bin_entero(7:0)" />
            <blockpin signalname="dato_sal_pos_sync" name="inicio" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="salida_bcd_nueva" name="dato_nuevo" />
            <blockpin signalname="sal_unid(3:0)" name="unid(3:0)" />
            <blockpin signalname="sal_dec(3:0)" name="dec(3:0)" />
            <blockpin signalname="sal_cent(3:0)" name="cent(3:0)" />
        </block>
        <block symbolname="bCalcSignoMag" name="XLXI_34">
            <blockpin signalname="dato_sal(7:0)" name="dato_sal(7:0)" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="signo_sal" name="signo_sal" />
            <blockpin signalname="dato_sal_pos_sync" name="dato_sal_pos_sync" />
            <blockpin signalname="dato_sal_pos(7:0)" name="dato_sal_pos(7:0)" />
        </block>
        <block symbolname="bCalcConv" name="XLXI_36">
            <blockpin signalname="dato_nuevo" name="dato_nuevo" />
            <blockpin signalname="ck" name="ck" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="dato_ent(7:0)" name="dato_ent(7:0)" />
            <blockpin signalname="ventana(1:0)" name="ventana(1:0)" />
            <blockpin signalname="dato_sal(7:0)" name="dat_sal(7:0)" />
            <blockpin signalname="dato_sal_sync" name="dato_sal_sync" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <rect style="linestyle:Dash" width="3608" x="80" y="36" height="752" />
        <text style="fontsize:40;fontname:Arial" x="136" y="96">Bloque completo para el calculo de la convolucion. Descripcion del datapath:</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="172">1. Entrada de datos desde el teclado. Se compara si el dato introducido es un numero, la letra 'A' o la letra 'C'. Si es un numero se pasa el dato a la salida 'cifra(3:0)', junto a un pulso en 'carga_cifra'</text>
        <text style="fontsize:40;fontname:Arial" x="252" y="216">Si es una letra se genera un pulso en la senyal correspondiente</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="288">2. Se 'encolan' los numeros en un registro de 4 cifras, aunque solo utilizaremos 3 (unidades, decenas y centenas, 0 a 127)</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="364">3. Cuando se pulse la letra 'A', se convierten las cifras introducidas de BCD a binario natural, dando un numero entre 0 y 127. Se acompanya de un pulso de 'dato_nuevo' y se realiza el calculo</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="440">4. Cuando se pulse la letra 'C', se vuelve a introducir datos</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="520">5. Para cada dato_sal, se convierten los datos de salida a digitos BCD una vez pasados a positivos. Se acompanya el resultado de un pulso en 'salida_bcd_nueva'</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="600">6. El bloque 'Mux_Ent_Sal_7seg' conmuta la salida de los displays 7 segmentos entre los datos de entrada y salida cuando se pulsa la letra 'C'</text>
        <instance x="368" y="1184" name="XLXI_3" orien="R0">
        </instance>
        <branch name="cifra(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="960" type="branch" />
            <wire x2="992" y1="960" y2="960" x1="784" />
            <wire x2="1168" y1="960" y2="960" x1="992" />
        </branch>
        <branch name="carga_cifra">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1024" type="branch" />
            <wire x2="992" y1="1024" y2="1024" x1="784" />
            <wire x2="1168" y1="1024" y2="1024" x1="992" />
        </branch>
        <branch name="letra_a">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1088" type="branch" />
            <wire x2="864" y1="1088" y2="1088" x1="784" />
            <wire x2="960" y1="1088" y2="1088" x1="864" />
        </branch>
        <branch name="letra_c">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1152" type="branch" />
            <wire x2="864" y1="1152" y2="1152" x1="784" />
            <wire x2="960" y1="1152" y2="1152" x1="864" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1088" type="branch" />
            <wire x2="1136" y1="1088" y2="1088" x1="1072" />
            <wire x2="1168" y1="1088" y2="1088" x1="1136" />
        </branch>
        <instance x="1168" y="1184" name="XLXI_6" orien="R0">
        </instance>
        <branch name="cod_tecla(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="960" type="branch" />
            <wire x2="256" y1="960" y2="960" x1="144" />
            <wire x2="368" y1="960" y2="960" x1="256" />
        </branch>
        <branch name="ent_unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="960" type="branch" />
            <wire x2="1760" y1="960" y2="960" x1="1584" />
            <wire x2="1952" y1="960" y2="960" x1="1760" />
        </branch>
        <branch name="ent_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1024" type="branch" />
            <wire x2="1760" y1="1024" y2="1024" x1="1584" />
            <wire x2="1952" y1="1024" y2="1024" x1="1760" />
        </branch>
        <instance x="1952" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1152" type="branch" />
            <wire x2="1856" y1="1152" y2="1152" x1="1744" />
            <wire x2="1952" y1="1152" y2="1152" x1="1856" />
        </branch>
        <branch name="letra_a">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1216" type="branch" />
            <wire x2="1856" y1="1216" y2="1216" x1="1744" />
            <wire x2="1952" y1="1216" y2="1216" x1="1856" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1280" type="branch" />
            <wire x2="1856" y1="1280" y2="1280" x1="1744" />
            <wire x2="1952" y1="1280" y2="1280" x1="1856" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1152" type="branch" />
            <wire x2="1136" y1="1152" y2="1152" x1="1072" />
            <wire x2="1168" y1="1152" y2="1152" x1="1136" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="960" type="branch" />
            <wire x2="2496" y1="960" y2="960" x1="2368" />
            <wire x2="2608" y1="960" y2="960" x1="2496" />
        </branch>
        <branch name="tecla_pulsada">
            <wire x2="944" y1="2416" y2="2416" x1="672" />
        </branch>
        <branch name="reset">
            <wire x2="944" y1="2496" y2="2496" x1="672" />
        </branch>
        <branch name="ck">
            <wire x2="944" y1="2576" y2="2576" x1="672" />
        </branch>
        <branch name="cod_tecla(3:0)">
            <wire x2="944" y1="2336" y2="2336" x1="672" />
        </branch>
        <branch name="punto_decimal(4:1)">
            <wire x2="1568" y1="2576" y2="2576" x1="1328" />
        </branch>
        <branch name="display4(3:0)">
            <wire x2="1568" y1="2512" y2="2512" x1="1328" />
        </branch>
        <branch name="display3(3:0)">
            <wire x2="1568" y1="2448" y2="2448" x1="1328" />
        </branch>
        <branch name="display2(3:0)">
            <wire x2="1568" y1="2384" y2="2384" x1="1328" />
        </branch>
        <branch name="display1(3:0)">
            <wire x2="1568" y1="2320" y2="2320" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="672" y="2416" name="tecla_pulsada" orien="R180" />
        <iomarker fontsize="28" x="672" y="2496" name="reset" orien="R180" />
        <iomarker fontsize="28" x="672" y="2576" name="ck" orien="R180" />
        <iomarker fontsize="28" x="672" y="2336" name="cod_tecla(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1568" y="2576" name="punto_decimal(4:1)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="2512" name="display4(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="2448" name="display3(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="2384" name="display2(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="2320" name="display1(3:0)" orien="R0" />
        <branch name="tecla_pulsada">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1040" type="branch" />
            <wire x2="272" y1="1040" y2="1040" x1="144" />
            <wire x2="368" y1="1040" y2="1040" x1="272" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1200" type="branch" />
            <wire x2="272" y1="1200" y2="1200" x1="144" />
            <wire x2="368" y1="1200" y2="1200" x1="272" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1120" type="branch" />
            <wire x2="272" y1="1120" y2="1120" x1="144" />
            <wire x2="368" y1="1120" y2="1120" x1="272" />
        </branch>
        <instance x="2736" y="2576" name="XLXI_17(13:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="16" y="24" type="instance" />
        </instance>
        <branch name="ceros(13:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="2384" type="branch" />
            <wire x2="2736" y1="2384" y2="2384" x1="2656" />
            <wire x2="2800" y1="2384" y2="2384" x1="2736" />
            <wire x2="2800" y1="2384" y2="2448" x1="2800" />
        </branch>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1280" type="branch" />
            <wire x2="2480" y1="1280" y2="1280" x1="2368" />
            <wire x2="2592" y1="1280" y2="1280" x1="2480" />
        </branch>
        <branch name="ent_cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1088" type="branch" />
            <wire x2="1760" y1="1088" y2="1088" x1="1584" />
            <wire x2="1952" y1="1088" y2="1088" x1="1760" />
        </branch>
        <branch name="punto_decimal(4:1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1552" type="branch" />
            <wire x2="3584" y1="1552" y2="1552" x1="3408" />
            <wire x2="3744" y1="1552" y2="1552" x1="3584" />
        </branch>
        <branch name="display4(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1616" type="branch" />
            <wire x2="3584" y1="1616" y2="1616" x1="3408" />
            <wire x2="3744" y1="1616" y2="1616" x1="3584" />
        </branch>
        <branch name="display3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1680" type="branch" />
            <wire x2="3584" y1="1680" y2="1680" x1="3408" />
            <wire x2="3744" y1="1680" y2="1680" x1="3584" />
        </branch>
        <branch name="display2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1744" type="branch" />
            <wire x2="3584" y1="1744" y2="1744" x1="3408" />
            <wire x2="3744" y1="1744" y2="1744" x1="3584" />
        </branch>
        <branch name="display1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1808" type="branch" />
            <wire x2="3584" y1="1808" y2="1808" x1="3408" />
            <wire x2="3744" y1="1808" y2="1808" x1="3584" />
        </branch>
        <branch name="entZ_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1872" type="branch" />
            <wire x2="3584" y1="1872" y2="1872" x1="3408" />
            <wire x2="3744" y1="1872" y2="1872" x1="3584" />
        </branch>
        <instance x="2832" y="2224" name="XLXI_32" orien="R0">
        </instance>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2192" type="branch" />
            <wire x2="2656" y1="2192" y2="2192" x1="2496" />
            <wire x2="2832" y1="2192" y2="2192" x1="2656" />
        </branch>
        <branch name="letra_c">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1552" type="branch" />
            <wire x2="2656" y1="1552" y2="1552" x1="2496" />
            <wire x2="2832" y1="1552" y2="1552" x1="2656" />
        </branch>
        <branch name="salida_bcd_nueva">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1872" type="branch" />
            <wire x2="2656" y1="1872" y2="1872" x1="2496" />
            <wire x2="2832" y1="1872" y2="1872" x1="2656" />
        </branch>
        <branch name="sal_cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2064" type="branch" />
            <wire x2="2656" y1="2064" y2="2064" x1="2496" />
            <wire x2="2832" y1="2064" y2="2064" x1="2656" />
        </branch>
        <branch name="sal_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2000" type="branch" />
            <wire x2="2656" y1="2000" y2="2000" x1="2496" />
            <wire x2="2832" y1="2000" y2="2000" x1="2656" />
        </branch>
        <branch name="sal_unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1936" type="branch" />
            <wire x2="2656" y1="1936" y2="1936" x1="2496" />
            <wire x2="2832" y1="1936" y2="1936" x1="2656" />
        </branch>
        <branch name="ent_unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1616" type="branch" />
            <wire x2="2656" y1="1616" y2="1616" x1="2496" />
            <wire x2="2832" y1="1616" y2="1616" x1="2656" />
        </branch>
        <branch name="ent_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1680" type="branch" />
            <wire x2="2656" y1="1680" y2="1680" x1="2496" />
            <wire x2="2832" y1="1680" y2="1680" x1="2656" />
        </branch>
        <branch name="ent_cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1744" type="branch" />
            <wire x2="2656" y1="1744" y2="1744" x1="2496" />
            <wire x2="2832" y1="1744" y2="1744" x1="2656" />
        </branch>
        <branch name="ceros(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1808" type="branch" />
            <wire x2="2656" y1="1808" y2="1808" x1="2496" />
            <wire x2="2832" y1="1808" y2="1808" x1="2656" />
        </branch>
        <branch name="ceros(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2128" type="branch" />
            <wire x2="2656" y1="2128" y2="2128" x1="2496" />
            <wire x2="2832" y1="2128" y2="2128" x1="2656" />
        </branch>
        <branch name="dato_sal_pos(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1552" type="branch" />
            <wire x2="1232" y1="1552" y2="1552" x1="1168" />
            <wire x2="1520" y1="1552" y2="1552" x1="1232" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1680" type="branch" />
            <wire x2="1456" y1="1680" y2="1680" x1="1344" />
            <wire x2="1520" y1="1680" y2="1680" x1="1456" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1744" type="branch" />
            <wire x2="1456" y1="1744" y2="1744" x1="1344" />
            <wire x2="1520" y1="1744" y2="1744" x1="1456" />
        </branch>
        <branch name="dato_sal_pos_sync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1616" type="branch" />
            <wire x2="1248" y1="1616" y2="1616" x1="832" />
            <wire x2="1520" y1="1616" y2="1616" x1="1248" />
        </branch>
        <instance x="1520" y="1776" name="XLXI_33" orien="R0">
        </instance>
        <branch name="sal_unid(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1616" type="branch" />
            <wire x2="2208" y1="1616" y2="1616" x1="2048" />
            <wire x2="2384" y1="1616" y2="1616" x1="2208" />
        </branch>
        <branch name="sal_cent(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1744" type="branch" />
            <wire x2="2208" y1="1744" y2="1744" x1="2048" />
            <wire x2="2384" y1="1744" y2="1744" x1="2208" />
        </branch>
        <branch name="sal_dec(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1680" type="branch" />
            <wire x2="2208" y1="1680" y2="1680" x1="2048" />
            <wire x2="2384" y1="1680" y2="1680" x1="2208" />
        </branch>
        <branch name="salida_bcd_nueva">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1552" type="branch" />
            <wire x2="2208" y1="1552" y2="1552" x1="2048" />
            <wire x2="2384" y1="1552" y2="1552" x1="2208" />
        </branch>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1552" type="branch" />
            <wire x2="240" y1="1552" y2="1552" x1="112" />
            <wire x2="336" y1="1552" y2="1552" x1="240" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1616" type="branch" />
            <wire x2="240" y1="1616" y2="1616" x1="112" />
            <wire x2="336" y1="1616" y2="1616" x1="240" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1680" type="branch" />
            <wire x2="240" y1="1680" y2="1680" x1="112" />
            <wire x2="336" y1="1680" y2="1680" x1="240" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2256" type="branch" />
            <wire x2="2656" y1="2256" y2="2256" x1="2496" />
            <wire x2="2832" y1="2256" y2="2256" x1="2656" />
        </branch>
        <branch name="signo_sal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1552" type="branch" />
            <wire x2="848" y1="1552" y2="1552" x1="832" />
        </branch>
        <branch name="dato_sal_pos(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1680" type="branch" />
            <wire x2="864" y1="1680" y2="1680" x1="832" />
        </branch>
        <instance x="3024" y="1184" name="XLXI_36" orien="R0">
        </instance>
        <branch name="dato_nuevo">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="960" type="branch" />
            <wire x2="2896" y1="960" y2="960" x1="2800" />
            <wire x2="3024" y1="960" y2="960" x1="2896" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1088" type="branch" />
            <wire x2="2928" y1="1088" y2="1088" x1="2800" />
            <wire x2="3024" y1="1088" y2="1088" x1="2928" />
        </branch>
        <branch name="ck">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1024" type="branch" />
            <wire x2="2928" y1="1024" y2="1024" x1="2800" />
            <wire x2="3024" y1="1024" y2="1024" x1="2928" />
        </branch>
        <branch name="dato_ent(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1152" type="branch" />
            <wire x2="2928" y1="1152" y2="1152" x1="2800" />
            <wire x2="3024" y1="1152" y2="1152" x1="2928" />
        </branch>
        <branch name="dato_sal_sync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1152" type="branch" />
            <wire x2="3584" y1="1152" y2="1152" x1="3456" />
            <wire x2="3696" y1="1152" y2="1152" x1="3584" />
        </branch>
        <branch name="dato_sal(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1216" type="branch" />
            <wire x2="3584" y1="1216" y2="1216" x1="3456" />
            <wire x2="3696" y1="1216" y2="1216" x1="3584" />
        </branch>
        <instance x="336" y="1712" name="XLXI_34" orien="R0">
        </instance>
        <branch name="ventana(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1280" type="branch" />
            <wire x2="3024" y1="1280" y2="1280" x1="2976" />
        </branch>
        <branch name="ventana(1:0)">
            <wire x2="960" y1="2224" y2="2224" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="2224" name="ventana(1:0)" orien="R180" />
        <text style="fontsize:40;fontname:Arial" x="208" y="680">7. El bloque bCalcConv calcula el valor de la convolucion dependiendo del tipo de ventana (00=rectangular, 01=Hamming, 10=Hann, 11=Kaiser)</text>
        <text style="fontsize:40;fontname:Arial" x="208" y="760">8 El bloque bCalcSignoMag calcula el valor absoluto y el signo del resultado</text>
    </sheet>
</drawing>