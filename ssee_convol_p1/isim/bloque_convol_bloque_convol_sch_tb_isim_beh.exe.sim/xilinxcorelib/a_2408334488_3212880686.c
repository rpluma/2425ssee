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
extern char *XILINXCORELIB_P_1837083571;
static const char *ng1 = "Function getatype ended without a return statement";
static const char *ng2 = "Function setsyncenable ended without a return statement";



unsigned char xilinxcorelib_a_2408334488_3212880686_sub_1526223149_3057020925(char *t1, int t2)
{
    char t3[128];
    char t4[8];
    char t8[8];
    unsigned char t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    unsigned char t18;

LAB0:    t5 = (t3 + 4U);
    t6 = (t1 + 20464);
    t7 = (t5 + 88U);
    *((char **)t7) = t6;
    t9 = (t5 + 56U);
    *((char **)t9) = t8;
    xsi_type_set_default_value(t6, t8, 0);
    t10 = (t5 + 80U);
    *((unsigned int *)t10) = 1U;
    t11 = (t4 + 4U);
    *((int *)t11) = t2;
    t12 = ((XILINXCORELIB_P_1837083571) + 1528U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    if (t2 == t14)
        goto LAB3;

LAB6:    t12 = ((XILINXCORELIB_P_1837083571) + 1648U);
    t15 = *((char **)t12);
    t16 = *((int *)t15);
    if (t2 == t16)
        goto LAB4;

LAB7:
LAB5:    if ((unsigned char)0 == 0)
        goto LAB9;

LAB10:
LAB2:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t18 = *((unsigned char *)t7);
    t0 = t18;

LAB1:    return t0;
LAB3:    t12 = (t5 + 56U);
    t17 = *((char **)t12);
    t12 = (t17 + 0);
    *((unsigned char *)t12) = (unsigned char)1;
    goto LAB2;

LAB4:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((unsigned char *)t6) = (unsigned char)0;
    goto LAB2;

LAB8:;
LAB9:    t6 = (t1 + 31332);
    xsi_report(t6, 69U, (unsigned char)3);
    goto LAB10;

LAB11:;
}

int xilinxcorelib_a_2408334488_3212880686_sub_2863616896_3057020925(char *t1, int t2)
{
    char t4[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    int t11;

LAB0:    t5 = (t4 + 4U);
    *((int *)t5) = t2;
    t6 = ((XILINXCORELIB_P_1837083571) + 2008U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t9 = (t2 == t8);
    if (t9 != 0)
        goto LAB2;

LAB4:    t0 = t2;

LAB1:    return t0;
LAB2:    t6 = ((XILINXCORELIB_P_1837083571) + 1768U);
    t10 = *((char **)t6);
    t11 = *((int *)t10);
    t0 = t11;
    goto LAB1;

LAB3:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    goto LAB3;

}

int xilinxcorelib_a_2408334488_3212880686_sub_4127542947_3057020925(char *t1, int t2, int t3, int t4, int t5, int t6)
{
    char t8[24];
    int t0;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;

LAB0:    t9 = (t8 + 4U);
    *((int *)t9) = t2;
    t10 = (t8 + 8U);
    *((int *)t10) = t3;
    t11 = (t8 + 12U);
    *((int *)t11) = t4;
    t12 = (t8 + 16U);
    *((int *)t12) = t5;
    t13 = (t8 + 20U);
    *((int *)t13) = t6;
    t15 = (t6 == 1);
    if (t15 == 1)
        goto LAB5;

LAB6:    t14 = (unsigned char)0;

LAB7:    if (t14 != 0)
        goto LAB2;

LAB4:    t0 = t5;

LAB1:    return t0;
LAB2:    t0 = 1;
    goto LAB1;

LAB3:    xsi_error(ng2);
    t0 = 0;
    goto LAB1;

LAB5:    t18 = (t2 == 1);
    if (t18 == 1)
        goto LAB11;

LAB12:    t17 = (unsigned char)0;

LAB13:    if (t17 == 1)
        goto LAB8;

LAB9:    t16 = (unsigned char)0;

LAB10:    t14 = t16;
    goto LAB7;

LAB8:    t22 = (t5 == 0);
    t16 = t22;
    goto LAB10;

LAB11:    t20 = (t3 == 1);
    if (t20 == 1)
        goto LAB14;

LAB15:    t21 = (t4 == 1);
    t19 = t21;

LAB16:    t17 = t19;
    goto LAB13;

LAB14:    t19 = (unsigned char)1;
    goto LAB16;

LAB17:    goto LAB3;

LAB18:    goto LAB3;

}

static void xilinxcorelib_a_2408334488_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 19792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:
LAB3:    t1 = (t0 + 6128U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 19856);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 19648);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 19920);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:
LAB3:    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t1 = (t0 + 19984);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 19664);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:
LAB3:    t1 = (t0 + 6928U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 20048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 19680);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 20112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 20176);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_7(char *t0)
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
LAB3:    t1 = (t0 + 7248U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (15 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 20240);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t7, 0U, 16U, 0LL);

LAB2:    t12 = (t0 + 19696);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2408334488_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:
LAB3:    t1 = (t0 + 7248U);
    t2 = *((char **)t1);
    t1 = (t0 + 20304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 19712);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void xilinxcorelib_a_2408334488_3212880686_init()
{
	static char *pe[] = {(void *)xilinxcorelib_a_2408334488_3212880686_p_0,(void *)xilinxcorelib_a_2408334488_3212880686_p_1,(void *)xilinxcorelib_a_2408334488_3212880686_p_2,(void *)xilinxcorelib_a_2408334488_3212880686_p_3,(void *)xilinxcorelib_a_2408334488_3212880686_p_4,(void *)xilinxcorelib_a_2408334488_3212880686_p_5,(void *)xilinxcorelib_a_2408334488_3212880686_p_6,(void *)xilinxcorelib_a_2408334488_3212880686_p_7,(void *)xilinxcorelib_a_2408334488_3212880686_p_8};
	static char *se[] = {(void *)xilinxcorelib_a_2408334488_3212880686_sub_1526223149_3057020925,(void *)xilinxcorelib_a_2408334488_3212880686_sub_2863616896_3057020925,(void *)xilinxcorelib_a_2408334488_3212880686_sub_4127542947_3057020925};
	xsi_register_didat("xilinxcorelib_a_2408334488_3212880686", "isim/bloque_convol_bloque_convol_sch_tb_isim_beh.exe.sim/xilinxcorelib/a_2408334488_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
