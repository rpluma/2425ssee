--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2024 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--    Generated from core with identifier: xilinx.com:ip:microblaze_mcs:1.3   --
--                                                                            --
--    MicroBlaze Micro Controller System (MCS) is a light-weight general      --
--    purpose micro controller system, based on the MicroBlaze processor.     --
--    It is primarily intended for simple control applications, where a       --
--    hardware solution would be less flexible and more difficult to          --
--    implement. Software development with the Xilinx Software Development    --
--    Kit (SDK) is supported, including a software driver for the             --
--    peripherals. Debugging is available either via SDK or directly with     --
--    the Xilinx Microprocessor Debugger.                                     --
--                                                                            --
--    The MCS consists of the processor itself, local memory with sizes       --
--    ranging from 4KB to 64KB, up to 4 Fixed Interval Timers, up to 4        --
--    Programmable Interval Timers, up to 4 32-bit General Purpose Output     --
--    ports, up to 4 32-bit General Purpose Input ports, and an Interrupt     --
--    Controller with up to 16 external interrupt inputs.                     --
--                                                                            --
--------------------------------------------------------------------------------

-- Interfaces:
--    IO_BUS
--        MicroBlaze MCS IO Bus Interface
--    TRACE
--        MicroBlaze MCS Trace Interface

-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT microcontrolador_mcs
  PORT (
    Clk : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    UART_Rx : IN STD_LOGIC;
    UART_Tx : OUT STD_LOGIC;
    FIT1_Interrupt : OUT STD_LOGIC;
    FIT1_Toggle : OUT STD_LOGIC;
    GPO1 : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    GPO2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    GPO3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    GPI1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    GPI1_Interrupt : OUT STD_LOGIC;
    GPI2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    GPI2_Interrupt : OUT STD_LOGIC;
    INTC_Interrupt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    INTC_IRQ : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : microcontrolador_mcs
  PORT MAP (
    Clk => Clk,
    Reset => Reset,
    UART_Rx => UART_Rx,
    UART_Tx => UART_Tx,
    FIT1_Interrupt => FIT1_Interrupt,
    FIT1_Toggle => FIT1_Toggle,
    GPO1 => GPO1,
    GPO2 => GPO2,
    GPO3 => GPO3,
    GPI1 => GPI1,
    GPI1_Interrupt => GPI1_Interrupt,
    GPI2 => GPI2,
    GPI2_Interrupt => GPI2_Interrupt,
    INTC_Interrupt => INTC_Interrupt,
    INTC_IRQ => INTC_IRQ
  );
-- INST_TAG_END ------ End INSTANTIATION Template ------------

-- You must compile the wrapper file microcontrolador_mcs.vhd when simulating
-- the core, microcontrolador_mcs. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

