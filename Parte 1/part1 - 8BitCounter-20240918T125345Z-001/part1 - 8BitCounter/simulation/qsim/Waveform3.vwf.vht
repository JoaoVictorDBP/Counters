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
-- Generated on "09/15/2024 11:47:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Contador_vhd_vec_tst IS
END Contador_vhd_vec_tst;
ARCHITECTURE Contador_arch OF Contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Q4 : STD_LOGIC;
SIGNAL Q5 : STD_LOGIC;
SIGNAL Q6 : STD_LOGIC;
SIGNAL Q7 : STD_LOGIC;
COMPONENT Contador
	PORT (
	Clear : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Q4 : OUT STD_LOGIC;
	Q5 : OUT STD_LOGIC;
	Q6 : OUT STD_LOGIC;
	Q7 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Contador
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clk => Clk,
	Enable => Enable,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5,
	Q6 => Q6,
	Q7 => Q7
	);

-- Clear
t_prcs_Clear: PROCESS
BEGIN
	Clear <= '0';
	WAIT FOR 2880000 ps;
	Clear <= '1';
	WAIT FOR 1920000 ps;
	Clear <= '0';
	WAIT FOR 19520000 ps;
	Clear <= '1';
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
	IF (NOW >= 32000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;
END Contador_arch;
