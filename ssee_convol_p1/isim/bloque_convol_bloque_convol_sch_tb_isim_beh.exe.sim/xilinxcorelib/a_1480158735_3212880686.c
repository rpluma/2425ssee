/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *XILINXCORELIB_P_3381355550;
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
int xilinxcorelib_p_3381355550_sub_204859647_1067159583(char *, char *, char *);


unsigned char xilinxcorelib_a_1480158735_3212880686_sub_3496528177_3057020925(char *t1, char *t2, char *t3, int t4, int t5, int t6, int t7, int t8, int t9, int t10, int t11, int t12)
{
    char t14[56];
    char t31[16];
    char t37[16];
    char t39[16];
    unsigned char t0;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t15 = (t14 + 4U);
    t16 = (t2 != 0);
    if (t16 == 1)
        goto LAB3;

LAB2:    t17 = (t14 + 12U);
    *((char **)t17) = t3;
    t18 = (t14 + 20U);
    *((int *)t18) = t4;
    t19 = (t14 + 24U);
    *((int *)t19) = t5;
    t20 = (t14 + 28U);
    *((int *)t20) = t6;
    t21 = (t14 + 32U);
    *((int *)t21) = t7;
    t22 = (t14 + 36U);
    *((int *)t22) = t8;
    t23 = (t14 + 40U);
    *((int *)t23) = t9;
    t24 = (t14 + 44U);
    *((int *)t24) = t10;
    t25 = (t14 + 48U);
    *((int *)t25) = t11;
    t26 = (t14 + 52U);
    *((int *)t26) = t12;
    t27 = xilinxcorelib_p_3381355550_sub_204859647_1067159583(XILINXCORELIB_P_3381355550, t2, t3);
    t28 = (t6 > t27);
    if (t28 != 0)
        goto LAB4;

LAB6:
LAB5:    t0 = (unsigned char)1;

LAB1:    return t0;
LAB3:    *((char **)t15) = t2;
    goto LAB2;

LAB4:    t29 = (t1 + 15080);
    t32 = ((STD_STANDARD) + 384);
    t33 = xilinxcorelib_p_3381355550_sub_204859647_1067159583(XILINXCORELIB_P_3381355550, t2, t3);
    t34 = xsi_int_to_mem(t33);
    t35 = xsi_string_variable_get_image(t31, t32, t34);
    t38 = ((STD_STANDARD) + 1008);
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 1;
    t41 = (t40 + 4U);
    *((int *)t41) = 70;
    t41 = (t40 + 8U);
    *((int *)t41) = 1;
    t42 = (70 - 1);
    t43 = (t42 * 1);
    t43 = (t43 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t43;
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t29, t39, (char)97, t35, t31, (char)101);
    t41 = (t31 + 12U);
    t43 = *((unsigned int *)t41);
    t44 = (70U + t43);
    xsi_report(t36, t44, (unsigned char)2);
    goto LAB5;

LAB7:;
}

static void xilinxcorelib_a_1480158735_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:
LAB3:    t1 = (t0 + 2464U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 9352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 9176);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:
LAB3:    t1 = (t0 + 2304U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3264U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 9416);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 9192);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:
LAB3:    t1 = (t0 + 2624U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3264U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 9480);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 9208);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (0 == 0);
    if (t1 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 2144U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t9 = (t0 + 1984U);
    t12 = *((char **)t9);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t13);
    t9 = (t0 + 9544);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast(t9);

LAB2:    t19 = (t0 + 9224);
    *((int *)t19) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 9544);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB6:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_4(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:
LAB3:    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    t2 = (t0 + 14620U);
    t4 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t1, t3, t2, 48);
    t5 = (t0 + 9608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 48U);
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 9240);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_5(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:
LAB3:    t2 = (t0 + 2944U);
    t3 = *((char **)t2);
    t2 = (t0 + 14636U);
    t4 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t1, t3, t2, 48);
    t5 = (t0 + 9672);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 48U);
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 9256);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_1480158735_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:
LAB3:    t1 = (t0 + 4224U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (47 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 9736);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 9272);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void xilinxcorelib_a_1480158735_3212880686_init()
{
	static char *pe[] = {(void *)xilinxcorelib_a_1480158735_3212880686_p_0,(void *)xilinxcorelib_a_1480158735_3212880686_p_1,(void *)xilinxcorelib_a_1480158735_3212880686_p_2,(void *)xilinxcorelib_a_1480158735_3212880686_p_3,(void *)xilinxcorelib_a_1480158735_3212880686_p_4,(void *)xilinxcorelib_a_1480158735_3212880686_p_5,(void *)xilinxcorelib_a_1480158735_3212880686_p_6};
	static char *se[] = {(void *)xilinxcorelib_a_1480158735_3212880686_sub_3496528177_3057020925};
	xsi_register_didat("xilinxcorelib_a_1480158735_3212880686", "isim/bloque_convol_bloque_convol_sch_tb_isim_beh.exe.sim/xilinxcorelib/a_1480158735_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
