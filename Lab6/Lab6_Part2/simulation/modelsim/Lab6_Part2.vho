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

-- DATE "11/04/2019 19:25:13"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6_Part2VHDL IS
    PORT (
	IR2 : IN std_logic;
	IR1 : IN std_logic;
	IR0 : IN std_logic;
	Q1 : IN std_logic;
	Q0 : IN std_logic;
	MSA1 : BUFFER std_logic;
	MSA0 : BUFFER std_logic;
	MSB1 : BUFFER std_logic;
	MSB0 : BUFFER std_logic;
	MSC2 : BUFFER std_logic;
	MSC1 : BUFFER std_logic;
	MSC0 : BUFFER std_logic;
	IRLD : BUFFER std_logic;
	PCINC : BUFFER std_logic;
	PCLD : BUFFER std_logic;
	D1 : BUFFER std_logic;
	D0 : BUFFER std_logic
	);
END Lab6_Part2VHDL;

-- Design Ports Information
-- MSA1	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRLD	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCINC	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLD	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR2	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_Part2VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR2 : std_logic;
SIGNAL ww_IR1 : std_logic;
SIGNAL ww_IR0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_MSA1 : std_logic;
SIGNAL ww_MSA0 : std_logic;
SIGNAL ww_MSB1 : std_logic;
SIGNAL ww_MSB0 : std_logic;
SIGNAL ww_MSC2 : std_logic;
SIGNAL ww_MSC1 : std_logic;
SIGNAL ww_MSC0 : std_logic;
SIGNAL ww_IRLD : std_logic;
SIGNAL ww_PCINC : std_logic;
SIGNAL ww_PCLD : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \MSA1~output_o\ : std_logic;
SIGNAL \MSA0~output_o\ : std_logic;
SIGNAL \MSB1~output_o\ : std_logic;
SIGNAL \MSB0~output_o\ : std_logic;
SIGNAL \MSC2~output_o\ : std_logic;
SIGNAL \MSC1~output_o\ : std_logic;
SIGNAL \MSC0~output_o\ : std_logic;
SIGNAL \IRLD~output_o\ : std_logic;
SIGNAL \PCINC~output_o\ : std_logic;
SIGNAL \PCLD~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \IR1~input_o\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \MSC0~0_combout\ : std_logic;
SIGNAL \IR0~input_o\ : std_logic;
SIGNAL \IR2~input_o\ : std_logic;
SIGNAL \MSA1~0_combout\ : std_logic;
SIGNAL \D1~0_combout\ : std_logic;
SIGNAL \MSA0~0_combout\ : std_logic;
SIGNAL \MSB1~0_combout\ : std_logic;
SIGNAL \MSA1~1_combout\ : std_logic;
SIGNAL \MSC0~1_combout\ : std_logic;
SIGNAL \MSA0~1_combout\ : std_logic;
SIGNAL \PCLD~0_combout\ : std_logic;
SIGNAL \D0~0_combout\ : std_logic;
SIGNAL \ALT_INV_MSA0~1_combout\ : std_logic;
SIGNAL \ALT_INV_MSB1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_IR2 <= IR2;
ww_IR1 <= IR1;
ww_IR0 <= IR0;
ww_Q1 <= Q1;
ww_Q0 <= Q0;
MSA1 <= ww_MSA1;
MSA0 <= ww_MSA0;
MSB1 <= ww_MSB1;
MSB0 <= ww_MSB0;
MSC2 <= ww_MSC2;
MSC1 <= ww_MSC1;
MSC0 <= ww_MSC0;
IRLD <= ww_IRLD;
PCINC <= ww_PCINC;
PCLD <= ww_PCLD;
D1 <= ww_D1;
D0 <= ww_D0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_MSA0~1_combout\ <= NOT \MSA0~1_combout\;
\ALT_INV_MSB1~0_combout\ <= NOT \MSB1~0_combout\;
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

-- Location: IOOBUF_X1_Y7_N9
\MSA1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSA1~output_o\);

-- Location: IOOBUF_X6_Y7_N30
\MSA0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSA0~0_combout\,
	devoe => ww_devoe,
	o => \MSA0~output_o\);

-- Location: IOOBUF_X6_Y7_N16
\MSB1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB1~0_combout\,
	devoe => ww_devoe,
	o => \MSB1~output_o\);

-- Location: IOOBUF_X6_Y7_N23
\MSB0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_MSB1~0_combout\,
	devoe => ww_devoe,
	o => \MSB0~output_o\);

-- Location: IOOBUF_X3_Y7_N30
\MSC2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSC2~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\MSC1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSA1~1_combout\,
	devoe => ww_devoe,
	o => \MSC1~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\MSC0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSC0~1_combout\,
	devoe => ww_devoe,
	o => \MSC0~output_o\);

-- Location: IOOBUF_X6_Y7_N9
\IRLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_MSA0~1_combout\,
	devoe => ww_devoe,
	o => \IRLD~output_o\);

