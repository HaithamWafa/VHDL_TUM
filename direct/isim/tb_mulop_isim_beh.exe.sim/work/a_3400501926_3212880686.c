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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/haitham/VHDL_LAB/submission_template/submit/direct/mulop.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned char t11;
    int t12;
    unsigned char t13;
    int t14;
    int t15;
    int t16;
    int t17;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6508);
    t4 = 1;
    if (16U == 16U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6304U);
    t10 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t3 = (t0 + 1928U);
    t6 = *((char **)t3);
    t3 = (t6 + 0);
    *((int *)t3) = t10;

LAB3:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6524);
    t4 = 1;
    if (16U == 16U)
        goto LAB14;

LAB15:    t4 = 0;

LAB16:    if (t4 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6320U);
    t10 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t3 = (t0 + 2048U);
    t6 = *((char **)t3);
    t3 = (t6 + 0);
    *((int *)t3) = t10;

LAB12:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t11 = (t10 == 65536);
    if (t11 == 1)
        goto LAB23;

LAB24:    t4 = (unsigned char)0;

LAB25:    if (t4 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t14 = (t10 * t12);
    t15 = (t14 / 65536);
    t1 = (t0 + 2168U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t15;

LAB21:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t14 = (t10 * t12);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t14;
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t4 = (t10 >= t12);
    if (t4 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t14 = (t10 - t12);
    t15 = (t14 + 65536);
    t16 = (t15 + 1);
    t1 = (t0 + 1808U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t16;

LAB27:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2168U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t18, t10, 17);
    t3 = (t0 + 3664);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 17U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t18, t10, 16);
    t3 = (t0 + 3728);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 3584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t8 = (t0 + 1928U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = 65536;
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 16U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(70, ng0);
    t8 = (t0 + 2048U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = 65536;
    goto LAB12;

LAB14:    t5 = 0;

LAB17:    if (t5 < 16U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t5 = (t5 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1928U);
    t6 = *((char **)t1);
    t14 = *((int *)t6);
    t1 = (t0 + 2048U);
    t7 = *((char **)t1);
    t15 = *((int *)t7);
    t16 = (t15 / 65536);
    t17 = (t14 * t16);
    t1 = (t0 + 2168U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = t17;
    goto LAB21;

LAB23:    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t13 = (t12 == 65536);
    t4 = t13;
    goto LAB25;

LAB26:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t14 = *((int *)t6);
    t1 = (t0 + 2168U);
    t7 = *((char **)t1);
    t15 = *((int *)t7);
    t16 = (t14 - t15);
    t1 = (t0 + 1808U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = t16;
    goto LAB27;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_mulop_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
