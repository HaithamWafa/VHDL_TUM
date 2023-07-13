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
static const char *ng0 = "/home/haitham/VHDL_LAB/submission_template/submit/rcs1/tb_idea_single.vhd";



static void work_a_1338029099_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3992);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3992);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1338029099_2372691052_p_1(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    int64 t12;
    unsigned int t13;

LAB0:    t1 = (t0 + 4432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 8632);
    t4 = (t0 + 4976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 8648);
    t4 = (t0 + 5040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 8664);
    t4 = (t0 + 5104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 8680);
    t4 = (t0 + 5168);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 8696);
    t4 = (t0 + 5232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 128U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);

LAB14:    t2 = (t0 + 4752);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t3 = (t0 + 4752);
    *((int *)t3) = 0;
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t12 = (0.50000000000000000 * t7);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t12);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 8824);
    t10 = 1;
    if (16U == 16U)
        goto LAB22;

LAB23:    t10 = 0;

LAB24:    if (t10 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 8854);
    t10 = 1;
    if (16U == 16U)
        goto LAB30;

LAB31:    t10 = 0;

LAB32:    if (t10 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 8884);
    t10 = 1;
    if (16U == 16U)
        goto LAB38;

LAB39:    t10 = 0;

LAB40:    if (t10 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 8914);
    t10 = 1;
    if (16U == 16U)
        goto LAB46;

LAB47:    t10 = 0;

LAB48:    if (t10 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t12 = (10 * t7);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t12);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t8 = (t0 + 8840);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB21;

LAB22:    t13 = 0;

LAB25:    if (t13 < 16U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t13 = (t13 + 1);
    goto LAB25;

LAB28:    t8 = (t0 + 8870);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB29;

LAB30:    t13 = 0;

LAB33:    if (t13 < 16U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB31;

LAB35:    t13 = (t13 + 1);
    goto LAB33;

LAB36:    t8 = (t0 + 8900);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB37;

LAB38:    t13 = 0;

LAB41:    if (t13 < 16U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB39;

LAB43:    t13 = (t13 + 1);
    goto LAB41;

LAB44:    t8 = (t0 + 8930);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB45;

LAB46:    t13 = 0;

LAB49:    if (t13 < 16U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t13 = (t13 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 8944);
    t4 = (t0 + 4976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 8960);
    t4 = (t0 + 5040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 8976);
    t4 = (t0 + 5104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 8992);
    t4 = (t0 + 5168);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 9008);
    t4 = (t0 + 5232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 128U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t7);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(148, ng0);

LAB62:    t2 = (t0 + 4768);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t3 = (t0 + 4768);
    *((int *)t3) = 0;
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t12 = (0.50000000000000000 * t7);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t12);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB60;
    else
        goto LAB62;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 9136);
    t10 = 1;
    if (16U == 16U)
        goto LAB70;

LAB71:    t10 = 0;

LAB72:    if (t10 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 9166);
    t10 = 1;
    if (16U == 16U)
        goto LAB78;

LAB79:    t10 = 0;

LAB80:    if (t10 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 9196);
    t10 = 1;
    if (16U == 16U)
        goto LAB86;

LAB87:    t10 = 0;

LAB88:    if (t10 == 0)
        goto LAB84;

LAB85:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 9226);
    t10 = 1;
    if (16U == 16U)
        goto LAB94;

LAB95:    t10 = 0;

LAB96:    if (t10 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(163, ng0);

LAB102:    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t8 = (t0 + 9152);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB69;

LAB70:    t13 = 0;

LAB73:    if (t13 < 16U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB71;

LAB75:    t13 = (t13 + 1);
    goto LAB73;

LAB76:    t8 = (t0 + 9182);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB77;

LAB78:    t13 = 0;

LAB81:    if (t13 < 16U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB79;

LAB83:    t13 = (t13 + 1);
    goto LAB81;

LAB84:    t8 = (t0 + 9212);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB85;

LAB86:    t13 = 0;

LAB89:    if (t13 < 16U)
        goto LAB90;
    else
        goto LAB88;

LAB90:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB87;

LAB91:    t13 = (t13 + 1);
    goto LAB89;

LAB92:    t8 = (t0 + 9242);
    xsi_report(t8, 14U, (unsigned char)2);
    goto LAB93;

LAB94:    t13 = 0;

LAB97:    if (t13 < 16U)
        goto LAB98;
    else
        goto LAB96;

LAB98:    t5 = (t3 + t13);
    t6 = (t2 + t13);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB95;

LAB99:    t13 = (t13 + 1);
    goto LAB97;

LAB100:    goto LAB2;

LAB101:    goto LAB100;

LAB103:    goto LAB101;

}


extern void work_a_1338029099_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1338029099_2372691052_p_0,(void *)work_a_1338029099_2372691052_p_1};
	xsi_register_didat("work_a_1338029099_2372691052", "isim/tb_idea_single_isim_beh.exe.sim/work/a_1338029099_2372691052.didat");
	xsi_register_executes(pe);
}