-- Location: IOOBUF_X14_Y17_N16
\PCINC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCINC~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\PCLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCLD~0_combout\,
	devoe => ww_devoe,
	o => \PCLD~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\D1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1~0_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\D0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0~0_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOIBUF_X6_Y0_N15
\IR1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR1,
	o => \IR1~input_o\);

-- Location: IOIBUF_X3_Y7_N1
\Q1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\Q0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\MSC0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSC0~0_combout\ = (!\Q1~input_o\ & \Q0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q1~input_o\,
	datac => \Q0~input_o\,
	combout => \MSC0~0_combout\);

-- Location: IOIBUF_X3_Y7_N8
\IR0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR0,
	o => \IR0~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\IR2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR2,
	o => \IR2~input_o\);

-- Location: LCCOMB_X7_Y4_N18
\MSA1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSA1~0_combout\ = (\MSC0~0_combout\ & ((\IR1~input_o\ & ((!\IR2~input_o\))) # (!\IR1~input_o\ & (!\IR0~input_o\ & \IR2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR1~input_o\,
	datab => \MSC0~0_combout\,
	datac => \IR0~input_o\,
	datad => \IR2~input_o\,
	combout => \MSA1~0_combout\);

-- Location: LCCOMB_X7_Y4_N20
\D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D1~0_combout\ = (!\IR1~input_o\ & (\IR0~input_o\ & (\Q0~input_o\ & !\Q1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR1~input_o\,
	datab => \IR0~input_o\,
	datac => \Q0~input_o\,
	datad => \Q1~input_o\,
	combout => \D1~0_combout\);

-- Location: LCCOMB_X7_Y4_N6
\MSA0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSA0~0_combout\ = (\IR2~input_o\ & (((\Q0~input_o\)) # (!\Q1~input_o\))) # (!\IR2~input_o\ & (!\D1~0_combout\ & ((\Q0~input_o\) # (!\Q1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR2~input_o\,
	datab => \Q1~input_o\,
	datac => \Q0~input_o\,
	datad => \D1~0_combout\,
	combout => \MSA0~0_combout\);

-- Location: LCCOMB_X7_Y4_N0
\MSB1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSB1~0_combout\ = (\IR1~input_o\) # (((\IR0~input_o\) # (\IR2~input_o\)) # (!\MSC0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR1~input_o\,
	datab => \MSC0~0_combout\,
	datac => \IR0~input_o\,
	datad => \IR2~input_o\,
	combout => \MSB1~0_combout\);

-- Location: LCCOMB_X7_Y4_N10
\MSA1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSA1~1_combout\ = (\Q0~input_o\ & (!\Q1~input_o\ & (\IR1~input_o\ & !\IR2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~input_o\,
	datab => \Q1~input_o\,
	datac => \IR1~input_o\,
	datad => \IR2~input_o\,
	combout => \MSA1~1_combout\);

-- Location: LCCOMB_X7_Y4_N28
\MSC0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSC0~1_combout\ = (\MSC0~0_combout\ & (!\IR0~input_o\ & (\IR1~input_o\ $ (\IR2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR1~input_o\,
	datab => \MSC0~0_combout\,
	datac => \IR0~input_o\,
	datad => \IR2~input_o\,
	combout => \MSC0~1_combout\);

-- Location: LCCOMB_X7_Y4_N30
\MSA0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MSA0~1_combout\ = (\Q1~input_o\) # (\Q0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q1~input_o\,
	datac => \Q0~input_o\,
	combout => \MSA0~1_combout\);

-- Location: LCCOMB_X7_Y4_N16
\PCLD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCLD~0_combout\ = (\Q1~input_o\ & \Q0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q1~input_o\,
	datac => \Q0~input_o\,
	combout => \PCLD~0_combout\);

-- Location: LCCOMB_X7_Y4_N2
\D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D0~0_combout\ = (\IR2~input_o\ & ((\D1~0_combout\) # ((!\Q1~input_o\ & !\Q0~input_o\)))) # (!\IR2~input_o\ & (!\Q1~input_o\ & (!\Q0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR2~input_o\,
	datab => \Q1~input_o\,
	datac => \Q0~input_o\,
	datad => \D1~0_combout\,
	combout => \D0~0_combout\);

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

ww_MSA1 <= \MSA1~output_o\;

ww_MSA0 <= \MSA0~output_o\;

ww_MSB1 <= \MSB1~output_o\;

ww_MSB0 <= \MSB0~output_o\;

ww_MSC2 <= \MSC2~output_o\;

ww_MSC1 <= \MSC1~output_o\;

ww_MSC0 <= \MSC0~output_o\;

ww_IRLD <= \IRLD~output_o\;

ww_PCINC <= \PCINC~output_o\;

ww_PCLD <= \PCLD~output_o\;

ww_D1 <= \D1~output_o\;

ww_D0 <= \D0~output_o\;
END structure;


