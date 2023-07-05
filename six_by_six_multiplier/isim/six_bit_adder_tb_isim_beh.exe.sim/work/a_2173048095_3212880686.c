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
static const char *ng0 = "D:/Study/AUT/Term6/Computer Architecture/VHDL1/six_by_six_multiplier/six_bit_adder_test.vhd";



static void work_a_2173048095_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 6012);
    t4 = (t0 + 3464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 6018);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(30, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 6024);
    t4 = (t0 + 3464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 6030);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(36, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 6036);
    t4 = (t0 + 3464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 6042);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(42, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6048);
    t4 = (t0 + 3464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 6054);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_2173048095_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    unsigned char t4;
    char *t5;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 6060);
    t7 = 1;
    if (6U == 6U)
        goto LAB13;

LAB14:    t7 = 0;

LAB15:    if (t7 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(56, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t3);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t11 = (t0 + 6066);
    xsi_report(t11, 18U, (unsigned char)2);
    goto LAB9;

LAB10:    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB12;

LAB13:    t8 = 0;

LAB16:    if (t8 < 6U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t9 = (t5 + t8);
    t10 = (t2 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB14;

LAB18:    t8 = (t8 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 6084);
    t7 = 1;
    if (6U == 6U)
        goto LAB28;

LAB29:    t7 = 0;

LAB30:    if (t7 == 1)
        goto LAB25;

LAB26:    t4 = (unsigned char)0;

LAB27:    if (t4 == 0)
        goto LAB23;

LAB24:    xsi_set_current_line(59, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t3);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB23:    t11 = (t0 + 6090);
    xsi_report(t11, 18U, (unsigned char)2);
    goto LAB24;

LAB25:    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t4 = t14;
    goto LAB27;

LAB28:    t8 = 0;

LAB31:    if (t8 < 6U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t9 = (t5 + t8);
    t10 = (t2 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB29;

LAB33:    t8 = (t8 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 6108);
    t7 = 1;
    if (6U == 6U)
        goto LAB43;

LAB44:    t7 = 0;

LAB45:    if (t7 == 1)
        goto LAB40;

LAB41:    t4 = (unsigned char)0;

LAB42:    if (t4 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(62, ng0);

LAB51:    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t11 = (t0 + 6114);
    xsi_report(t11, 18U, (unsigned char)2);
    goto LAB39;

LAB40:    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB42;

LAB43:    t8 = 0;

LAB46:    if (t8 < 6U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t9 = (t5 + t8);
    t10 = (t2 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB44;

LAB48:    t8 = (t8 + 1);
    goto LAB46;

LAB49:    goto LAB2;

LAB50:    goto LAB49;

LAB52:    goto LAB50;

}


extern void work_a_2173048095_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2173048095_3212880686_p_0,(void *)work_a_2173048095_3212880686_p_1};
	xsi_register_didat("work_a_2173048095_3212880686", "isim/six_bit_adder_tb_isim_beh.exe.sim/work/a_2173048095_3212880686.didat");
	xsi_register_executes(pe);
}
