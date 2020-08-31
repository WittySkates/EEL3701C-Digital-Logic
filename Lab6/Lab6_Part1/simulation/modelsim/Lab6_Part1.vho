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

-- DATE "11/04/2019 11:18:32"

-- 
-- Device: Altera 10M02DCU324A6G Package UFBGA324
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
-- ~ALTERA_TMS~	=>  Location: PIN_J7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_J8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_H8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	Lab6_Part1 IS
    PORT (
	IRLD : OUT std_logic;
	IR1 : OUT std_logic;
	CLK : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	IR0 : OUT std_logic;
	COUT : OUT std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic
	);
END Lab6_Part1;

-- Design Ports Information
-- IRLD	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_Part1 IS
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
SIGNAL ww_IR1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IR0 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \IRLD~output_o\ : std_logic;
SIGNAL \IR1~output_o\ : std_logic;
SIGNAL \IR0~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst100~0_combout\ : std_logic;
SIGNAL \inst100~q\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst4~feeder_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst5~feeder_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst1|MSB1~combout\ : std_logic;
SIGNAL \inst2|7~0_combout\ : std_logic;
SIGNAL \inst|inst44|sub|81~1_combout\ : std_logic;
SIGNAL \inst1|MSC1~combout\ : std_logic;
SIGNAL \inst|inst6|10~0_combout\ : std_logic;
SIGNAL \inst|inst36~q\ : std_logic;
SIGNAL \inst|inst6|9~0_combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst48|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst48|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst18~0_combout\ : std_logic;
SIGNAL \inst1|MSA0~combout\ : std_logic;
SIGNAL \inst|inst18~q\ : std_logic;
SIGNAL \inst|inst50|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst50|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst16~q\ : std_logic;
SIGNAL \inst|inst42|sub|105~0_combout\ : std_logic;
SIGNAL \inst|inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst12~0_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \inst|inst12~q\ : std_logic;
SIGNAL \inst|inst5|10~0_combout\ : std_logic;
SIGNAL \inst|inst30~q\ : std_logic;
SIGNAL \inst|inst44|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst44|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst5|9~0_combout\ : std_logic;
SIGNAL \inst|inst27~q\ : std_logic;
SIGNAL \inst|inst42|sub|106~0_combout\ : std_logic;
SIGNAL \inst|inst42|sub|107~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_MSB1~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_MSA0~combout\ : std_logic;
SIGNAL \ALT_INV_inst100~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IRLD <= ww_IRLD;
IR1 <= ww_IR1;
ww_CLK <= CLK;
ww_INPUT <= INPUT;
IR0 <= ww_IR0;
COUT <= ww_COUT;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_CIN <= CIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_MSB1~combout\ <= NOT \inst1|MSB1~combout\;
\inst1|ALT_INV_MSA0~combout\ <= NOT \inst1|MSA0~combout\;
\ALT_INV_inst100~q\ <= NOT \inst100~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N16
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

-- Location: IOOBUF_X11_Y0_N9
\IRLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst100~q\,
	devoe => ww_devoe,
	o => \IRLD~output_o\);

-- Location: IOOBUF_X18_Y5_N9
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

-- Location: IOOBUF_X18_Y6_N23
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

-- Location: IOOBUF_X6_Y7_N23
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst42|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X18_Y5_N2
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|7~0_combout\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X18_Y6_N2
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MSA0~combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X18_Y5_N23
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|7~0_combout\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X18_Y6_N9
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MSC1~combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|7~0_combout\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X10_Y10_N2
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst44|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X18_Y5_N16
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst47|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X10_Y10_N16
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst48|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X10_Y10_N23
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst50|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X10_Y11_N23
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X10_Y11_N16
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst12~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X6_Y7_N16
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst18~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X10_Y10_N9
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X6_Y7_N9
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst27~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst30~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X10_Y13_N9
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst33~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X18_Y6_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst36~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y6_N28
\inst100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100~0_combout\ = !\inst100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst100~q\,
	combout => \inst100~0_combout\);

