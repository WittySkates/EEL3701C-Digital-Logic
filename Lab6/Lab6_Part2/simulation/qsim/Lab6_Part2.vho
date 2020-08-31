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

-- DATE "11/05/2019 12:15:13"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6_Part2 IS
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
	CIN : IN std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab6_Part2;

-- Design Ports Information
-- IRLD	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR2	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCINC	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLD	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_Part2 IS
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
SIGNAL ww_CIN : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \MemCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst14|sub|86~combout\ : std_logic;
SIGNAL \inst14|sub|87~q\ : std_logic;
SIGNAL \inst14|sub|99~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|sub|102~combout\ : std_logic;
SIGNAL \inst14|sub|99~q\ : std_logic;
SIGNAL \inst14|sub|110~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|sub|108~combout\ : std_logic;
SIGNAL \inst14|sub|110~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst334|D0~combout\ : std_logic;
SIGNAL \inst21~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|sub|75~combout\ : std_logic;
SIGNAL \inst14|sub|9~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst21~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst334|D1~0_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst334|PCINC~0_combout\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst334|PCINC~1_combout\ : std_logic;
SIGNAL \inst334|PCLD~combout\ : std_logic;
SIGNAL \inst334|MSA1~combout\ : std_logic;
SIGNAL \inst334|MSA0~0_combout\ : std_logic;
SIGNAL \inst334|MSB1~combout\ : std_logic;
SIGNAL \inst13|inst6|9~0_combout\ : std_logic;
SIGNAL \inst13|inst33~q\ : std_logic;
SIGNAL \inst13|inst30~DUPLICATE_q\ : std_logic;
SIGNAL \inst13|inst5|10~0_combout\ : std_logic;
SIGNAL \inst13|inst30~q\ : std_logic;
SIGNAL \inst13|inst5|9~0_combout\ : std_logic;
SIGNAL \inst13|inst27~q\ : std_logic;
SIGNAL \inst334|MSA1~1_combout\ : std_logic;
SIGNAL \inst334|MSC0~0_combout\ : std_logic;
SIGNAL \inst13|inst44|sub|81~2_combout\ : std_logic;
SIGNAL \inst13|inst44|sub|81~1_combout\ : std_logic;
SIGNAL \inst13|inst44|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|inst900|9~0_combout\ : std_logic;
SIGNAL \inst13|inst~q\ : std_logic;
SIGNAL \inst13|inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst334|MSA1~0_combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst13|inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|inst47|sub|81~2_combout\ : std_logic;
SIGNAL \inst13|inst900|10~0_combout\ : std_logic;
SIGNAL \inst13|inst12~q\ : std_logic;
SIGNAL \inst13|inst42|sub|78~combout\ : std_logic;
SIGNAL \inst13|inst48|sub|81~1_combout\ : std_logic;
SIGNAL \inst13|inst48|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|inst100|9~0_combout\ : std_logic;
SIGNAL \inst13|inst18~q\ : std_logic;
SIGNAL \inst13|inst50|sub|66~combout\ : std_logic;
SIGNAL \inst13|inst50|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|inst100|10~0_combout\ : std_logic;
SIGNAL \inst13|inst16~q\ : std_logic;
SIGNAL \inst13|inst36~DUPLICATE_q\ : std_logic;
SIGNAL \inst13|inst6|10~0_combout\ : std_logic;
SIGNAL \inst13|inst36~q\ : std_logic;
SIGNAL \inst13|inst42|sub|105~0_combout\ : std_logic;
SIGNAL \inst13|inst42|sub|107~0_combout\ : std_logic;
SIGNAL \ALT_INV_CIN~input_o\ : std_logic;
SIGNAL \inst13|inst44|sub|ALT_INV_81~2_combout\ : std_logic;
SIGNAL \inst13|inst44|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst13|inst47|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst13|inst47|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst13|inst50|sub|ALT_INV_66~combout\ : std_logic;
SIGNAL \inst13|inst48|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst13|inst42|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst13|inst44|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSA1~1_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSC0~0_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSA1~0_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSB1~combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSA0~0_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_D1~0_combout\ : std_logic;
SIGNAL \inst334|ALT_INV_MSA1~combout\ : std_logic;
SIGNAL \inst13|inst42|sub|ALT_INV_105~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst36~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst18~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst33~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst30~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst27~q\ : std_logic;
SIGNAL \ALT_INV_inst5~q\ : std_logic;
SIGNAL \ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst14|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst14|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \ALT_INV_inst27~q\ : std_logic;
SIGNAL \ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst334|ALT_INV_PCINC~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst21~q\ : std_logic;
SIGNAL \ALT_INV_inst17~q\ : std_logic;
SIGNAL \inst13|inst47|sub|ALT_INV_81~2_combout\ : std_logic;
SIGNAL \inst13|inst48|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst13|inst50|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst13|ALT_INV_inst36~DUPLICATE_q\ : std_logic;
SIGNAL \inst13|ALT_INV_inst30~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|sub|ALT_INV_99~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|sub|ALT_INV_110~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_inst21~DUPLICATE_q\ : std_logic;

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
ww_CIN <= CIN;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst14|sub|110~q\ & \inst14|sub|99~q\ & \inst14|sub|87~q\ & \inst14|sub|9~q\);

