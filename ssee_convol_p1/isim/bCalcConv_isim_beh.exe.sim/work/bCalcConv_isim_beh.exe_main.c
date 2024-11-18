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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *XILINXCORELIB_P_1419404220;
char *XILINXCORELIB_P_1705937335;
char *STD_STANDARD;
char *XILINXCORELIB_P_3431467596;
char *IEEE_P_1242562249;
char *XILINXCORELIB_P_3381355550;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_4017111255;
char *IEEE_P_0774719531;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *XILINXCORELIB_P_0624651749;
char *XILINXCORELIB_P_1433929353;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3466741030_3419718136_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_0350208134_1521797606_init();
    work_a_3032502461_3212880686_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_1033981176_2959432447_init();
    xilinxcorelib_a_0886233901_1709443946_init();
    xilinxcorelib_a_0851803670_0543512595_init();
    xilinxcorelib_a_1599148897_3212880686_init();
    work_a_3572124613_1444955519_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_1705937335_init();
    xilinxcorelib_a_3945377038_3212880686_init();
    work_a_4252244979_3985687694_init();
    xilinxcorelib_p_3431467596_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1419404220_init();
    xilinxcorelib_p_4017111255_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_2511460631_3212880686_init();
    xilinxcorelib_a_3002289518_3212880686_init();
    xilinxcorelib_a_2408334488_3212880686_init();
    xilinxcorelib_a_0090783853_3212880686_init();
    work_a_3171383439_0667848832_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_3870564484_3219970547_init();
    work_a_2041622385_3555426507_init();
    work_a_0607615772_3212880686_init();


    xsi_register_tops("work_a_0607615772_3212880686");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    XILINXCORELIB_P_1419404220 = xsi_get_engine_memory("xilinxcorelib_p_1419404220");
    XILINXCORELIB_P_1705937335 = xsi_get_engine_memory("xilinxcorelib_p_1705937335");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    XILINXCORELIB_P_3431467596 = xsi_get_engine_memory("xilinxcorelib_p_3431467596");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_4017111255 = xsi_get_engine_memory("xilinxcorelib_p_4017111255");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");

    return xsi_run_simulation(argc, argv);

}
