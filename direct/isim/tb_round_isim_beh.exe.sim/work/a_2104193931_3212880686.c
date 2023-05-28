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
static const char *ng0 = "/home/haitham/VHDL_LAB/submission_template/submit/direct/addop.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_2104193931_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t11;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4832U);
    t3 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4848U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t4);
    t7 = (t3 + t6);
    t8 = (t0 + 1648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = t7;
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, t3, 16);
    t4 = (t0 + 3024);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 2944);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_2104193931_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2104193931_3212880686_p_0};
	xsi_register_didat("work_a_2104193931_3212880686", "isim/tb_round_isim_beh.exe.sim/work/a_2104193931_3212880686.didat");
	xsi_register_executes(pe);
}
