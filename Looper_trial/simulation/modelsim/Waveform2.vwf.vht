-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/07/2018 15:31:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Met_block_exp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Met_block_exp_vhd_vec_tst IS
END Met_block_exp_vhd_vec_tst;
ARCHITECTURE Met_block_exp_arch OF Met_block_exp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bar : STD_LOGIC;
SIGNAL BPM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL newBPM : STD_LOGIC;
SIGNAL qua : STD_LOGIC;
SIGNAL res : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
COMPONENT Met_block_exp
	PORT (
	bar : OUT STD_LOGIC;
	BPM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	newBPM : OUT STD_LOGIC;
	qua : OUT STD_LOGIC;
	res : IN STD_LOGIC;
	resetN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Met_block_exp
	PORT MAP (
-- list connections between master ports and signals
	bar => bar,
	BPM => BPM,
	clk => clk,
	enable => enable,
	newBPM => newBPM,
	qua => qua,
	res => res,
	resetN => resetN
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
	WAIT FOR 20000 ps;
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;
-- BPM[7]
t_prcs_BPM_7: PROCESS
BEGIN
	BPM(7) <= '0';
WAIT;
END PROCESS t_prcs_BPM_7;
-- BPM[6]
t_prcs_BPM_6: PROCESS
BEGIN
	BPM(6) <= '0';
WAIT;
END PROCESS t_prcs_BPM_6;
-- BPM[5]
t_prcs_BPM_5: PROCESS
BEGIN
	BPM(5) <= '1';
	WAIT FOR 30000 ps;
	BPM(5) <= '0';
WAIT;
END PROCESS t_prcs_BPM_5;
-- BPM[4]
t_prcs_BPM_4: PROCESS
BEGIN
	BPM(4) <= '1';
	WAIT FOR 30000 ps;
	BPM(4) <= '0';
WAIT;
END PROCESS t_prcs_BPM_4;
-- BPM[3]
t_prcs_BPM_3: PROCESS
BEGIN
	BPM(3) <= '1';
WAIT;
END PROCESS t_prcs_BPM_3;
-- BPM[2]
t_prcs_BPM_2: PROCESS
BEGIN
	BPM(2) <= '1';
	WAIT FOR 30000 ps;
	BPM(2) <= '0';
	WAIT FOR 310000 ps;
	BPM(2) <= '1';
WAIT;
END PROCESS t_prcs_BPM_2;
-- BPM[1]
t_prcs_BPM_1: PROCESS
BEGIN
	BPM(1) <= '0';
	WAIT FOR 30000 ps;
	BPM(1) <= '1';
WAIT;
END PROCESS t_prcs_BPM_1;
-- BPM[0]
t_prcs_BPM_0: PROCESS
BEGIN
	BPM(0) <= '0';
	WAIT FOR 340000 ps;
	BPM(0) <= '1';
WAIT;
END PROCESS t_prcs_BPM_0;

-- res
t_prcs_res: PROCESS
BEGIN
	res <= '0';
	WAIT FOR 670000 ps;
	res <= '1';
	WAIT FOR 20000 ps;
	res <= '0';
WAIT;
END PROCESS t_prcs_res;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END Met_block_exp_arch;