\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst7|altsyncram_component|auto_generated|ram_block1a9\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst7|altsyncram_component|auto_generated|ram_block1a10\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst7|altsyncram_component|auto_generated|ram_block1a11\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\ALT_INV_CIN~input_o\ <= NOT \CIN~input_o\;
\inst13|inst44|sub|ALT_INV_81~2_combout\ <= NOT \inst13|inst44|sub|81~2_combout\;
\inst13|inst44|sub|ALT_INV_81~1_combout\ <= NOT \inst13|inst44|sub|81~1_combout\;
\inst13|inst47|sub|ALT_INV_81~1_combout\ <= NOT \inst13|inst47|sub|81~1_combout\;
\inst13|inst47|sub|ALT_INV_81~0_combout\ <= NOT \inst13|inst47|sub|81~0_combout\;
\inst13|inst50|sub|ALT_INV_66~combout\ <= NOT \inst13|inst50|sub|66~combout\;
\inst13|inst48|sub|ALT_INV_81~0_combout\ <= NOT \inst13|inst48|sub|81~0_combout\;
\inst13|inst42|sub|ALT_INV_78~combout\ <= NOT \inst13|inst42|sub|78~combout\;
\inst13|inst44|sub|ALT_INV_81~0_combout\ <= NOT \inst13|inst44|sub|81~0_combout\;
\inst334|ALT_INV_MSA1~1_combout\ <= NOT \inst334|MSA1~1_combout\;
\inst334|ALT_INV_MSC0~0_combout\ <= NOT \inst334|MSC0~0_combout\;
\inst334|ALT_INV_MSA1~0_combout\ <= NOT \inst334|MSA1~0_combout\;
\inst334|ALT_INV_MSB1~combout\ <= NOT \inst334|MSB1~combout\;
\inst334|ALT_INV_MSA0~0_combout\ <= NOT \inst334|MSA0~0_combout\;
\inst334|ALT_INV_D1~0_combout\ <= NOT \inst334|D1~0_combout\;
\inst334|ALT_INV_MSA1~combout\ <= NOT \inst334|MSA1~combout\;
\inst13|inst42|sub|ALT_INV_105~0_combout\ <= NOT \inst13|inst42|sub|105~0_combout\;
\inst13|ALT_INV_inst16~q\ <= NOT \inst13|inst16~q\;
\inst13|ALT_INV_inst36~q\ <= NOT \inst13|inst36~q\;
\inst13|ALT_INV_inst18~q\ <= NOT \inst13|inst18~q\;
\inst13|ALT_INV_inst33~q\ <= NOT \inst13|inst33~q\;
\inst13|ALT_INV_inst30~q\ <= NOT \inst13|inst30~q\;
\inst13|ALT_INV_inst12~q\ <= NOT \inst13|inst12~q\;
\inst13|ALT_INV_inst~q\ <= NOT \inst13|inst~q\;
\inst13|ALT_INV_inst27~q\ <= NOT \inst13|inst27~q\;
\ALT_INV_inst5~q\ <= NOT \inst5~q\;
\ALT_INV_inst4~q\ <= NOT \inst4~q\;
\inst14|sub|ALT_INV_9~q\ <= NOT \inst14|sub|9~q\;
\inst14|sub|ALT_INV_87~q\ <= NOT \inst14|sub|87~q\;
\ALT_INV_inst27~q\ <= NOT \inst27~q\;
\ALT_INV_inst3~q\ <= NOT \inst3~q\;
\inst334|ALT_INV_PCINC~0_combout\ <= NOT \inst334|PCINC~0_combout\;
\ALT_INV_inst21~q\ <= NOT \inst21~q\;
\ALT_INV_inst17~q\ <= NOT \inst17~q\;
\inst13|inst47|sub|ALT_INV_81~2_combout\ <= NOT \inst13|inst47|sub|81~2_combout\;
\inst13|inst48|sub|ALT_INV_81~1_combout\ <= NOT \inst13|inst48|sub|81~1_combout\;
\inst13|inst50|sub|ALT_INV_81~0_combout\ <= NOT \inst13|inst50|sub|81~0_combout\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a9\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a10\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a11\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\;
\inst13|ALT_INV_inst36~DUPLICATE_q\ <= NOT \inst13|inst36~DUPLICATE_q\;
\inst13|ALT_INV_inst30~DUPLICATE_q\ <= NOT \inst13|inst30~DUPLICATE_q\;
\inst14|sub|ALT_INV_99~DUPLICATE_q\ <= NOT \inst14|sub|99~DUPLICATE_q\;
\inst14|sub|ALT_INV_110~DUPLICATE_q\ <= NOT \inst14|sub|110~DUPLICATE_q\;
\ALT_INV_inst21~DUPLICATE_q\ <= NOT \inst21~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y38_N56
\IRLD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|PCINC~0_combout\,
	devoe => ww_devoe,
	o => ww_IRLD);

-- Location: IOOBUF_X89_Y9_N22
\IR2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => ww_IR2);

-- Location: IOOBUF_X89_Y35_N45
\CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~q\,
	devoe => ww_devoe,
	o => ww_CLK);

-- Location: IOOBUF_X76_Y81_N53
\Data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_Data(3));

-- Location: IOOBUF_X72_Y0_N53
\Data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_Data(2));

-- Location: IOOBUF_X72_Y0_N19
\Data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_Data(1));

-- Location: IOOBUF_X89_Y35_N79
\Data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => ww_Data(0));

-- Location: IOOBUF_X50_Y81_N76
\A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_A(14));

-- Location: IOOBUF_X8_Y0_N19
\A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(13));

-- Location: IOOBUF_X70_Y81_N19
\A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(12));

-- Location: IOOBUF_X58_Y0_N42
\A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(11));

-- Location: IOOBUF_X86_Y81_N19
\A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(10));

-- Location: IOOBUF_X86_Y81_N53
\A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(9));

-- Location: IOOBUF_X62_Y0_N53
\A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_A(8));

-- Location: IOOBUF_X56_Y81_N19
\A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_A(7));

-- Location: IOOBUF_X2_Y0_N59
\A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(6));

-- Location: IOOBUF_X56_Y0_N36
\A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(5));

-- Location: IOOBUF_X30_Y81_N2
\A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_A(4));

-- Location: IOOBUF_X70_Y0_N36
\A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|110~q\,
	devoe => ww_devoe,
	o => ww_A(3));

-- Location: IOOBUF_X70_Y0_N53
\A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|99~q\,
	devoe => ww_devoe,
	o => ww_A(2));

-- Location: IOOBUF_X70_Y0_N19
\A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|87~q\,
	devoe => ww_devoe,
	o => ww_A(1));

-- Location: IOOBUF_X70_Y81_N2
\A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sub|9~q\,
	devoe => ww_devoe,
	o => ww_A(0));

-- Location: IOOBUF_X89_Y8_N56
\PCINC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|PCINC~1_combout\,
	devoe => ww_devoe,
	o => ww_PCINC);

