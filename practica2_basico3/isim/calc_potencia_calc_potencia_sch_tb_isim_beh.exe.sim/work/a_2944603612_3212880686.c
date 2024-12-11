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
static const char *ng0 = "C:/Users/Usuario_UMA/Downloads/mcs_basico3_rl_2023/calc_potencia_tb.vhd";



void work_a_2944603612_3212880686_sub_1638837001_3057020925(char *t0, char *t1, char *t2, char *t3, char *t4, unsigned int t5, unsigned int t6, char *t7, char *t8, unsigned int t9, unsigned int t10, char *t11, char *t12, unsigned int t13, unsigned int t14, char *t15)
{
    char t17[40];
    char t18[16];
    char t23[16];
    char t26[16];
    char t29[16];
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    char *t24;
    int t25;
    char *t27;
    int t28;
    char *t30;
    int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    int64 t46;
    char *t47;
    char *t48;

LAB0:    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 7;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 7);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t20 = (t23 + 0U);
    t24 = (t20 + 0U);
    *((int *)t24) = 7;
    t24 = (t20 + 4U);
    *((int *)t24) = 0;
    t24 = (t20 + 8U);
    *((int *)t24) = -1;
    t25 = (0 - 7);
    t22 = (t25 * -1);
    t22 = (t22 + 1);
    t24 = (t20 + 12U);
    *((unsigned int *)t24) = t22;
    t24 = (t26 + 0U);
    t27 = (t24 + 0U);
    *((int *)t27) = 7;
    t27 = (t24 + 4U);
    *((int *)t27) = 0;
    t27 = (t24 + 8U);
    *((int *)t27) = -1;
    t28 = (0 - 7);
    t22 = (t28 * -1);
    t22 = (t22 + 1);
    t27 = (t24 + 12U);
    *((unsigned int *)t27) = t22;
    t27 = (t29 + 0U);
    t30 = (t27 + 0U);
    *((int *)t30) = 7;
    t30 = (t27 + 4U);
    *((int *)t30) = 0;
    t30 = (t27 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 7);
    t22 = (t31 * -1);
    t22 = (t22 + 1);
    t30 = (t27 + 12U);
    *((unsigned int *)t30) = t22;
    t30 = (t17 + 4U);
    t32 = (t2 != 0);
    if (t32 == 1)
        goto LAB3;

LAB2:    t33 = (t17 + 12U);
    *((char **)t33) = t18;
    t34 = (t17 + 20U);
    t35 = (t3 != 0);
    if (t35 == 1)
        goto LAB5;

LAB4:    t36 = (t17 + 28U);
    *((char **)t36) = t23;
    t22 = (0 + t5);
    t37 = (t7 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t26 + 12U);
    t42 = *((unsigned int *)t41);
    t42 = (t42 * 1U);
    memcpy(t40, t2, t42);
    t43 = (t26 + 12U);
    t44 = *((unsigned int *)t43);
    t45 = (1U * t44);
    xsi_driver_first_trans_delta(t7, t22, t45, 0LL);
    t22 = (0 + t9);
    t19 = (t11 + 56U);
    t20 = *((char **)t19);
    t24 = (t20 + 56U);
    t27 = *((char **)t24);
    t37 = (t29 + 12U);
    t42 = *((unsigned int *)t37);
    t42 = (t42 * 1U);
    memcpy(t27, t3, t42);
    t38 = (t29 + 12U);
    t44 = *((unsigned int *)t38);
    t45 = (1U * t44);
    xsi_driver_first_trans_delta(t11, t22, t45, 0LL);
    t22 = (0 + t13);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t24 = (t20 + 56U);
    t27 = *((char **)t24);
    *((unsigned char *)t27) = (unsigned char)2;
    xsi_driver_first_trans_delta(t15, t22, 1, 0LL);
    t46 = (20 * 1000LL);
    xsi_process_wait(t1, t46);

LAB9:    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t24 = (t20 + 2480U);
    *((unsigned int *)t24) = 1U;
    t27 = (t1 + 88U);
    t37 = *((char **)t27);
    t38 = (t37 + 0U);
    getcontext(t38);
    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 2480U);
    t22 = *((unsigned int *)t41);
    if (t22 == 1)
        goto LAB10;

LAB11:    t43 = (t1 + 88U);
    t47 = *((char **)t43);
    t48 = (t47 + 2480U);
    *((unsigned int *)t48) = 3U;

