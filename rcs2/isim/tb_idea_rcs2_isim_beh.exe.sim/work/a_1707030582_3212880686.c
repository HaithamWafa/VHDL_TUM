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
static const char *ng0 = "/home/haitham/VHDL_LAB/submission_template/submit/rcs2/control_ext.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_1707030582_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    char *t27;
    unsigned char t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 9223);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB12:    t5 = (t0 + 9226);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB13:    t8 = (t0 + 9229);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB14:    t11 = (t0 + 9232);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 9235);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 9238);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 9241);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 9244);
    t25 = xsi_mem_cmp(t23, t2, 3U);
    if (t25 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(197, ng0);
    t1 = (t0 + 5408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(198, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(199, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(200, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(201, ng0);
    t1 = (t0 + 9303);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 5312);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t26 = (t0 + 1352U);
    t27 = *((char **)t26);
    t28 = *((unsigned char *)t27);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB24;

LAB26:
LAB25:
LAB22:    goto LAB2;

LAB4:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB30;

LAB32:
LAB31:
LAB28:    goto LAB2;

LAB5:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB36;

LAB38:
LAB37:
LAB34:    goto LAB2;

LAB6:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB39;

LAB41:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB42;

LAB44:
LAB43:
LAB40:    goto LAB2;

LAB7:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB45;

LAB47:
LAB46:    goto LAB2;

LAB8:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB48;

LAB50:
LAB49:    goto LAB2;

LAB9:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB51;

LAB53:    xsi_set_current_line(167, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB54;

LAB56:
LAB55:
LAB52:    goto LAB2;

LAB10:    xsi_set_current_line(178, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)2);
    if (t29 != 0)
        goto LAB57;

LAB59:    xsi_set_current_line(185, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t28 = *((unsigned char *)t2);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB60;

LAB62:
LAB61:
LAB58:    goto LAB2;

LAB20:;
LAB21:    xsi_set_current_line(57, ng0);
    t26 = (t0 + 5408);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t26);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9247);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9249);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB22;

LAB24:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 9251);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 9253);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB25;

LAB27:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 9255);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 9257);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB28;

LAB30:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 9259);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 9261);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB31;

LAB33:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 9263);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 9265);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB34;

LAB36:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 9267);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 9269);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB37;

LAB39:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 9271);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 9273);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB40;

LAB42:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 9275);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 9277);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB43;

LAB45:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 9279);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 9281);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB46;

LAB48:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(148, ng0);
    t1 = (t0 + 9283);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(149, ng0);
    t1 = (t0 + 9285);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB49;

