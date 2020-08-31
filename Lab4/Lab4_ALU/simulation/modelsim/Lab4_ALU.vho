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

-- DATE "10/21/2019 16:20:34"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4_ALU IS
    PORT (
	COUT : OUT std_logic;
	CIN : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab4_ALU;

-- Design Ports Information
-- COUT	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_ALU IS
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
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst4|sub|104~0_combout\ : std_logic;
SIGNAL \inst4|sub|105~0_combout\ : std_logic;
SIGNAL \inst4|sub|106~0_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \inst5|4~0_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst4|sub|82~0_combout\ : std_logic;
SIGNAL \inst5|9~0_combout\ : std_logic;
SIGNAL \inst5|9~1_combout\ : std_logic;
SIGNAL \inst5|10~0_combout\ : std_logic;
SIGNAL \inst4|sub|80~0_combout\ : std_logic;
SIGNAL \inst5|10~1_combout\ : std_logic;
SIGNAL \inst6|9~0_combout\ : std_logic;
SIGNAL \inst4|sub|78~0_combout\ : std_logic;
SIGNAL \inst6|9~1_combout\ : std_logic;
SIGNAL \inst6|10~2_combout\ : std_logic;
SIGNAL \inst6|10~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

COUT <= ww_COUT;
ww_CIN <= CIN;
ww_A <= A;
ww_B <= B;
ww_S <= S;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X10_Y6_N24
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

-- Location: IOOBUF_X1_Y0_N9
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|9~1_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|10~1_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X3_Y7_N30
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|9~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|10~3_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOIBUF_X0_Y5_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X3_Y7_N1
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X1_Y7_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
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

-- Location: LCCOMB_X2_Y4_N10
\inst4|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|104~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\CIN~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \CIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \CIN~input_o\,
	combout => \inst4|sub|104~0_combout\);

-- Location: LCCOMB_X2_Y4_N28
\inst4|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|105~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\inst4|sub|104~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \inst4|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst4|sub|104~0_combout\,
	combout => \inst4|sub|105~0_combout\);

-- Location: LCCOMB_X2_Y4_N22
\inst4|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|106~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\inst4|sub|105~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \inst4|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst4|sub|105~0_combout\,
	combout => \inst4|sub|106~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
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

-- Location: IOIBUF_X0_Y4_N8
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

-- Location: LCCOMB_X2_Y4_N0
\inst5|4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|4~0_combout\ = (\S[0]~input_o\ & \S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	combout => \inst5|4~0_combout\);

-- Location: LCCOMB_X2_Y4_N8
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\inst5|4~0_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\inst4|sub|106~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \inst4|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst4|sub|106~0_combout\,
	datad => \inst5|4~0_combout\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X2_Y4_N20
\inst4|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|82~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst4|sub|82~0_combout\);

-- Location: LCCOMB_X2_Y4_N2
\inst5|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|9~0_combout\ = (\B[3]~input_o\ & (\S[0]~input_o\ $ (((\S[1]~input_o\) # (!\A[3]~input_o\))))) # (!\B[3]~input_o\ & (!\S[0]~input_o\ & (\A[3]~input_o\ $ (!\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst5|9~0_combout\);

-- Location: LCCOMB_X2_Y4_N30
\inst5|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|9~1_combout\ = (\inst5|9~0_combout\) # ((\inst5|4~0_combout\ & (\inst4|sub|82~0_combout\ $ (\inst4|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|4~0_combout\,
	datab => \inst4|sub|82~0_combout\,
	datac => \inst4|sub|106~0_combout\,
	datad => \inst5|9~0_combout\,
	combout => \inst5|9~1_combout\);

-- Location: LCCOMB_X2_Y4_N24
\inst5|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|10~0_combout\ = (\B[2]~input_o\ & (\S[0]~input_o\ $ (((\S[1]~input_o\) # (!\A[2]~input_o\))))) # (!\B[2]~input_o\ & (!\S[0]~input_o\ & (\A[2]~input_o\ $ (!\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst5|10~0_combout\);

-- Location: LCCOMB_X2_Y4_N26
\inst4|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|80~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst4|sub|80~0_combout\);

-- Location: LCCOMB_X2_Y4_N4
\inst5|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|10~1_combout\ = (\inst5|10~0_combout\) # ((\inst5|4~0_combout\ & (\inst4|sub|80~0_combout\ $ (\inst4|sub|105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|4~0_combout\,
	datab => \inst5|10~0_combout\,
	datac => \inst4|sub|80~0_combout\,
	datad => \inst4|sub|105~0_combout\,
	combout => \inst5|10~1_combout\);

-- Location: LCCOMB_X2_Y4_N6
\inst6|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~0_combout\ = (\B[1]~input_o\ & (\S[0]~input_o\ $ (((\S[1]~input_o\) # (!\A[1]~input_o\))))) # (!\B[1]~input_o\ & (!\S[0]~input_o\ & (\S[1]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst6|9~0_combout\);

-- Location: LCCOMB_X2_Y4_N16
\inst4|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|78~0_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\CIN~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \CIN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \CIN~input_o\,
	combout => \inst4|sub|78~0_combout\);

-- Location: LCCOMB_X2_Y4_N18
\inst6|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~1_combout\ = (\inst6|9~0_combout\) # ((\inst5|4~0_combout\ & (\inst4|sub|78~0_combout\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|9~0_combout\,
	datab => \inst4|sub|78~0_combout\,
	datac => \B[1]~input_o\,
	datad => \inst5|4~0_combout\,
	combout => \inst6|9~1_combout\);

-- Location: LCCOMB_X2_Y4_N12
\inst6|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~2_combout\ = (\A[0]~input_o\ & (\S[1]~input_o\ $ (((\B[0]~input_o\ & \S[0]~input_o\))))) # (!\A[0]~input_o\ & ((\S[1]~input_o\ & (\B[0]~input_o\)) # (!\S[1]~input_o\ & ((!\S[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst6|10~2_combout\);

-- Location: LCCOMB_X2_Y4_N14
\inst6|10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~3_combout\ = \inst6|10~2_combout\ $ (((\S[1]~input_o\ & (\S[0]~input_o\ & \CIN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|10~2_combout\,
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \CIN~input_o\,
	combout => \inst6|10~3_combout\);

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

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;
END structure;