-- Location: IOOBUF_X68_Y0_N36
\PCLD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|PCLD~combout\,
	devoe => ww_devoe,
	o => ww_PCLD);

-- Location: IOOBUF_X89_Y9_N5
\IR1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => ww_IR1);

-- Location: IOOBUF_X89_Y8_N39
\IR0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => ww_IR0);

-- Location: IOOBUF_X72_Y0_N36
\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => ww_Q1);

-- Location: IOOBUF_X89_Y35_N96
\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Q0);

-- Location: IOOBUF_X89_Y9_N39
\COUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst42|sub|107~0_combout\,
	devoe => ww_devoe,
	o => ww_COUT);

-- Location: IOOBUF_X78_Y81_N53
\MSA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~combout\,
	devoe => ww_devoe,
	o => ww_MSA(1));

-- Location: IOOBUF_X89_Y36_N22
\MSA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA0~0_combout\,
	devoe => ww_devoe,
	o => ww_MSA(0));

-- Location: IOOBUF_X84_Y81_N53
\MSB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSB1~combout\,
	devoe => ww_devoe,
	o => ww_MSB(1));

-- Location: IOOBUF_X84_Y81_N19
\MSB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|ALT_INV_MSB1~combout\,
	devoe => ww_devoe,
	o => ww_MSB(0));

-- Location: IOOBUF_X78_Y81_N36
\MSC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~combout\,
	devoe => ww_devoe,
	o => ww_MSC(2));

-- Location: IOOBUF_X89_Y36_N39
\MSC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSA1~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC(1));

-- Location: IOOBUF_X89_Y36_N5
\MSC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst334|MSC0~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC(0));

-- Location: IOOBUF_X89_Y38_N5
\OUTPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst44|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(3));

-- Location: IOOBUF_X89_Y38_N39
\OUTPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst47|sub|81~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(2));

-- Location: IOOBUF_X72_Y0_N2
\OUTPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst48|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(1));

-- Location: IOOBUF_X89_Y9_N56
\OUTPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst50|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(0));

-- Location: IOOBUF_X78_Y81_N2
\REGA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst~q\,
	devoe => ww_devoe,
	o => ww_REGA(3));

-- Location: IOOBUF_X89_Y37_N22
\REGA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst12~q\,
	devoe => ww_devoe,
	o => ww_REGA(2));

-- Location: IOOBUF_X78_Y81_N19
\REGA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst18~q\,
	devoe => ww_devoe,
	o => ww_REGA(1));

-- Location: IOOBUF_X89_Y37_N39
\REGA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst16~q\,
	devoe => ww_devoe,
	o => ww_REGA(0));

-- Location: IOOBUF_X89_Y37_N56
\REGB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst27~q\,
	devoe => ww_devoe,
	o => ww_REGB(3));

-- Location: IOOBUF_X70_Y0_N2
\REGB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst30~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGB(2));

-- Location: IOOBUF_X89_Y36_N56
\REGB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst33~q\,
	devoe => ww_devoe,
	o => ww_REGB(1));

-- Location: IOOBUF_X89_Y38_N22
\REGB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst36~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGB(0));

-- Location: IOIBUF_X89_Y35_N61
\MemCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: LABCELL_X75_Y34_N51
\inst27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = ( !\inst27~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inst27~q\,
	combout => \inst27~0_combout\);

-- Location: IOIBUF_X89_Y37_N4
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X77_Y34_N59
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~input_o\,
	asdata => \inst27~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: CLKCTRL_G10
\MemCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~input_o\,
	outclk => \MemCLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X75_Y34_N39
\inst14|sub|86\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|sub|86~combout\ = ( \inst17~q\ & ( \inst14|sub|9~q\ & ( (!\inst14|sub|87~q\ & !\inst21~DUPLICATE_q\) ) ) ) # ( !\inst17~q\ & ( \inst14|sub|9~q\ & ( !\inst14|sub|87~q\ $ (!\inst21~DUPLICATE_q\) ) ) ) # ( \inst17~q\ & ( !\inst14|sub|9~q\ & ( 
-- (\inst14|sub|87~q\ & !\inst21~DUPLICATE_q\) ) ) ) # ( !\inst17~q\ & ( !\inst14|sub|9~q\ & ( \inst14|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000001011010010110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|ALT_INV_87~q\,
	datac => \ALT_INV_inst21~DUPLICATE_q\,
	datae => \ALT_INV_inst17~q\,
	dataf => \inst14|sub|ALT_INV_9~q\,
	combout => \inst14|sub|86~combout\);

-- Location: FF_X75_Y34_N26
\inst14|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|86~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|87~q\);

-- Location: FF_X77_Y34_N4
\inst14|sub|99~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|102~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|99~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N18
\inst14|sub|102\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|sub|102~combout\ = ( \inst17~q\ & ( \inst14|sub|87~q\ & ( (!\inst14|sub|9~q\ $ (!\inst14|sub|99~DUPLICATE_q\)) # (\inst21~DUPLICATE_q\) ) ) ) # ( !\inst17~q\ & ( \inst14|sub|87~q\ & ( !\inst14|sub|99~DUPLICATE_q\ $ (((!\inst14|sub|9~q\) # 
-- (!\inst21~DUPLICATE_q\))) ) ) ) # ( \inst17~q\ & ( !\inst14|sub|87~q\ & ( (\inst21~DUPLICATE_q\) # (\inst14|sub|99~DUPLICATE_q\) ) ) ) # ( !\inst17~q\ & ( !\inst14|sub|87~q\ & ( \inst14|sub|99~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111111111100001111001111000011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|sub|ALT_INV_9~q\,
	datac => \inst14|sub|ALT_INV_99~DUPLICATE_q\,
	datad => \ALT_INV_inst21~DUPLICATE_q\,
	datae => \ALT_INV_inst17~q\,
	dataf => \inst14|sub|ALT_INV_87~q\,
	combout => \inst14|sub|102~combout\);

-- Location: FF_X77_Y34_N5
\inst14|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|102~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|99~q\);

