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

-- DATE "09/16/2019 18:32:52"

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

ENTITY 	Lab2_MUX IS
    PORT (
	Y_L : OUT std_logic;
	D2 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	D3_L : IN std_logic;
	D0 : IN std_logic;
	D1_L : IN std_logic;
	D : OUT std_logic;
	T_L : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	C : OUT std_logic;
	A : OUT std_logic;
	B : OUT std_logic
	);
END Lab2_MUX;

-- Design Ports Information
-- Y_L	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1_L	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3_L	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2_MUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y_L : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_D3_L : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1_L : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Y_L~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \D3_L~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D1_L~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst12~1_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst28~0_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst56~0_combout\ : std_logic;
SIGNAL \inst56~1_combout\ : std_logic;
SIGNAL \inst57~0_combout\ : std_logic;
SIGNAL \inst57~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst12~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y_L <= ww_Y_L;
ww_D2 <= D2;
ww_S0 <= S0;
ww_S1 <= S1;
ww_D3_L <= D3_L;
ww_D0 <= D0;
ww_D1_L <= D1_L;
D <= ww_D;
ww_T_L <= T_L;
ww_X <= X;
E <= ww_E;
F <= ww_F;
G <= ww_G;
C <= ww_C;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst12~1_combout\ <= NOT \inst12~1_combout\;
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

-- Location: IOOBUF_X0_Y2_N9
\Y_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~1_combout\,
	devoe => ww_devoe,
	o => \Y_L~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X18_Y1_N16
\F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56~1_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X18_Y11_N23
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst57~1_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOIBUF_X9_Y0_N29
\S0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\D3_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3_L,
	o => \D3_L~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\D2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\D1_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1_L,
	o => \D1_L~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\D0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: LCCOMB_X4_Y1_N24
\inst12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\S1~input_o\ & (((\S0~input_o\)) # (!\D1_L~input_o\))) # (!\S1~input_o\ & (((\D0~input_o\ & !\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_L~input_o\,
	datab => \S1~input_o\,
	datac => \D0~input_o\,
	datad => \S0~input_o\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X4_Y1_N2
\inst12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~1_combout\ = (\S0~input_o\ & ((\inst12~0_combout\ & (!\D3_L~input_o\)) # (!\inst12~0_combout\ & ((\D2~input_o\))))) # (!\S0~input_o\ & (((\inst12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \D3_L~input_o\,
	datac => \D2~input_o\,
	datad => \inst12~0_combout\,
	combout => \inst12~1_combout\);

-- Location: IOIBUF_X10_Y15_N15
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X10_Y11_N22
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X10_Y11_N15
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X10_Y15_N22
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X17_Y7_N8
\inst28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & ((\X[2]~input_o\))) # (!\X[0]~input_o\ & (\X[3]~input_o\ & !\X[2]~input_o\)))) # (!\X[1]~input_o\ & (!\X[3]~input_o\ & (\X[0]~input_o\ $ (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst28~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\T_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T_L,
	o => \T_L~input_o\);

-- Location: LCCOMB_X17_Y7_N26
inst28 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~combout\ = (!\T_L~input_o\) # (!\inst28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst28~combout\);

-- Location: LCCOMB_X17_Y7_N12
\inst25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (\X[1]~input_o\ & (\X[0]~input_o\ & (!\X[3]~input_o\))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & ((!\X[3]~input_o\))) # (!\X[2]~input_o\ & (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst25~0_combout\);

-- Location: LCCOMB_X17_Y7_N14
inst25 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (!\inst25~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst25~0_combout\,
	combout => \inst25~combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = (\X[0]~input_o\ & (\X[3]~input_o\ $ (((\X[1]~input_o\) # (!\X[2]~input_o\))))) # (!\X[0]~input_o\ & (!\X[3]~input_o\ & (!\X[2]~input_o\ & \X[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst26~0_combout\);

-- Location: LCCOMB_X17_Y7_N10
inst26 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26~combout\ = (!\inst26~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst26~0_combout\,
	combout => \inst26~combout\);

-- Location: LCCOMB_X17_Y7_N20
\inst27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\ $ (\X[1]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[3]~input_o\ $ (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst27~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
inst27 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~combout\ = (\inst27~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst27~0_combout\,
	combout => \inst27~combout\);

-- Location: LCCOMB_X17_Y7_N24
\inst33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = (\X[3]~input_o\ & (\X[2]~input_o\ & ((\X[1]~input_o\) # (!\X[0]~input_o\)))) # (!\X[3]~input_o\ & (!\X[0]~input_o\ & (!\X[2]~input_o\ & \X[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst33~0_combout\);

-- Location: LCCOMB_X17_Y7_N18
inst33 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (!\inst33~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst33~0_combout\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X17_Y7_N28
\inst56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst56~0_combout\ = (\X[3]~input_o\ & ((\X[2]~input_o\ $ (!\X[1]~input_o\)) # (!\X[0]~input_o\))) # (!\X[3]~input_o\ & ((\X[1]~input_o\) # (\X[0]~input_o\ $ (!\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst56~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\inst56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst56~1_combout\ = (\inst56~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst56~0_combout\,
	combout => \inst56~1_combout\);

-- Location: LCCOMB_X17_Y7_N16
\inst57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst57~0_combout\ = (\X[3]~input_o\ & ((\X[0]~input_o\ & ((!\X[1]~input_o\))) # (!\X[0]~input_o\ & (!\X[2]~input_o\)))) # (!\X[3]~input_o\ & ((\X[0]~input_o\ $ (!\X[1]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst57~0_combout\);

-- Location: LCCOMB_X17_Y7_N2
\inst57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst57~1_combout\ = (\inst57~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst57~0_combout\,
	combout => \inst57~1_combout\);

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

ww_Y_L <= \Y_L~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_C <= \C~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;
END structure;


