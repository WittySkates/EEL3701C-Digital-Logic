-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/05/2019 12:12:25"

-- 
-- Device: Altera 10M02SCU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6_Part2_VHDL_ROM IS
    PORT (
	IRLD : OUT std_logic;
	IR2 : OUT std_logic;
	Reset : IN std_logic;
	CLK : OUT std_logic;
	MemCLK : IN std_logic;
	Data : OUT std_logic_vector(3 DOWNTO 0);
	A : OUT std_logic_vector(14 DOWNTO 0);
	PCINC : OUT std_logic;
	PCLD : OUT std_logic;
	IR1 : OUT std_logic;
	IR0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	COUT : OUT std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab6_Part2_VHDL_ROM;

-- Design Ports Information
-- IRLD	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR2	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCINC	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLD	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_Part2_VHDL_ROM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IRLD : std_logic;
SIGNAL ww_IR2 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MemCLK : std_logic;
SIGNAL ww_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_PCINC : std_logic;
SIGNAL ww_PCLD : std_logic;
SIGNAL ww_IR1 : std_logic;
SIGNAL ww_IR0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \IRLD~output_o\ : std_logic;
SIGNAL \IR2~output_o\ : std_logic;
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \Data[3]~output_o\ : std_logic;
SIGNAL \Data[2]~output_o\ : std_logic;
SIGNAL \Data[1]~output_o\ : std_logic;
SIGNAL \Data[0]~output_o\ : std_logic;
SIGNAL \A[14]~output_o\ : std_logic;
SIGNAL \A[13]~output_o\ : std_logic;
SIGNAL \A[12]~output_o\ : std_logic;
SIGNAL \A[11]~output_o\ : std_logic;
SIGNAL \A[10]~output_o\ : std_logic;
SIGNAL \A[9]~output_o\ : std_logic;
SIGNAL \A[8]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \PCINC~output_o\ : std_logic;
SIGNAL \PCLD~output_o\ : std_logic;
SIGNAL \IR1~output_o\ : std_logic;
SIGNAL \IR0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \MemCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst27~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \inst27~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|sub|86~combout\ : std_logic;
SIGNAL \inst14|sub|87~q\ : std_logic;
SIGNAL \inst14|sub|106~0_combout\ : std_logic;
SIGNAL \inst14|sub|102~combout\ : std_logic;
SIGNAL \inst14|sub|99~q\ : std_logic;
SIGNAL \inst334|PCLD~combout\ : std_logic;
SIGNAL \inst14|sub|108~combout\ : std_logic;
SIGNAL \inst14|sub|110~q\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|D_sig[2]~feeder_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst334|D1~0_combout\ : std_logic;
SIGNAL \inst334|D0~combout\ : std_logic;
SIGNAL \inst21~q\ : std_logic;
SIGNAL \inst14|sub|75~combout\ : std_logic;
SIGNAL \inst14|sub|9~q\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|D_sig[0]~feeder_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst334|D1~1_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst334|MSA0~0_combout\ : std_logic;
SIGNAL \inst334|PCINC~0_combout\ : std_logic;
SIGNAL \inst10|inst900|9~3_combout\ : std_logic;
SIGNAL \inst10|inst900|9~7_combout\ : std_logic;
SIGNAL \inst334|MSB0~0_combout\ : std_logic;
SIGNAL \inst334|MSA0~combout\ : std_logic;
SIGNAL \inst334|MSA1~0_combout\ : std_logic;
SIGNAL \inst334|MSA1~combout\ : std_logic;
SIGNAL \inst10|inst5|10~0_combout\ : std_logic;
SIGNAL \inst334|MSB0~1_combout\ : std_logic;
SIGNAL \inst334|MSC0~0_combout\ : std_logic;
SIGNAL \inst334|MSC0~1_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst334|MSA1~1_combout\ : std_logic;
SIGNAL \inst10|inst50|sub|81~4_combout\ : std_logic;
SIGNAL \inst10|inst44|sub|81~6_combout\ : std_logic;
SIGNAL \inst10|inst6|10~0_combout\ : std_logic;
SIGNAL \inst10|inst6|10~1_combout\ : std_logic;
SIGNAL \inst10|inst36~q\ : std_logic;
SIGNAL \inst10|inst50|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst50|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst100|10~0_combout\ : std_logic;
SIGNAL \inst10|inst100|10~1_combout\ : std_logic;
SIGNAL \inst10|inst16~q\ : std_logic;
SIGNAL \inst10|inst6|9~0_combout\ : std_logic;
SIGNAL \inst10|inst48|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst48|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst6|9~1_combout\ : std_logic;
SIGNAL \inst10|inst33~q\ : std_logic;
SIGNAL \inst10|inst48|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst48|sub|81~4_combout\ : std_logic;
SIGNAL \inst10|inst48|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst100|9~0_combout\ : std_logic;
SIGNAL \inst10|inst100|9~1_combout\ : std_logic;
SIGNAL \inst10|inst18~q\ : std_logic;
SIGNAL \inst10|inst42|sub|105~0_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~4_combout\ : std_logic;
SIGNAL \inst10|inst47|sub|81~5_combout\ : std_logic;
SIGNAL \inst10|inst5|10~1_combout\ : std_logic;
SIGNAL \inst10|inst30~q\ : std_logic;
SIGNAL \inst10|inst900|10~0_combout\ : std_logic;
SIGNAL \inst10|inst900|10~1_combout\ : std_logic;
SIGNAL \inst10|inst12~q\ : std_logic;
SIGNAL \inst10|inst44|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst5|9~0_combout\ : std_logic;
SIGNAL \inst10|inst5|9~1_combout\ : std_logic;
SIGNAL \inst10|inst27~q\ : std_logic;
SIGNAL \inst10|inst44|sub|81~4_combout\ : std_logic;
SIGNAL \inst10|inst42|sub|106~0_combout\ : std_logic;
SIGNAL \inst10|inst44|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst44|sub|81~5_combout\ : std_logic;
SIGNAL \inst10|inst900|9~6_combout\ : std_logic;
SIGNAL \inst10|inst~q\ : std_logic;
SIGNAL \inst10|inst42|sub|107~0_combout\ : std_logic;
SIGNAL \inst11|D_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst334|ALT_INV_MSB0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IRLD <= ww_IRLD;
IR2 <= ww_IR2;
ww_Reset <= Reset;
CLK <= ww_CLK;
ww_MemCLK <= MemCLK;
Data <= ww_Data;
A <= ww_A;
PCINC <= ww_PCINC;
PCLD <= ww_PCLD;
IR1 <= ww_IR1;
IR0 <= ww_IR0;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
COUT <= ww_COUT;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst27~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst27~q\);

\MemCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MemCLK~input_o\);
\inst334|ALT_INV_MSB0~1_combout\ <= NOT \inst334|MSB0~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y0_N2
\IRLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA0~0_combout\,
	devoe => ww_devoe,
	o => \IRLD~output_o\);

-- Location: IOOBUF_X18_Y8_N16
\IR2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \IR2~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~q\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

-- Location: IOOBUF_X16_Y17_N23
\Data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data[3]~output_o\);

-- Location: IOOBUF_X18_Y4_N2
\Data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|D_sig\(2),
	devoe => ww_devoe,
	o => \Data[2]~output_o\);

-- Location: IOOBUF_X18_Y6_N16
\Data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|D_sig\(1),
	devoe => ww_devoe,
	o => \Data[1]~output_o\);

-- Location: IOOBUF_X18_Y3_N9
\Data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|D_sig\(0),
	devoe => ww_devoe,
	o => \Data[0]~output_o\);

-- Location: IOOBUF_X10_Y10_N23
\A[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[14]~output_o\);

-- Location: IOOBUF_X16_Y17_N30
\A[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[13]~output_o\);

-- Location: IOOBUF_X18_Y9_N16
\A[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[12]~output_o\);

-- Location: IOOBUF_X18_Y9_N23
\A[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X16_Y17_N9
\A[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\A[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X11_Y17_N23
\A[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X18_Y15_N2
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X3_Y7_N30
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X18_Y1_N9
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|110~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X18_Y3_N23
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|99~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X18_Y1_N2
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|87~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|9~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\PCINC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|PCINC~0_combout\,
	devoe => ww_devoe,
	o => \PCINC~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\PCLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|PCLD~combout\,
	devoe => ww_devoe,
	o => \PCLD~output_o\);

-- Location: IOOBUF_X18_Y1_N23
\IR1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \IR1~output_o\);

-- Location: IOOBUF_X18_Y8_N23
\IR0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \IR0~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst42|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X18_Y2_N9
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~combout\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA0~combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|ALT_INV_MSB0~1_combout\,
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSB0~1_combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X18_Y2_N2
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~combout\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSC0~1_combout\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst44|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X6_Y7_N30
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst47|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst48|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst50|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X18_Y4_N16
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst12~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst18~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X18_Y2_N23
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst16~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst27~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst30~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X18_Y14_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst36~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOIBUF_X18_Y6_N22
\MemCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: CLKCTRL_G9
\MemCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MemCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y6_N18
\inst27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = !\inst27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst27~q\,
	combout => \inst27~0_combout\);

-- Location: LCCOMB_X17_Y6_N16
\inst27~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~feeder_combout\ = \inst27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst27~0_combout\,
	combout => \inst27~feeder_combout\);

-- Location: IOIBUF_X18_Y3_N1
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X17_Y6_N17
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst27~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: CLKCTRL_G6
\inst27~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst27~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y4_N18
\inst14|sub|86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|sub|86~combout\ = (\inst21~q\ & (!\inst17~q\ & (\inst14|sub|87~q\ $ (\inst14|sub|9~q\)))) # (!\inst21~q\ & (\inst14|sub|87~q\ $ (((\inst17~q\ & \inst14|sub|9~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~q\,
	datab => \inst17~q\,
	datac => \inst14|sub|87~q\,
	datad => \inst14|sub|9~q\,
	combout => \inst14|sub|86~combout\);

