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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/05/2019 12:23:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab6_Part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab6_Part1_vhd_vec_tst IS
END Lab6_Part1_vhd_vec_tst;
ARCHITECTURE Lab6_Part1_arch OF Lab6_Part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CIN : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IR0 : STD_LOGIC;
SIGNAL IR1 : STD_LOGIC;
SIGNAL IRLD : STD_LOGIC;
SIGNAL MSA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Lab6_Part1
	PORT (
	CIN : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	COUT : OUT STD_LOGIC;
	INPUT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IR0 : OUT STD_LOGIC;
	IR1 : OUT STD_LOGIC;
	IRLD : OUT STD_LOGIC;
	MSA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab6_Part1
	PORT MAP (
-- list connections between master ports and signals
	CIN => CIN,
	CLK => CLK,
	COUT => COUT,
	INPUT => INPUT,
	IR0 => IR0,
	IR1 => IR1,
	IRLD => IRLD,
	MSA => MSA,
	MSB => MSB,
	MSC => MSC,
	OUTPUT => OUTPUT,
	REGA => REGA,
	REGB => REGB
	);

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- INPUT[3]
t_prcs_INPUT_3: PROCESS
BEGIN
	INPUT(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_3;
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
	INPUT(2) <= '0';
	WAIT FOR 50000 ps;
	INPUT(2) <= '1';
	WAIT FOR 50000 ps;
	INPUT(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
	INPUT(1) <= '0';
	WAIT FOR 50000 ps;
	INPUT(1) <= '1';
	WAIT FOR 100000 ps;
	INPUT(1) <= '0';
	WAIT FOR 150000 ps;
	INPUT(1) <= '1';
	WAIT FOR 49000 ps;
	INPUT(1) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
	INPUT(0) <= '0';
	WAIT FOR 50000 ps;
	INPUT(0) <= '1';
	WAIT FOR 50000 ps;
	INPUT(0) <= '0';
	WAIT FOR 100000 ps;
	INPUT(0) <= '1';
	WAIT FOR 50000 ps;
	INPUT(0) <= '0';
	WAIT FOR 50000 ps;
	INPUT(0) <= '1';
	WAIT FOR 49000 ps;
	INPUT(0) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_0;
END Lab6_Part1_arch;
