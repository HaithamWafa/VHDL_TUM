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
static const char *ng0 = "/home/haitham/VHDL_LAB/submission_template/submit/direct/tb_addop.vhd";



static void work_a_4154865712_2372691052_p_0(char *t0)
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
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 2624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5192);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 5208);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5224);
    t10 = 1;
    if (16U == 16U)
        goto LAB10;

LAB11:    t10 = 0;

LAB12:    if (t10 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5254);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 5270);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t7 = (t0 + 5240);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB9;

LAB10:    t11 = 0;

LAB13:    if (t11 < 16U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB11;

LAB15:    t11 = (t11 + 1);
    goto LAB13;

LAB16:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5286);
    t10 = 1;
    if (16U == 16U)
        goto LAB22;

LAB23:    t10 = 0;

LAB24:    if (t10 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5316);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5332);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t7 = (t0 + 5302);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB21;

LAB22:    t11 = 0;

LAB25:    if (t11 < 16U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t11 = (t11 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5348);
    t10 = 1;
    if (16U == 16U)
        goto LAB34;

LAB35:    t10 = 0;

LAB36:    if (t10 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5378);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 5394);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t7 = (t0 + 5364);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB33;

LAB34:    t11 = 0;

LAB37:    if (t11 < 16U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB35;

LAB39:    t11 = (t11 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5410);
    t10 = 1;
    if (16U == 16U)
        goto LAB46;

LAB47:    t10 = 0;

LAB48:    if (t10 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5440);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5456);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t7 = (t0 + 5426);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB45;

LAB46:    t11 = 0;

LAB49:    if (t11 < 16U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t11 = (t11 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5472);
    t10 = 1;
    if (16U == 16U)
        goto LAB58;

LAB59:    t10 = 0;

LAB60:    if (t10 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5502);
    t4 = (t0 + 3008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5518);
    t4 = (t0 + 3072);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t9);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    t7 = (t0 + 5488);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB57;

LAB58:    t11 = 0;

LAB61:    if (t11 < 16U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB59;

LAB63:    t11 = (t11 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5534);
    t10 = 1;
    if (16U == 16U)
        goto LAB70;

LAB71:    t10 = 0;

LAB72:    if (t10 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(125, ng0);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t7 = (t0 + 5550);
    xsi_report(t7, 14U, (unsigned char)2);
    goto LAB69;

LAB70:    t11 = 0;

LAB73:    if (t11 < 16U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB71;

LAB75:    t11 = (t11 + 1);
    goto LAB73;

LAB76:    goto LAB2;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

}


extern void work_a_4154865712_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4154865712_2372691052_p_0};
	xsi_register_didat("work_a_4154865712_2372691052", "isim/tb_addop_isim_beh.exe.sim/work/a_4154865712_2372691052.didat");
	xsi_register_executes(pe);
}