-- Location: FF_X17_Y4_N19
\inst14|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst14|sub|86~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|87~q\);

-- Location: LCCOMB_X17_Y4_N30
\inst14|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|sub|106~0_combout\ = (\inst14|sub|87~q\ & (\inst14|sub|9~q\ & (\inst21~q\ $ (\inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~q\,
	datab => \inst17~q\,
	datac => \inst14|sub|87~q\,
	datad => \inst14|sub|9~q\,
	combout => \inst14|sub|106~0_combout\);

-- Location: LCCOMB_X17_Y4_N4
\inst14|sub|102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|sub|102~combout\ = (\inst21~q\ & ((\inst17~q\) # (\inst14|sub|106~0_combout\ $ (\inst14|sub|99~q\)))) # (!\inst21~q\ & (\inst14|sub|106~0_combout\ $ ((\inst14|sub|99~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|106~0_combout\,
	datab => \inst21~q\,
	datac => \inst14|sub|99~q\,
	datad => \inst17~q\,
	combout => \inst14|sub|102~combout\);

-- Location: FF_X17_Y4_N5
\inst14|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst14|sub|102~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|99~q\);

-- Location: LCCOMB_X17_Y4_N10
\inst334|PCLD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|PCLD~combout\ = (\inst17~q\ & \inst21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datac => \inst21~q\,
	combout => \inst334|PCLD~combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst14|sub|108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|sub|108~combout\ = (!\inst334|PCLD~combout\ & (\inst14|sub|110~q\ $ (((\inst14|sub|106~0_combout\ & \inst14|sub|99~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|106~0_combout\,
	datab => \inst334|PCLD~combout\,
	datac => \inst14|sub|110~q\,
	datad => \inst14|sub|99~q\,
	combout => \inst14|sub|108~combout\);

-- Location: FF_X17_Y4_N7
\inst14|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst14|sub|108~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|110~q\);

-- Location: LCCOMB_X17_Y4_N8
\inst11|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst14|sub|9~q\ & (!\inst14|sub|87~q\ & (!\inst14|sub|99~q\))) # (!\inst14|sub|9~q\ & (\inst14|sub|87~q\ & (\inst14|sub|99~q\ & !\inst14|sub|110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|9~q\,
	datab => \inst14|sub|87~q\,
	datac => \inst14|sub|99~q\,
	datad => \inst14|sub|110~q\,
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst11|D_sig[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D_sig[2]~feeder_combout\ = \inst11|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mux0~0_combout\,
	combout => \inst11|D_sig[2]~feeder_combout\);

-- Location: FF_X17_Y4_N21
\inst11|D_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst11|D_sig[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|D_sig\(2));

-- Location: FF_X15_Y4_N15
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	asdata => \inst11|D_sig\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|MSA0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X17_Y4_N14
\inst11|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (!\inst14|sub|110~q\ & ((\inst14|sub|9~q\ & ((\inst14|sub|99~q\) # (!\inst14|sub|87~q\))) # (!\inst14|sub|9~q\ & (!\inst14|sub|87~q\ & \inst14|sub|99~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|9~q\,
	datab => \inst14|sub|87~q\,
	datac => \inst14|sub|99~q\,
	datad => \inst14|sub|110~q\,
	combout => \inst11|Mux1~0_combout\);

-- Location: FF_X17_Y4_N27
\inst11|D_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst11|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|D_sig\(1));

-- Location: FF_X15_Y4_N5
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	asdata => \inst11|D_sig\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|MSA0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X16_Y4_N8
\inst334|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|D1~0_combout\ = (\inst21~q\ & (!\inst4~q\ & !\inst17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~q\,
	datac => \inst4~q\,
	datad => \inst17~q\,
	combout => \inst334|D1~0_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst334|D0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|D0~combout\ = (\inst334|MSA0~0_combout\) # ((\inst3~q\ & (\inst5~q\ & \inst334|D1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst5~q\,
	datac => \inst334|D1~0_combout\,
	datad => \inst334|MSA0~0_combout\,
	combout => \inst334|D0~combout\);

-- Location: FF_X16_Y4_N11
inst21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst334|D0~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~q\);

-- Location: LCCOMB_X17_Y4_N12
\inst14|sub|75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|sub|75~combout\ = (\inst21~q\ & ((\inst17~q\) # (!\inst14|sub|9~q\))) # (!\inst21~q\ & (\inst17~q\ $ (\inst14|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~q\,
	datab => \inst17~q\,
	datac => \inst14|sub|9~q\,
	combout => \inst14|sub|75~combout\);

-- Location: FF_X17_Y4_N13
\inst14|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst14|sub|75~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|9~q\);

-- Location: LCCOMB_X17_Y4_N28
\inst11|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst14|sub|110~q\ & (\inst14|sub|9~q\ & (!\inst14|sub|99~q\ & !\inst14|sub|87~q\))) # (!\inst14|sub|110~q\ & (((\inst14|sub|9~q\ & !\inst14|sub|99~q\)) # (!\inst14|sub|87~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|9~q\,
	datab => \inst14|sub|110~q\,
	datac => \inst14|sub|99~q\,
	datad => \inst14|sub|87~q\,
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y4_N24
\inst11|D_sig[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D_sig[0]~feeder_combout\ = \inst11|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Mux2~0_combout\,
	combout => \inst11|D_sig[0]~feeder_combout\);

-- Location: FF_X17_Y4_N25
\inst11|D_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst11|D_sig[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|D_sig\(0));

-- Location: FF_X15_Y4_N17
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	asdata => \inst11|D_sig\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|MSA0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X16_Y4_N12
\inst334|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|D1~1_combout\ = (\inst5~q\ & (!\inst4~q\ & (!\inst17~q\ & \inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst4~q\,
	datac => \inst17~q\,
	datad => \inst21~q\,
	combout => \inst334|D1~1_combout\);

-- Location: FF_X16_Y4_N13
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst334|D1~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X15_Y4_N16
\inst334|MSA0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSA0~0_combout\ = (!\inst17~q\ & !\inst21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datad => \inst21~q\,
	combout => \inst334|MSA0~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\inst334|PCINC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|PCINC~0_combout\ = \inst17~q\ $ (\inst21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datad => \inst21~q\,
	combout => \inst334|PCINC~0_combout\);

-- Location: LCCOMB_X15_Y4_N26
\inst10|inst900|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst900|9~3_combout\ = (\inst3~q\ & (!\inst4~q\ & !\inst5~q\)) # (!\inst3~q\ & (\inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~q\,
	datac => \inst4~q\,
	datad => \inst5~q\,
	combout => \inst10|inst900|9~3_combout\);

-- Location: LCCOMB_X11_Y4_N10
\inst10|inst900|9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst900|9~7_combout\ = (!\inst17~q\ & (\inst10|inst900|9~3_combout\ & \inst21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datac => \inst10|inst900|9~3_combout\,
	datad => \inst21~q\,
	combout => \inst10|inst900|9~7_combout\);

-- Location: LCCOMB_X15_Y4_N22
\inst334|MSB0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSB0~0_combout\ = (!\inst4~q\ & (\inst21~q\ & (!\inst3~q\ & !\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst21~q\,
	datac => \inst3~q\,
	datad => \inst17~q\,
	combout => \inst334|MSB0~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst334|MSA0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSA0~combout\ = (\inst21~q\ & (((!\inst334|MSB0~0_combout\) # (!\inst5~q\)))) # (!\inst21~q\ & (!\inst17~q\ & ((!\inst334|MSB0~0_combout\) # (!\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~q\,
	datab => \inst17~q\,
	datac => \inst5~q\,
	datad => \inst334|MSB0~0_combout\,
	combout => \inst334|MSA0~combout\);

-- Location: LCCOMB_X15_Y4_N12
\inst334|MSA1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSA1~0_combout\ = (\inst4~q\ & (!\inst3~q\ & (!\inst17~q\ & \inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst3~q\,
	datac => \inst17~q\,
	datad => \inst21~q\,
	combout => \inst334|MSA1~0_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst334|MSA1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSA1~combout\ = (\inst334|MSA1~0_combout\) # ((!\inst5~q\ & (\inst3~q\ & \inst334|D1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst3~q\,
	datac => \inst334|D1~0_combout\,
	datad => \inst334|MSA1~0_combout\,
	combout => \inst334|MSA1~combout\);

-- Location: LCCOMB_X14_Y4_N2
\inst10|inst5|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst5|10~0_combout\ = (\inst10|inst12~q\ & (\inst334|MSB0~0_combout\ & !\inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst12~q\,
	datac => \inst334|MSB0~0_combout\,
	datad => \inst5~q\,
	combout => \inst10|inst5|10~0_combout\);

-- Location: LCCOMB_X15_Y4_N14
\inst334|MSB0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSB0~1_combout\ = (\inst334|MSB0~0_combout\ & !\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSB0~0_combout\,
	datab => \inst5~q\,
	combout => \inst334|MSB0~1_combout\);

-- Location: LCCOMB_X15_Y4_N24
\inst334|MSC0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSC0~0_combout\ = (\inst21~q\ & (!\inst17~q\ & (\inst4~q\ $ (\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst3~q\,
	datac => \inst21~q\,
	datad => \inst17~q\,
	combout => \inst334|MSC0~0_combout\);

-- Location: LCCOMB_X15_Y4_N18
\inst334|MSC0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSC0~1_combout\ = (!\inst5~q\ & \inst334|MSC0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~q\,
	datad => \inst334|MSC0~0_combout\,
	combout => \inst334|MSC0~1_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst10|inst47|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~0_combout\ = (!\inst334|MSA1~combout\ & ((\inst334|MSC0~1_combout\ & ((\inst10|inst30~q\))) # (!\inst334|MSC0~1_combout\ & (\inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst10|inst30~q\,
	datac => \inst334|MSC0~1_combout\,
	datad => \inst334|MSA1~combout\,
	combout => \inst10|inst47|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y4_N22
\inst334|MSA1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst334|MSA1~1_combout\ = (!\inst5~q\ & (\inst334|D1~0_combout\ & \inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datac => \inst334|D1~0_combout\,
	datad => \inst3~q\,
	combout => \inst334|MSA1~1_combout\);

-- Location: LCCOMB_X16_Y4_N20
\inst10|inst50|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst50|sub|81~4_combout\ = (!\inst5~q\ & (\inst334|MSC0~0_combout\ & ((\inst334|MSA1~1_combout\) # (!\inst334|MSA1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst334|MSC0~0_combout\,
	datac => \inst334|MSA1~1_combout\,
	datad => \inst334|MSA1~combout\,
	combout => \inst10|inst50|sub|81~4_combout\);

-- Location: LCCOMB_X16_Y4_N30
\inst10|inst44|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst44|sub|81~6_combout\ = (\inst334|MSA1~1_combout\ & (!\inst5~q\ & (\inst334|MSC0~0_combout\))) # (!\inst334|MSA1~1_combout\ & (((\inst334|MSA1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst334|MSC0~0_combout\,
	datac => \inst334|MSA1~1_combout\,
	datad => \inst334|MSA1~combout\,
	combout => \inst10|inst44|sub|81~6_combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst10|inst6|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst6|10~0_combout\ = (\inst10|inst16~q\ & (!\inst5~q\ & \inst334|MSB0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datac => \inst5~q\,
	datad => \inst334|MSB0~0_combout\,
	combout => \inst10|inst6|10~0_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst10|inst6|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst6|10~1_combout\ = (\inst10|inst6|10~0_combout\ & ((\inst334|MSB0~1_combout\) # ((\inst10|inst50|sub|81~3_combout\)))) # (!\inst10|inst6|10~0_combout\ & (!\inst334|MSB0~1_combout\ & (\inst10|inst36~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|10~0_combout\,
	datab => \inst334|MSB0~1_combout\,
	datac => \inst10|inst36~q\,
	datad => \inst10|inst50|sub|81~3_combout\,
	combout => \inst10|inst6|10~1_combout\);

-- Location: FF_X16_Y4_N7
\inst10|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst6|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst36~q\);

-- Location: LCCOMB_X16_Y4_N28
\inst10|inst50|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst50|sub|81~2_combout\ = (\inst10|inst50|sub|81~4_combout\ & (((\inst10|inst36~q\)))) # (!\inst10|inst50|sub|81~4_combout\ & (\inst10|inst18~q\ & (\inst334|MSC0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst18~q\,
	datab => \inst334|MSC0~1_combout\,
	datac => \inst10|inst36~q\,
	datad => \inst10|inst50|sub|81~4_combout\,
	combout => \inst10|inst50|sub|81~2_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst10|inst50|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst50|sub|81~3_combout\ = (\inst10|inst50|sub|81~4_combout\ & (\inst10|inst50|sub|81~2_combout\ $ (((\inst10|inst16~q\ & \inst10|inst44|sub|81~6_combout\))))) # (!\inst10|inst50|sub|81~4_combout\ & ((\inst10|inst44|sub|81~6_combout\ & 
-- ((\inst10|inst50|sub|81~2_combout\))) # (!\inst10|inst44|sub|81~6_combout\ & (\inst10|inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst50|sub|81~4_combout\,
	datac => \inst10|inst44|sub|81~6_combout\,
	datad => \inst10|inst50|sub|81~2_combout\,
	combout => \inst10|inst50|sub|81~3_combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst10|inst100|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst100|10~0_combout\ = (\inst334|MSA1~combout\ & ((\inst10|inst36~q\) # ((\inst334|MSA0~combout\)))) # (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~combout\ & \inst11|D_sig\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA1~combout\,
	datab => \inst10|inst36~q\,
	datac => \inst334|MSA0~combout\,
	datad => \inst11|D_sig\(0),
	combout => \inst10|inst100|10~0_combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst10|inst100|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst100|10~1_combout\ = (\inst334|MSA0~combout\ & ((\inst10|inst100|10~0_combout\ & (\inst10|inst50|sub|81~3_combout\)) # (!\inst10|inst100|10~0_combout\ & ((\inst10|inst16~q\))))) # (!\inst334|MSA0~combout\ & (((\inst10|inst100|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst50|sub|81~3_combout\,
	datab => \inst334|MSA0~combout\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst100|10~0_combout\,
	combout => \inst10|inst100|10~1_combout\);

-- Location: FF_X17_Y4_N17
\inst10|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst100|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst16~q\);

-- Location: LCCOMB_X16_Y4_N0
\inst10|inst6|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst6|9~0_combout\ = (\inst10|inst33~q\ & ((\inst5~q\) # (!\inst334|MSB0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33~q\,
	datac => \inst5~q\,
	datad => \inst334|MSB0~0_combout\,
	combout => \inst10|inst6|9~0_combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst10|inst48|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48|sub|81~1_combout\ = (\inst5~q\ & (\inst10|inst18~q\)) # (!\inst5~q\ & ((\inst334|MSC0~0_combout\ & ((\inst10|inst33~q\))) # (!\inst334|MSC0~0_combout\ & (\inst10|inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst18~q\,
	datab => \inst5~q\,
	datac => \inst10|inst33~q\,
	datad => \inst334|MSC0~0_combout\,
	combout => \inst10|inst48|sub|81~1_combout\);

-- Location: LCCOMB_X15_Y4_N6
\inst10|inst48|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48|sub|81~2_combout\ = (\inst334|MSA1~combout\ & ((\inst10|inst48|sub|81~0_combout\))) # (!\inst334|MSA1~combout\ & (\inst10|inst48|sub|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst334|MSA1~combout\,
	datac => \inst10|inst48|sub|81~1_combout\,
	datad => \inst10|inst48|sub|81~0_combout\,
	combout => \inst10|inst48|sub|81~2_combout\);

-- Location: LCCOMB_X15_Y4_N30
\inst10|inst6|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst6|9~1_combout\ = (\inst334|MSB0~1_combout\ & ((\inst10|inst6|9~0_combout\ & ((\inst10|inst48|sub|81~2_combout\))) # (!\inst10|inst6|9~0_combout\ & (\inst10|inst18~q\)))) # (!\inst334|MSB0~1_combout\ & (((\inst10|inst6|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSB0~1_combout\,
	datab => \inst10|inst18~q\,
	datac => \inst10|inst6|9~0_combout\,
	datad => \inst10|inst48|sub|81~2_combout\,
	combout => \inst10|inst6|9~1_combout\);

-- Location: FF_X15_Y4_N31
\inst10|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst6|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33~q\);

-- Location: LCCOMB_X15_Y4_N28
\inst10|inst48|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48|sub|81~3_combout\ = \inst10|inst33~q\ $ (((\inst10|inst36~q\ & (\inst10|inst16~q\ & \inst334|MSC0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst36~q\,
	datab => \inst10|inst33~q\,
	datac => \inst10|inst16~q\,
	datad => \inst334|MSC0~1_combout\,
	combout => \inst10|inst48|sub|81~3_combout\);

-- Location: LCCOMB_X15_Y4_N10
\inst10|inst48|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48|sub|81~4_combout\ = (\inst334|MSA1~0_combout\ & (((\inst334|MSC0~1_combout\)))) # (!\inst334|MSA1~0_combout\ & ((\inst10|inst18~q\ & ((!\inst10|inst48|sub|81~3_combout\) # (!\inst334|MSC0~1_combout\))) # (!\inst10|inst18~q\ & 
-- ((\inst10|inst48|sub|81~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA1~0_combout\,
	datab => \inst10|inst18~q\,
	datac => \inst334|MSC0~1_combout\,
	datad => \inst10|inst48|sub|81~3_combout\,
	combout => \inst10|inst48|sub|81~4_combout\);

-- Location: LCCOMB_X15_Y4_N2
\inst10|inst48|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48|sub|81~0_combout\ = (\inst334|MSA1~0_combout\ & ((\inst10|inst48|sub|81~4_combout\ & ((\inst10|inst12~q\))) # (!\inst10|inst48|sub|81~4_combout\ & (\inst10|inst16~q\)))) # (!\inst334|MSA1~0_combout\ & (((\inst10|inst48|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA1~0_combout\,
	datab => \inst10|inst16~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst48|sub|81~4_combout\,
	combout => \inst10|inst48|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst10|inst100|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst100|9~0_combout\ = (\inst334|MSA1~combout\ & (\inst334|MSA0~combout\)) # (!\inst334|MSA1~combout\ & ((\inst334|MSA0~combout\ & (\inst10|inst18~q\)) # (!\inst334|MSA0~combout\ & ((\inst11|D_sig\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA1~combout\,
	datab => \inst334|MSA0~combout\,
	datac => \inst10|inst18~q\,
	datad => \inst11|D_sig\(1),
	combout => \inst10|inst100|9~0_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst10|inst100|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst100|9~1_combout\ = (\inst334|MSA1~combout\ & ((\inst10|inst100|9~0_combout\ & (\inst10|inst48|sub|81~0_combout\)) # (!\inst10|inst100|9~0_combout\ & ((\inst10|inst33~q\))))) # (!\inst334|MSA1~combout\ & (((\inst10|inst100|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst48|sub|81~0_combout\,
	datab => \inst10|inst33~q\,
	datac => \inst334|MSA1~combout\,
	datad => \inst10|inst100|9~0_combout\,
	combout => \inst10|inst100|9~1_combout\);

-- Location: FF_X16_Y4_N17
\inst10|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst100|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst18~q\);

-- Location: LCCOMB_X17_Y4_N22
\inst10|inst42|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst42|sub|105~0_combout\ = (\inst10|inst18~q\ & ((\inst10|inst33~q\) # ((\inst10|inst16~q\ & \inst10|inst36~q\)))) # (!\inst10|inst18~q\ & (\inst10|inst16~q\ & (\inst10|inst36~q\ & \inst10|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst36~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst33~q\,
	combout => \inst10|inst42|sub|105~0_combout\);

-- Location: LCCOMB_X15_Y4_N0
\inst10|inst47|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~2_combout\ = (\inst5~q\) # (!\inst334|MSC0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~q\,
	datad => \inst334|MSC0~0_combout\,
	combout => \inst10|inst47|sub|81~2_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst10|inst47|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~1_combout\ = (\inst10|inst12~q\ & ((\inst5~q\) # ((\inst10|inst30~q\) # (!\inst334|MSC0~0_combout\)))) # (!\inst10|inst12~q\ & (\inst10|inst30~q\ $ (((!\inst5~q\ & \inst334|MSC0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst30~q\,
	datad => \inst334|MSC0~0_combout\,
	combout => \inst10|inst47|sub|81~1_combout\);

-- Location: LCCOMB_X14_Y4_N10
\inst10|inst47|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~3_combout\ = (\inst334|MSA1~0_combout\ & (((!\inst10|inst47|sub|81~2_combout\)))) # (!\inst334|MSA1~0_combout\ & (\inst10|inst47|sub|81~1_combout\ $ (((!\inst10|inst42|sub|105~0_combout\ & !\inst10|inst47|sub|81~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst42|sub|105~0_combout\,
	datab => \inst334|MSA1~0_combout\,
	datac => \inst10|inst47|sub|81~2_combout\,
	datad => \inst10|inst47|sub|81~1_combout\,
	combout => \inst10|inst47|sub|81~3_combout\);

-- Location: LCCOMB_X14_Y4_N16
\inst10|inst47|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~4_combout\ = (\inst334|MSA1~0_combout\ & ((\inst10|inst47|sub|81~3_combout\ & (\inst10|inst~q\)) # (!\inst10|inst47|sub|81~3_combout\ & ((\inst10|inst18~q\))))) # (!\inst334|MSA1~0_combout\ & (((\inst10|inst47|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst10|inst18~q\,
	datac => \inst334|MSA1~0_combout\,
	datad => \inst10|inst47|sub|81~3_combout\,
	combout => \inst10|inst47|sub|81~4_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst10|inst47|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst47|sub|81~5_combout\ = (\inst10|inst47|sub|81~0_combout\) # ((\inst334|MSA1~combout\ & \inst10|inst47|sub|81~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst334|MSA1~combout\,
	datac => \inst10|inst47|sub|81~0_combout\,
	datad => \inst10|inst47|sub|81~4_combout\,
	combout => \inst10|inst47|sub|81~5_combout\);

-- Location: LCCOMB_X14_Y4_N14
\inst10|inst5|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst5|10~1_combout\ = (\inst10|inst5|10~0_combout\ & ((\inst334|MSB0~1_combout\) # ((\inst10|inst47|sub|81~5_combout\)))) # (!\inst10|inst5|10~0_combout\ & (!\inst334|MSB0~1_combout\ & (\inst10|inst30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|10~0_combout\,
	datab => \inst334|MSB0~1_combout\,
	datac => \inst10|inst30~q\,
	datad => \inst10|inst47|sub|81~5_combout\,
	combout => \inst10|inst5|10~1_combout\);

-- Location: FF_X14_Y4_N15
\inst10|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst5|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst30~q\);

-- Location: LCCOMB_X14_Y4_N20
\inst10|inst900|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst900|10~0_combout\ = (\inst334|MSA1~combout\ & ((\inst10|inst30~q\) # ((\inst334|MSA0~combout\)))) # (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~combout\ & \inst11|D_sig\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA1~combout\,
	datab => \inst10|inst30~q\,
	datac => \inst334|MSA0~combout\,
	datad => \inst11|D_sig\(2),
	combout => \inst10|inst900|10~0_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst10|inst900|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst900|10~1_combout\ = (\inst334|MSA0~combout\ & ((\inst10|inst900|10~0_combout\ & ((\inst10|inst47|sub|81~5_combout\))) # (!\inst10|inst900|10~0_combout\ & (\inst10|inst12~q\)))) # (!\inst334|MSA0~combout\ & (\inst10|inst900|10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|MSA0~combout\,
	datab => \inst10|inst900|10~0_combout\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst47|sub|81~5_combout\,
	combout => \inst10|inst900|10~1_combout\);

-- Location: FF_X14_Y4_N5
\inst10|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst900|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst12~q\);

-- Location: LCCOMB_X14_Y4_N22
\inst10|inst44|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst44|sub|81~2_combout\ = (\inst10|inst12~q\ & (!\inst334|MSC0~1_combout\ & (!\inst334|MSA1~1_combout\ & \inst334|MSA1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst334|MSC0~1_combout\,
	datac => \inst334|MSA1~1_combout\,
	datad => \inst334|MSA1~combout\,
	combout => \inst10|inst44|sub|81~2_combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst10|inst5|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst5|9~0_combout\ = (\inst10|inst27~q\ & ((\inst3~q\) # ((\inst5~q\) # (!\inst334|D1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst5~q\,
	datac => \inst334|D1~0_combout\,
	datad => \inst10|inst27~q\,
	combout => \inst10|inst5|9~0_combout\);

-- Location: LCCOMB_X14_Y4_N28
\inst10|inst5|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst5|9~1_combout\ = (\inst334|MSB0~1_combout\ & ((\inst10|inst5|9~0_combout\ & ((\inst10|inst44|sub|81~5_combout\))) # (!\inst10|inst5|9~0_combout\ & (\inst10|inst~q\)))) # (!\inst334|MSB0~1_combout\ & (((\inst10|inst5|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst334|MSB0~1_combout\,
	datac => \inst10|inst5|9~0_combout\,
	datad => \inst10|inst44|sub|81~5_combout\,
	combout => \inst10|inst5|9~1_combout\);

-- Location: FF_X14_Y4_N29
\inst10|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst5|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst27~q\);

-- Location: LCCOMB_X14_Y4_N6
\inst10|inst44|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst44|sub|81~4_combout\ = (\inst334|MSC0~0_combout\ & ((\inst5~q\ & (\inst10|inst~q\)) # (!\inst5~q\ & ((\inst10|inst27~q\))))) # (!\inst334|MSC0~0_combout\ & (\inst10|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst10|inst27~q\,
	datac => \inst334|MSC0~0_combout\,
	datad => \inst5~q\,
	combout => \inst10|inst44|sub|81~4_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst10|inst42|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst42|sub|106~0_combout\ = (\inst10|inst30~q\ & ((\inst10|inst12~q\) # (\inst10|inst42|sub|105~0_combout\))) # (!\inst10|inst30~q\ & (\inst10|inst12~q\ & \inst10|inst42|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst30~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst42|sub|105~0_combout\,
	combout => \inst10|inst42|sub|106~0_combout\);

-- Location: LCCOMB_X14_Y4_N8
\inst10|inst44|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst44|sub|81~3_combout\ = (\inst334|MSA1~1_combout\ & (\inst10|inst~q\ $ (\inst10|inst27~q\ $ (\inst10|inst42|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst10|inst27~q\,
	datac => \inst334|MSA1~1_combout\,
	datad => \inst10|inst42|sub|106~0_combout\,
	combout => \inst10|inst44|sub|81~3_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst10|inst44|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst44|sub|81~5_combout\ = (\inst10|inst44|sub|81~2_combout\) # ((\inst10|inst44|sub|81~6_combout\ & ((\inst10|inst44|sub|81~3_combout\))) # (!\inst10|inst44|sub|81~6_combout\ & (\inst10|inst44|sub|81~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst44|sub|81~2_combout\,
	datab => \inst10|inst44|sub|81~4_combout\,
	datac => \inst10|inst44|sub|81~3_combout\,
	datad => \inst10|inst44|sub|81~6_combout\,
	combout => \inst10|inst44|sub|81~5_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst10|inst900|9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst900|9~6_combout\ = (\inst10|inst900|9~7_combout\ & (((\inst10|inst44|sub|81~5_combout\)) # (!\inst334|MSA0~combout\))) # (!\inst10|inst900|9~7_combout\ & (\inst334|MSA0~combout\ & (\inst10|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst900|9~7_combout\,
	datab => \inst334|MSA0~combout\,
	datac => \inst10|inst~q\,
	datad => \inst10|inst44|sub|81~5_combout\,
	combout => \inst10|inst900|9~6_combout\);

-- Location: FF_X14_Y4_N27
\inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~clkctrl_outclk\,
	d => \inst10|inst900|9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst~q\);

-- Location: LCCOMB_X15_Y4_N4
\inst10|inst42|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst42|sub|107~0_combout\ = (\inst10|inst~q\ & ((\inst10|inst42|sub|106~0_combout\) # (\inst10|inst27~q\))) # (!\inst10|inst~q\ & (\inst10|inst42|sub|106~0_combout\ & \inst10|inst27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst10|inst42|sub|106~0_combout\,
	datad => \inst10|inst27~q\,
	combout => \inst10|inst42|sub|107~0_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_IRLD <= \IRLD~output_o\;

ww_IR2 <= \IR2~output_o\;

ww_CLK <= \CLK~output_o\;

ww_Data(3) <= \Data[3]~output_o\;

ww_Data(2) <= \Data[2]~output_o\;

ww_Data(1) <= \Data[1]~output_o\;

ww_Data(0) <= \Data[0]~output_o\;

ww_A(14) <= \A[14]~output_o\;

ww_A(13) <= \A[13]~output_o\;

ww_A(12) <= \A[12]~output_o\;

ww_A(11) <= \A[11]~output_o\;

ww_A(10) <= \A[10]~output_o\;

ww_A(9) <= \A[9]~output_o\;

ww_A(8) <= \A[8]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_PCINC <= \PCINC~output_o\;

ww_PCLD <= \PCLD~output_o\;

ww_IR1 <= \IR1~output_o\;

ww_IR0 <= \IR0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_COUT <= \COUT~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;
END structure;