LAB51:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(162, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(164, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 9287);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(166, ng0);
    t1 = (t0 + 9289);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB52;

LAB54:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(170, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(171, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(172, ng0);
    t1 = (t0 + 9291);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(173, ng0);
    t1 = (t0 + 9293);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB55;

LAB57:    xsi_set_current_line(179, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(180, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(181, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(182, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(183, ng0);
    t1 = (t0 + 9295);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(184, ng0);
    t1 = (t0 + 9297);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB58;

LAB60:    xsi_set_current_line(186, ng0);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(187, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(188, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(189, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(190, ng0);
    t1 = (t0 + 9299);
    t3 = (t0 + 5664);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(191, ng0);
    t1 = (t0 + 9301);
    t3 = (t0 + 5728);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB61;

}

static void work_a_1707030582_3212880686_p_1(char *t0)
{
    char t10[16];
    char t16[16];
    char t28[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    char *t29;
    char *t30;
    static char *nl0[] = {&&LAB8, &&LAB8, &&LAB6, &&LAB7, &&LAB8, &&LAB8, &&LAB8, &&LAB8, &&LAB8};

LAB0:    xsi_set_current_line(209, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5328);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(210, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(212, ng0);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t6 = (t0 + 9152U);
    t8 = (t0 + 9305);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t7, t6, t8, t10);
    if (t15 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 9152U);
    t4 = (t0 + 9308);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t2 != 0)
        goto LAB14;

LAB15:
LAB10:    goto LAB5;

LAB7:    xsi_set_current_line(217, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 9152U);
    t4 = (t0 + 9317);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t5 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t5 == 1)
        goto LAB22;

LAB23:    t2 = (unsigned char)0;

LAB24:    if (t2 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 9152U);
    t4 = (t0 + 9323);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t2 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 9152U);
    t4 = (t0 + 9329);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t10);
    if (t2 != 0)
        goto LAB29;

LAB30:
LAB20:    goto LAB5;

LAB8:    xsi_set_current_line(223, ng0);
    t1 = (t0 + 9338);
    t4 = (t0 + 5792);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB5;

LAB9:    xsi_set_current_line(212, ng0);
    t12 = (t0 + 2472U);
    t17 = *((char **)t12);
    t12 = (t0 + 9152U);
    t18 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t16, t17, t12, 1);
    t19 = (t16 + 12U);
    t14 = *((unsigned int *)t19);
    t20 = (1U * t14);
    t21 = (3U != t20);
    if (t21 == 1)
        goto LAB12;

LAB13:    t22 = (t0 + 5792);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 3U);
    xsi_driver_first_trans_fast(t22);
    goto LAB10;

LAB12:    xsi_size_not_matching(3U, t20, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(214, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t5 = *((unsigned char *)t9);
    t15 = (t5 == (unsigned char)3);
    if (t15 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(214, ng0);
    t1 = (t0 + 9314);
    t4 = (t0 + 5792);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t4);

LAB17:    goto LAB10;

LAB16:    xsi_set_current_line(214, ng0);
    t8 = (t0 + 9311);
    t12 = (t0 + 5792);
    t17 = (t12 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t22 = *((char **)t19);
    memcpy(t22, t8, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB17;

LAB19:    xsi_set_current_line(217, ng0);
    t18 = (t0 + 2472U);
    t19 = *((char **)t18);
    t18 = (t0 + 9152U);
    t22 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t28, t19, t18, 1);
    t23 = (t28 + 12U);
    t14 = *((unsigned int *)t23);
    t20 = (1U * t14);
    t21 = (3U != t20);
    if (t21 == 1)
        goto LAB25;

LAB26:    t24 = (t0 + 5792);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t22, 3U);
    xsi_driver_first_trans_fast(t24);
    goto LAB20;

LAB22:    t8 = (t0 + 2472U);
    t9 = *((char **)t8);
    t8 = (t0 + 9152U);
    t11 = (t0 + 9320);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 2;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t27 = (2 - 0);
    t14 = (t27 * 1);
    t14 = (t14 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t14;
    t15 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t9, t8, t11, t16);
    t2 = t15;
    goto LAB24;

LAB25:    xsi_size_not_matching(3U, t20, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(218, ng0);
    t8 = (t0 + 9326);
    t11 = (t0 + 5792);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 3U);
    xsi_driver_first_trans_fast(t11);
    goto LAB20;

LAB29:    xsi_set_current_line(220, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t5 = *((unsigned char *)t9);
    t15 = (t5 == (unsigned char)3);
    if (t15 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(220, ng0);
    t1 = (t0 + 9335);
    t4 = (t0 + 5792);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t4);

LAB32:    goto LAB20;

LAB31:    xsi_set_current_line(220, ng0);
    t8 = (t0 + 9332);
    t12 = (t0 + 5792);
    t17 = (t12 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t22 = *((char **)t19);
    memcpy(t22, t8, 3U);
    xsi_driver_first_trans_fast(t12);
    goto LAB32;

}


extern void work_a_1707030582_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1707030582_3212880686_p_0,(void *)work_a_1707030582_3212880686_p_1};
	xsi_register_didat("work_a_1707030582_3212880686", "isim/tb_idea_rcs2_isim_beh.exe.sim/work/a_1707030582_3212880686.didat");
	xsi_register_executes(pe);
}
