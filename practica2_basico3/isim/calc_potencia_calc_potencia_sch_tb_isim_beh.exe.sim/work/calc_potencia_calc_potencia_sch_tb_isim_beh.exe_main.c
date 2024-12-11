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

char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *UNISIM_P_0947159679;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_0718376120;
char *XILINXCORELIB_P_1433929353;
char *STD_STANDARD;
char *UNISIM_P_3222816464;
char *XILINXCORELIB_P_3381355550;
char *XILINXCORELIB_P_3155556343;
char *IEEE_P_0774719531;
char *IEEE_P_3620187407;
char *IEEE_P_1367372525;
char *IEEE_P_3499444699;
char *XILINXCORELIB_P_3743709326;
char *XILINXCORELIB_P_0208880564;
char *XILINXCORELIB_P_3875426595;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_2661327437_0605893366_init();
    work_a_3532925794_0342107167_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    xilinxcorelib_p_0718376120_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_3875426595_init();
    xilinxcorelib_p_3743709326_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_0208880564_init();
    xilinxcorelib_a_1091826098_3212880686_init();
    xilinxcorelib_a_2468621097_3212880686_init();
    xilinxcorelib_a_1922322233_3212880686_init();
    xilinxcorelib_a_2980875575_3212880686_init();
    xilinxcorelib_a_4019957327_3212880686_init();
    xilinxcorelib_a_1176175502_3212880686_init();
    xilinxcorelib_a_1973682312_3212880686_init();
    xilinxcorelib_a_1459934909_3212880686_init();
    xilinxcorelib_a_2996463051_3212880686_init();
    xilinxcorelib_a_4245392198_3212880686_init();
    work_a_4177141040_0015090539_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2650278463_3403034321_init();
    unisim_a_1916428545_3403034321_init();
    unisim_a_2680519808_1064626918_init();
    unisim_a_2261302797_3723259517_init();
    unisim_a_2121384304_3723259517_init();
    unisim_a_2685028205_3634591992_init();
    unisim_a_3481938299_3634591992_init();
    unisim_a_3150043533_3634591992_init();
    unisim_a_0739137552_3634591992_init();
    unisim_a_2407326632_3634591992_init();
    unisim_a_3401159022_3634591992_init();
    unisim_a_3641146799_3672491681_init();
    unisim_a_1553322848_3672491681_init();
    unisim_a_1330624074_3672491681_init();
    unisim_a_1849278696_3676810390_init();
    unisim_a_2363982922_3676810390_init();
    unisim_a_2203725902_3676810390_init();
    unisim_a_2589328394_3676810390_init();
    unisim_a_0587692967_3731405331_init();
    unisim_a_3600803327_3731405331_init();
    unisim_a_0006958716_3731405331_init();
    unisim_a_3449702363_3752513572_init();
    unisim_a_4104775526_3752513572_init();
    unisim_a_1446710196_3752513572_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_3484885994_2523279426_init();
    work_a_2699054643_0632001823_init();
    work_a_1576588729_2996457325_init();
    work_a_2754133660_2688472829_init();
    unisim_a_3870564484_3219970547_init();
    work_a_0726290336_3212880686_init();
    work_a_2944603612_3212880686_init();


    xsi_register_tops("work_a_2944603612_3212880686");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    XILINXCORELIB_P_3743709326 = xsi_get_engine_memory("xilinxcorelib_p_3743709326");
    XILINXCORELIB_P_0208880564 = xsi_get_engine_memory("xilinxcorelib_p_0208880564");
    XILINXCORELIB_P_3875426595 = xsi_get_engine_memory("xilinxcorelib_p_3875426595");

    return xsi_run_simulation(argc, argv);

}