-- Location: FF_X77_Y34_N40
\inst14|sub|110~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|108~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|110~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N12
\inst14|sub|108\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|sub|108~combout\ = ( !\inst17~q\ & ( \inst21~DUPLICATE_q\ & ( !\inst14|sub|110~DUPLICATE_q\ $ (((!\inst14|sub|87~q\) # ((!\inst14|sub|9~q\) # (!\inst14|sub|99~DUPLICATE_q\)))) ) ) ) # ( \inst17~q\ & ( !\inst21~DUPLICATE_q\ & ( 
-- !\inst14|sub|110~DUPLICATE_q\ $ (((!\inst14|sub|87~q\) # ((!\inst14|sub|9~q\) # (!\inst14|sub|99~DUPLICATE_q\)))) ) ) ) # ( !\inst17~q\ & ( !\inst21~DUPLICATE_q\ & ( \inst14|sub|110~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111000000001111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sub|ALT_INV_87~q\,
	datab => \inst14|sub|ALT_INV_9~q\,
	datac => \inst14|sub|ALT_INV_99~DUPLICATE_q\,
	datad => \inst14|sub|ALT_INV_110~DUPLICATE_q\,
	datae => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst14|sub|108~combout\);

-- Location: FF_X77_Y34_N41
\inst14|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|108~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|110~q\);

-- Location: M10K_X76_Y34_N0
\inst7|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000005000000000200004000030000300001000000000700001",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_32k.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst7|altsyncram:altsyncram_component|altsyncram_g824:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MemCLK~inputCLKENA0_outclk\,
	ena0 => VCC,
	portaaddr => \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: FF_X78_Y34_N44
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst7|altsyncram_component|auto_generated|ram_block1a10\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: MLABCELL_X78_Y34_N15
\inst334|D0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|D0~combout\ = ( \inst334|PCINC~0_combout\ ) # ( !\inst334|PCINC~0_combout\ & ( (\inst334|D1~0_combout\ & \inst3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst334|ALT_INV_D1~0_combout\,
	datad => \ALT_INV_inst3~q\,
	dataf => \inst334|ALT_INV_PCINC~0_combout\,
	combout => \inst334|D0~combout\);

-- Location: FF_X78_Y34_N17
\inst21~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	d => \inst334|D0~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~DUPLICATE_q\);

-- Location: LABCELL_X75_Y34_N42
\inst14|sub|75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|sub|75~combout\ = ( \inst17~q\ & ( \inst21~DUPLICATE_q\ ) ) # ( !\inst17~q\ & ( \inst21~DUPLICATE_q\ & ( !\inst14|sub|9~q\ ) ) ) # ( \inst17~q\ & ( !\inst21~DUPLICATE_q\ & ( !\inst14|sub|9~q\ ) ) ) # ( !\inst17~q\ & ( !\inst21~DUPLICATE_q\ & ( 
-- \inst14|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|sub|ALT_INV_9~q\,
	datae => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst14|sub|75~combout\);

-- Location: FF_X75_Y34_N32
\inst14|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst14|sub|75~combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sub|9~q\);

-- Location: FF_X78_Y34_N8
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst7|altsyncram_component|auto_generated|ram_block1a9\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: FF_X78_Y34_N16
inst21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	d => \inst334|D0~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~q\);