LAB7:
LAB8:
LAB6:    t22 = (0 + t13);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t24 = (t20 + 56U);
    t27 = *((char **)t24);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_delta(t15, t22, 1, 0LL);
    t46 = (20 * 1000LL);
    xsi_process_wait(t1, t46);

LAB15:    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t24 = (t20 + 2480U);
    *((unsigned int *)t24) = 1U;
    t27 = (t1 + 88U);
    t37 = *((char **)t27);
    t38 = (t37 + 0U);
    getcontext(t38);
    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 2480U);
    t22 = *((unsigned int *)t41);
    if (t22 == 1)
        goto LAB16;

LAB17:    t43 = (t1 + 88U);
    t47 = *((char **)t43);
    t48 = (t47 + 2480U);
    *((unsigned int *)t48) = 3U;

LAB13:
LAB14:
LAB12:    t22 = (0 + t13);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t24 = (t20 + 56U);
    t27 = *((char **)t24);
    *((unsigned char *)t27) = (unsigned char)2;
    xsi_driver_first_trans_delta(t15, t22, 1, 0LL);
    t46 = (20 * 1000LL);
    xsi_process_wait(t1, t46);

LAB21:    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t24 = (t20 + 2480U);
    *((unsigned int *)t24) = 1U;
    t27 = (t1 + 88U);
    t37 = *((char **)t27);
    t38 = (t37 + 0U);
    getcontext(t38);
    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 2480U);
    t22 = *((unsigned int *)t41);
    if (t22 == 1)
        goto LAB22;

LAB23:    t43 = (t1 + 88U);
    t47 = *((char **)t43);
    t48 = (t47 + 2480U);
    *((unsigned int *)t48) = 3U;

LAB19:
LAB20:
LAB18:    t46 = (350 * 1000LL);
    xsi_process_wait(t1, t46);

LAB27:    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t24 = (t20 + 2480U);
    *((unsigned int *)t24) = 1U;
    t27 = (t1 + 88U);
    t37 = *((char **)t27);
    t38 = (t37 + 0U);
    getcontext(t38);
    t39 = (t1 + 88U);
    t40 = *((char **)t39);
    t41 = (t40 + 2480U);
    t22 = *((unsigned int *)t41);
    if (t22 == 1)
        goto LAB28;

LAB29:    t43 = (t1 + 88U);
    t47 = *((char **)t43);
    t48 = (t47 + 2480U);
    *((unsigned int *)t48) = 3U;

LAB25:
LAB26:
LAB24:
LAB1:    return;
LAB3:    *((char **)t30) = t2;
    goto LAB2;

LAB5:    *((char **)t34) = t3;
    goto LAB4;

LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

LAB16:    xsi_saveStackAndSuspend(t1);
    goto LAB17;

LAB22:    xsi_saveStackAndSuspend(t1);
    goto LAB23;

LAB28:    xsi_saveStackAndSuspend(t1);
    goto LAB29;

}

static void work_a_2944603612_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 3280);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 3280);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2944603612_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 3720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3528);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3528);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 7216);
    t4 = (t0 + 4232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 7224);
    t4 = (t0 + 4296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7232);
    t5 = (t0 + 7240);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7248);
    t5 = (t0 + 7256);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7264);
    t5 = (t0 + 7272);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7280);
    t5 = (t0 + 7288);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7296);
    t5 = (t0 + 7304);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7312);
    t5 = (t0 + 7320);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7328);
    t5 = (t0 + 7336);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7344);
    t5 = (t0 + 7352);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7360);
    t5 = (t0 + 7368);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7376);
    t5 = (t0 + 7384);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7392);
    t5 = (t0 + 7400);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7408);
    t5 = (t0 + 7416);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 7424);
    t5 = (t0 + 7432);
    t8 = (t0 + 992U);
    t9 = (t0 + 4424);
    t10 = (t0 + 1152U);
    t11 = (t0 + 4360);
    t12 = (t0 + 1792U);
    t13 = (t0 + 4488);
    work_a_2944603612_3212880686_sub_1638837001_3057020925(t0, t2, t3, t5, t8, 0U, 0U, t9, t10, 0U, 0U, t11, t12, 0U, 0U, t13);
    xsi_set_current_line(112, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2944603612_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2944603612_3212880686_p_0,(void *)work_a_2944603612_3212880686_p_1};
	static char *se[] = {(void *)work_a_2944603612_3212880686_sub_1638837001_3057020925};
	xsi_register_didat("work_a_2944603612_3212880686", "isim/calc_potencia_calc_potencia_sch_tb_isim_beh.exe.sim/work/a_2944603612_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
