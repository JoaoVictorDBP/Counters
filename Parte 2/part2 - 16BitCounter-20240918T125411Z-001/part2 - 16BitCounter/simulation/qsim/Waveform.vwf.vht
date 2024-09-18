-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/15/2024 13:40:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          o16BitCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY o16BitCounter_vhd_vec_tst IS
END o16BitCounter_vhd_vec_tst;
ARCHITECTURE o16BitCounter_arch OF o16BitCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL HEX00 : STD_LOGIC;
SIGNAL HEX01 : STD_LOGIC;
SIGNAL HEX03 : STD_LOGIC;
SIGNAL HEX04 : STD_LOGIC;
SIGNAL HEX05 : STD_LOGIC;
SIGNAL HEX06 : STD_LOGIC;
SIGNAL HEX10 : STD_LOGIC;
SIGNAL HEX11 : STD_LOGIC;
SIGNAL HEX12 : STD_LOGIC;
SIGNAL HEX13 : STD_LOGIC;
SIGNAL HEX14 : STD_LOGIC;
SIGNAL HEX15 : STD_LOGIC;
SIGNAL HEX16 : STD_LOGIC;
SIGNAL HEX20 : STD_LOGIC;
SIGNAL HEX21 : STD_LOGIC;
SIGNAL HEX22 : STD_LOGIC;
SIGNAL HEX23 : STD_LOGIC;
SIGNAL HEX24 : STD_LOGIC;
SIGNAL HEX25 : STD_LOGIC;
SIGNAL HEX26 : STD_LOGIC;
SIGNAL HEX30 : STD_LOGIC;
SIGNAL HEX31 : STD_LOGIC;
SIGNAL HEX32 : STD_LOGIC;
SIGNAL HEX33 : STD_LOGIC;
SIGNAL HEX34 : STD_LOGIC;
SIGNAL HEX35 : STD_LOGIC;
SIGNAL HEX36 : STD_LOGIC;
COMPONENT o16BitCounter
	PORT (
	Clear : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	HEX00 : OUT STD_LOGIC;
	HEX01 : OUT STD_LOGIC;
	HEX03 : OUT STD_LOGIC;
	HEX04 : OUT STD_LOGIC;
	HEX05 : OUT STD_LOGIC;
	HEX06 : OUT STD_LOGIC;
	HEX10 : OUT STD_LOGIC;
	HEX11 : OUT STD_LOGIC;
	HEX12 : OUT STD_LOGIC;
	HEX13 : OUT STD_LOGIC;
	HEX14 : OUT STD_LOGIC;
	HEX15 : OUT STD_LOGIC;
	HEX16 : OUT STD_LOGIC;
	HEX20 : OUT STD_LOGIC;
	HEX21 : OUT STD_LOGIC;
	HEX22 : OUT STD_LOGIC;
	HEX23 : OUT STD_LOGIC;
	HEX24 : OUT STD_LOGIC;
	HEX25 : OUT STD_LOGIC;
	HEX26 : OUT STD_LOGIC;
	HEX30 : OUT STD_LOGIC;
	HEX31 : OUT STD_LOGIC;
	HEX32 : OUT STD_LOGIC;
	HEX33 : OUT STD_LOGIC;
	HEX34 : OUT STD_LOGIC;
	HEX35 : OUT STD_LOGIC;
	HEX36 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : o16BitCounter
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clk => Clk,
	Enable => Enable,
	HEX00 => HEX00,
	HEX01 => HEX01,
	HEX03 => HEX03,
	HEX04 => HEX04,
	HEX05 => HEX05,
	HEX06 => HEX06,
	HEX10 => HEX10,
	HEX11 => HEX11,
	HEX12 => HEX12,
	HEX13 => HEX13,
	HEX14 => HEX14,
	HEX15 => HEX15,
	HEX16 => HEX16,
	HEX20 => HEX20,
	HEX21 => HEX21,
	HEX22 => HEX22,
	HEX23 => HEX23,
	HEX24 => HEX24,
	HEX25 => HEX25,
	HEX26 => HEX26,
	HEX30 => HEX30,
	HEX31 => HEX31,
	HEX32 => HEX32,
	HEX33 => HEX33,
	HEX34 => HEX34,
	HEX35 => HEX35,
	HEX36 => HEX36
	);

-- Clear
t_prcs_Clear: PROCESS
BEGIN
	Clear <= '0';
WAIT;
END PROCESS t_prcs_Clear;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 25000 ps;
	Clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;
END o16BitCounter_arch;
