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
-- Generated on "11/05/2019 12:12:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab6_Part2_VHDL_ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab6_Part2_VHDL_ROM_vhd_vec_tst IS
END Lab6_Part2_VHDL_ROM_vhd_vec_tst;
ARCHITECTURE Lab6_Part2_VHDL_ROM_arch OF Lab6_Part2_VHDL_ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IR0 : STD_LOGIC;
SIGNAL IR1 : STD_LOGIC;
SIGNAL IR2 : STD_LOGIC;
SIGNAL IRLD : STD_LOGIC;
SIGNAL MemCLK : STD_LOGIC;
SIGNAL MSA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PCINC : STD_LOGIC;
SIGNAL PCLD : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
COMPONENT Lab6_Part2_VHDL_ROM
	PORT (
	A : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	CLK : OUT STD_LOGIC;
	COUT : OUT STD_LOGIC;
	Data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	IR0 : OUT STD_LOGIC;
	IR1 : OUT STD_LOGIC;
	IR2 : OUT STD_LOGIC;
	IRLD : OUT STD_LOGIC;
	MemCLK : IN STD_LOGIC;
	MSA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PCINC : OUT STD_LOGIC;
	PCLD : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab6_Part2_VHDL_ROM
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	CLK => CLK,
	COUT => COUT,
	Data => Data,
	IR0 => IR0,
	IR1 => IR1,
	IR2 => IR2,
	IRLD => IRLD,
	MemCLK => MemCLK,
	MSA => MSA,
	MSB => MSB,
	MSC => MSC,
	OUTPUT => OUTPUT,
	PCINC => PCINC,
	PCLD => PCLD,
	Q0 => Q0,
	Q1 => Q1,
	REGA => REGA,
	REGB => REGB,
	Reset => Reset
	);

-- MemCLK
t_prcs_MemCLK: PROCESS
BEGIN
LOOP
	MemCLK <= '0';
	WAIT FOR 10000 ps;
	MemCLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MemCLK;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 75000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;
END Lab6_Part2_VHDL_ROM_arch;