-- Location: FF_X12_Y6_N29
inst100 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst100~q\);

-- Location: IOIBUF_X6_Y7_N29
\INPUT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X12_Y6_N30
\inst4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~feeder_combout\ = \INPUT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[1]~input_o\,
	combout => \inst4~feeder_combout\);

-- Location: FF_X12_Y6_N31
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4~feeder_combout\,
	ena => \ALT_INV_inst100~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: IOIBUF_X11_Y0_N1
\INPUT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X12_Y6_N8
\inst5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5~feeder_combout\ = \INPUT[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[0]~input_o\,
	combout => \inst5~feeder_combout\);

-- Location: FF_X12_Y6_N9
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5~feeder_combout\,
	ena => \ALT_INV_inst100~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X12_Y6_N26
\inst1|MSB1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|MSB1~combout\ = ((\inst4~q\) # (!\inst100~q\)) # (!\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~q\,
	datac => \inst4~q\,
	datad => \inst100~q\,
	combout => \inst1|MSB1~combout\);

-- Location: LCCOMB_X12_Y6_N6
\inst2|7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|7~0_combout\ = (\inst4~q\ & \inst100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst100~q\,
	combout => \inst2|7~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\inst|inst44|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst44|sub|81~1_combout\ = (\inst4~q\ & (\inst5~q\ & \inst100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datac => \inst5~q\,
	datad => \inst100~q\,
	combout => \inst|inst44|sub|81~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\inst1|MSC1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|MSC1~combout\ = (\inst4~q\ & (!\inst5~q\ & \inst100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datac => \inst5~q\,
	datad => \inst100~q\,
	combout => \inst1|MSC1~combout\);

-- Location: LCCOMB_X11_Y6_N26
\inst|inst6|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst6|10~0_combout\ = (\inst1|MSB1~combout\ & ((\inst|inst50|sub|81~1_combout\))) # (!\inst1|MSB1~combout\ & (\inst|inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSB1~combout\,
	datac => \inst|inst16~q\,
	datad => \inst|inst50|sub|81~1_combout\,
	combout => \inst|inst6|10~0_combout\);

-- Location: FF_X11_Y6_N27
\inst|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst6|10~0_combout\,
	ena => \inst1|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst36~q\);

-- Location: LCCOMB_X11_Y6_N24
\inst|inst6|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst6|9~0_combout\ = (\inst1|MSB1~combout\ & ((\inst|inst48|sub|81~1_combout\))) # (!\inst1|MSB1~combout\ & (\inst|inst18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSB1~combout\,
	datac => \inst|inst18~q\,
	datad => \inst|inst48|sub|81~1_combout\,
	combout => \inst|inst6|9~0_combout\);

-- Location: FF_X11_Y6_N25
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst6|9~0_combout\,
	ena => \inst1|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: LCCOMB_X11_Y6_N6
\inst|inst48|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst48|sub|81~0_combout\ = (\inst|inst44|sub|81~1_combout\ & (\inst|inst33~q\ $ (((\inst|inst36~q\ & \inst|inst16~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst36~q\,
	datab => \inst|inst33~q\,
	datac => \inst|inst16~q\,
	datad => \inst|inst44|sub|81~1_combout\,
	combout => \inst|inst48|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y6_N0
\inst|inst48|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst48|sub|81~1_combout\ = (\inst1|MSC1~combout\ & (\inst|inst12~q\)) # (!\inst1|MSC1~combout\ & ((\inst|inst18~q\ $ (\inst|inst48|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst18~q\,
	datac => \inst1|MSC1~combout\,
	datad => \inst|inst48|sub|81~0_combout\,
	combout => \inst|inst48|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y6_N8
\inst|inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst18~0_combout\ = (\inst2|7~0_combout\ & ((\inst|inst48|sub|81~1_combout\))) # (!\inst2|7~0_combout\ & (\inst|inst18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~0_combout\,
	datac => \inst|inst18~q\,
	datad => \inst|inst48|sub|81~1_combout\,
	combout => \inst|inst18~0_combout\);

-- Location: LCCOMB_X12_Y6_N20
\inst1|MSA0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|MSA0~combout\ = (\inst4~q\) # ((\inst5~q\) # (!\inst100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datac => \inst5~q\,
	datad => \inst100~q\,
	combout => \inst1|MSA0~combout\);

-- Location: FF_X11_Y6_N9
\inst|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst18~0_combout\,
	asdata => \INPUT[1]~input_o\,
	sload => \inst1|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst18~q\);

-- Location: LCCOMB_X12_Y6_N4
\inst|inst50|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst50|sub|81~0_combout\ = (\inst5~q\ & (\inst|inst36~q\)) # (!\inst5~q\ & ((\inst|inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datac => \inst|inst36~q\,
	datad => \inst|inst18~q\,
	combout => \inst|inst50|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y6_N2
\inst|inst50|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst50|sub|81~1_combout\ = (\inst2|7~0_combout\ & (\inst|inst50|sub|81~0_combout\ $ (((\inst5~q\ & \inst|inst16~q\))))) # (!\inst2|7~0_combout\ & (((\inst|inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~0_combout\,
	datab => \inst5~q\,
	datac => \inst|inst16~q\,
	datad => \inst|inst50|sub|81~0_combout\,
	combout => \inst|inst50|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y6_N22
\inst|inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (\inst2|7~0_combout\ & ((\inst|inst50|sub|81~1_combout\))) # (!\inst2|7~0_combout\ & (\inst|inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~0_combout\,
	datac => \inst|inst16~q\,
	datad => \inst|inst50|sub|81~1_combout\,
	combout => \inst|inst16~0_combout\);

-- Location: FF_X11_Y6_N23
\inst|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst16~0_combout\,
	asdata => \INPUT[0]~input_o\,
	sload => \inst1|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst16~q\);

-- Location: LCCOMB_X11_Y6_N12
\inst|inst42|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|105~0_combout\ = (\inst|inst18~q\ & ((\inst|inst33~q\) # ((\inst|inst16~q\ & \inst|inst36~q\)))) # (!\inst|inst18~q\ & (\inst|inst16~q\ & (\inst|inst36~q\ & \inst|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~q\,
	datab => \inst|inst18~q\,
	datac => \inst|inst36~q\,
	datad => \inst|inst33~q\,
	combout => \inst|inst42|sub|105~0_combout\);

-- Location: LCCOMB_X11_Y6_N10
\inst|inst47|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst47|sub|81~0_combout\ = (\inst5~q\ & (\inst2|7~0_combout\ & (\inst|inst42|sub|105~0_combout\ $ (\inst|inst30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|sub|105~0_combout\,
	datab => \inst5~q\,
	datac => \inst|inst30~q\,
	datad => \inst2|7~0_combout\,
	combout => \inst|inst47|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y6_N16
\inst|inst47|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst47|sub|81~1_combout\ = (\inst1|MSC1~combout\ & (((\inst|inst~q\)))) # (!\inst1|MSC1~combout\ & (\inst|inst12~q\ $ (((\inst|inst47|sub|81~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst~q\,
	datac => \inst1|MSC1~combout\,
	datad => \inst|inst47|sub|81~0_combout\,
	combout => \inst|inst47|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y6_N14
\inst|inst12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst12~0_combout\ = (\inst2|7~0_combout\ & ((\inst|inst47|sub|81~1_combout\))) # (!\inst2|7~0_combout\ & (\inst|inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~0_combout\,
	datac => \inst|inst12~q\,
	datad => \inst|inst47|sub|81~1_combout\,
	combout => \inst|inst12~0_combout\);

-- Location: IOIBUF_X10_Y11_N1
\INPUT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: FF_X11_Y6_N15
\inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst12~0_combout\,
	asdata => \INPUT[2]~input_o\,
	sload => \inst1|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12~q\);

-- Location: LCCOMB_X11_Y6_N30
\inst|inst5|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|10~0_combout\ = (\inst1|MSB1~combout\ & ((\inst|inst47|sub|81~1_combout\))) # (!\inst1|MSB1~combout\ & (\inst|inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSB1~combout\,
	datac => \inst|inst12~q\,
	datad => \inst|inst47|sub|81~1_combout\,
	combout => \inst|inst5|10~0_combout\);

-- Location: FF_X11_Y6_N31
\inst|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst5|10~0_combout\,
	ena => \inst1|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30~q\);

-- Location: LCCOMB_X11_Y6_N18
\inst|inst44|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst44|sub|81~0_combout\ = \inst|inst27~q\ $ (((\inst|inst30~q\ & ((\inst|inst12~q\) # (\inst|inst42|sub|105~0_combout\))) # (!\inst|inst30~q\ & (\inst|inst12~q\ & \inst|inst42|sub|105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst12~q\,
	datad => \inst|inst42|sub|105~0_combout\,
	combout => \inst|inst44|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y6_N20
\inst|inst44|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst44|sub|81~2_combout\ = (\inst|inst~q\ & (\inst1|MSC1~combout\ $ (((!\inst|inst44|sub|81~0_combout\) # (!\inst|inst44|sub|81~1_combout\))))) # (!\inst|inst~q\ & (\inst|inst44|sub|81~1_combout\ & ((\inst|inst44|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst44|sub|81~1_combout\,
	datac => \inst1|MSC1~combout\,
	datad => \inst|inst44|sub|81~0_combout\,
	combout => \inst|inst44|sub|81~2_combout\);

-- Location: LCCOMB_X11_Y6_N28
\inst|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst2|7~0_combout\ & ((\inst|inst44|sub|81~2_combout\))) # (!\inst2|7~0_combout\ & (\inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|7~0_combout\,
	datac => \inst|inst~q\,
	datad => \inst|inst44|sub|81~2_combout\,
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X10_Y11_N8
\INPUT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: FF_X11_Y6_N29
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst~0_combout\,
	asdata => \INPUT[3]~input_o\,
	sload => \inst1|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X11_Y6_N4
\inst|inst5|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|9~0_combout\ = (\inst1|MSB1~combout\ & ((\inst|inst44|sub|81~2_combout\))) # (!\inst1|MSB1~combout\ & (\inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSB1~combout\,
	datac => \inst|inst~q\,
	datad => \inst|inst44|sub|81~2_combout\,
	combout => \inst|inst5|9~0_combout\);

-- Location: FF_X11_Y6_N5
\inst|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst5|9~0_combout\,
	ena => \inst1|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst27~q\);

-- Location: LCCOMB_X10_Y6_N28
\inst|inst42|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|106~0_combout\ = (\inst|inst30~q\ & ((\inst|inst12~q\) # (\inst|inst42|sub|105~0_combout\))) # (!\inst|inst30~q\ & (\inst|inst12~q\ & \inst|inst42|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30~q\,
	datab => \inst|inst12~q\,
	datac => \inst|inst42|sub|105~0_combout\,
	combout => \inst|inst42|sub|106~0_combout\);

-- Location: LCCOMB_X10_Y6_N6
\inst|inst42|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|107~0_combout\ = (\inst|inst27~q\ & ((\inst|inst42|sub|106~0_combout\) # (\inst|inst~q\))) # (!\inst|inst27~q\ & (\inst|inst42|sub|106~0_combout\ & \inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27~q\,
	datab => \inst|inst42|sub|106~0_combout\,
	datad => \inst|inst~q\,
	combout => \inst|inst42|sub|107~0_combout\);

-- Location: IOIBUF_X10_Y16_N8
\CIN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

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

ww_IR1 <= \IR1~output_o\;

ww_IR0 <= \IR0~output_o\;

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