-- Location: FF_X78_Y34_N11
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst334|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: MLABCELL_X78_Y34_N3
\inst334|D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|D1~0_combout\ = ( \inst5~q\ & ( (!\inst17~q\ & (!\inst4~q\ & \inst21~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~q\,
	datac => \ALT_INV_inst4~q\,
	datad => \ALT_INV_inst21~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst334|D1~0_combout\);

-- Location: FF_X78_Y34_N20
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst334|D1~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LABCELL_X79_Y34_N48
\inst334|PCINC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|PCINC~0_combout\ = ( !\inst17~q\ & ( !\inst21~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst334|PCINC~0_combout\);

-- Location: LABCELL_X79_Y34_N57
\inst334|PCINC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|PCINC~1_combout\ = ( !\inst17~q\ & ( \inst21~DUPLICATE_q\ ) ) # ( \inst17~q\ & ( !\inst21~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst334|PCINC~1_combout\);

-- Location: LABCELL_X75_Y34_N24
\inst334|PCLD\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|PCLD~combout\ = ( \inst17~q\ & ( \inst21~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst334|PCLD~combout\);

-- Location: MLABCELL_X78_Y34_N30
\inst334|MSA1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSA1~combout\ = ( \inst21~DUPLICATE_q\ & ( (!\inst17~q\ & ((!\inst3~q\ & (\inst4~q\)) # (\inst3~q\ & (!\inst4~q\ & !\inst5~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000000010000010100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~q\,
	datab => \ALT_INV_inst3~q\,
	datac => \ALT_INV_inst4~q\,
	datad => \ALT_INV_inst5~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst334|MSA1~combout\);

-- Location: MLABCELL_X78_Y34_N21
\inst334|MSA0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSA0~0_combout\ = ( \inst17~q\ & ( (\inst21~DUPLICATE_q\ & ((!\inst334|D1~0_combout\) # (\inst3~q\))) ) ) # ( !\inst17~q\ & ( (!\inst334|D1~0_combout\) # (\inst3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst3~q\,
	datac => \ALT_INV_inst21~DUPLICATE_q\,
	datad => \inst334|ALT_INV_D1~0_combout\,
	dataf => \ALT_INV_inst17~q\,
	combout => \inst334|MSA0~0_combout\);

-- Location: MLABCELL_X78_Y34_N18
\inst334|MSB1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSB1~combout\ = ( \inst4~q\ ) # ( !\inst4~q\ & ( ((!\inst21~DUPLICATE_q\) # ((\inst17~q\) # (\inst5~q\))) # (\inst3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst3~q\,
	datab => \ALT_INV_inst21~DUPLICATE_q\,
	datac => \ALT_INV_inst5~q\,
	datad => \ALT_INV_inst17~q\,
	dataf => \ALT_INV_inst4~q\,
	combout => \inst334|MSB1~combout\);

-- Location: MLABCELL_X78_Y34_N48
\inst13|inst6|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst6|9~0_combout\ = ( \inst13|inst18~q\ & ( (!\inst334|MSB1~combout\) # (\inst13|inst33~q\) ) ) # ( !\inst13|inst18~q\ & ( (\inst13|inst33~q\ & \inst334|MSB1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_inst33~q\,
	datad => \inst334|ALT_INV_MSB1~combout\,
	dataf => \inst13|ALT_INV_inst18~q\,
	combout => \inst13|inst6|9~0_combout\);

-- Location: FF_X77_Y34_N29
\inst13|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst6|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst33~q\);

-- Location: FF_X77_Y34_N31
\inst13|inst30~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst5|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst30~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y34_N33
\inst13|inst5|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst5|10~0_combout\ = ( \inst334|MSB1~combout\ & ( \inst13|inst30~DUPLICATE_q\ ) ) # ( !\inst334|MSB1~combout\ & ( \inst13|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_inst30~DUPLICATE_q\,
	datad => \inst13|ALT_INV_inst12~q\,
	dataf => \inst334|ALT_INV_MSB1~combout\,
	combout => \inst13|inst5|10~0_combout\);

-- Location: FF_X77_Y34_N32
\inst13|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst5|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst30~q\);

-- Location: MLABCELL_X78_Y34_N9
\inst13|inst5|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst5|9~0_combout\ = (!\inst334|MSB1~combout\ & (\inst13|inst~q\)) # (\inst334|MSB1~combout\ & ((\inst13|inst27~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst~q\,
	datab => \inst334|ALT_INV_MSB1~combout\,
	datac => \inst13|ALT_INV_inst27~q\,
	combout => \inst13|inst5|9~0_combout\);

-- Location: FF_X77_Y34_N26
\inst13|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst5|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst27~q\);

-- Location: MLABCELL_X78_Y34_N51
\inst334|MSA1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSA1~1_combout\ = ( !\inst17~q\ & ( (!\inst5~q\ & (!\inst4~q\ & (\inst21~DUPLICATE_q\ & \inst3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \ALT_INV_inst4~q\,
	datac => \ALT_INV_inst21~DUPLICATE_q\,
	datad => \ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst17~q\,
	combout => \inst334|MSA1~1_combout\);

-- Location: MLABCELL_X78_Y34_N12
\inst334|MSC0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSC0~0_combout\ = ( \inst4~q\ & ( (!\inst17~q\ & (!\inst3~q\ & (\inst21~q\ & !\inst5~q\))) ) ) # ( !\inst4~q\ & ( (!\inst17~q\ & (\inst3~q\ & (\inst21~q\ & !\inst5~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~q\,
	datab => \ALT_INV_inst3~q\,
	datac => \ALT_INV_inst21~q\,
	datad => \ALT_INV_inst5~q\,
	dataf => \ALT_INV_inst4~q\,
	combout => \inst334|MSC0~0_combout\);

-- Location: LABCELL_X77_Y34_N24
\inst13|inst44|sub|81~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst44|sub|81~2_combout\ = ( \inst334|MSC0~0_combout\ & ( !\inst13|inst27~q\ ) ) # ( !\inst334|MSC0~0_combout\ & ( (!\inst13|inst~q\ & \inst13|inst27~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_inst~q\,
	datad => \inst13|ALT_INV_inst27~q\,
	dataf => \inst334|ALT_INV_MSC0~0_combout\,
	combout => \inst13|inst44|sub|81~2_combout\);

-- Location: LABCELL_X77_Y34_N21
\inst13|inst44|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst44|sub|81~1_combout\ = ( \inst13|inst42|sub|105~0_combout\ & ( \inst334|MSA1~combout\ & ( !\inst13|inst~q\ $ (!\inst13|inst27~q\ $ (((!\inst13|inst30~q\ & !\inst13|inst12~q\)))) ) ) ) # ( !\inst13|inst42|sub|105~0_combout\ & ( 
-- \inst334|MSA1~combout\ & ( !\inst13|inst~q\ $ (!\inst13|inst27~q\ $ (((!\inst13|inst30~q\) # (!\inst13|inst12~q\)))) ) ) ) # ( \inst13|inst42|sub|105~0_combout\ & ( !\inst334|MSA1~combout\ & ( (!\inst13|inst~q\ & !\inst13|inst27~q\) ) ) ) # ( 
-- !\inst13|inst42|sub|105~0_combout\ & ( !\inst334|MSA1~combout\ & ( (!\inst13|inst~q\ & !\inst13|inst27~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101001010101101001010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst~q\,
	datab => \inst13|ALT_INV_inst30~q\,
	datac => \inst13|ALT_INV_inst12~q\,
	datad => \inst13|ALT_INV_inst27~q\,
	datae => \inst13|inst42|sub|ALT_INV_105~0_combout\,
	dataf => \inst334|ALT_INV_MSA1~combout\,
	combout => \inst13|inst44|sub|81~1_combout\);

-- Location: LABCELL_X77_Y34_N54
\inst13|inst44|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst44|sub|81~0_combout\ = ( \inst13|inst44|sub|81~1_combout\ & ( \inst334|MSA1~combout\ & ( (!\inst334|MSA1~1_combout\ & (!\inst334|MSC0~0_combout\ & \inst13|inst12~q\)) ) ) ) # ( !\inst13|inst44|sub|81~1_combout\ & ( \inst334|MSA1~combout\ & ( 
-- ((!\inst334|MSC0~0_combout\ & \inst13|inst12~q\)) # (\inst334|MSA1~1_combout\) ) ) ) # ( !\inst13|inst44|sub|81~1_combout\ & ( !\inst334|MSA1~combout\ & ( (!\inst13|inst44|sub|81~2_combout\) # (\inst334|MSA1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000000000000000001010101110111010000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|ALT_INV_MSA1~1_combout\,
	datab => \inst334|ALT_INV_MSC0~0_combout\,
	datac => \inst13|inst44|sub|ALT_INV_81~2_combout\,
	datad => \inst13|ALT_INV_inst12~q\,
	datae => \inst13|inst44|sub|ALT_INV_81~1_combout\,
	dataf => \inst334|ALT_INV_MSA1~combout\,
	combout => \inst13|inst44|sub|81~0_combout\);

-- Location: LABCELL_X77_Y34_N36
\inst13|inst900|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst900|9~0_combout\ = ( \inst13|inst44|sub|81~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\)) # (\inst13|inst~q\))) # (\inst334|MSA1~combout\ & 
-- (((\inst334|MSA0~0_combout\) # (\inst13|inst27~q\)))) ) ) ) # ( !\inst13|inst44|sub|81~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\)) # (\inst13|inst~q\))) # 
-- (\inst334|MSA1~combout\ & (((\inst13|inst27~q\ & !\inst334|MSA0~0_combout\)))) ) ) ) # ( \inst13|inst44|sub|81~0_combout\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( (!\inst334|MSA1~combout\ & (\inst13|inst~q\ & 
-- ((\inst334|MSA0~0_combout\)))) # (\inst334|MSA1~combout\ & (((\inst334|MSA0~0_combout\) # (\inst13|inst27~q\)))) ) ) ) # ( !\inst13|inst44|sub|81~0_combout\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( (!\inst334|MSA1~combout\ & 
-- (\inst13|inst~q\ & ((\inst334|MSA0~0_combout\)))) # (\inst334|MSA1~combout\ & (((\inst13|inst27~q\ & !\inst334|MSA0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst~q\,
	datab => \inst334|ALT_INV_MSA1~combout\,
	datac => \inst13|ALT_INV_inst27~q\,
	datad => \inst334|ALT_INV_MSA0~0_combout\,
	datae => \inst13|inst44|sub|ALT_INV_81~0_combout\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\,
	combout => \inst13|inst900|9~0_combout\);

-- Location: FF_X77_Y34_N53
\inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst900|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst~q\);

-- Location: LABCELL_X77_Y34_N48
\inst13|inst47|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst47|sub|81~1_combout\ = ( \inst334|MSC0~0_combout\ & ( \inst13|inst~q\ ) ) # ( !\inst334|MSC0~0_combout\ & ( \inst13|inst18~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_inst18~q\,
	datad => \inst13|ALT_INV_inst~q\,
	dataf => \inst334|ALT_INV_MSC0~0_combout\,
	combout => \inst13|inst47|sub|81~1_combout\);

-- Location: MLABCELL_X78_Y34_N0
\inst334|MSA1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst334|MSA1~0_combout\ = ( !\inst17~q\ & ( (\inst4~q\ & (!\inst3~q\ & \inst21~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst4~q\,
	datac => \ALT_INV_inst3~q\,
	datad => \ALT_INV_inst21~q\,
	dataf => \ALT_INV_inst17~q\,
	combout => \inst334|MSA1~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\CIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LABCELL_X77_Y34_N45
\inst13|inst47|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst47|sub|81~0_combout\ = ( \inst13|inst33~q\ & ( \inst334|MSA1~0_combout\ ) ) # ( !\inst13|inst33~q\ & ( \inst334|MSA1~0_combout\ ) ) # ( \inst13|inst33~q\ & ( !\inst334|MSA1~0_combout\ & ( (!\inst13|inst18~q\ & ((!\CIN~input_o\ & 
-- ((!\inst13|inst36~q\) # (!\inst13|inst16~q\))) # (\CIN~input_o\ & (!\inst13|inst36~q\ & !\inst13|inst16~q\)))) ) ) ) # ( !\inst13|inst33~q\ & ( !\inst334|MSA1~0_combout\ & ( (!\inst13|inst18~q\) # ((!\CIN~input_o\ & ((!\inst13|inst36~q\) # 
-- (!\inst13|inst16~q\))) # (\CIN~input_o\ & (!\inst13|inst36~q\ & !\inst13|inst16~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CIN~input_o\,
	datab => \inst13|ALT_INV_inst36~q\,
	datac => \inst13|ALT_INV_inst16~q\,
	datad => \inst13|ALT_INV_inst18~q\,
	datae => \inst13|ALT_INV_inst33~q\,
	dataf => \inst334|ALT_INV_MSA1~0_combout\,
	combout => \inst13|inst47|sub|81~0_combout\);

-- Location: LABCELL_X77_Y34_N6
\inst13|inst47|sub|81~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst47|sub|81~2_combout\ = ( !\inst334|MSA1~0_combout\ & ( (!\inst334|MSC0~0_combout\ & ((((\inst334|MSA1~combout\ & \inst13|inst30~q\)) # (\inst13|inst12~q\)))) # (\inst334|MSC0~0_combout\ & (!\inst13|inst30~q\ $ (((!\inst334|MSA1~combout\) # 
-- (!\inst13|inst47|sub|81~0_combout\ $ (!\inst13|inst12~q\)))))) ) ) # ( \inst334|MSA1~0_combout\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSC0~0_combout\ & ((\inst13|inst12~q\))) # (\inst334|MSC0~0_combout\ & (\inst13|inst30~q\))))) # 
-- (\inst334|MSA1~combout\ & (((\inst13|inst47|sub|81~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000001011010111101100011001101100010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|ALT_INV_MSA1~combout\,
	datab => \inst13|ALT_INV_inst30~q\,
	datac => \inst13|inst47|sub|ALT_INV_81~1_combout\,
	datad => \inst13|ALT_INV_inst12~q\,
	datae => \inst334|ALT_INV_MSA1~0_combout\,
	dataf => \inst334|ALT_INV_MSC0~0_combout\,
	datag => \inst13|inst47|sub|ALT_INV_81~0_combout\,
	combout => \inst13|inst47|sub|81~2_combout\);

-- Location: LABCELL_X77_Y34_N33
\inst13|inst900|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst900|10~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( \inst13|inst47|sub|81~2_combout\ & ( (!\inst334|MSA0~0_combout\ & (((!\inst334|MSA1~combout\) # (\inst13|inst30~q\)))) # (\inst334|MSA0~0_combout\ & 
-- (((\inst334|MSA1~combout\)) # (\inst13|inst12~q\))) ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( \inst13|inst47|sub|81~2_combout\ & ( (!\inst334|MSA0~0_combout\ & (((\inst13|inst30~q\ & \inst334|MSA1~combout\)))) # 
-- (\inst334|MSA0~0_combout\ & (((\inst334|MSA1~combout\)) # (\inst13|inst12~q\))) ) ) ) # ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !\inst13|inst47|sub|81~2_combout\ & ( (!\inst334|MSA0~0_combout\ & (((!\inst334|MSA1~combout\) # 
-- (\inst13|inst30~q\)))) # (\inst334|MSA0~0_combout\ & (\inst13|inst12~q\ & ((!\inst334|MSA1~combout\)))) ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !\inst13|inst47|sub|81~2_combout\ & ( (!\inst334|MSA0~0_combout\ & 
-- (((\inst13|inst30~q\ & \inst334|MSA1~combout\)))) # (\inst334|MSA0~0_combout\ & (\inst13|inst12~q\ & ((!\inst334|MSA1~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst334|ALT_INV_MSA0~0_combout\,
	datab => \inst13|ALT_INV_inst12~q\,
	datac => \inst13|ALT_INV_inst30~q\,
	datad => \inst334|ALT_INV_MSA1~combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \inst13|inst47|sub|ALT_INV_81~2_combout\,
	combout => \inst13|inst900|10~0_combout\);

-- Location: FF_X77_Y34_N14
\inst13|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst900|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst12~q\);

-- Location: MLABCELL_X78_Y34_N24
\inst13|inst42|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst42|sub|78~combout\ = ( \inst13|inst36~q\ & ( !\inst13|inst33~q\ $ (!\inst13|inst18~q\ $ (((\CIN~input_o\) # (\inst13|inst16~q\)))) ) ) # ( !\inst13|inst36~q\ & ( !\inst13|inst33~q\ $ (!\inst13|inst18~q\ $ (((\inst13|inst16~q\ & 
-- \CIN~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst33~q\,
	datab => \inst13|ALT_INV_inst18~q\,
	datac => \inst13|ALT_INV_inst16~q\,
	datad => \ALT_INV_CIN~input_o\,
	dataf => \inst13|ALT_INV_inst36~q\,
	combout => \inst13|inst42|sub|78~combout\);

-- Location: MLABCELL_X78_Y34_N54
\inst13|inst48|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst48|sub|81~1_combout\ = ( !\inst334|MSA1~0_combout\ & ( ((!\inst334|MSC0~0_combout\ & (((\inst13|inst33~q\)) # (\inst13|inst18~q\))) # (\inst334|MSC0~0_combout\ & (((\inst13|inst42|sub|78~combout\))))) ) ) # ( \inst334|MSA1~0_combout\ & ( 
-- ((!\inst334|MSC0~0_combout\ & (((\inst13|inst16~q\)))) # (\inst334|MSC0~0_combout\ & (\inst13|inst12~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100000000000011110101010100111111111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst12~q\,
	datab => \inst13|ALT_INV_inst18~q\,
	datac => \inst13|ALT_INV_inst16~q\,
	datad => \inst334|ALT_INV_MSC0~0_combout\,
	datae => \inst334|ALT_INV_MSA1~0_combout\,
	dataf => \inst13|inst42|sub|ALT_INV_78~combout\,
	datag => \inst13|ALT_INV_inst33~q\,
	combout => \inst13|inst48|sub|81~1_combout\);

-- Location: MLABCELL_X78_Y34_N27
\inst13|inst48|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst48|sub|81~0_combout\ = ( \inst334|MSC0~0_combout\ & ( (!\inst334|MSA1~combout\ & (\inst13|inst33~q\)) # (\inst334|MSA1~combout\ & ((\inst13|inst48|sub|81~1_combout\))) ) ) # ( !\inst334|MSC0~0_combout\ & ( (!\inst334|MSA1~combout\ & 
-- (\inst13|inst18~q\)) # (\inst334|MSA1~combout\ & ((\inst13|inst48|sub|81~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst33~q\,
	datab => \inst13|ALT_INV_inst18~q\,
	datac => \inst334|ALT_INV_MSA1~combout\,
	datad => \inst13|inst48|sub|ALT_INV_81~1_combout\,
	dataf => \inst334|ALT_INV_MSC0~0_combout\,
	combout => \inst13|inst48|sub|81~0_combout\);

-- Location: MLABCELL_X78_Y34_N36
\inst13|inst100|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst100|9~0_combout\ = ( \inst13|inst48|sub|81~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\)) # (\inst13|inst18~q\))) # (\inst334|MSA1~combout\ & 
-- (((\inst13|inst33~q\) # (\inst334|MSA0~0_combout\)))) ) ) ) # ( !\inst13|inst48|sub|81~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\)) # (\inst13|inst18~q\))) # 
-- (\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\ & \inst13|inst33~q\)))) ) ) ) # ( \inst13|inst48|sub|81~0_combout\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst334|MSA1~combout\ & (\inst13|inst18~q\ & 
-- (\inst334|MSA0~0_combout\))) # (\inst334|MSA1~combout\ & (((\inst13|inst33~q\) # (\inst334|MSA0~0_combout\)))) ) ) ) # ( !\inst13|inst48|sub|81~0_combout\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst334|MSA1~combout\ & 
-- (\inst13|inst18~q\ & (\inst334|MSA0~0_combout\))) # (\inst334|MSA1~combout\ & (((!\inst334|MSA0~0_combout\ & \inst13|inst33~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst18~q\,
	datab => \inst334|ALT_INV_MSA1~combout\,
	datac => \inst334|ALT_INV_MSA0~0_combout\,
	datad => \inst13|ALT_INV_inst33~q\,
	datae => \inst13|inst48|sub|ALT_INV_81~0_combout\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst13|inst100|9~0_combout\);

-- Location: FF_X78_Y34_N41
\inst13|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst100|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst18~q\);

-- Location: MLABCELL_X78_Y34_N45
\inst13|inst50|sub|66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst50|sub|66~combout\ = ( \inst3~q\ & ( \inst21~DUPLICATE_q\ & ( (!\inst17~q\ & (!\inst5~q\ & (!\inst4~q\ & \inst13|inst18~q\))) ) ) ) # ( !\inst3~q\ & ( \inst21~DUPLICATE_q\ & ( (!\inst17~q\ & (!\inst5~q\ & (\inst4~q\ & \inst13|inst18~q\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~q\,
	datab => \ALT_INV_inst5~q\,
	datac => \ALT_INV_inst4~q\,
	datad => \inst13|ALT_INV_inst18~q\,
	datae => \ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst21~DUPLICATE_q\,
	combout => \inst13|inst50|sub|66~combout\);

-- Location: LABCELL_X77_Y34_N12
\inst13|inst50|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst50|sub|81~0_combout\ = ( !\inst334|MSA1~1_combout\ & ( (!\inst334|MSA1~combout\ & (((!\inst334|MSC0~0_combout\ & (\inst13|inst16~q\)) # (\inst334|MSC0~0_combout\ & ((\inst13|inst36~q\)))))) # (\inst334|MSA1~combout\ & 
-- (\inst13|inst50|sub|66~combout\)) ) ) # ( \inst334|MSA1~1_combout\ & ( ((!\inst334|MSA1~combout\ & (((\inst13|inst36~q\)) # (\inst13|inst16~q\))) # (\inst334|MSA1~combout\ & (!\inst13|inst16~q\ $ (!\CIN~input_o\ $ (\inst13|inst36~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000111111001100111111111101010101010101010011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst50|sub|ALT_INV_66~combout\,
	datab => \inst13|ALT_INV_inst16~q\,
	datac => \ALT_INV_CIN~input_o\,
	datad => \inst13|ALT_INV_inst36~q\,
	datae => \inst334|ALT_INV_MSA1~1_combout\,
	dataf => \inst334|ALT_INV_MSA1~combout\,
	datag => \inst334|ALT_INV_MSC0~0_combout\,
	combout => \inst13|inst50|sub|81~0_combout\);

-- Location: LABCELL_X77_Y34_N0
\inst13|inst100|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst100|10~0_combout\ = ( \inst334|MSA0~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst334|MSA1~combout\ & (\inst13|inst16~q\)) # (\inst334|MSA1~combout\ & ((\inst13|inst50|sub|81~0_combout\))) ) ) 
-- ) # ( !\inst334|MSA0~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst334|MSA1~combout\) # (\inst13|inst36~q\) ) ) ) # ( \inst334|MSA0~0_combout\ & ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst334|MSA1~combout\ & (\inst13|inst16~q\)) # (\inst334|MSA1~combout\ & ((\inst13|inst50|sub|81~0_combout\))) ) ) ) # ( !\inst334|MSA0~0_combout\ & ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (\inst13|inst36~q\ & \inst334|MSA1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst36~q\,
	datab => \inst13|ALT_INV_inst16~q\,
	datac => \inst334|ALT_INV_MSA1~combout\,
	datad => \inst13|inst50|sub|ALT_INV_81~0_combout\,
	datae => \inst334|ALT_INV_MSA0~0_combout\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	combout => \inst13|inst100|10~0_combout\);

-- Location: FF_X77_Y34_N44
\inst13|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst100|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst16~q\);

-- Location: FF_X77_Y34_N19
\inst13|inst36~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst6|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst36~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y34_N6
\inst13|inst6|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst6|10~0_combout\ = ( \inst334|MSB1~combout\ & ( \inst13|inst36~DUPLICATE_q\ ) ) # ( !\inst334|MSB1~combout\ & ( \inst13|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_inst16~q\,
	datad => \inst13|ALT_INV_inst36~DUPLICATE_q\,
	dataf => \inst334|ALT_INV_MSB1~combout\,
	combout => \inst13|inst6|10~0_combout\);

-- Location: FF_X77_Y34_N20
\inst13|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27~q\,
	asdata => \inst13|inst6|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst36~q\);

-- Location: LABCELL_X77_Y34_N27
\inst13|inst42|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst42|sub|105~0_combout\ = ( \inst13|inst18~q\ & ( ((!\inst13|inst36~q\ & (\CIN~input_o\ & \inst13|inst16~q\)) # (\inst13|inst36~q\ & ((\inst13|inst16~q\) # (\CIN~input_o\)))) # (\inst13|inst33~q\) ) ) # ( !\inst13|inst18~q\ & ( 
-- (\inst13|inst33~q\ & ((!\inst13|inst36~q\ & (\CIN~input_o\ & \inst13|inst16~q\)) # (\inst13|inst36~q\ & ((\inst13|inst16~q\) # (\CIN~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_inst36~q\,
	datab => \ALT_INV_CIN~input_o\,
	datac => \inst13|ALT_INV_inst16~q\,
	datad => \inst13|ALT_INV_inst33~q\,
	dataf => \inst13|ALT_INV_inst18~q\,
	combout => \inst13|inst42|sub|105~0_combout\);

-- Location: LABCELL_X77_Y34_N51
\inst13|inst42|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst42|sub|107~0_combout\ = ( \inst13|inst27~q\ & ( ((!\inst13|inst42|sub|105~0_combout\ & (\inst13|inst30~q\ & \inst13|inst12~q\)) # (\inst13|inst42|sub|105~0_combout\ & ((\inst13|inst12~q\) # (\inst13|inst30~q\)))) # (\inst13|inst~q\) ) ) # ( 
-- !\inst13|inst27~q\ & ( (\inst13|inst~q\ & ((!\inst13|inst42|sub|105~0_combout\ & (\inst13|inst30~q\ & \inst13|inst12~q\)) # (\inst13|inst42|sub|105~0_combout\ & ((\inst13|inst12~q\) # (\inst13|inst30~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst42|sub|ALT_INV_105~0_combout\,
	datab => \inst13|ALT_INV_inst30~q\,
	datac => \inst13|ALT_INV_inst12~q\,
	datad => \inst13|ALT_INV_inst~q\,
	dataf => \inst13|ALT_INV_inst27~q\,
	combout => \inst13|inst42|sub|107~0_combout\);

-- Location: LABCELL_X18_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


