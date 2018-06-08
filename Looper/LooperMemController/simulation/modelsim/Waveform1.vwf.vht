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
-- Generated on "06/04/2018 22:22:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          experiement_digital_recorder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY experiement_digital_recorder_vhd_vec_tst IS
END experiement_digital_recorder_vhd_vec_tst;
ARCHITECTURE experiement_digital_recorder_arch OF experiement_digital_recorder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AUD_ADCDAT : STD_LOGIC;
SIGNAL AUD_ADCLRCK : STD_LOGIC;
SIGNAL AUD_BCLK : STD_LOGIC;
SIGNAL AUD_DACDAT : STD_LOGIC;
SIGNAL AUD_DACLRCK : STD_LOGIC;
SIGNAL AUD_I2C_SCLK : STD_LOGIC;
SIGNAL AUD_I2C_SDAT : STD_LOGIC;
SIGNAL AUD_XCK : STD_LOGIC;
SIGNAL clearB : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL IntergratorDIV : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL MICROPHON_LED : STD_LOGIC;
SIGNAL MICROPHON_ON : STD_LOGIC;
SIGNAL playB : STD_LOGIC;
SIGNAL recB : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
SIGNAL SelCh4Cmd : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL stopB : STD_LOGIC;
COMPONENT experiement_digital_recorder
	PORT (
	AUD_ADCDAT : IN STD_LOGIC;
	AUD_ADCLRCK : IN STD_LOGIC;
	AUD_BCLK : IN STD_LOGIC;
	AUD_DACDAT : OUT STD_LOGIC;
	AUD_DACLRCK : IN STD_LOGIC;
	AUD_I2C_SCLK : OUT STD_LOGIC;
	AUD_I2C_SDAT : INOUT STD_LOGIC;
	AUD_XCK : OUT STD_LOGIC;
	clearB : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	IntergratorDIV : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	MICROPHON_LED : OUT STD_LOGIC;
	MICROPHON_ON : IN STD_LOGIC;
	playB : IN STD_LOGIC;
	recB : IN STD_LOGIC;
	resetN : IN STD_LOGIC;
	SelCh4Cmd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	stopB : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : experiement_digital_recorder
	PORT MAP (
-- list connections between master ports and signals
	AUD_ADCDAT => AUD_ADCDAT,
	AUD_ADCLRCK => AUD_ADCLRCK,
	AUD_BCLK => AUD_BCLK,
	AUD_DACDAT => AUD_DACDAT,
	AUD_DACLRCK => AUD_DACLRCK,
	AUD_I2C_SCLK => AUD_I2C_SCLK,
	AUD_I2C_SDAT => AUD_I2C_SDAT,
	AUD_XCK => AUD_XCK,
	clearB => clearB,
	CLOCK_50 => CLOCK_50,
	IntergratorDIV => IntergratorDIV,
	MICROPHON_LED => MICROPHON_LED,
	MICROPHON_ON => MICROPHON_ON,
	playB => playB,
	recB => recB,
	resetN => resetN,
	SelCh4Cmd => SelCh4Cmd,
	stopB => stopB
	);
END experiement_digital_recorder_arch;
