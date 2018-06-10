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
-- Generated on "06/09/2018 19:29:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_loop_TEST
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_loop_TEST_vhd_vec_tst IS
END mux_loop_TEST_vhd_vec_tst;
ARCHITECTURE mux_loop_TEST_arch OF mux_loop_TEST_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL channel_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clear : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clear_out : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL play : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL play_out : STD_LOGIC;
SIGNAL rec : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rec_out : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
SIGNAL stop : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL stop_out : STD_LOGIC;
COMPONENT mux_loop_TEST
	PORT (
	channel_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clear : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clear_out : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	play : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	play_out : OUT STD_LOGIC;
	rec : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rec_out : OUT STD_LOGIC;
	resetN : IN STD_LOGIC;
	stop : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	stop_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_loop_TEST
	PORT MAP (
-- list connections between master ports and signals
	channel_out => channel_out,
	clear => clear,
	clear_out => clear_out,
	clk => clk,
	play => play,
	play_out => play_out,
	rec => rec,
	rec_out => rec_out,
	resetN => resetN,
	stop => stop,
	stop_out => stop_out
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
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;
-- play[3]
t_prcs_play_3: PROCESS
BEGIN
	play(3) <= '0';
WAIT;
END PROCESS t_prcs_play_3;
-- play[2]
t_prcs_play_2: PROCESS
BEGIN
	play(2) <= '0';
WAIT;
END PROCESS t_prcs_play_2;
-- play[1]
t_prcs_play_1: PROCESS
BEGIN
	play(1) <= '0';
WAIT;
END PROCESS t_prcs_play_1;
-- play[0]
t_prcs_play_0: PROCESS
BEGIN
	play(0) <= '1';
WAIT;
END PROCESS t_prcs_play_0;
-- rec[3]
t_prcs_rec_3: PROCESS
BEGIN
	rec(3) <= '0';
WAIT;
END PROCESS t_prcs_rec_3;
-- rec[2]
t_prcs_rec_2: PROCESS
BEGIN
	rec(2) <= '1';
	WAIT FOR 180000 ps;
	rec(2) <= '0';
WAIT;
END PROCESS t_prcs_rec_2;
-- rec[1]
t_prcs_rec_1: PROCESS
BEGIN
	rec(1) <= '0';
	WAIT FOR 390000 ps;
	rec(1) <= '1';
WAIT;
END PROCESS t_prcs_rec_1;
-- rec[0]
t_prcs_rec_0: PROCESS
BEGIN
	rec(0) <= '0';
WAIT;
END PROCESS t_prcs_rec_0;
-- stop[3]
t_prcs_stop_3: PROCESS
BEGIN
	stop(3) <= '0';
WAIT;
END PROCESS t_prcs_stop_3;
-- stop[2]
t_prcs_stop_2: PROCESS
BEGIN
	stop(2) <= '0';
WAIT;
END PROCESS t_prcs_stop_2;
-- stop[1]
t_prcs_stop_1: PROCESS
BEGIN
	stop(1) <= '0';
WAIT;
END PROCESS t_prcs_stop_1;
-- stop[0]
t_prcs_stop_0: PROCESS
BEGIN
	stop(0) <= '0';
WAIT;
END PROCESS t_prcs_stop_0;
-- clear[3]
t_prcs_clear_3: PROCESS
BEGIN
	clear(3) <= '0';
WAIT;
END PROCESS t_prcs_clear_3;
-- clear[2]
t_prcs_clear_2: PROCESS
BEGIN
	clear(2) <= '0';
WAIT;
END PROCESS t_prcs_clear_2;
-- clear[1]
t_prcs_clear_1: PROCESS
BEGIN
	clear(1) <= '0';
WAIT;
END PROCESS t_prcs_clear_1;
-- clear[0]
t_prcs_clear_0: PROCESS
BEGIN
	clear(0) <= '0';
WAIT;
END PROCESS t_prcs_clear_0;
END mux_loop_TEST_arch;
