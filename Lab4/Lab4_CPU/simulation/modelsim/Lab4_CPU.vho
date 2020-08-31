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

-- DATE "10/22/2019 06:33:34"

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

ENTITY 	Lab4_CPU IS
    PORT (
	COUT : OUT std_logic;
	CIN : IN std_logic;
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	INPUTB : IN std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTB : OUT std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(2 DOWNTO 0);
	MSB : IN std_logic_vector(1 DOWNTO 0);
	MSA : IN std_logic_vector(1 DOWNTO 0)
	);
END Lab4_CPU;

-- Design Ports Information
-- COUT	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTB[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTB[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTB[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTB[0]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUTB[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUTB[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUTB[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUTB[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPUTB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUTB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \OUTPUTB[3]~output_o\ : std_logic;
SIGNAL \OUTPUTB[2]~output_o\ : std_logic;
SIGNAL \OUTPUTB[1]~output_o\ : std_logic;
SIGNAL \OUTPUTB[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MSB[0]~input_o\ : std_logic;
SIGNAL \MSA[1]~input_o\ : std_logic;
SIGNAL \INPUTB[3]~input_o\ : std_logic;
SIGNAL \MSA[0]~input_o\ : std_logic;
SIGNAL \inst900|9~0_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \inst44|sub|81~0_combout\ : std_logic;
SIGNAL \INPUTB[2]~input_o\ : std_logic;
SIGNAL \MSB[1]~input_o\ : std_logic;
SIGNAL \inst5|10~0_combout\ : std_logic;
SIGNAL \inst47|sub|81~2_combout\ : std_logic;
SIGNAL \INPUTB[1]~input_o\ : std_logic;
SIGNAL \inst100|9~0_combout\ : std_logic;
SIGNAL \inst6|9~0_combout\ : std_logic;
SIGNAL \inst48|sub|81~1_combout\ : std_logic;
SIGNAL \INPUTB[0]~input_o\ : std_logic;
SIGNAL \inst6|10~0_combout\ : std_logic;
SIGNAL \inst50|sub|66~combout\ : std_logic;
SIGNAL \inst44|sub|81~2_combout\ : std_logic;
SIGNAL \inst50|sub|81~6_combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst50|sub|81~3_combout\ : std_logic;
SIGNAL \inst50|sub|81~8_combout\ : std_logic;
SIGNAL \inst50|sub|81~7_combout\ : std_logic;
SIGNAL \inst6|10~1_combout\ : std_logic;
SIGNAL \inst36~q\ : std_logic;
SIGNAL \inst100|10~0_combout\ : std_logic;
SIGNAL \inst100|10~1_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst42|sub|104~0_combout\ : std_logic;
SIGNAL \inst48|sub|81~3_combout\ : std_logic;
SIGNAL \inst48|sub|81~4_combout\ : std_logic;
SIGNAL \inst48|sub|81~0_combout\ : std_logic;
SIGNAL \inst48|sub|81~2_combout\ : std_logic;
SIGNAL \inst6|9~1_combout\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst100|9~1_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst42|sub|80~0_combout\ : std_logic;
SIGNAL \inst42|sub|80~combout\ : std_logic;
SIGNAL \inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst47|sub|81~3_combout\ : std_logic;
SIGNAL \inst5|10~1_combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \inst900|10~0_combout\ : std_logic;
SIGNAL \inst900|10~1_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst44|sub|65~combout\ : std_logic;
SIGNAL \inst44|sub|81~1_combout\ : std_logic;
SIGNAL \inst44|sub|81~3_combout\ : std_logic;
SIGNAL \inst42|sub|82~0_combout\ : std_logic;
SIGNAL \inst42|sub|106~0_combout\ : std_logic;
SIGNAL \inst42|sub|82~combout\ : std_logic;
SIGNAL \inst44|sub|81~4_combout\ : std_logic;
SIGNAL \inst900|9~1_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst5|9~0_combout\ : std_logic;
SIGNAL \inst5|9~1_combout\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \inst42|sub|106~1_combout\ : std_logic;
SIGNAL \inst42|sub|107~0_combout\ : std_logic;
SIGNAL inst41 : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

COUT <= ww_COUT;
ww_CIN <= CIN;
REGA <= ww_REGA;
ww_CLK <= CLK;
ww_INPUTB <= INPUTB;
REGB <= ww_REGB;
OUTPUTB <= ww_OUTPUTB;
ww_S <= S;
ww_MSB <= MSB;
ww_MSA <= MSA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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

-- Location: IOOBUF_X18_Y14_N16
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X10_Y10_N16
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X10_Y11_N23
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X10_Y11_N16
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\OUTPUTB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUTB[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\OUTPUTB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUTB[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\OUTPUTB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst48|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUTB[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\OUTPUTB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst50|sub|81~7_combout\,
	devoe => ww_devoe,
	o => \OUTPUTB[0]~output_o\);

-- Location: IOIBUF_X18_Y6_N22
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

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X9_Y0_N1
\MSB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(0),
	o => \MSB[0]~input_o\);

-- Location: IOIBUF_X18_Y4_N15
\MSA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(1),
	o => \MSA[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\INPUTB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUTB(3),
	o => \INPUTB[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\MSA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(0),
	o => \MSA[0]~input_o\);

-- Location: LCCOMB_X16_Y5_N14
\inst900|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst900|9~0_combout\ = (\MSA[0]~input_o\ & (((\inst~q\) # (\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & (\INPUTB[3]~input_o\ & ((!\MSA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTB[3]~input_o\,
	datab => \inst~q\,
	datac => \MSA[0]~input_o\,
	datad => \MSA[1]~input_o\,
	combout => \inst900|9~0_combout\);

-- Location: IOIBUF_X18_Y3_N1
\S[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X18_Y2_N8
\S[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X18_Y3_N8
\S[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LCCOMB_X16_Y5_N6
\inst44|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|81~0_combout\ = (\S[2]~input_o\ & ((\S[0]~input_o\) # (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst44|sub|81~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\INPUTB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUTB(2),
	o => \INPUTB[2]~input_o\);

-- Location: IOIBUF_X18_Y4_N8
\MSB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(1),
	o => \MSB[1]~input_o\);

-- Location: LCCOMB_X14_Y5_N26
\inst5|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|10~0_combout\ = (\MSB[0]~input_o\ & ((\inst12~q\) # ((\MSB[1]~input_o\)))) # (!\MSB[0]~input_o\ & (((\INPUTB[2]~input_o\ & !\MSB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \MSB[0]~input_o\,
	datac => \INPUTB[2]~input_o\,
	datad => \MSB[1]~input_o\,
	combout => \inst5|10~0_combout\);

-- Location: LCCOMB_X14_Y5_N20
\inst47|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~2_combout\ = (\S[0]~input_o\ & (\inst30~q\ & ((\inst12~q\) # (!\S[1]~input_o\)))) # (!\S[0]~input_o\ & (\S[1]~input_o\ $ (((\inst12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst30~q\,
	datad => \inst12~q\,
	combout => \inst47|sub|81~2_combout\);

-- Location: IOIBUF_X3_Y0_N15
\INPUTB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUTB(1),
	o => \INPUTB[1]~input_o\);

-- Location: LCCOMB_X14_Y5_N6
\inst100|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100|9~0_combout\ = (\MSA[1]~input_o\ & (((\MSA[0]~input_o\)))) # (!\MSA[1]~input_o\ & ((\MSA[0]~input_o\ & ((\inst18~q\))) # (!\MSA[0]~input_o\ & (\INPUTB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTB[1]~input_o\,
	datab => \MSA[1]~input_o\,
	datac => \inst18~q\,
	datad => \MSA[0]~input_o\,
	combout => \inst100|9~0_combout\);

-- Location: LCCOMB_X14_Y5_N4
\inst6|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~0_combout\ = (\MSB[0]~input_o\ & (((\MSB[1]~input_o\)))) # (!\MSB[0]~input_o\ & ((\MSB[1]~input_o\ & ((\inst33~q\))) # (!\MSB[1]~input_o\ & (\INPUTB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTB[1]~input_o\,
	datab => \inst33~q\,
	datac => \MSB[0]~input_o\,
	datad => \MSB[1]~input_o\,
	combout => \inst6|9~0_combout\);

-- Location: LCCOMB_X16_Y5_N10
\inst48|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|sub|81~1_combout\ = (\S[0]~input_o\ & (\inst33~q\ & ((\inst18~q\) # (!\S[1]~input_o\)))) # (!\S[0]~input_o\ & (\S[1]~input_o\ $ (((\inst18~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst33~q\,
	datad => \inst18~q\,
	combout => \inst48|sub|81~1_combout\);

-- Location: IOIBUF_X0_Y3_N8
\INPUTB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUTB(0),
	o => \INPUTB[0]~input_o\);

-- Location: LCCOMB_X14_Y5_N28
\inst6|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~0_combout\ = (\MSB[0]~input_o\ & ((\inst16~q\) # ((\MSB[1]~input_o\)))) # (!\MSB[0]~input_o\ & (((\INPUTB[0]~input_o\ & !\MSB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \inst16~q\,
	datac => \INPUTB[0]~input_o\,
	datad => \MSB[1]~input_o\,
	combout => \inst6|10~0_combout\);

-- Location: LCCOMB_X14_Y5_N12
\inst50|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|sub|66~combout\ = (\S[0]~input_o\ & \inst18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datad => \inst18~q\,
	combout => \inst50|sub|66~combout\);

-- Location: LCCOMB_X14_Y5_N10
\inst44|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|81~2_combout\ = (\S[1]~input_o\) # (!\S[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst44|sub|81~2_combout\);

-- Location: LCCOMB_X14_Y5_N30
\inst50|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|sub|81~6_combout\ = (\S[0]~input_o\ & (\inst36~q\ & ((\inst16~q\) # (!\S[1]~input_o\)))) # (!\S[0]~input_o\ & (\S[1]~input_o\ $ ((\inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst16~q\,
	datad => \inst36~q\,
	combout => \inst50|sub|81~6_combout\);

-- Location: IOIBUF_X11_Y0_N8
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

-- Location: LCCOMB_X14_Y5_N0
\inst50|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|sub|81~3_combout\ = (\S[0]~input_o\ & (\CIN~input_o\ $ (\inst16~q\ $ (\inst36~q\)))) # (!\S[0]~input_o\ & (((\inst16~q\) # (\inst36~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst16~q\,
	datad => \inst36~q\,
	combout => \inst50|sub|81~3_combout\);

-- Location: LCCOMB_X14_Y5_N18
\inst50|sub|81~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|sub|81~8_combout\ = (\S[2]~input_o\ & ((\S[1]~input_o\) # (\inst50|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \inst50|sub|81~3_combout\,
	combout => \inst50|sub|81~8_combout\);

-- Location: LCCOMB_X14_Y5_N14
\inst50|sub|81~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|sub|81~7_combout\ = (\inst44|sub|81~2_combout\ & ((\inst50|sub|81~8_combout\ & (\inst50|sub|66~combout\)) # (!\inst50|sub|81~8_combout\ & ((\inst50|sub|81~6_combout\))))) # (!\inst44|sub|81~2_combout\ & (((\inst50|sub|81~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|sub|66~combout\,
	datab => \inst44|sub|81~2_combout\,
	datac => \inst50|sub|81~6_combout\,
	datad => \inst50|sub|81~8_combout\,
	combout => \inst50|sub|81~7_combout\);

-- Location: LCCOMB_X15_Y5_N4
\inst6|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~1_combout\ = (\inst6|10~0_combout\ & (((\inst50|sub|81~7_combout\)) # (!\MSB[1]~input_o\))) # (!\inst6|10~0_combout\ & (\MSB[1]~input_o\ & (\inst36~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|10~0_combout\,
	datab => \MSB[1]~input_o\,
	datac => \inst36~q\,
	datad => \inst50|sub|81~7_combout\,
	combout => \inst6|10~1_combout\);

-- Location: FF_X15_Y5_N5
inst36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36~q\);

-- Location: LCCOMB_X14_Y5_N22
\inst100|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100|10~0_combout\ = (\MSA[1]~input_o\ & ((\inst36~q\) # ((\MSA[0]~input_o\)))) # (!\MSA[1]~input_o\ & (((\INPUTB[0]~input_o\ & !\MSA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36~q\,
	datab => \MSA[1]~input_o\,
	datac => \INPUTB[0]~input_o\,
	datad => \MSA[0]~input_o\,
	combout => \inst100|10~0_combout\);

-- Location: LCCOMB_X15_Y5_N10
\inst100|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100|10~1_combout\ = (\MSA[0]~input_o\ & ((\inst100|10~0_combout\ & ((\inst50|sub|81~7_combout\))) # (!\inst100|10~0_combout\ & (\inst16~q\)))) # (!\MSA[0]~input_o\ & (\inst100|10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst100|10~0_combout\,
	datac => \inst16~q\,
	datad => \inst50|sub|81~7_combout\,
	combout => \inst100|10~1_combout\);

-- Location: FF_X15_Y5_N11
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst100|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X15_Y5_N28
\inst42|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst36~q\) # (\inst16~q\))) # (!\CIN~input_o\ & (\inst36~q\ & \inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CIN~input_o\,
	datac => \inst36~q\,
	datad => \inst16~q\,
	combout => \inst42|sub|104~0_combout\);

-- Location: LCCOMB_X15_Y5_N12
\inst48|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|sub|81~3_combout\ = (\S[0]~input_o\ & (\inst33~q\ $ (\inst18~q\ $ (\inst42|sub|104~0_combout\)))) # (!\S[0]~input_o\ & ((\inst33~q\) # ((\inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \S[0]~input_o\,
	datac => \inst18~q\,
	datad => \inst42|sub|104~0_combout\,
	combout => \inst48|sub|81~3_combout\);

-- Location: LCCOMB_X15_Y5_N2
\inst48|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|sub|81~4_combout\ = (\S[1]~input_o\ & (\S[0]~input_o\)) # (!\S[1]~input_o\ & ((\inst48|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \inst48|sub|81~3_combout\,
	combout => \inst48|sub|81~4_combout\);

-- Location: LCCOMB_X15_Y5_N16
\inst48|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|sub|81~0_combout\ = (\S[1]~input_o\ & ((\inst48|sub|81~4_combout\ & ((\inst12~q\))) # (!\inst48|sub|81~4_combout\ & (\inst16~q\)))) # (!\S[1]~input_o\ & (((\inst48|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst12~q\,
	datac => \S[1]~input_o\,
	datad => \inst48|sub|81~4_combout\,
	combout => \inst48|sub|81~0_combout\);

-- Location: LCCOMB_X15_Y5_N22
\inst48|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|sub|81~2_combout\ = (\S[2]~input_o\ & ((\inst48|sub|81~0_combout\))) # (!\S[2]~input_o\ & (\inst48|sub|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datac => \inst48|sub|81~1_combout\,
	datad => \inst48|sub|81~0_combout\,
	combout => \inst48|sub|81~2_combout\);

-- Location: LCCOMB_X15_Y5_N26
\inst6|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~1_combout\ = (\inst6|9~0_combout\ & (((\inst48|sub|81~2_combout\) # (!\MSB[0]~input_o\)))) # (!\inst6|9~0_combout\ & (\inst18~q\ & ((\MSB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \inst6|9~0_combout\,
	datac => \inst48|sub|81~2_combout\,
	datad => \MSB[0]~input_o\,
	combout => \inst6|9~1_combout\);

-- Location: FF_X15_Y5_N27
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: LCCOMB_X14_Y5_N16
\inst100|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100|9~1_combout\ = (\inst100|9~0_combout\ & (((\inst48|sub|81~2_combout\)) # (!\MSA[1]~input_o\))) # (!\inst100|9~0_combout\ & (\MSA[1]~input_o\ & (\inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|9~0_combout\,
	datab => \MSA[1]~input_o\,
	datac => \inst33~q\,
	datad => \inst48|sub|81~2_combout\,
	combout => \inst100|9~1_combout\);

-- Location: FF_X14_Y5_N17
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst100|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X15_Y5_N8
\inst41[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- inst41(2) = (\inst30~q\) # (\inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30~q\,
	datad => \inst12~q\,
	combout => inst41(2));

-- Location: LCCOMB_X15_Y5_N14
\inst42|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|80~0_combout\ = \inst30~q\ $ (\inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30~q\,
	datad => \inst12~q\,
	combout => \inst42|sub|80~0_combout\);

-- Location: LCCOMB_X15_Y5_N20
\inst42|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|80~combout\ = \inst42|sub|80~0_combout\ $ (((\inst18~q\ & ((\inst33~q\) # (\inst42|sub|104~0_combout\))) # (!\inst18~q\ & (\inst33~q\ & \inst42|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \inst33~q\,
	datac => \inst42|sub|80~0_combout\,
	datad => \inst42|sub|104~0_combout\,
	combout => \inst42|sub|80~combout\);

-- Location: LCCOMB_X15_Y5_N6
\inst47|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~0_combout\ = (\S[0]~input_o\ & ((\S[1]~input_o\) # ((\inst42|sub|80~combout\)))) # (!\S[0]~input_o\ & (!\S[1]~input_o\ & (inst41(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => inst41(2),
	datad => \inst42|sub|80~combout\,
	combout => \inst47|sub|81~0_combout\);

-- Location: LCCOMB_X15_Y5_N24
\inst47|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~1_combout\ = (\S[1]~input_o\ & ((\inst47|sub|81~0_combout\ & ((\inst~q\))) # (!\inst47|sub|81~0_combout\ & (\inst18~q\)))) # (!\S[1]~input_o\ & (((\inst47|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \S[1]~input_o\,
	datac => \inst~q\,
	datad => \inst47|sub|81~0_combout\,
	combout => \inst47|sub|81~1_combout\);

-- Location: LCCOMB_X15_Y5_N18
\inst47|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~3_combout\ = (\S[2]~input_o\ & ((\inst47|sub|81~1_combout\))) # (!\S[2]~input_o\ & (\inst47|sub|81~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datac => \inst47|sub|81~2_combout\,
	datad => \inst47|sub|81~1_combout\,
	combout => \inst47|sub|81~3_combout\);

-- Location: LCCOMB_X15_Y5_N30
\inst5|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|10~1_combout\ = (\inst5|10~0_combout\ & (((\inst47|sub|81~3_combout\)) # (!\MSB[1]~input_o\))) # (!\inst5|10~0_combout\ & (\MSB[1]~input_o\ & (\inst30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|10~0_combout\,
	datab => \MSB[1]~input_o\,
	datac => \inst30~q\,
	datad => \inst47|sub|81~3_combout\,
	combout => \inst5|10~1_combout\);

-- Location: FF_X15_Y5_N31
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: LCCOMB_X14_Y5_N24
\inst900|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst900|10~0_combout\ = (\MSA[1]~input_o\ & ((\inst30~q\) # ((\MSA[0]~input_o\)))) # (!\MSA[1]~input_o\ & (((\INPUTB[2]~input_o\ & !\MSA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \MSA[1]~input_o\,
	datac => \INPUTB[2]~input_o\,
	datad => \MSA[0]~input_o\,
	combout => \inst900|10~0_combout\);

-- Location: LCCOMB_X15_Y5_N0
\inst900|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst900|10~1_combout\ = (\MSA[0]~input_o\ & ((\inst900|10~0_combout\ & ((\inst47|sub|81~3_combout\))) # (!\inst900|10~0_combout\ & (\inst12~q\)))) # (!\MSA[0]~input_o\ & (\inst900|10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst900|10~0_combout\,
	datac => \inst12~q\,
	datad => \inst47|sub|81~3_combout\,
	combout => \inst900|10~1_combout\);

-- Location: FF_X15_Y5_N1
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst900|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X16_Y5_N18
\inst44|sub|65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|65~combout\ = (\inst12~q\ & !\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datac => \S[0]~input_o\,
	combout => \inst44|sub|65~combout\);

-- Location: LCCOMB_X16_Y5_N22
\inst41[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- inst41(3) = (\inst27~q\) # (\inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datad => \inst~q\,
	combout => inst41(3));

-- Location: LCCOMB_X16_Y5_N28
\inst44|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|81~1_combout\ = (\S[0]~input_o\ & (\inst27~q\ & ((\inst~q\) # (!\S[1]~input_o\)))) # (!\S[0]~input_o\ & (\S[1]~input_o\ $ ((\inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst~q\,
	datac => \S[0]~input_o\,
	datad => \inst27~q\,
	combout => \inst44|sub|81~1_combout\);

-- Location: LCCOMB_X16_Y5_N4
\inst44|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|81~3_combout\ = (\inst44|sub|81~0_combout\ & (\inst44|sub|81~2_combout\)) # (!\inst44|sub|81~0_combout\ & ((\inst44|sub|81~2_combout\ & ((\inst44|sub|81~1_combout\))) # (!\inst44|sub|81~2_combout\ & (inst41(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|sub|81~0_combout\,
	datab => \inst44|sub|81~2_combout\,
	datac => inst41(3),
	datad => \inst44|sub|81~1_combout\,
	combout => \inst44|sub|81~3_combout\);

-- Location: LCCOMB_X16_Y5_N30
\inst42|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|82~0_combout\ = (\inst30~q\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30~q\,
	datac => \inst12~q\,
	combout => \inst42|sub|82~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst42|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|106~0_combout\ = (inst41(2) & ((\inst33~q\ & ((\inst42|sub|104~0_combout\) # (\inst18~q\))) # (!\inst33~q\ & (\inst42|sub|104~0_combout\ & \inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \inst42|sub|104~0_combout\,
	datac => \inst18~q\,
	datad => inst41(2),
	combout => \inst42|sub|106~0_combout\);

-- Location: LCCOMB_X16_Y5_N20
\inst42|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|82~combout\ = \inst27~q\ $ (\inst~q\ $ (((\inst42|sub|82~0_combout\) # (\inst42|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst~q\,
	datac => \inst42|sub|82~0_combout\,
	datad => \inst42|sub|106~0_combout\,
	combout => \inst42|sub|82~combout\);

-- Location: LCCOMB_X16_Y5_N24
\inst44|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44|sub|81~4_combout\ = (\inst44|sub|81~0_combout\ & ((\inst44|sub|81~3_combout\ & (\inst44|sub|65~combout\)) # (!\inst44|sub|81~3_combout\ & ((\inst42|sub|82~combout\))))) # (!\inst44|sub|81~0_combout\ & (((\inst44|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|sub|81~0_combout\,
	datab => \inst44|sub|65~combout\,
	datac => \inst44|sub|81~3_combout\,
	datad => \inst42|sub|82~combout\,
	combout => \inst44|sub|81~4_combout\);

-- Location: LCCOMB_X16_Y5_N2
\inst900|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst900|9~1_combout\ = (\MSA[1]~input_o\ & ((\inst900|9~0_combout\ & ((\inst44|sub|81~4_combout\))) # (!\inst900|9~0_combout\ & (\inst27~q\)))) # (!\MSA[1]~input_o\ & (((\inst900|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \MSA[1]~input_o\,
	datac => \inst900|9~0_combout\,
	datad => \inst44|sub|81~4_combout\,
	combout => \inst900|9~1_combout\);

-- Location: FF_X16_Y5_N3
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst900|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X16_Y5_N8
\inst5|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|9~0_combout\ = (\MSB[0]~input_o\ & (((\MSB[1]~input_o\)))) # (!\MSB[0]~input_o\ & ((\MSB[1]~input_o\ & ((\inst27~q\))) # (!\MSB[1]~input_o\ & (\INPUTB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \INPUTB[3]~input_o\,
	datac => \MSB[1]~input_o\,
	datad => \inst27~q\,
	combout => \inst5|9~0_combout\);

-- Location: LCCOMB_X16_Y5_N12
\inst5|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|9~1_combout\ = (\MSB[0]~input_o\ & ((\inst5|9~0_combout\ & ((\inst44|sub|81~4_combout\))) # (!\inst5|9~0_combout\ & (\inst~q\)))) # (!\MSB[0]~input_o\ & (((\inst5|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \inst~q\,
	datac => \inst5|9~0_combout\,
	datad => \inst44|sub|81~4_combout\,
	combout => \inst5|9~1_combout\);

-- Location: FF_X16_Y5_N13
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: LCCOMB_X16_Y5_N26
\inst42|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|106~1_combout\ = (\inst42|sub|106~0_combout\) # ((\inst12~q\ & \inst30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst42|sub|106~0_combout\,
	datac => \inst12~q\,
	datad => \inst30~q\,
	combout => \inst42|sub|106~1_combout\);

-- Location: LCCOMB_X16_Y5_N0
\inst42|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|107~0_combout\ = (\inst27~q\ & ((\inst42|sub|106~1_combout\) # (\inst~q\))) # (!\inst27~q\ & (\inst42|sub|106~1_combout\ & \inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datac => \inst42|sub|106~1_combout\,
	datad => \inst~q\,
	combout => \inst42|sub|107~0_combout\);

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

ww_COUT <= \COUT~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;

ww_OUTPUTB(3) <= \OUTPUTB[3]~output_o\;

ww_OUTPUTB(2) <= \OUTPUTB[2]~output_o\;

ww_OUTPUTB(1) <= \OUTPUTB[1]~output_o\;

ww_OUTPUTB(0) <= \OUTPUTB[0]~output_o\;
END structure;


