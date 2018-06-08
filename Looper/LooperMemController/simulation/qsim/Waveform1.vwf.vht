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
-- Generated on "06/03/2018 19:19:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LooperSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LooperSM_vhd_vec_tst IS
END LooperSM_vhd_vec_tst;
ARCHITECTURE LooperSM_arch OF LooperSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ch0Activate : STD_LOGIC;
SIGNAL Ch1Activate : STD_LOGIC;
SIGNAL Ch2Activate : STD_LOGIC;
SIGNAL Ch3Activate : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL currentMemAddress : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL CurrState : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ENDMemAddress : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL Imm_start : STD_LOGIC;
SIGNAL KB_ALLPLAY : STD_LOGIC;
SIGNAL KB_ClearCH : STD_LOGIC;
SIGNAL KB_IMMstart : STD_LOGIC;
SIGNAL KB_PLAY : STD_LOGIC;
SIGNAL KB_REC : STD_LOGIC;
SIGNAL KB_RecOnMet : STD_LOGIC;
SIGNAL KB_Selchannel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL KB_STOP : STD_LOGIC;
SIGNAL loop_start : STD_LOGIC;
SIGNAL recording : STD_LOGIC;
SIGNAL recSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ResetN : STD_LOGIC;
COMPONENT LooperSM
	PORT (
	Ch0Activate : OUT STD_LOGIC;
	Ch1Activate : OUT STD_LOGIC;
	Ch2Activate : OUT STD_LOGIC;
	Ch3Activate : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	currentMemAddress : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	CurrState : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ENDMemAddress : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	Imm_start : OUT STD_LOGIC;
	KB_ALLPLAY : IN STD_LOGIC;
	KB_ClearCH : IN STD_LOGIC;
	KB_IMMstart : IN STD_LOGIC;
	KB_PLAY : IN STD_LOGIC;
	KB_REC : IN STD_LOGIC;
	KB_RecOnMet : IN STD_LOGIC;
	KB_Selchannel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	KB_STOP : IN STD_LOGIC;
	loop_start : OUT STD_LOGIC;
	recording : OUT STD_LOGIC;
	recSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ResetN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LooperSM
	PORT MAP (
-- list connections between master ports and signals
	Ch0Activate => Ch0Activate,
	Ch1Activate => Ch1Activate,
	Ch2Activate => Ch2Activate,
	Ch3Activate => Ch3Activate,
	clk => clk,
	currentMemAddress => currentMemAddress,
	CurrState => CurrState,
	ENDMemAddress => ENDMemAddress,
	Imm_start => Imm_start,
	KB_ALLPLAY => KB_ALLPLAY,
	KB_ClearCH => KB_ClearCH,
	KB_IMMstart => KB_IMMstart,
	KB_PLAY => KB_PLAY,
	KB_REC => KB_REC,
	KB_RecOnMet => KB_RecOnMet,
	KB_Selchannel => KB_Selchannel,
	KB_STOP => KB_STOP,
	loop_start => loop_start,
	recording => recording,
	recSel => recSel,
	ResetN => ResetN
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

-- ResetN
t_prcs_ResetN: PROCESS
BEGIN
	ResetN <= '0';
	WAIT FOR 20000 ps;
	ResetN <= '1';
WAIT;
END PROCESS t_prcs_ResetN;
-- KB_Selchannel[1]
t_prcs_KB_Selchannel_1: PROCESS
BEGIN
	KB_Selchannel(1) <= '0';
	WAIT FOR 300000 ps;
	KB_Selchannel(1) <= '1';
	WAIT FOR 10000 ps;
	KB_Selchannel(1) <= '0';
	WAIT FOR 30000 ps;
	KB_Selchannel(1) <= '1';
	WAIT FOR 10000 ps;
	KB_Selchannel(1) <= '0';
WAIT;
END PROCESS t_prcs_KB_Selchannel_1;
-- KB_Selchannel[0]
t_prcs_KB_Selchannel_0: PROCESS
BEGIN
	KB_Selchannel(0) <= '0';
	WAIT FOR 260000 ps;
	KB_Selchannel(0) <= '1';
	WAIT FOR 10000 ps;
	KB_Selchannel(0) <= '0';
	WAIT FOR 70000 ps;
	KB_Selchannel(0) <= '1';
	WAIT FOR 10000 ps;
	KB_Selchannel(0) <= '0';
WAIT;
END PROCESS t_prcs_KB_Selchannel_0;

-- KB_STOP
t_prcs_KB_STOP: PROCESS
BEGIN
	KB_STOP <= '0';
WAIT;
END PROCESS t_prcs_KB_STOP;

-- KB_REC
t_prcs_KB_REC: PROCESS
BEGIN
	KB_REC <= '0';
	WAIT FOR 40000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
	WAIT FOR 90000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
	WAIT FOR 110000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
	WAIT FOR 30000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
	WAIT FOR 30000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
	WAIT FOR 30000 ps;
	KB_REC <= '1';
	WAIT FOR 10000 ps;
	KB_REC <= '0';
WAIT;
END PROCESS t_prcs_KB_REC;

-- KB_PLAY
t_prcs_KB_PLAY: PROCESS
BEGIN
	KB_PLAY <= '0';
	WAIT FOR 70000 ps;
	KB_PLAY <= '1';
	WAIT FOR 10000 ps;
	KB_PLAY <= '0';
	WAIT FOR 200000 ps;
	KB_PLAY <= '1';
	WAIT FOR 10000 ps;
	KB_PLAY <= '0';
	WAIT FOR 30000 ps;
	KB_PLAY <= '1';
	WAIT FOR 10000 ps;
	KB_PLAY <= '0';
	WAIT FOR 30000 ps;
	KB_PLAY <= '1';
	WAIT FOR 10000 ps;
	KB_PLAY <= '0';
WAIT;
END PROCESS t_prcs_KB_PLAY;

-- KB_ClearCH
t_prcs_KB_ClearCH: PROCESS
BEGIN
	KB_ClearCH <= '0';
	WAIT FOR 100000 ps;
	KB_ClearCH <= '1';
	WAIT FOR 10000 ps;
	KB_ClearCH <= '0';
WAIT;
END PROCESS t_prcs_KB_ClearCH;

-- KB_ALLPLAY
t_prcs_KB_ALLPLAY: PROCESS
BEGIN
	KB_ALLPLAY <= '0';
WAIT;
END PROCESS t_prcs_KB_ALLPLAY;
END LooperSM_arch;
