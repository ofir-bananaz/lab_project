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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "06/03/2018 19:19:51"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	LooperSM IS
    PORT (
	clk : IN std_logic;
	ResetN : IN std_logic;
	KB_Selchannel : IN std_logic_vector(1 DOWNTO 0);
	KB_RecOnMet : IN std_logic;
	KB_PLAY : IN std_logic;
	KB_ALLPLAY : IN std_logic;
	KB_REC : IN std_logic;
	KB_STOP : IN std_logic;
	KB_ClearCH : IN std_logic;
	KB_IMMstart : IN std_logic;
	recSel : OUT std_logic_vector(1 DOWNTO 0);
	recording : OUT std_logic;
	loop_start : OUT std_logic;
	Imm_start : OUT std_logic;
	CurrState : OUT std_logic_vector(2 DOWNTO 0);
	ENDMemAddress : OUT std_logic_vector(17 DOWNTO 0);
	currentMemAddress : OUT std_logic_vector(17 DOWNTO 0);
	Ch0Activate : OUT std_logic;
	Ch1Activate : OUT std_logic;
	Ch2Activate : OUT std_logic;
	Ch3Activate : OUT std_logic
	);
END LooperSM;

ARCHITECTURE structure OF LooperSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ResetN : std_logic;
SIGNAL ww_KB_Selchannel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KB_RecOnMet : std_logic;
SIGNAL ww_KB_PLAY : std_logic;
SIGNAL ww_KB_ALLPLAY : std_logic;
SIGNAL ww_KB_REC : std_logic;
SIGNAL ww_KB_STOP : std_logic;
SIGNAL ww_KB_ClearCH : std_logic;
SIGNAL ww_KB_IMMstart : std_logic;
SIGNAL ww_recSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_recording : std_logic;
SIGNAL ww_loop_start : std_logic;
SIGNAL ww_Imm_start : std_logic;
SIGNAL ww_CurrState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ENDMemAddress : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_currentMemAddress : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_Ch0Activate : std_logic;
SIGNAL ww_Ch1Activate : std_logic;
SIGNAL ww_Ch2Activate : std_logic;
SIGNAL ww_Ch3Activate : std_logic;
SIGNAL \KB_RecOnMet~input_o\ : std_logic;
SIGNAL \KB_IMMstart~input_o\ : std_logic;
SIGNAL \recSel[0]~output_o\ : std_logic;
SIGNAL \recSel[1]~output_o\ : std_logic;
SIGNAL \recording~output_o\ : std_logic;
SIGNAL \loop_start~output_o\ : std_logic;
SIGNAL \Imm_start~output_o\ : std_logic;
SIGNAL \CurrState[0]~output_o\ : std_logic;
SIGNAL \CurrState[1]~output_o\ : std_logic;
SIGNAL \CurrState[2]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[0]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[1]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[2]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[3]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[4]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[5]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[6]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[7]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[8]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[9]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[10]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[11]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[12]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[13]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[14]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[15]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[16]~output_o\ : std_logic;
SIGNAL \ENDMemAddress[17]~output_o\ : std_logic;
SIGNAL \currentMemAddress[0]~output_o\ : std_logic;
SIGNAL \currentMemAddress[1]~output_o\ : std_logic;
SIGNAL \currentMemAddress[2]~output_o\ : std_logic;
SIGNAL \currentMemAddress[3]~output_o\ : std_logic;
SIGNAL \currentMemAddress[4]~output_o\ : std_logic;
SIGNAL \currentMemAddress[5]~output_o\ : std_logic;
SIGNAL \currentMemAddress[6]~output_o\ : std_logic;
SIGNAL \currentMemAddress[7]~output_o\ : std_logic;
SIGNAL \currentMemAddress[8]~output_o\ : std_logic;
SIGNAL \currentMemAddress[9]~output_o\ : std_logic;
SIGNAL \currentMemAddress[10]~output_o\ : std_logic;
SIGNAL \currentMemAddress[11]~output_o\ : std_logic;
SIGNAL \currentMemAddress[12]~output_o\ : std_logic;
SIGNAL \currentMemAddress[13]~output_o\ : std_logic;
SIGNAL \currentMemAddress[14]~output_o\ : std_logic;
SIGNAL \currentMemAddress[15]~output_o\ : std_logic;
SIGNAL \currentMemAddress[16]~output_o\ : std_logic;
SIGNAL \currentMemAddress[17]~output_o\ : std_logic;
SIGNAL \Ch0Activate~output_o\ : std_logic;
SIGNAL \Ch1Activate~output_o\ : std_logic;
SIGNAL \Ch2Activate~output_o\ : std_logic;
SIGNAL \Ch3Activate~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \KB_Selchannel[0]~input_o\ : std_logic;
SIGNAL \KB_REC~input_o\ : std_logic;
SIGNAL \KB_PLAY~input_o\ : std_logic;
SIGNAL \KB_ALLPLAY~input_o\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \ResetN~input_o\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \KB_ClearCH~input_o\ : std_logic;
SIGNAL \KB_STOP~input_o\ : std_logic;
SIGNAL \recCounter~0_combout\ : std_logic;
SIGNAL \KB_Selchannel[1]~input_o\ : std_logic;
SIGNAL \ch0HT~0_combout\ : std_logic;
SIGNAL \Selector165~0_combout\ : std_logic;
SIGNAL \state.REC_OTHER~q\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \arch_recSel[0]~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \ch0HT~q\ : std_logic;
SIGNAL \ch2HT~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \ch2HT~q\ : std_logic;
SIGNAL \ch1HT~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \ch1HT~q\ : std_logic;
SIGNAL \ch3HT~0_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \ch3HT~q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \recCounter~1_combout\ : std_logic;
SIGNAL \recCounter~2_combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \Selector164~3_combout\ : std_logic;
SIGNAL \Selector164~7_combout\ : std_logic;
SIGNAL \state.PRE_REC~0_combout\ : std_logic;
SIGNAL \state.PRE_REC~q\ : std_logic;
SIGNAL \Selector164~2_combout\ : std_logic;
SIGNAL \Selector162~0_combout\ : std_logic;
SIGNAL \state.REC_FIRST~q\ : std_logic;
SIGNAL \Selector154~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector160~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector159~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector157~0_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector156~0_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector153~0_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Selector152~0_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Selector158~0_combout\ : std_logic;
SIGNAL \memEndAddr[2]~0_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Selector155~0_combout\ : std_logic;
SIGNAL \memEndAddr[5]~1_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Selector154~1_combout\ : std_logic;
SIGNAL \memEndAddr[6]~2_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \Equal6~11_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Selector147~0_combout\ : std_logic;
SIGNAL \Equal6~12_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Selector146~0_combout\ : std_logic;
SIGNAL \Equal6~13_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Equal6~14_combout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \Equal6~15_combout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Selector148~0_combout\ : std_logic;
SIGNAL \Equal6~16_combout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Selector145~0_combout\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \Equal6~17_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \arch_loop_start~0_combout\ : std_logic;
SIGNAL \arch_loop_start~1_combout\ : std_logic;
SIGNAL \arch_loop_start~q\ : std_logic;
SIGNAL \Selector163~0_combout\ : std_logic;
SIGNAL \Selector164~4_combout\ : std_logic;
SIGNAL \Selector164~5_combout\ : std_logic;
SIGNAL \Selector164~6_combout\ : std_logic;
SIGNAL \Selector163~1_combout\ : std_logic;
SIGNAL \state.CH_CONTROL~q\ : std_logic;
SIGNAL \Selector161~0_combout\ : std_logic;
SIGNAL \state.EMPTY~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \arch_recording~q\ : std_logic;
SIGNAL \stateNum~0_combout\ : std_logic;
SIGNAL \stateNum~1_combout\ : std_logic;
SIGNAL \stateNum[2]~3_combout\ : std_logic;
SIGNAL \arch_Ch0END[0]~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \arch_Ch0ACT~0_combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \Selector132~1_combout\ : std_logic;
SIGNAL \Selector132~2_combout\ : std_logic;
SIGNAL \arch_Ch0ACT~q\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \arch_Ch0DEC~q\ : std_logic;
SIGNAL \arch_Ch1END[5]~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \arch_Ch1ACT~0_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector133~1_combout\ : std_logic;
SIGNAL \Selector133~2_combout\ : std_logic;
SIGNAL \arch_Ch1ACT~q\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \arch_Ch1DEC~q\ : std_logic;
SIGNAL \arch_Ch2END[6]~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \arch_Ch2ACT~0_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \Selector134~1_combout\ : std_logic;
SIGNAL \Selector134~2_combout\ : std_logic;
SIGNAL \arch_Ch2ACT~q\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \arch_Ch2DEC~q\ : std_logic;
SIGNAL \arch_Ch3END[5]~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \LessThan3~10_combout\ : std_logic;
SIGNAL \LessThan3~11_combout\ : std_logic;
SIGNAL \LessThan3~12_combout\ : std_logic;
SIGNAL \LessThan3~13_combout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \LessThan3~15_combout\ : std_logic;
SIGNAL \LessThan3~16_combout\ : std_logic;
SIGNAL \LessThan3~17_combout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \arch_Ch3ACT~0_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Selector135~1_combout\ : std_logic;
SIGNAL \Selector135~2_combout\ : std_logic;
SIGNAL \arch_Ch3ACT~q\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \arch_Ch3DEC~q\ : std_logic;
SIGNAL currMemAddress : std_logic_vector(17 DOWNTO 0);
SIGNAL arch_Ch0END : std_logic_vector(31 DOWNTO 0);
SIGNAL stateNum : std_logic_vector(31 DOWNTO 0);
SIGNAL arch_Ch1END : std_logic_vector(31 DOWNTO 0);
SIGNAL arch_Ch2END : std_logic_vector(31 DOWNTO 0);
SIGNAL arch_Ch3END : std_logic_vector(31 DOWNTO 0);
SIGNAL arch_recSel : std_logic_vector(1 DOWNTO 0);
SIGNAL endAddr : std_logic_vector(17 DOWNTO 0);
SIGNAL memEndAddr : std_logic_vector(17 DOWNTO 0);
SIGNAL recCounter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_currMemAddress : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_state.CH_CONTROL~q\ : std_logic;
SIGNAL \ALT_INV_state.EMPTY~q\ : std_logic;
SIGNAL ALT_INV_stateNum : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_arch_loop_start~q\ : std_logic;
SIGNAL \ALT_INV_arch_recording~q\ : std_logic;
SIGNAL ALT_INV_arch_recSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_arch_Ch3END : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_arch_Ch2END : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_arch_Ch1END : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_arch_Ch0END : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch0ACT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector154~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector155~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector158~0_combout\ : std_logic;
SIGNAL \ALT_INV_stateNum~1_combout\ : std_logic;
SIGNAL \ALT_INV_arch_loop_start~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL ALT_INV_recCounter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ch3HT~q\ : std_logic;
SIGNAL \ALT_INV_ch1HT~q\ : std_logic;
SIGNAL \ALT_INV_ch2HT~q\ : std_logic;
SIGNAL \ALT_INV_ch0HT~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~17_combout\ : std_logic;
SIGNAL \ALT_INV_Selector144~0_combout\ : std_logic;
SIGNAL ALT_INV_memEndAddr : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_Selector145~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~16_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~15_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~14_combout\ : std_logic;
SIGNAL \ALT_INV_Selector143~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~11_combout\ : std_logic;
SIGNAL \ALT_INV_Selector150~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector154~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector163~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.PRE_REC~q\ : std_logic;
SIGNAL \ALT_INV_state.REC_OTHER~q\ : std_logic;
SIGNAL \ALT_INV_state.REC_FIRST~q\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector134~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector134~0_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch2ACT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector68~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector133~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector133~0_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch1ACT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector132~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector132~0_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch0ACT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector140~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \ALT_INV_ch3HT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \ALT_INV_ch1HT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \ALT_INV_ch2HT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector137~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector136~0_combout\ : std_logic;
SIGNAL \ALT_INV_ch0HT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector141~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector142~0_combout\ : std_logic;
SIGNAL \ALT_INV_recCounter~2_combout\ : std_logic;
SIGNAL \ALT_INV_recCounter~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~3_combout\ : std_logic;
SIGNAL \ALT_INV_recCounter~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector164~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~12_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch3ACT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan3~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch2ACT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch1ACT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_KB_STOP~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_ClearCH~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_ALLPLAY~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_PLAY~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_Selchannel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_REC~input_o\ : std_logic;
SIGNAL \ALT_INV_KB_Selchannel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector135~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector135~0_combout\ : std_logic;
SIGNAL \ALT_INV_arch_Ch3ACT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector100~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_ResetN <= ResetN;
ww_KB_Selchannel <= KB_Selchannel;
ww_KB_RecOnMet <= KB_RecOnMet;
ww_KB_PLAY <= KB_PLAY;
ww_KB_ALLPLAY <= KB_ALLPLAY;
ww_KB_REC <= KB_REC;
ww_KB_STOP <= KB_STOP;
ww_KB_ClearCH <= KB_ClearCH;
ww_KB_IMMstart <= KB_IMMstart;
recSel <= ww_recSel;
recording <= ww_recording;
loop_start <= ww_loop_start;
Imm_start <= ww_Imm_start;
CurrState <= ww_CurrState;
ENDMemAddress <= ww_ENDMemAddress;
currentMemAddress <= ww_currentMemAddress;
Ch0Activate <= ww_Ch0Activate;
Ch1Activate <= ww_Ch1Activate;
Ch2Activate <= ww_Ch2Activate;
Ch3Activate <= ww_Ch3Activate;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_currMemAddress(17) <= NOT currMemAddress(17);
ALT_INV_currMemAddress(16) <= NOT currMemAddress(16);
ALT_INV_currMemAddress(15) <= NOT currMemAddress(15);
ALT_INV_currMemAddress(14) <= NOT currMemAddress(14);
ALT_INV_currMemAddress(13) <= NOT currMemAddress(13);
ALT_INV_currMemAddress(12) <= NOT currMemAddress(12);
ALT_INV_currMemAddress(11) <= NOT currMemAddress(11);
ALT_INV_currMemAddress(10) <= NOT currMemAddress(10);
ALT_INV_currMemAddress(9) <= NOT currMemAddress(9);
ALT_INV_currMemAddress(8) <= NOT currMemAddress(8);
ALT_INV_currMemAddress(7) <= NOT currMemAddress(7);
ALT_INV_currMemAddress(6) <= NOT currMemAddress(6);
ALT_INV_currMemAddress(5) <= NOT currMemAddress(5);
ALT_INV_currMemAddress(4) <= NOT currMemAddress(4);
ALT_INV_currMemAddress(3) <= NOT currMemAddress(3);
ALT_INV_currMemAddress(2) <= NOT currMemAddress(2);
ALT_INV_currMemAddress(1) <= NOT currMemAddress(1);
ALT_INV_currMemAddress(0) <= NOT currMemAddress(0);
\ALT_INV_state.CH_CONTROL~q\ <= NOT \state.CH_CONTROL~q\;
\ALT_INV_state.EMPTY~q\ <= NOT \state.EMPTY~q\;
ALT_INV_stateNum(2) <= NOT stateNum(2);
ALT_INV_stateNum(1) <= NOT stateNum(1);
ALT_INV_stateNum(0) <= NOT stateNum(0);
\ALT_INV_arch_loop_start~q\ <= NOT \arch_loop_start~q\;
\ALT_INV_arch_recording~q\ <= NOT \arch_recording~q\;
ALT_INV_arch_recSel(1) <= NOT arch_recSel(1);
ALT_INV_arch_recSel(0) <= NOT arch_recSel(0);
ALT_INV_arch_Ch3END(15) <= NOT arch_Ch3END(15);
ALT_INV_arch_Ch3END(16) <= NOT arch_Ch3END(16);
ALT_INV_arch_Ch3END(17) <= NOT arch_Ch3END(17);
ALT_INV_arch_Ch3END(8) <= NOT arch_Ch3END(8);
ALT_INV_arch_Ch3END(9) <= NOT arch_Ch3END(9);
ALT_INV_arch_Ch3END(10) <= NOT arch_Ch3END(10);
ALT_INV_arch_Ch3END(12) <= NOT arch_Ch3END(12);
ALT_INV_arch_Ch3END(13) <= NOT arch_Ch3END(13);
ALT_INV_arch_Ch3END(14) <= NOT arch_Ch3END(14);
ALT_INV_arch_Ch3END(11) <= NOT arch_Ch3END(11);
ALT_INV_arch_Ch3END(3) <= NOT arch_Ch3END(3);
ALT_INV_arch_Ch3END(1) <= NOT arch_Ch3END(1);
ALT_INV_arch_Ch3END(4) <= NOT arch_Ch3END(4);
ALT_INV_arch_Ch3END(7) <= NOT arch_Ch3END(7);
ALT_INV_arch_Ch2END(15) <= NOT arch_Ch2END(15);
ALT_INV_arch_Ch2END(16) <= NOT arch_Ch2END(16);
ALT_INV_arch_Ch2END(17) <= NOT arch_Ch2END(17);
ALT_INV_arch_Ch2END(8) <= NOT arch_Ch2END(8);
ALT_INV_arch_Ch2END(9) <= NOT arch_Ch2END(9);
ALT_INV_arch_Ch2END(10) <= NOT arch_Ch2END(10);
ALT_INV_arch_Ch2END(12) <= NOT arch_Ch2END(12);
ALT_INV_arch_Ch2END(13) <= NOT arch_Ch2END(13);
ALT_INV_arch_Ch2END(14) <= NOT arch_Ch2END(14);
ALT_INV_arch_Ch2END(11) <= NOT arch_Ch2END(11);
ALT_INV_arch_Ch2END(3) <= NOT arch_Ch2END(3);
ALT_INV_arch_Ch2END(1) <= NOT arch_Ch2END(1);
ALT_INV_arch_Ch2END(4) <= NOT arch_Ch2END(4);
ALT_INV_arch_Ch2END(7) <= NOT arch_Ch2END(7);
ALT_INV_arch_Ch1END(15) <= NOT arch_Ch1END(15);
ALT_INV_arch_Ch1END(16) <= NOT arch_Ch1END(16);
ALT_INV_arch_Ch1END(17) <= NOT arch_Ch1END(17);
ALT_INV_arch_Ch1END(8) <= NOT arch_Ch1END(8);
ALT_INV_arch_Ch1END(9) <= NOT arch_Ch1END(9);
ALT_INV_arch_Ch1END(10) <= NOT arch_Ch1END(10);
ALT_INV_arch_Ch1END(12) <= NOT arch_Ch1END(12);
ALT_INV_arch_Ch1END(13) <= NOT arch_Ch1END(13);
ALT_INV_arch_Ch1END(14) <= NOT arch_Ch1END(14);
ALT_INV_arch_Ch1END(11) <= NOT arch_Ch1END(11);
ALT_INV_arch_Ch1END(3) <= NOT arch_Ch1END(3);
ALT_INV_arch_Ch1END(1) <= NOT arch_Ch1END(1);
ALT_INV_arch_Ch1END(4) <= NOT arch_Ch1END(4);
ALT_INV_arch_Ch1END(7) <= NOT arch_Ch1END(7);
ALT_INV_arch_Ch0END(15) <= NOT arch_Ch0END(15);
ALT_INV_arch_Ch0END(16) <= NOT arch_Ch0END(16);
ALT_INV_arch_Ch0END(17) <= NOT arch_Ch0END(17);
ALT_INV_arch_Ch0END(8) <= NOT arch_Ch0END(8);
ALT_INV_arch_Ch0END(9) <= NOT arch_Ch0END(9);
ALT_INV_arch_Ch0END(10) <= NOT arch_Ch0END(10);
ALT_INV_arch_Ch0END(12) <= NOT arch_Ch0END(12);
ALT_INV_arch_Ch0END(13) <= NOT arch_Ch0END(13);
ALT_INV_arch_Ch0END(14) <= NOT arch_Ch0END(14);
ALT_INV_arch_Ch0END(11) <= NOT arch_Ch0END(11);
ALT_INV_arch_Ch0END(3) <= NOT arch_Ch0END(3);
ALT_INV_arch_Ch0END(1) <= NOT arch_Ch0END(1);
ALT_INV_arch_Ch0END(4) <= NOT arch_Ch0END(4);
ALT_INV_arch_Ch0END(7) <= NOT arch_Ch0END(7);
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
ALT_INV_arch_Ch1END(2) <= NOT arch_Ch1END(2);
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
ALT_INV_arch_Ch1END(0) <= NOT arch_Ch1END(0);
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
ALT_INV_arch_Ch1END(5) <= NOT arch_Ch1END(5);
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_arch_Ch1END(6) <= NOT arch_Ch1END(6);
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_arch_Ch0ACT~q\ <= NOT \arch_Ch0ACT~q\;
ALT_INV_arch_Ch0END(31) <= NOT arch_Ch0END(31);
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
ALT_INV_arch_Ch0END(2) <= NOT arch_Ch0END(2);
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
ALT_INV_arch_Ch0END(0) <= NOT arch_Ch0END(0);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
ALT_INV_arch_Ch0END(5) <= NOT arch_Ch0END(5);
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_arch_Ch0END(6) <= NOT arch_Ch0END(6);
\ALT_INV_Selector154~1_combout\ <= NOT \Selector154~1_combout\;
\ALT_INV_Selector155~0_combout\ <= NOT \Selector155~0_combout\;
\ALT_INV_Selector158~0_combout\ <= NOT \Selector158~0_combout\;
\ALT_INV_stateNum~1_combout\ <= NOT \stateNum~1_combout\;
\ALT_INV_arch_loop_start~0_combout\ <= NOT \arch_loop_start~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_recCounter(1) <= NOT recCounter(1);
ALT_INV_recCounter(2) <= NOT recCounter(2);
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_ch3HT~q\ <= NOT \ch3HT~q\;
\ALT_INV_ch1HT~q\ <= NOT \ch1HT~q\;
\ALT_INV_ch2HT~q\ <= NOT \ch2HT~q\;
\ALT_INV_ch0HT~q\ <= NOT \ch0HT~q\;
ALT_INV_recCounter(0) <= NOT recCounter(0);
\ALT_INV_Equal6~17_combout\ <= NOT \Equal6~17_combout\;
\ALT_INV_Selector144~0_combout\ <= NOT \Selector144~0_combout\;
ALT_INV_memEndAddr(16) <= NOT memEndAddr(16);
\ALT_INV_Selector145~0_combout\ <= NOT \Selector145~0_combout\;
ALT_INV_memEndAddr(15) <= NOT memEndAddr(15);
\ALT_INV_Equal6~16_combout\ <= NOT \Equal6~16_combout\;
ALT_INV_memEndAddr(12) <= NOT memEndAddr(12);
\ALT_INV_Equal6~15_combout\ <= NOT \Equal6~15_combout\;
ALT_INV_memEndAddr(11) <= NOT memEndAddr(11);
\ALT_INV_Equal6~14_combout\ <= NOT \Equal6~14_combout\;
\ALT_INV_Selector143~0_combout\ <= NOT \Selector143~0_combout\;
ALT_INV_memEndAddr(17) <= NOT memEndAddr(17);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal6~13_combout\ <= NOT \Equal6~13_combout\;
ALT_INV_memEndAddr(14) <= NOT memEndAddr(14);
\ALT_INV_Equal6~12_combout\ <= NOT \Equal6~12_combout\;
ALT_INV_memEndAddr(13) <= NOT memEndAddr(13);
\ALT_INV_Equal6~11_combout\ <= NOT \Equal6~11_combout\;
\ALT_INV_Selector150~0_combout\ <= NOT \Selector150~0_combout\;
ALT_INV_memEndAddr(10) <= NOT memEndAddr(10);
\ALT_INV_Equal6~10_combout\ <= NOT \Equal6~10_combout\;
ALT_INV_memEndAddr(9) <= NOT memEndAddr(9);
\ALT_INV_Equal6~9_combout\ <= NOT \Equal6~9_combout\;
ALT_INV_memEndAddr(6) <= NOT memEndAddr(6);
\ALT_INV_Equal6~8_combout\ <= NOT \Equal6~8_combout\;
ALT_INV_memEndAddr(5) <= NOT memEndAddr(5);
\ALT_INV_Equal6~7_combout\ <= NOT \Equal6~7_combout\;
ALT_INV_memEndAddr(2) <= NOT memEndAddr(2);
\ALT_INV_Equal6~6_combout\ <= NOT \Equal6~6_combout\;
\ALT_INV_Equal6~5_combout\ <= NOT \Equal6~5_combout\;
ALT_INV_memEndAddr(8) <= NOT memEndAddr(8);
\ALT_INV_Equal6~4_combout\ <= NOT \Equal6~4_combout\;
ALT_INV_memEndAddr(7) <= NOT memEndAddr(7);
\ALT_INV_Equal6~3_combout\ <= NOT \Equal6~3_combout\;
ALT_INV_memEndAddr(4) <= NOT memEndAddr(4);
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
ALT_INV_memEndAddr(3) <= NOT memEndAddr(3);
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
ALT_INV_memEndAddr(1) <= NOT memEndAddr(1);
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
ALT_INV_memEndAddr(0) <= NOT memEndAddr(0);
\ALT_INV_Selector154~0_combout\ <= NOT \Selector154~0_combout\;
\ALT_INV_Selector163~0_combout\ <= NOT \Selector163~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_state.PRE_REC~q\ <= NOT \state.PRE_REC~q\;
\ALT_INV_state.REC_OTHER~q\ <= NOT \state.REC_OTHER~q\;
\ALT_INV_state.REC_FIRST~q\ <= NOT \state.REC_FIRST~q\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Selector134~1_combout\ <= NOT \Selector134~1_combout\;
\ALT_INV_Selector134~0_combout\ <= NOT \Selector134~0_combout\;
\ALT_INV_arch_Ch2ACT~0_combout\ <= NOT \arch_Ch2ACT~0_combout\;
\ALT_INV_Selector68~0_combout\ <= NOT \Selector68~0_combout\;
\ALT_INV_Selector133~1_combout\ <= NOT \Selector133~1_combout\;
\ALT_INV_Selector133~0_combout\ <= NOT \Selector133~0_combout\;
\ALT_INV_arch_Ch1ACT~0_combout\ <= NOT \arch_Ch1ACT~0_combout\;
\ALT_INV_Selector36~0_combout\ <= NOT \Selector36~0_combout\;
\ALT_INV_Selector132~1_combout\ <= NOT \Selector132~1_combout\;
\ALT_INV_Selector132~0_combout\ <= NOT \Selector132~0_combout\;
\ALT_INV_arch_Ch0ACT~0_combout\ <= NOT \arch_Ch0ACT~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector140~0_combout\ <= NOT \Selector140~0_combout\;
\ALT_INV_Mux51~2_combout\ <= NOT \Mux51~2_combout\;
\ALT_INV_ch3HT~0_combout\ <= NOT \ch3HT~0_combout\;
\ALT_INV_Mux51~1_combout\ <= NOT \Mux51~1_combout\;
\ALT_INV_ch1HT~0_combout\ <= NOT \ch1HT~0_combout\;
\ALT_INV_Mux51~0_combout\ <= NOT \Mux51~0_combout\;
\ALT_INV_ch2HT~0_combout\ <= NOT \ch2HT~0_combout\;
\ALT_INV_Selector137~0_combout\ <= NOT \Selector137~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Selector136~0_combout\ <= NOT \Selector136~0_combout\;
\ALT_INV_ch0HT~0_combout\ <= NOT \ch0HT~0_combout\;
\ALT_INV_Selector141~0_combout\ <= NOT \Selector141~0_combout\;
\ALT_INV_Selector142~0_combout\ <= NOT \Selector142~0_combout\;
\ALT_INV_recCounter~2_combout\ <= NOT \recCounter~2_combout\;
\ALT_INV_recCounter~1_combout\ <= NOT \recCounter~1_combout\;
\ALT_INV_Selector164~7_combout\ <= NOT \Selector164~7_combout\;
\ALT_INV_Selector3~2_combout\ <= NOT \Selector3~2_combout\;
\ALT_INV_Selector164~6_combout\ <= NOT \Selector164~6_combout\;
\ALT_INV_Selector164~5_combout\ <= NOT \Selector164~5_combout\;
\ALT_INV_Selector164~4_combout\ <= NOT \Selector164~4_combout\;
\ALT_INV_Selector164~3_combout\ <= NOT \Selector164~3_combout\;
\ALT_INV_recCounter~0_combout\ <= NOT \recCounter~0_combout\;
\ALT_INV_Selector164~2_combout\ <= NOT \Selector164~2_combout\;
\ALT_INV_process_0~12_combout\ <= NOT \process_0~12_combout\;
\ALT_INV_process_0~11_combout\ <= NOT \process_0~11_combout\;
\ALT_INV_arch_Ch3ACT~q\ <= NOT \arch_Ch3ACT~q\;
ALT_INV_arch_Ch3END(31) <= NOT arch_Ch3END(31);
\ALT_INV_LessThan3~18_combout\ <= NOT \LessThan3~18_combout\;
\ALT_INV_LessThan3~17_combout\ <= NOT \LessThan3~17_combout\;
\ALT_INV_LessThan3~16_combout\ <= NOT \LessThan3~16_combout\;
\ALT_INV_LessThan3~15_combout\ <= NOT \LessThan3~15_combout\;
\ALT_INV_LessThan3~14_combout\ <= NOT \LessThan3~14_combout\;
\ALT_INV_LessThan3~13_combout\ <= NOT \LessThan3~13_combout\;
\ALT_INV_LessThan3~12_combout\ <= NOT \LessThan3~12_combout\;
\ALT_INV_LessThan3~11_combout\ <= NOT \LessThan3~11_combout\;
\ALT_INV_LessThan3~10_combout\ <= NOT \LessThan3~10_combout\;
\ALT_INV_LessThan3~9_combout\ <= NOT \LessThan3~9_combout\;
\ALT_INV_LessThan3~8_combout\ <= NOT \LessThan3~8_combout\;
\ALT_INV_LessThan3~7_combout\ <= NOT \LessThan3~7_combout\;
\ALT_INV_LessThan3~6_combout\ <= NOT \LessThan3~6_combout\;
\ALT_INV_LessThan3~5_combout\ <= NOT \LessThan3~5_combout\;
\ALT_INV_LessThan3~4_combout\ <= NOT \LessThan3~4_combout\;
ALT_INV_arch_Ch3END(2) <= NOT arch_Ch3END(2);
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
ALT_INV_arch_Ch3END(0) <= NOT arch_Ch3END(0);
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
ALT_INV_arch_Ch3END(5) <= NOT arch_Ch3END(5);
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
ALT_INV_arch_Ch3END(6) <= NOT arch_Ch3END(6);
\ALT_INV_process_0~9_combout\ <= NOT \process_0~9_combout\;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
\ALT_INV_arch_Ch2ACT~q\ <= NOT \arch_Ch2ACT~q\;
ALT_INV_arch_Ch2END(31) <= NOT arch_Ch2END(31);
\ALT_INV_LessThan2~18_combout\ <= NOT \LessThan2~18_combout\;
\ALT_INV_LessThan2~17_combout\ <= NOT \LessThan2~17_combout\;
\ALT_INV_LessThan2~16_combout\ <= NOT \LessThan2~16_combout\;
\ALT_INV_LessThan2~15_combout\ <= NOT \LessThan2~15_combout\;
\ALT_INV_LessThan2~14_combout\ <= NOT \LessThan2~14_combout\;
\ALT_INV_LessThan2~13_combout\ <= NOT \LessThan2~13_combout\;
\ALT_INV_LessThan2~12_combout\ <= NOT \LessThan2~12_combout\;
\ALT_INV_LessThan2~11_combout\ <= NOT \LessThan2~11_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
ALT_INV_arch_Ch2END(2) <= NOT arch_Ch2END(2);
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
ALT_INV_arch_Ch2END(0) <= NOT arch_Ch2END(0);
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
ALT_INV_arch_Ch2END(5) <= NOT arch_Ch2END(5);
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_arch_Ch2END(6) <= NOT arch_Ch2END(6);
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_arch_Ch1ACT~q\ <= NOT \arch_Ch1ACT~q\;
ALT_INV_arch_Ch1END(31) <= NOT arch_Ch1END(31);
\ALT_INV_LessThan1~18_combout\ <= NOT \LessThan1~18_combout\;
\ALT_INV_LessThan1~17_combout\ <= NOT \LessThan1~17_combout\;
\ALT_INV_LessThan1~16_combout\ <= NOT \LessThan1~16_combout\;
\ALT_INV_LessThan1~15_combout\ <= NOT \LessThan1~15_combout\;
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_KB_STOP~input_o\ <= NOT \KB_STOP~input_o\;
\ALT_INV_KB_ClearCH~input_o\ <= NOT \KB_ClearCH~input_o\;
\ALT_INV_KB_ALLPLAY~input_o\ <= NOT \KB_ALLPLAY~input_o\;
\ALT_INV_KB_PLAY~input_o\ <= NOT \KB_PLAY~input_o\;
\ALT_INV_KB_Selchannel[1]~input_o\ <= NOT \KB_Selchannel[1]~input_o\;
\ALT_INV_KB_REC~input_o\ <= NOT \KB_REC~input_o\;
\ALT_INV_KB_Selchannel[0]~input_o\ <= NOT \KB_Selchannel[0]~input_o\;
\ALT_INV_Selector135~1_combout\ <= NOT \Selector135~1_combout\;
\ALT_INV_Selector135~0_combout\ <= NOT \Selector135~0_combout\;
\ALT_INV_arch_Ch3ACT~0_combout\ <= NOT \arch_Ch3ACT~0_combout\;
\ALT_INV_Selector100~0_combout\ <= NOT \Selector100~0_combout\;

\recSel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => arch_recSel(0),
	devoe => ww_devoe,
	o => \recSel[0]~output_o\);

\recSel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => arch_recSel(1),
	devoe => ww_devoe,
	o => \recSel[1]~output_o\);

\recording~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \arch_recording~q\,
	devoe => ww_devoe,
	o => \recording~output_o\);

\loop_start~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_arch_loop_start~q\,
	devoe => ww_devoe,
	o => \loop_start~output_o\);

\Imm_start~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Imm_start~output_o\);

\CurrState[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_stateNum(0),
	devoe => ww_devoe,
	o => \CurrState[0]~output_o\);

\CurrState[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_stateNum(1),
	devoe => ww_devoe,
	o => \CurrState[1]~output_o\);

\CurrState[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_stateNum(2),
	devoe => ww_devoe,
	o => \CurrState[2]~output_o\);

\ENDMemAddress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(0),
	devoe => ww_devoe,
	o => \ENDMemAddress[0]~output_o\);

\ENDMemAddress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(1),
	devoe => ww_devoe,
	o => \ENDMemAddress[1]~output_o\);

\ENDMemAddress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(2),
	devoe => ww_devoe,
	o => \ENDMemAddress[2]~output_o\);

\ENDMemAddress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(3),
	devoe => ww_devoe,
	o => \ENDMemAddress[3]~output_o\);

\ENDMemAddress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(4),
	devoe => ww_devoe,
	o => \ENDMemAddress[4]~output_o\);

\ENDMemAddress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(5),
	devoe => ww_devoe,
	o => \ENDMemAddress[5]~output_o\);

\ENDMemAddress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(6),
	devoe => ww_devoe,
	o => \ENDMemAddress[6]~output_o\);

\ENDMemAddress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(7),
	devoe => ww_devoe,
	o => \ENDMemAddress[7]~output_o\);

\ENDMemAddress[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(8),
	devoe => ww_devoe,
	o => \ENDMemAddress[8]~output_o\);

\ENDMemAddress[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(9),
	devoe => ww_devoe,
	o => \ENDMemAddress[9]~output_o\);

\ENDMemAddress[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(10),
	devoe => ww_devoe,
	o => \ENDMemAddress[10]~output_o\);

\ENDMemAddress[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(11),
	devoe => ww_devoe,
	o => \ENDMemAddress[11]~output_o\);

\ENDMemAddress[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(12),
	devoe => ww_devoe,
	o => \ENDMemAddress[12]~output_o\);

\ENDMemAddress[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(13),
	devoe => ww_devoe,
	o => \ENDMemAddress[13]~output_o\);

\ENDMemAddress[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(14),
	devoe => ww_devoe,
	o => \ENDMemAddress[14]~output_o\);

\ENDMemAddress[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(15),
	devoe => ww_devoe,
	o => \ENDMemAddress[15]~output_o\);

\ENDMemAddress[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(16),
	devoe => ww_devoe,
	o => \ENDMemAddress[16]~output_o\);

\ENDMemAddress[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => endAddr(17),
	devoe => ww_devoe,
	o => \ENDMemAddress[17]~output_o\);

\currentMemAddress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(0),
	devoe => ww_devoe,
	o => \currentMemAddress[0]~output_o\);

\currentMemAddress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(1),
	devoe => ww_devoe,
	o => \currentMemAddress[1]~output_o\);

\currentMemAddress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(2),
	devoe => ww_devoe,
	o => \currentMemAddress[2]~output_o\);

\currentMemAddress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(3),
	devoe => ww_devoe,
	o => \currentMemAddress[3]~output_o\);

\currentMemAddress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(4),
	devoe => ww_devoe,
	o => \currentMemAddress[4]~output_o\);

\currentMemAddress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(5),
	devoe => ww_devoe,
	o => \currentMemAddress[5]~output_o\);

\currentMemAddress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(6),
	devoe => ww_devoe,
	o => \currentMemAddress[6]~output_o\);

\currentMemAddress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(7),
	devoe => ww_devoe,
	o => \currentMemAddress[7]~output_o\);

\currentMemAddress[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(8),
	devoe => ww_devoe,
	o => \currentMemAddress[8]~output_o\);

\currentMemAddress[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(9),
	devoe => ww_devoe,
	o => \currentMemAddress[9]~output_o\);

\currentMemAddress[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(10),
	devoe => ww_devoe,
	o => \currentMemAddress[10]~output_o\);

\currentMemAddress[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(11),
	devoe => ww_devoe,
	o => \currentMemAddress[11]~output_o\);

\currentMemAddress[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(12),
	devoe => ww_devoe,
	o => \currentMemAddress[12]~output_o\);

\currentMemAddress[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(13),
	devoe => ww_devoe,
	o => \currentMemAddress[13]~output_o\);

\currentMemAddress[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(14),
	devoe => ww_devoe,
	o => \currentMemAddress[14]~output_o\);

\currentMemAddress[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(15),
	devoe => ww_devoe,
	o => \currentMemAddress[15]~output_o\);

\currentMemAddress[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(16),
	devoe => ww_devoe,
	o => \currentMemAddress[16]~output_o\);

\currentMemAddress[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => currMemAddress(17),
	devoe => ww_devoe,
	o => \currentMemAddress[17]~output_o\);

\Ch0Activate~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \arch_Ch0DEC~q\,
	devoe => ww_devoe,
	o => \Ch0Activate~output_o\);

\Ch1Activate~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \arch_Ch1DEC~q\,
	devoe => ww_devoe,
	o => \Ch1Activate~output_o\);

\Ch2Activate~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \arch_Ch2DEC~q\,
	devoe => ww_devoe,
	o => \Ch2Activate~output_o\);

\Ch3Activate~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \arch_Ch3DEC~q\,
	devoe => ww_devoe,
	o => \Ch3Activate~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\KB_Selchannel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_Selchannel(0),
	o => \KB_Selchannel[0]~input_o\);

\KB_REC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_REC,
	o => \KB_REC~input_o\);

\KB_PLAY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_PLAY,
	o => \KB_PLAY~input_o\);

\KB_ALLPLAY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_ALLPLAY,
	o => \KB_ALLPLAY~input_o\);

\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( currMemAddress(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( currMemAddress(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

\ResetN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResetN,
	o => \ResetN~input_o\);

\currMemAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~1_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(0));

\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( currMemAddress(1) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( currMemAddress(1) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(1),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

\currMemAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~5_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(1));

\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( currMemAddress(2) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( currMemAddress(2) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(2),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

\currMemAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~9_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(2));

\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( currMemAddress(3) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( currMemAddress(3) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(3),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

\currMemAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~13_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(3));

\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( currMemAddress(4) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( currMemAddress(4) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(4),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

\currMemAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~17_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(4));

\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( currMemAddress(5) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( currMemAddress(5) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(5),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

\currMemAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~21_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(5));

\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( currMemAddress(6) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( currMemAddress(6) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(6),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

\currMemAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~25_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(6));

\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( currMemAddress(7) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( currMemAddress(7) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(7),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

\currMemAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~29_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(7));

\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( currMemAddress(8) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( currMemAddress(8) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(8),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

\currMemAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~33_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(8));

\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( currMemAddress(9) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( currMemAddress(9) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(9),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

\currMemAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~37_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(9));

\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( currMemAddress(10) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( currMemAddress(10) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(10),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

\currMemAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~41_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(10));

\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( currMemAddress(11) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( currMemAddress(11) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(11),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

\currMemAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~45_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(11));

\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( currMemAddress(12) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( currMemAddress(12) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(12),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

\currMemAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~49_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(12));

\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( currMemAddress(13) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( currMemAddress(13) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(13),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

\currMemAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~53_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(13));

\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( currMemAddress(14) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( currMemAddress(14) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(14),
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

\currMemAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~57_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(14));

\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( currMemAddress(15) ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( currMemAddress(15) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(15),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

\currMemAddress[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~61_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(15));

\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( currMemAddress(16) ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( currMemAddress(16) ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(16),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

\currMemAddress[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~65_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(16));

\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( currMemAddress(17) ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(17),
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\);

\currMemAddress[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~69_sumout\,
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_arch_loop_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currMemAddress(17));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !currMemAddress(16) & ( !currMemAddress(17) & ( (!currMemAddress(11) & (!currMemAddress(12) & (!currMemAddress(13) & !currMemAddress(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_currMemAddress(12),
	datac => ALT_INV_currMemAddress(13),
	datad => ALT_INV_currMemAddress(15),
	datae => ALT_INV_currMemAddress(16),
	dataf => ALT_INV_currMemAddress(17),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !currMemAddress(9) & ( !currMemAddress(10) & ( (currMemAddress(5) & (currMemAddress(6) & (!currMemAddress(7) & !currMemAddress(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => ALT_INV_currMemAddress(6),
	datac => ALT_INV_currMemAddress(7),
	datad => ALT_INV_currMemAddress(8),
	datae => ALT_INV_currMemAddress(9),
	dataf => ALT_INV_currMemAddress(10),
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !currMemAddress(4) & ( !currMemAddress(14) & ( (!currMemAddress(0) & (!currMemAddress(1) & (currMemAddress(2) & !currMemAddress(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => ALT_INV_currMemAddress(1),
	datac => ALT_INV_currMemAddress(2),
	datad => ALT_INV_currMemAddress(3),
	datae => ALT_INV_currMemAddress(4),
	dataf => ALT_INV_currMemAddress(14),
	combout => \Equal0~2_combout\);

\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \Equal0~2_combout\ & ( (!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))) ) ) # ( !\Equal0~2_combout\ & ( (!\KB_PLAY~input_o\ & !\KB_ALLPLAY~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000000010001000100010001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_PLAY~input_o\,
	datab => \ALT_INV_KB_ALLPLAY~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	combout => \process_0~0_combout\);

\Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\KB_REC~input_o\ & !\state.EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.EMPTY~q\,
	combout => \Selector3~2_combout\);

\KB_ClearCH~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_ClearCH,
	o => \KB_ClearCH~input_o\);

\KB_STOP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_STOP,
	o => \KB_STOP~input_o\);

\recCounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \recCounter~0_combout\ = (!\KB_PLAY~input_o\ & (\KB_ClearCH~input_o\ & !\KB_STOP~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_PLAY~input_o\,
	datab => \ALT_INV_KB_ClearCH~input_o\,
	datac => \ALT_INV_KB_STOP~input_o\,
	combout => \recCounter~0_combout\);

\KB_Selchannel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_Selchannel(1),
	o => \KB_Selchannel[1]~input_o\);

\ch0HT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ch0HT~0_combout\ = ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (!\KB_Selchannel[1]~input_o\ & !\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \ch0HT~0_combout\);

\Selector165~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector165~0_combout\ = ( \state.PRE_REC~q\ & ( (!\arch_loop_start~q\) # ((!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & \state.REC_OTHER~q\))) ) ) # ( !\state.PRE_REC~q\ & ( (\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & 
-- \state.REC_OTHER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000101010101110101000000000010000001010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_state.REC_OTHER~q\,
	datae => \ALT_INV_state.PRE_REC~q\,
	combout => \Selector165~0_combout\);

\state.REC_OTHER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector165~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.REC_OTHER~q\);

\Selector136~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (!\state.REC_OTHER~q\ & (!\state.PRE_REC~q\ & !\state.REC_FIRST~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.REC_OTHER~q\,
	datab => \ALT_INV_state.PRE_REC~q\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	combout => \Selector136~0_combout\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\KB_Selchannel[1]~input_o\ & ((\state.EMPTY~q\) # (\KB_REC~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	combout => \Selector1~0_combout\);

\arch_recSel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_recSel[0]~0_combout\ = (!\state.CH_CONTROL~q\ & ((!\state.EMPTY~q\))) # (\state.CH_CONTROL~q\ & (\KB_REC~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101110001011100010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_state.CH_CONTROL~q\,
	combout => \arch_recSel[0]~0_combout\);

\arch_recSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_recSel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_recSel(1));

\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!arch_recSel(0) & !arch_recSel(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	combout => \Mux32~0_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

\Selector137~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = ( !\Equal0~3_combout\ & ( \state.REC_FIRST~q\ & ( (!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & ((!\state.REC_OTHER~q\) # (\arch_loop_start~q\)))) ) ) ) # ( \Equal0~3_combout\ & ( !\state.REC_FIRST~q\ & ( (!\state.REC_OTHER~q\) 
-- # ((\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & !\KB_ALLPLAY~input_o\))) ) ) ) # ( !\Equal0~3_combout\ & ( !\state.REC_FIRST~q\ & ( (!\state.REC_OTHER~q\) # ((\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & !\KB_ALLPLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000000111111110100000011000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_state.REC_OTHER~q\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_state.REC_FIRST~q\,
	combout => \Selector137~0_combout\);

\Selector136~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = ( \Mux32~0_combout\ & ( \Selector137~0_combout\ & ( (\ch0HT~q\ & ((!\Selector136~0_combout\) # ((\state.CH_CONTROL~q\ & !\ch0HT~0_combout\)))) ) ) ) # ( !\Mux32~0_combout\ & ( \Selector137~0_combout\ & ( (\ch0HT~q\ & 
-- ((!\Selector136~0_combout\) # ((\state.CH_CONTROL~q\ & !\ch0HT~0_combout\)))) ) ) ) # ( \Mux32~0_combout\ & ( !\Selector137~0_combout\ ) ) # ( !\Mux32~0_combout\ & ( !\Selector137~0_combout\ & ( (\ch0HT~q\ & ((!\Selector136~0_combout\) # 
-- ((\state.CH_CONTROL~q\ & !\ch0HT~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010000111111111111111100110011000100000011001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_ch0HT~q\,
	datac => \ALT_INV_ch0HT~0_combout\,
	datad => \ALT_INV_Selector136~0_combout\,
	datae => \ALT_INV_Mux32~0_combout\,
	dataf => \ALT_INV_Selector137~0_combout\,
	combout => \Selector136~1_combout\);

ch0HT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector136~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch0HT~q\);

\ch2HT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ch2HT~0_combout\ = ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (\KB_Selchannel[1]~input_o\ & !\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \ch2HT~0_combout\);

\Mux51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (!arch_recSel(0) & arch_recSel(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	combout => \Mux51~0_combout\);

\Selector138~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = ( \ch2HT~0_combout\ & ( \Mux51~0_combout\ & ( (!\Selector137~0_combout\) # ((\ch2HT~q\ & !\Selector136~0_combout\)) ) ) ) # ( !\ch2HT~0_combout\ & ( \Mux51~0_combout\ & ( (!\Selector137~0_combout\) # ((\ch2HT~q\ & 
-- ((!\Selector136~0_combout\) # (\state.CH_CONTROL~q\)))) ) ) ) # ( \ch2HT~0_combout\ & ( !\Mux51~0_combout\ & ( (\ch2HT~q\ & !\Selector136~0_combout\) ) ) ) # ( !\ch2HT~0_combout\ & ( !\Mux51~0_combout\ & ( (\ch2HT~q\ & ((!\Selector136~0_combout\) # 
-- (\state.CH_CONTROL~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100000011000011111111001100011111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_ch2HT~q\,
	datac => \ALT_INV_Selector136~0_combout\,
	datad => \ALT_INV_Selector137~0_combout\,
	datae => \ALT_INV_ch2HT~0_combout\,
	dataf => \ALT_INV_Mux51~0_combout\,
	combout => \Selector138~0_combout\);

ch2HT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector138~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch2HT~q\);

\ch1HT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ch1HT~0_combout\ = ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (!\KB_Selchannel[1]~input_o\ & !\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \ch1HT~0_combout\);

\Mux51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (arch_recSel(0) & !arch_recSel(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	combout => \Mux51~1_combout\);

\Selector137~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = ( \ch1HT~0_combout\ & ( \Mux51~1_combout\ & ( (!\Selector137~0_combout\) # ((\ch1HT~q\ & !\Selector136~0_combout\)) ) ) ) # ( !\ch1HT~0_combout\ & ( \Mux51~1_combout\ & ( (!\Selector137~0_combout\) # ((\ch1HT~q\ & 
-- ((!\Selector136~0_combout\) # (\state.CH_CONTROL~q\)))) ) ) ) # ( \ch1HT~0_combout\ & ( !\Mux51~1_combout\ & ( (\ch1HT~q\ & !\Selector136~0_combout\) ) ) ) # ( !\ch1HT~0_combout\ & ( !\Mux51~1_combout\ & ( (\ch1HT~q\ & ((!\Selector136~0_combout\) # 
-- (\state.CH_CONTROL~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100000011000011111111001100011111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_ch1HT~q\,
	datac => \ALT_INV_Selector136~0_combout\,
	datad => \ALT_INV_Selector137~0_combout\,
	datae => \ALT_INV_ch1HT~0_combout\,
	dataf => \ALT_INV_Mux51~1_combout\,
	combout => \Selector137~1_combout\);

ch1HT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector137~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch1HT~q\);

\ch3HT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ch3HT~0_combout\ = ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (\KB_Selchannel[1]~input_o\ & !\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \ch3HT~0_combout\);

\Mux51~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (arch_recSel(0) & arch_recSel(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	combout => \Mux51~2_combout\);

\Selector139~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = ( \ch3HT~0_combout\ & ( \Mux51~2_combout\ & ( (!\Selector137~0_combout\) # ((\ch3HT~q\ & !\Selector136~0_combout\)) ) ) ) # ( !\ch3HT~0_combout\ & ( \Mux51~2_combout\ & ( (!\Selector137~0_combout\) # ((\ch3HT~q\ & 
-- ((!\Selector136~0_combout\) # (\state.CH_CONTROL~q\)))) ) ) ) # ( \ch3HT~0_combout\ & ( !\Mux51~2_combout\ & ( (\ch3HT~q\ & !\Selector136~0_combout\) ) ) ) # ( !\ch3HT~0_combout\ & ( !\Mux51~2_combout\ & ( (\ch3HT~q\ & ((!\Selector136~0_combout\) # 
-- (\state.CH_CONTROL~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100000011000011111111001100011111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_ch3HT~q\,
	datac => \ALT_INV_Selector136~0_combout\,
	datad => \ALT_INV_Selector137~0_combout\,
	datae => \ALT_INV_ch3HT~0_combout\,
	dataf => \ALT_INV_Mux51~2_combout\,
	combout => \Selector139~0_combout\);

ch3HT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector139~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ch3HT~q\);

\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \ch1HT~q\ & ( \ch3HT~q\ & ( ((!\KB_Selchannel[1]~input_o\ & (\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((\ch2HT~q\)))) # (\KB_Selchannel[0]~input_o\) ) ) ) # ( !\ch1HT~q\ & ( \ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & 
-- ((!\KB_Selchannel[1]~input_o\ & (\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((\ch2HT~q\))))) # (\KB_Selchannel[0]~input_o\ & (\KB_Selchannel[1]~input_o\)) ) ) ) # ( \ch1HT~q\ & ( !\ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & ((!\KB_Selchannel[1]~input_o\ 
-- & (\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((\ch2HT~q\))))) # (\KB_Selchannel[0]~input_o\ & (!\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\ch1HT~q\ & ( !\ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & ((!\KB_Selchannel[1]~input_o\ & (\ch0HT~q\)) # 
-- (\KB_Selchannel[1]~input_o\ & ((\ch2HT~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_Selchannel[1]~input_o\,
	datac => \ALT_INV_ch0HT~q\,
	datad => \ALT_INV_ch2HT~q\,
	datae => \ALT_INV_ch1HT~q\,
	dataf => \ALT_INV_ch3HT~q\,
	combout => \process_0~1_combout\);

\recCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \recCounter~1_combout\ = (!\KB_REC~input_o\ & (!\KB_PLAY~input_o\ & (\KB_ClearCH~input_o\ & !\KB_STOP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ClearCH~input_o\,
	datad => \ALT_INV_KB_STOP~input_o\,
	combout => \recCounter~1_combout\);

\recCounter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \recCounter~2_combout\ = ( \ch1HT~q\ & ( \ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & ((!\KB_Selchannel[1]~input_o\ & (!\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((!\ch2HT~q\))))) ) ) ) # ( !\ch1HT~q\ & ( \ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & 
-- ((!\KB_Selchannel[1]~input_o\ & (!\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((!\ch2HT~q\))))) # (\KB_Selchannel[0]~input_o\ & (!\KB_Selchannel[1]~input_o\)) ) ) ) # ( \ch1HT~q\ & ( !\ch3HT~q\ & ( (!\KB_Selchannel[0]~input_o\ & 
-- ((!\KB_Selchannel[1]~input_o\ & (!\ch0HT~q\)) # (\KB_Selchannel[1]~input_o\ & ((!\ch2HT~q\))))) # (\KB_Selchannel[0]~input_o\ & (\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\ch1HT~q\ & ( !\ch3HT~q\ & ( ((!\KB_Selchannel[1]~input_o\ & (!\ch0HT~q\)) # 
-- (\KB_Selchannel[1]~input_o\ & ((!\ch2HT~q\)))) # (\KB_Selchannel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111010101101100111001000111100110110001001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_Selchannel[1]~input_o\,
	datac => \ALT_INV_ch0HT~q\,
	datad => \ALT_INV_ch2HT~q\,
	datae => \ALT_INV_ch1HT~q\,
	dataf => \ALT_INV_ch3HT~q\,
	combout => \recCounter~2_combout\);

\Selector142~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\state.CH_CONTROL~q\ & (((\KB_REC~input_o\ & \recCounter~2_combout\)) # (\recCounter~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.CH_CONTROL~q\,
	datac => \ALT_INV_recCounter~1_combout\,
	datad => \ALT_INV_recCounter~2_combout\,
	combout => \Selector142~0_combout\);

\Selector141~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = ( \recCounter~1_combout\ & ( \recCounter~2_combout\ & ( (!\state.REC_OTHER~q\ & !\state.PRE_REC~q\) ) ) ) # ( !\recCounter~1_combout\ & ( \recCounter~2_combout\ & ( (!\state.REC_OTHER~q\ & (!\state.PRE_REC~q\ & 
-- ((!\state.CH_CONTROL~q\) # (\KB_REC~input_o\)))) ) ) ) # ( \recCounter~1_combout\ & ( !\recCounter~2_combout\ & ( (!\state.REC_OTHER~q\ & !\state.PRE_REC~q\) ) ) ) # ( !\recCounter~1_combout\ & ( !\recCounter~2_combout\ & ( (!\state.CH_CONTROL~q\ & 
-- (!\state.REC_OTHER~q\ & !\state.PRE_REC~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000111100000000000011010000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.CH_CONTROL~q\,
	datac => \ALT_INV_state.REC_OTHER~q\,
	datad => \ALT_INV_state.PRE_REC~q\,
	datae => \ALT_INV_recCounter~1_combout\,
	dataf => \ALT_INV_recCounter~2_combout\,
	combout => \Selector141~0_combout\);

\Selector142~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = ( \Selector142~0_combout\ & ( \Selector141~0_combout\ & ( (!recCounter(0) $ (((!\KB_REC~input_o\ & !\process_0~1_combout\)))) # (\state.REC_FIRST~q\) ) ) ) # ( !\Selector142~0_combout\ & ( \Selector141~0_combout\ & ( 
-- \state.REC_FIRST~q\ ) ) ) # ( \Selector142~0_combout\ & ( !\Selector141~0_combout\ & ( (((\process_0~1_combout\) # (recCounter(0))) # (\state.REC_FIRST~q\)) # (\KB_REC~input_o\) ) ) ) # ( !\Selector142~0_combout\ & ( !\Selector141~0_combout\ & ( 
-- (recCounter(0)) # (\state.REC_FIRST~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111011111111111111100110011001100110111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	datac => ALT_INV_recCounter(0),
	datad => \ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_Selector142~0_combout\,
	dataf => \ALT_INV_Selector141~0_combout\,
	combout => \Selector142~1_combout\);

\recCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector142~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recCounter(0));

\Selector141~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = ( \Selector142~0_combout\ & ( \Selector141~0_combout\ & ( !recCounter(1) $ (((!\KB_REC~input_o\ & ((!\process_0~1_combout\) # (recCounter(0)))) # (\KB_REC~input_o\ & (!recCounter(0))))) ) ) ) # ( \Selector142~0_combout\ & ( 
-- !\Selector141~0_combout\ & ( ((!\KB_REC~input_o\ & (!recCounter(0) & \process_0~1_combout\)) # (\KB_REC~input_o\ & (recCounter(0)))) # (recCounter(1)) ) ) ) # ( !\Selector142~0_combout\ & ( !\Selector141~0_combout\ & ( recCounter(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000110011111111100000000000000000001100111100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => ALT_INV_recCounter(0),
	datac => \ALT_INV_process_0~1_combout\,
	datad => ALT_INV_recCounter(1),
	datae => \ALT_INV_Selector142~0_combout\,
	dataf => \ALT_INV_Selector141~0_combout\,
	combout => \Selector141~1_combout\);

\recCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector141~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recCounter(1));

\Selector140~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = ( recCounter(1) & ( !recCounter(2) $ (((!\KB_REC~input_o\) # (!recCounter(0)))) ) ) # ( !recCounter(1) & ( !recCounter(2) $ ((((!\process_0~1_combout\) # (recCounter(0))) # (\KB_REC~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011110111000100011110111000001000111101110001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => ALT_INV_recCounter(0),
	datac => \ALT_INV_process_0~1_combout\,
	datad => ALT_INV_recCounter(2),
	datae => ALT_INV_recCounter(1),
	combout => \Selector140~0_combout\);

\Selector140~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (!recCounter(2) & (\Selector142~0_combout\ & ((\Selector140~0_combout\)))) # (recCounter(2) & ((!\Selector141~0_combout\) # ((\Selector142~0_combout\ & \Selector140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110011010100000111001101010000011100110101000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_recCounter(2),
	datab => \ALT_INV_Selector142~0_combout\,
	datac => \ALT_INV_Selector141~0_combout\,
	datad => \ALT_INV_Selector140~0_combout\,
	combout => \Selector140~1_combout\);

\recCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector140~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => recCounter(2));

\Selector164~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~3_combout\ = ( recCounter(2) & ( recCounter(1) & ( !\KB_REC~input_o\ ) ) ) # ( !recCounter(2) & ( recCounter(1) & ( !\KB_REC~input_o\ ) ) ) # ( recCounter(2) & ( !recCounter(1) & ( !\KB_REC~input_o\ ) ) ) # ( !recCounter(2) & ( !recCounter(1) 
-- & ( (!\KB_REC~input_o\ & ((!\recCounter~0_combout\) # (!recCounter(0) $ (!\process_0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_recCounter~0_combout\,
	datac => ALT_INV_recCounter(0),
	datad => \ALT_INV_process_0~1_combout\,
	datae => ALT_INV_recCounter(2),
	dataf => ALT_INV_recCounter(1),
	combout => \Selector164~3_combout\);

\Selector164~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~7_combout\ = ( \Equal0~3_combout\ & ( \state.REC_FIRST~q\ & ( (\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & \state.REC_OTHER~q\))) ) ) ) # ( !\Equal0~3_combout\ & ( \state.REC_FIRST~q\ & ( (!\KB_PLAY~input_o\ & 
-- (!\KB_ALLPLAY~input_o\ & ((!\state.REC_OTHER~q\) # (\arch_loop_start~q\)))) ) ) ) # ( \Equal0~3_combout\ & ( !\state.REC_FIRST~q\ & ( (!\state.REC_OTHER~q\) # ((\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & !\KB_ALLPLAY~input_o\))) ) ) ) # ( 
-- !\Equal0~3_combout\ & ( !\state.REC_FIRST~q\ & ( (!\state.REC_OTHER~q\) # ((\arch_loop_start~q\ & (!\KB_PLAY~input_o\ & !\KB_ALLPLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000000111111110100000011000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_state.REC_OTHER~q\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_state.REC_FIRST~q\,
	combout => \Selector164~7_combout\);

\state.PRE_REC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.PRE_REC~0_combout\ = ( \Selector164~3_combout\ & ( \Selector164~7_combout\ & ( (!\Selector163~0_combout\ & (((\state.PRE_REC~q\)))) # (\Selector163~0_combout\ & (\KB_REC~input_o\ & (\state.CH_CONTROL~q\))) ) ) ) # ( !\Selector164~3_combout\ & ( 
-- \Selector164~7_combout\ & ( (!\state.CH_CONTROL~q\ & (((\state.PRE_REC~q\ & !\Selector163~0_combout\)))) # (\state.CH_CONTROL~q\ & (\KB_REC~input_o\)) ) ) ) # ( \Selector164~3_combout\ & ( !\Selector164~7_combout\ & ( (\KB_REC~input_o\ & 
-- \state.CH_CONTROL~q\) ) ) ) # ( !\Selector164~3_combout\ & ( !\Selector164~7_combout\ & ( (\KB_REC~input_o\ & \state.CH_CONTROL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011101000100010000111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.CH_CONTROL~q\,
	datac => \ALT_INV_state.PRE_REC~q\,
	datad => \ALT_INV_Selector163~0_combout\,
	datae => \ALT_INV_Selector164~3_combout\,
	dataf => \ALT_INV_Selector164~7_combout\,
	combout => \state.PRE_REC~0_combout\);

\state.PRE_REC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.PRE_REC~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.PRE_REC~q\);

\Selector164~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~2_combout\ = (!\arch_loop_start~q\ & \state.PRE_REC~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_state.PRE_REC~q\,
	combout => \Selector164~2_combout\);

\Selector162~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector162~0_combout\ = ( !\Selector164~2_combout\ & ( \Selector164~3_combout\ & ( ((\process_0~0_combout\ & \state.REC_FIRST~q\)) # (\Selector3~2_combout\) ) ) ) # ( !\Selector164~2_combout\ & ( !\Selector164~3_combout\ & ( (!\state.CH_CONTROL~q\ & 
-- (((\process_0~0_combout\ & \state.REC_FIRST~q\)) # (\Selector3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101010000000000000000000000011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Selector3~2_combout\,
	datae => \ALT_INV_Selector164~2_combout\,
	dataf => \ALT_INV_Selector164~3_combout\,
	combout => \Selector162~0_combout\);

\state.REC_FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector162~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.REC_FIRST~q\);

\Selector154~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector154~0_combout\ = ( \Equal0~2_combout\ & ( \state.REC_FIRST~q\ & ( (((\Equal0~0_combout\ & \Equal0~1_combout\)) # (\KB_ALLPLAY~input_o\)) # (\KB_PLAY~input_o\) ) ) ) # ( !\Equal0~2_combout\ & ( \state.REC_FIRST~q\ & ( (\KB_ALLPLAY~input_o\) # 
-- (\KB_PLAY~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_PLAY~input_o\,
	datab => \ALT_INV_KB_ALLPLAY~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_state.REC_FIRST~q\,
	combout => \Selector154~0_combout\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( currMemAddress(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( currMemAddress(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Selector160~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector160~0_combout\ = ( \Add0~1_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(0))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(0))))) ) ) # ( !\Add0~1_sumout\ & ( (memEndAddr(0) & ((!\state.REC_FIRST~q\ & 
-- (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(0),
	datae => \ALT_INV_Add0~1_sumout\,
	combout => \Selector160~0_combout\);

\memEndAddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector160~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(0));

\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( memEndAddr(0) & ( \Add0~1_sumout\ & ( !currMemAddress(0) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(0) & ( \Add0~1_sumout\ & ( !currMemAddress(0) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) 
-- ) # ( memEndAddr(0) & ( !\Add0~1_sumout\ & ( !currMemAddress(0) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(0) & ( !\Add0~1_sumout\ & ( currMemAddress(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(0),
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Equal6~0_combout\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( currMemAddress(1) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( currMemAddress(1) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Selector159~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector159~0_combout\ = ( \Add0~5_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(1))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(1))))) ) ) # ( !\Add0~5_sumout\ & ( (memEndAddr(1) & ((!\state.REC_FIRST~q\ & 
-- (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(1),
	datae => \ALT_INV_Add0~5_sumout\,
	combout => \Selector159~0_combout\);

\memEndAddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector159~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(1));

\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( memEndAddr(1) & ( \Add0~5_sumout\ & ( !currMemAddress(1) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(1) & ( \Add0~5_sumout\ & ( !currMemAddress(1) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) 
-- ) # ( memEndAddr(1) & ( !\Add0~5_sumout\ & ( !currMemAddress(1) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(1) & ( !\Add0~5_sumout\ & ( currMemAddress(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(1),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(1),
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Equal6~1_combout\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( currMemAddress(2) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~26\ = CARRY(( currMemAddress(2) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(2),
	cin => \Add0~6\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( currMemAddress(3) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~10\ = CARRY(( currMemAddress(3) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(3),
	cin => \Add0~26\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Selector157~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector157~0_combout\ = ( \Add0~9_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(3))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(3))))) ) ) # ( !\Add0~9_sumout\ & ( (memEndAddr(3) & ((!\state.REC_FIRST~q\ & 
-- (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(3),
	datae => \ALT_INV_Add0~9_sumout\,
	combout => \Selector157~0_combout\);

\memEndAddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector157~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(3));

\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( memEndAddr(3) & ( \Add0~9_sumout\ & ( !currMemAddress(3) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(3) & ( \Add0~9_sumout\ & ( !currMemAddress(3) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) 
-- ) # ( memEndAddr(3) & ( !\Add0~9_sumout\ & ( !currMemAddress(3) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(3) & ( !\Add0~9_sumout\ & ( currMemAddress(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(3),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(3),
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \Equal6~2_combout\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( currMemAddress(4) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( currMemAddress(4) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Selector156~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector156~0_combout\ = ( \Add0~13_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(4))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(4))))) ) ) # ( !\Add0~13_sumout\ & ( (memEndAddr(4) & ((!\state.REC_FIRST~q\ 
-- & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(4),
	datae => \ALT_INV_Add0~13_sumout\,
	combout => \Selector156~0_combout\);

\memEndAddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector156~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(4));

\Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = ( memEndAddr(4) & ( \Add0~13_sumout\ & ( !currMemAddress(4) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(4) & ( \Add0~13_sumout\ & ( !currMemAddress(4) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) 
-- ) ) # ( memEndAddr(4) & ( !\Add0~13_sumout\ & ( !currMemAddress(4) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(4) & ( !\Add0~13_sumout\ & ( currMemAddress(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(4),
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Equal6~3_combout\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( currMemAddress(5) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~30\ = CARRY(( currMemAddress(5) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(5),
	cin => \Add0~14\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( currMemAddress(6) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( currMemAddress(6) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(6),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( currMemAddress(7) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~18\ = CARRY(( currMemAddress(7) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(7),
	cin => \Add0~34\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Selector153~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector153~0_combout\ = ( \Add0~17_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(7))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(7))))) ) ) # ( !\Add0~17_sumout\ & ( (memEndAddr(7) & ((!\state.REC_FIRST~q\ 
-- & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(7),
	datae => \ALT_INV_Add0~17_sumout\,
	combout => \Selector153~0_combout\);

\memEndAddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector153~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(7));

\Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = ( memEndAddr(7) & ( \Add0~17_sumout\ & ( !currMemAddress(7) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(7) & ( \Add0~17_sumout\ & ( !currMemAddress(7) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) 
-- ) ) # ( memEndAddr(7) & ( !\Add0~17_sumout\ & ( !currMemAddress(7) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(7) & ( !\Add0~17_sumout\ & ( currMemAddress(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(7),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(7),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Equal6~4_combout\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( currMemAddress(8) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( currMemAddress(8) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(8),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Selector152~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector152~0_combout\ = ( \Add0~21_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(8))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(8))))) ) ) # ( !\Add0~21_sumout\ & ( (memEndAddr(8) & ((!\state.REC_FIRST~q\ 
-- & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(8),
	datae => \ALT_INV_Add0~21_sumout\,
	combout => \Selector152~0_combout\);

\memEndAddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector152~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(8));

\Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = ( memEndAddr(8) & ( \Add0~21_sumout\ & ( !currMemAddress(8) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(8) & ( \Add0~21_sumout\ & ( !currMemAddress(8) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) 
-- ) ) # ( memEndAddr(8) & ( !\Add0~21_sumout\ & ( !currMemAddress(8) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(8) & ( !\Add0~21_sumout\ & ( currMemAddress(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(8),
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal6~5_combout\);

\Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = ( !\Equal6~4_combout\ & ( !\Equal6~5_combout\ & ( (!\Equal6~0_combout\ & (!\Equal6~1_combout\ & (!\Equal6~2_combout\ & !\Equal6~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_Equal6~1_combout\,
	datac => \ALT_INV_Equal6~2_combout\,
	datad => \ALT_INV_Equal6~3_combout\,
	datae => \ALT_INV_Equal6~4_combout\,
	dataf => \ALT_INV_Equal6~5_combout\,
	combout => \Equal6~6_combout\);

\Selector158~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector158~0_combout\ = (!\state.EMPTY~q\) # ((!\Selector154~0_combout\ & ((!memEndAddr(2)))) # (\Selector154~0_combout\ & (\Add0~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101011111011111010101111101111101010111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_Selector154~0_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => ALT_INV_memEndAddr(2),
	combout => \Selector158~0_combout\);

\memEndAddr[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memEndAddr[2]~0_combout\ = !\Selector158~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector158~0_combout\,
	combout => \memEndAddr[2]~0_combout\);

\memEndAddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \memEndAddr[2]~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(2));

\Equal6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = ( \Add0~25_sumout\ & ( memEndAddr(2) & ( !currMemAddress(2) $ (((\state.EMPTY~q\ & ((!\state.REC_FIRST~q\) # (\process_0~0_combout\))))) ) ) ) # ( !\Add0~25_sumout\ & ( memEndAddr(2) & ( !currMemAddress(2) $ (\state.EMPTY~q\) ) ) ) # 
-- ( \Add0~25_sumout\ & ( !memEndAddr(2) & ( !currMemAddress(2) ) ) ) # ( !\Add0~25_sumout\ & ( !memEndAddr(2) & ( !currMemAddress(2) $ (((\state.EMPTY~q\ & (!\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010011010101010101010101010011001100110011001100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~25_sumout\,
	dataf => ALT_INV_memEndAddr(2),
	combout => \Equal6~7_combout\);

\Selector155~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector155~0_combout\ = (!\state.EMPTY~q\) # ((!\Selector154~0_combout\ & ((!memEndAddr(5)))) # (\Selector154~0_combout\ & (\Add0~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101011111011111010101111101111101010111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_Selector154~0_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => ALT_INV_memEndAddr(5),
	combout => \Selector155~0_combout\);

\memEndAddr[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memEndAddr[5]~1_combout\ = !\Selector155~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector155~0_combout\,
	combout => \memEndAddr[5]~1_combout\);

\memEndAddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \memEndAddr[5]~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(5));

\Equal6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = ( \Add0~29_sumout\ & ( memEndAddr(5) & ( !currMemAddress(5) $ (((\state.EMPTY~q\ & ((!\state.REC_FIRST~q\) # (\process_0~0_combout\))))) ) ) ) # ( !\Add0~29_sumout\ & ( memEndAddr(5) & ( !currMemAddress(5) $ (\state.EMPTY~q\) ) ) ) # 
-- ( \Add0~29_sumout\ & ( !memEndAddr(5) & ( !currMemAddress(5) ) ) ) # ( !\Add0~29_sumout\ & ( !memEndAddr(5) & ( !currMemAddress(5) $ (((\state.EMPTY~q\ & (!\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010011010101010101010101010011001100110011001100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => ALT_INV_memEndAddr(5),
	combout => \Equal6~8_combout\);

\Selector154~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector154~1_combout\ = (!\state.EMPTY~q\) # ((!\Selector154~0_combout\ & ((!memEndAddr(6)))) # (\Selector154~0_combout\ & (\Add0~33_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101011111011111010101111101111101010111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_Selector154~0_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => ALT_INV_memEndAddr(6),
	combout => \Selector154~1_combout\);

\memEndAddr[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memEndAddr[6]~2_combout\ = !\Selector154~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector154~1_combout\,
	combout => \memEndAddr[6]~2_combout\);

\memEndAddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \memEndAddr[6]~2_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(6));

\Equal6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = ( \Add0~33_sumout\ & ( memEndAddr(6) & ( !currMemAddress(6) $ (((\state.EMPTY~q\ & ((!\state.REC_FIRST~q\) # (\process_0~0_combout\))))) ) ) ) # ( !\Add0~33_sumout\ & ( memEndAddr(6) & ( !currMemAddress(6) $ (\state.EMPTY~q\) ) ) ) # 
-- ( \Add0~33_sumout\ & ( !memEndAddr(6) & ( !currMemAddress(6) ) ) ) # ( !\Add0~33_sumout\ & ( !memEndAddr(6) & ( !currMemAddress(6) $ (((\state.EMPTY~q\ & (!\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010011010101010101010101010011001100110011001100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => ALT_INV_memEndAddr(6),
	combout => \Equal6~9_combout\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( currMemAddress(9) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~38\ = CARRY(( currMemAddress(9) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(9),
	cin => \Add0~22\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\Selector151~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = ( \Add0~37_sumout\ & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\ & ((memEndAddr(9))))) # (\state.REC_FIRST~q\ & (((!\process_0~0_combout\) # (memEndAddr(9))))) ) ) # ( !\Add0~37_sumout\ & ( (memEndAddr(9) & ((!\state.REC_FIRST~q\ 
-- & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((\process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011000101111100000000010100110000110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => ALT_INV_memEndAddr(9),
	datae => \ALT_INV_Add0~37_sumout\,
	combout => \Selector151~0_combout\);

\memEndAddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector151~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(9));

\Equal6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = ( memEndAddr(9) & ( \Add0~37_sumout\ & ( !currMemAddress(9) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !memEndAddr(9) & ( \Add0~37_sumout\ & ( !currMemAddress(9) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) 
-- ) ) # ( memEndAddr(9) & ( !\Add0~37_sumout\ & ( !currMemAddress(9) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( !memEndAddr(9) & ( !\Add0~37_sumout\ & ( currMemAddress(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100101101001010101101001010110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(9),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => ALT_INV_memEndAddr(9),
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Equal6~10_combout\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( currMemAddress(10) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( currMemAddress(10) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\memEndAddr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector150~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(10));

\Selector150~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = ( memEndAddr(10) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~41_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(10) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~41_sumout\,
	datae => ALT_INV_memEndAddr(10),
	combout => \Selector150~0_combout\);

\Equal6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~11_combout\ = ( !\Equal6~10_combout\ & ( \Selector150~0_combout\ & ( (currMemAddress(10) & (!\Equal6~7_combout\ & (!\Equal6~8_combout\ & !\Equal6~9_combout\))) ) ) ) # ( !\Equal6~10_combout\ & ( !\Selector150~0_combout\ & ( (!currMemAddress(10) & 
-- (!\Equal6~7_combout\ & (!\Equal6~8_combout\ & !\Equal6~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => \ALT_INV_Equal6~7_combout\,
	datac => \ALT_INV_Equal6~8_combout\,
	datad => \ALT_INV_Equal6~9_combout\,
	datae => \ALT_INV_Equal6~10_combout\,
	dataf => \ALT_INV_Selector150~0_combout\,
	combout => \Equal6~11_combout\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( currMemAddress(11) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~58\ = CARRY(( currMemAddress(11) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(11),
	cin => \Add0~42\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( currMemAddress(12) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( currMemAddress(12) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(12),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( currMemAddress(13) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~46\ = CARRY(( currMemAddress(13) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(13),
	cin => \Add0~62\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\Selector147~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector147~0_combout\ = ( memEndAddr(13) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~45_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(13) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => ALT_INV_memEndAddr(13),
	combout => \Selector147~0_combout\);

\memEndAddr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector147~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(13));

\Equal6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~12_combout\ = ( \Add0~45_sumout\ & ( memEndAddr(13) & ( !currMemAddress(13) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !\Add0~45_sumout\ & ( memEndAddr(13) & ( !currMemAddress(13) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # 
-- (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( \Add0~45_sumout\ & ( !memEndAddr(13) & ( !currMemAddress(13) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) ) # ( !\Add0~45_sumout\ & ( !memEndAddr(13) & ( currMemAddress(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010010101100110010110100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(13),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => ALT_INV_memEndAddr(13),
	combout => \Equal6~12_combout\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( currMemAddress(14) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( currMemAddress(14) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(14),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\Selector146~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector146~0_combout\ = ( memEndAddr(14) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~49_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(14) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~49_sumout\,
	datae => ALT_INV_memEndAddr(14),
	combout => \Selector146~0_combout\);

\memEndAddr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector146~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(14));

\Equal6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~13_combout\ = ( \Add0~49_sumout\ & ( memEndAddr(14) & ( !currMemAddress(14) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !\Add0~49_sumout\ & ( memEndAddr(14) & ( !currMemAddress(14) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # 
-- (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( \Add0~49_sumout\ & ( !memEndAddr(14) & ( !currMemAddress(14) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) ) # ( !\Add0~49_sumout\ & ( !memEndAddr(14) & ( currMemAddress(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010010101100110010110100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(14),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~49_sumout\,
	dataf => ALT_INV_memEndAddr(14),
	combout => \Equal6~13_combout\);

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( currMemAddress(15) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~66\ = CARRY(( currMemAddress(15) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(15),
	cin => \Add0~50\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( currMemAddress(16) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( currMemAddress(16) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(16),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( currMemAddress(17) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_currMemAddress(17),
	cin => \Add0~70\,
	sumout => \Add0~53_sumout\);

\Selector143~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = ( memEndAddr(17) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~53_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(17) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~53_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~53_sumout\,
	datae => ALT_INV_memEndAddr(17),
	combout => \Selector143~1_combout\);

\memEndAddr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector143~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(17));

\Selector143~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = ( \state.REC_FIRST~q\ & ( memEndAddr(17) & ( (!\KB_PLAY~input_o\ & (!\KB_ALLPLAY~input_o\ & !\Equal0~3_combout\)) ) ) ) # ( !\state.REC_FIRST~q\ & ( memEndAddr(17) & ( \state.EMPTY~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_state.REC_FIRST~q\,
	dataf => ALT_INV_memEndAddr(17),
	combout => \Selector143~0_combout\);

\Equal6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~14_combout\ = ( \Add0~53_sumout\ & ( \Selector143~0_combout\ & ( (currMemAddress(17) & (!\Equal6~12_combout\ & !\Equal6~13_combout\)) ) ) ) # ( !\Add0~53_sumout\ & ( \Selector143~0_combout\ & ( (currMemAddress(17) & (!\Equal6~12_combout\ & 
-- !\Equal6~13_combout\)) ) ) ) # ( \Add0~53_sumout\ & ( !\Selector143~0_combout\ & ( (!\Equal6~12_combout\ & (!\Equal6~13_combout\ & (!currMemAddress(17) $ (\Selector154~0_combout\)))) ) ) ) # ( !\Add0~53_sumout\ & ( !\Selector143~0_combout\ & ( 
-- (!currMemAddress(17) & (!\Equal6~12_combout\ & !\Equal6~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000100100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(17),
	datab => \ALT_INV_Selector154~0_combout\,
	datac => \ALT_INV_Equal6~12_combout\,
	datad => \ALT_INV_Equal6~13_combout\,
	datae => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_Selector143~0_combout\,
	combout => \Equal6~14_combout\);

\Selector149~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = ( memEndAddr(11) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~57_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(11) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~57_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~57_sumout\,
	datae => ALT_INV_memEndAddr(11),
	combout => \Selector149~0_combout\);

\memEndAddr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector149~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(11));

\Equal6~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~15_combout\ = ( \Add0~57_sumout\ & ( memEndAddr(11) & ( !currMemAddress(11) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !\Add0~57_sumout\ & ( memEndAddr(11) & ( !currMemAddress(11) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # 
-- (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( \Add0~57_sumout\ & ( !memEndAddr(11) & ( !currMemAddress(11) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) ) # ( !\Add0~57_sumout\ & ( !memEndAddr(11) & ( currMemAddress(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010010101100110010110100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~57_sumout\,
	dataf => ALT_INV_memEndAddr(11),
	combout => \Equal6~15_combout\);

\Selector148~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector148~0_combout\ = ( memEndAddr(12) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~61_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(12) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~61_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => ALT_INV_memEndAddr(12),
	combout => \Selector148~0_combout\);

\memEndAddr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector148~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(12));

\Equal6~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~16_combout\ = ( \Add0~61_sumout\ & ( memEndAddr(12) & ( !currMemAddress(12) $ (((!\state.EMPTY~q\ & !\state.REC_FIRST~q\))) ) ) ) # ( !\Add0~61_sumout\ & ( memEndAddr(12) & ( !currMemAddress(12) $ (((!\state.REC_FIRST~q\ & (!\state.EMPTY~q\)) # 
-- (\state.REC_FIRST~q\ & ((!\process_0~0_combout\))))) ) ) ) # ( \Add0~61_sumout\ & ( !memEndAddr(12) & ( !currMemAddress(12) $ (((!\state.REC_FIRST~q\) # (\process_0~0_combout\))) ) ) ) # ( !\Add0~61_sumout\ & ( !memEndAddr(12) & ( currMemAddress(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010010101100110010110100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state.REC_FIRST~q\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => ALT_INV_memEndAddr(12),
	combout => \Equal6~16_combout\);

\memEndAddr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector145~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(15));

\Selector145~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector145~0_combout\ = ( memEndAddr(15) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~65_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(15) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~65_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~65_sumout\,
	datae => ALT_INV_memEndAddr(15),
	combout => \Selector145~0_combout\);

\memEndAddr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector144~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memEndAddr(16));

\Selector144~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = ( memEndAddr(16) & ( (!\state.REC_FIRST~q\ & (\state.EMPTY~q\)) # (\state.REC_FIRST~q\ & (((\Add0~69_sumout\) # (\process_0~0_combout\)))) ) ) # ( !memEndAddr(16) & ( (!\process_0~0_combout\ & (\state.REC_FIRST~q\ & 
-- \Add0~69_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010100110101111100000000000011000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Add0~69_sumout\,
	datae => ALT_INV_memEndAddr(16),
	combout => \Selector144~0_combout\);

\Equal6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~17_combout\ = ( \Selector145~0_combout\ & ( \Selector144~0_combout\ & ( (currMemAddress(15) & (currMemAddress(16) & (!\Equal6~15_combout\ & !\Equal6~16_combout\))) ) ) ) # ( !\Selector145~0_combout\ & ( \Selector144~0_combout\ & ( 
-- (!currMemAddress(15) & (currMemAddress(16) & (!\Equal6~15_combout\ & !\Equal6~16_combout\))) ) ) ) # ( \Selector145~0_combout\ & ( !\Selector144~0_combout\ & ( (currMemAddress(15) & (!currMemAddress(16) & (!\Equal6~15_combout\ & !\Equal6~16_combout\))) ) 
-- ) ) # ( !\Selector145~0_combout\ & ( !\Selector144~0_combout\ & ( (!currMemAddress(15) & (!currMemAddress(16) & (!\Equal6~15_combout\ & !\Equal6~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000010000000000000000100000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => \ALT_INV_Equal6~15_combout\,
	datad => \ALT_INV_Equal6~16_combout\,
	datae => \ALT_INV_Selector145~0_combout\,
	dataf => \ALT_INV_Selector144~0_combout\,
	combout => \Equal6~17_combout\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\KB_STOP~input_o\ & ( (!\KB_REC~input_o\ & (\state.CH_CONTROL~q\ & (!\KB_PLAY~input_o\ & \KB_ClearCH~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.CH_CONTROL~q\,
	datac => \ALT_INV_KB_PLAY~input_o\,
	datad => \ALT_INV_KB_ClearCH~input_o\,
	datae => \ALT_INV_KB_STOP~input_o\,
	combout => \Selector0~0_combout\);

\arch_loop_start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_loop_start~0_combout\ = ( recCounter(1) & ( \Selector0~0_combout\ & ( \state.EMPTY~q\ ) ) ) # ( !recCounter(1) & ( \Selector0~0_combout\ & ( (\state.EMPTY~q\ & ((!recCounter(0) $ (!\process_0~1_combout\)) # (recCounter(2)))) ) ) ) # ( recCounter(1) 
-- & ( !\Selector0~0_combout\ & ( \state.EMPTY~q\ ) ) ) # ( !recCounter(1) & ( !\Selector0~0_combout\ & ( \state.EMPTY~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010100010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.EMPTY~q\,
	datab => ALT_INV_recCounter(0),
	datac => \ALT_INV_process_0~1_combout\,
	datad => ALT_INV_recCounter(2),
	datae => ALT_INV_recCounter(1),
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \arch_loop_start~0_combout\);

\arch_loop_start~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_loop_start~1_combout\ = ( \Equal6~17_combout\ & ( \arch_loop_start~0_combout\ & ( (!\Selector154~0_combout\ & ((!\Equal6~6_combout\) # ((!\Equal6~11_combout\) # (!\Equal6~14_combout\)))) ) ) ) # ( !\Equal6~17_combout\ & ( \arch_loop_start~0_combout\ 
-- & ( !\Selector154~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector154~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Equal6~11_combout\,
	datad => \ALT_INV_Equal6~14_combout\,
	datae => \ALT_INV_Equal6~17_combout\,
	dataf => \ALT_INV_arch_loop_start~0_combout\,
	combout => \arch_loop_start~1_combout\);

arch_loop_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \arch_loop_start~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_loop_start~q\);

\Selector163~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector163~0_combout\ = (!\arch_loop_start~q\ & (((\KB_REC~input_o\ & !\state.EMPTY~q\)) # (\state.PRE_REC~q\))) # (\arch_loop_start~q\ & (\KB_REC~input_o\ & (!\state.EMPTY~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101000110000101110100011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_state.EMPTY~q\,
	datad => \ALT_INV_state.PRE_REC~q\,
	combout => \Selector163~0_combout\);

\Selector164~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~4_combout\ = (\state.REC_OTHER~q\ & ((!\arch_loop_start~q\) # ((\KB_ALLPLAY~input_o\) # (\KB_PLAY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_state.REC_OTHER~q\,
	combout => \Selector164~4_combout\);

\Selector164~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~5_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!\state.REC_OTHER~q\ & (((\Equal0~0_combout\) # (\KB_ALLPLAY~input_o\)) # (\KB_PLAY~input_o\))) ) ) ) # ( !\Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!\state.REC_OTHER~q\ & 
-- ((\KB_ALLPLAY~input_o\) # (\KB_PLAY~input_o\))) ) ) ) # ( \Equal0~1_combout\ & ( !\Equal0~2_combout\ & ( (!\state.REC_OTHER~q\ & ((\KB_ALLPLAY~input_o\) # (\KB_PLAY~input_o\))) ) ) ) # ( !\Equal0~1_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!\state.REC_OTHER~q\ & ((\KB_ALLPLAY~input_o\) # (\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110000011100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_PLAY~input_o\,
	datab => \ALT_INV_KB_ALLPLAY~input_o\,
	datac => \ALT_INV_state.REC_OTHER~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Selector164~5_combout\);

\Selector164~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector164~6_combout\ = (!\state.REC_OTHER~q\ & !\state.REC_FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.REC_OTHER~q\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	combout => \Selector164~6_combout\);

\Selector163~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector163~1_combout\ = ( \Selector164~5_combout\ & ( \Selector164~6_combout\ & ( (\state.CH_CONTROL~q\ & (!\Selector163~0_combout\ & \Selector164~3_combout\)) ) ) ) # ( !\Selector164~5_combout\ & ( \Selector164~6_combout\ & ( (\state.CH_CONTROL~q\ & 
-- (!\Selector163~0_combout\ & \Selector164~3_combout\)) ) ) ) # ( \Selector164~5_combout\ & ( !\Selector164~6_combout\ & ( (!\Selector163~0_combout\ & ((!\state.CH_CONTROL~q\) # (\Selector164~3_combout\))) ) ) ) # ( !\Selector164~5_combout\ & ( 
-- !\Selector164~6_combout\ & ( (!\Selector163~0_combout\ & ((!\state.CH_CONTROL~q\ & ((\Selector164~4_combout\))) # (\state.CH_CONTROL~q\ & (\Selector164~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100100011001000110000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_Selector163~0_combout\,
	datac => \ALT_INV_Selector164~3_combout\,
	datad => \ALT_INV_Selector164~4_combout\,
	datae => \ALT_INV_Selector164~5_combout\,
	dataf => \ALT_INV_Selector164~6_combout\,
	combout => \Selector163~1_combout\);

\state.CH_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector163~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CH_CONTROL~q\);

\Selector161~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector161~0_combout\ = ( \Selector164~3_combout\ & ( ((\Selector164~2_combout\) # (\state.EMPTY~q\)) # (\KB_REC~input_o\) ) ) # ( !\Selector164~3_combout\ & ( (((\state.EMPTY~q\ & !\state.CH_CONTROL~q\)) # (\Selector164~2_combout\)) # 
-- (\KB_REC~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111111011101111111111101110101111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_REC~input_o\,
	datab => \ALT_INV_state.EMPTY~q\,
	datac => \ALT_INV_state.CH_CONTROL~q\,
	datad => \ALT_INV_Selector164~2_combout\,
	datae => \ALT_INV_Selector164~3_combout\,
	combout => \Selector161~0_combout\);

\state.EMPTY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector161~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.EMPTY~q\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\KB_Selchannel[0]~input_o\ & ((\state.EMPTY~q\) # (\KB_REC~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_state.EMPTY~q\,
	combout => \Selector2~0_combout\);

\arch_recSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_recSel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_recSel(0));

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( !\state.PRE_REC~q\ & ( (!\arch_loop_start~q\) # (((!\state.REC_OTHER~q\) # (\KB_ALLPLAY~input_o\)) # (\KB_PLAY~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111000000000000000011111111101111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_loop_start~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_ALLPLAY~input_o\,
	datad => \ALT_INV_state.REC_OTHER~q\,
	datae => \ALT_INV_state.PRE_REC~q\,
	combout => \Selector3~0_combout\);

\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \Selector163~0_combout\ ) # ( !\Selector163~0_combout\ & ( (\arch_recording~q\ & ((!\Selector3~0_combout\) # ((\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001111111111111111101010101000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_arch_recording~q\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_state.REC_FIRST~q\,
	datad => \ALT_INV_Selector3~0_combout\,
	datae => \ALT_INV_Selector163~0_combout\,
	combout => \Selector3~1_combout\);

arch_recording : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_recording~q\);

\stateNum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateNum~0_combout\ = (!\state.PRE_REC~q\ & !\state.REC_FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.PRE_REC~q\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	combout => \stateNum~0_combout\);

\stateNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNum~0_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNum(0));

\stateNum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateNum~1_combout\ = (!\state.CH_CONTROL~q\ & !\state.PRE_REC~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_state.PRE_REC~q\,
	combout => \stateNum~1_combout\);

\stateNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNum~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNum(1));

\stateNum[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateNum[2]~3_combout\ = !\state.REC_OTHER~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.REC_OTHER~q\,
	combout => \stateNum[2]~3_combout\);

\stateNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNum[2]~3_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNum(2));

\endAddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector160~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(0));

\endAddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector159~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(1));

\endAddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector158~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(2));

\endAddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector157~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(3));

\endAddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector156~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(4));

\endAddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector155~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(5));

\endAddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector154~1_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(6));

\endAddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector153~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(7));

\endAddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector152~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(8));

\endAddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector151~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(9));

\endAddr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector150~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(10));

\endAddr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector149~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(11));

\endAddr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector148~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(12));

\endAddr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector147~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(13));

\endAddr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector146~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(14));

\endAddr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector145~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(15));

\endAddr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector144~0_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(16));

\endAddr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector143~1_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => endAddr(17));

\arch_Ch0END[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch0END[0]~0_combout\ = ( \Mux32~0_combout\ & ( (\stateNum~1_combout\ & (((\Selector164~6_combout\) # (\Selector164~5_combout\)) # (\Selector164~4_combout\))) ) ) # ( !\Mux32~0_combout\ & ( (\stateNum~1_combout\ & \Selector164~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000101010101010100000000010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateNum~1_combout\,
	datab => \ALT_INV_Selector164~4_combout\,
	datac => \ALT_INV_Selector164~5_combout\,
	datad => \ALT_INV_Selector164~6_combout\,
	datae => \ALT_INV_Mux32~0_combout\,
	combout => \arch_Ch0END[0]~0_combout\);

\arch_Ch0END[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(7),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(7));

\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!currMemAddress(6) & \state.EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => \ALT_INV_state.EMPTY~q\,
	combout => \Selector29~0_combout\);

\arch_Ch0END[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(6));

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!currMemAddress(6) & (arch_Ch0END(6) & (!currMemAddress(7) $ (arch_Ch0END(7))))) # (currMemAddress(6) & (!arch_Ch0END(6) & (!currMemAddress(7) $ (arch_Ch0END(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch0END(7),
	datad => ALT_INV_arch_Ch0END(6),
	combout => \LessThan0~0_combout\);

\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!currMemAddress(5) & \state.EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => \ALT_INV_state.EMPTY~q\,
	combout => \Selector30~0_combout\);

\arch_Ch0END[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector30~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(5));

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = !currMemAddress(5) $ (!arch_Ch0END(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => ALT_INV_arch_Ch0END(5),
	combout => \LessThan0~1_combout\);

\arch_Ch0END[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(4),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(4));

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = !currMemAddress(4) $ (!arch_Ch0END(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_arch_Ch0END(4),
	combout => \LessThan0~2_combout\);

\arch_Ch0END[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(1),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(1));

\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (currMemAddress(0) & \state.EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => \ALT_INV_state.EMPTY~q\,
	combout => \Selector35~0_combout\);

\arch_Ch0END[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(0));

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!currMemAddress(1) & (currMemAddress(0) & (!arch_Ch0END(1) & !arch_Ch0END(0)))) # (currMemAddress(1) & ((!arch_Ch0END(1)) # ((currMemAddress(0) & !arch_Ch0END(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => ALT_INV_currMemAddress(1),
	datac => ALT_INV_arch_Ch0END(1),
	datad => ALT_INV_arch_Ch0END(0),
	combout => \LessThan0~3_combout\);

\arch_Ch0END[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(3),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(3));

\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!currMemAddress(2) & \state.EMPTY~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => \ALT_INV_state.EMPTY~q\,
	combout => \Selector33~0_combout\);

\arch_Ch0END[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(2));

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!currMemAddress(2) & (arch_Ch0END(2) & (!currMemAddress(3) $ (arch_Ch0END(3))))) # (currMemAddress(2) & (!arch_Ch0END(2) & (!currMemAddress(3) $ (arch_Ch0END(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch0END(3),
	datad => ALT_INV_arch_Ch0END(2),
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!currMemAddress(3) & (currMemAddress(2) & (!arch_Ch0END(3) & arch_Ch0END(2)))) # (currMemAddress(3) & ((!arch_Ch0END(3)) # ((currMemAddress(2) & arch_Ch0END(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch0END(3),
	datad => ALT_INV_arch_Ch0END(2),
	combout => \LessThan0~5_combout\);

\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( \LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & !\LessThan0~2_combout\)) ) ) ) # ( !\LessThan0~4_combout\ & ( \LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & 
-- (\LessThan0~1_combout\ & !\LessThan0~2_combout\)) ) ) ) # ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & (!\LessThan0~2_combout\ & \LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!currMemAddress(7) & (currMemAddress(6) & (!arch_Ch0END(7) & arch_Ch0END(6)))) # (currMemAddress(7) & ((!arch_Ch0END(7)) # ((currMemAddress(6) & arch_Ch0END(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch0END(7),
	datad => ALT_INV_arch_Ch0END(6),
	combout => \LessThan0~7_combout\);

\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( arch_Ch0END(4) & ( !\LessThan0~7_combout\ & ( (!currMemAddress(5)) # ((!arch_Ch0END(5)) # (!\LessThan0~0_combout\)) ) ) ) # ( !arch_Ch0END(4) & ( !\LessThan0~7_combout\ & ( (!\LessThan0~0_combout\) # ((!currMemAddress(4) & 
-- ((!currMemAddress(5)) # (!arch_Ch0END(5)))) # (currMemAddress(4) & (!currMemAddress(5) & !arch_Ch0END(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_currMemAddress(5),
	datac => ALT_INV_arch_Ch0END(5),
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_arch_Ch0END(4),
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

\arch_Ch0END[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(11),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(11));

\arch_Ch0END[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(14),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(14));

\arch_Ch0END[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(13),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(13));

\arch_Ch0END[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(12),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(12));

\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( arch_Ch0END(13) & ( arch_Ch0END(12) & ( (currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch0END(14))))) ) ) ) # ( !arch_Ch0END(13) & ( arch_Ch0END(12) & ( (currMemAddress(12) & (!currMemAddress(13) & 
-- (!currMemAddress(14) $ (arch_Ch0END(14))))) ) ) ) # ( arch_Ch0END(13) & ( !arch_Ch0END(12) & ( (!currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch0END(14))))) ) ) ) # ( !arch_Ch0END(13) & ( !arch_Ch0END(12) & ( 
-- (!currMemAddress(12) & (!currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch0END(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch0END(14),
	datae => ALT_INV_arch_Ch0END(13),
	dataf => ALT_INV_arch_Ch0END(12),
	combout => \LessThan0~9_combout\);

\arch_Ch0END[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(10),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(10));

\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = !currMemAddress(10) $ (!arch_Ch0END(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_arch_Ch0END(10),
	combout => \LessThan0~10_combout\);

\arch_Ch0END[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(9),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(9));

\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = !currMemAddress(9) $ (!arch_Ch0END(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(9),
	datab => ALT_INV_arch_Ch0END(9),
	combout => \LessThan0~11_combout\);

\arch_Ch0END[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(8),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(8));

\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = !currMemAddress(8) $ (!arch_Ch0END(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_arch_Ch0END(8),
	combout => \LessThan0~12_combout\);

\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( !\LessThan0~11_combout\ & ( !\LessThan0~12_combout\ & ( (\LessThan0~9_combout\ & (!\LessThan0~10_combout\ & (!currMemAddress(11) $ (arch_Ch0END(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch0END(11),
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_LessThan0~10_combout\,
	datae => \ALT_INV_LessThan0~11_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\LessThan0~9_combout\ & (!\LessThan0~10_combout\ & (!currMemAddress(11) $ (arch_Ch0END(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch0END(11),
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_LessThan0~10_combout\,
	combout => \LessThan0~14_combout\);

\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( arch_Ch0END(13) & ( arch_Ch0END(12) & ( (currMemAddress(14) & !arch_Ch0END(14)) ) ) ) # ( !arch_Ch0END(13) & ( arch_Ch0END(12) & ( (!currMemAddress(13) & (currMemAddress(14) & !arch_Ch0END(14))) # (currMemAddress(13) & 
-- ((!arch_Ch0END(14)) # (currMemAddress(14)))) ) ) ) # ( arch_Ch0END(13) & ( !arch_Ch0END(12) & ( (!currMemAddress(14) & (currMemAddress(12) & (currMemAddress(13) & !arch_Ch0END(14)))) # (currMemAddress(14) & ((!arch_Ch0END(14)) # ((currMemAddress(12) & 
-- currMemAddress(13))))) ) ) ) # ( !arch_Ch0END(13) & ( !arch_Ch0END(12) & ( (!currMemAddress(14) & (!arch_Ch0END(14) & ((currMemAddress(13)) # (currMemAddress(12))))) # (currMemAddress(14) & (((!arch_Ch0END(14)) # (currMemAddress(13))) # 
-- (currMemAddress(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000100111111000000110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch0END(14),
	datae => ALT_INV_arch_Ch0END(13),
	dataf => ALT_INV_arch_Ch0END(12),
	combout => \LessThan0~15_combout\);

\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( arch_Ch0END(10) & ( !\LessThan0~15_combout\ & ( (!currMemAddress(11)) # ((!\LessThan0~9_combout\) # (arch_Ch0END(11))) ) ) ) # ( !arch_Ch0END(10) & ( !\LessThan0~15_combout\ & ( (!\LessThan0~9_combout\) # ((!currMemAddress(10) & 
-- ((!currMemAddress(11)) # (arch_Ch0END(11)))) # (currMemAddress(10) & (!currMemAddress(11) & arch_Ch0END(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001110111111111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_currMemAddress(11),
	datac => ALT_INV_arch_Ch0END(11),
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => ALT_INV_arch_Ch0END(10),
	dataf => \ALT_INV_LessThan0~15_combout\,
	combout => \LessThan0~16_combout\);

\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( arch_Ch0END(8) & ( \LessThan0~16_combout\ & ( (!currMemAddress(9)) # ((!\LessThan0~14_combout\) # (arch_Ch0END(9))) ) ) ) # ( !arch_Ch0END(8) & ( \LessThan0~16_combout\ & ( (!\LessThan0~14_combout\) # ((!currMemAddress(8) & 
-- ((!currMemAddress(9)) # (arch_Ch0END(9)))) # (currMemAddress(8) & (!currMemAddress(9) & arch_Ch0END(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100011101111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_currMemAddress(9),
	datac => ALT_INV_arch_Ch0END(9),
	datad => \ALT_INV_LessThan0~14_combout\,
	datae => ALT_INV_arch_Ch0END(8),
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \LessThan0~17_combout\);

\arch_Ch0END[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(17),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(17));

\arch_Ch0END[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(16),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(16));

\arch_Ch0END[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(15),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch0END[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(15));

\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( arch_Ch0END(16) & ( arch_Ch0END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch0END(17))))) ) ) ) # ( !arch_Ch0END(16) & ( arch_Ch0END(15) & ( (currMemAddress(15) & (!currMemAddress(16) & 
-- (!currMemAddress(17) $ (arch_Ch0END(17))))) ) ) ) # ( arch_Ch0END(16) & ( !arch_Ch0END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch0END(17))))) ) ) ) # ( !arch_Ch0END(16) & ( !arch_Ch0END(15) & ( 
-- (!currMemAddress(15) & (!currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch0END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch0END(17),
	datae => ALT_INV_arch_Ch0END(16),
	dataf => ALT_INV_arch_Ch0END(15),
	combout => \LessThan0~18_combout\);

\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (arch_recSel(1)) # (arch_recSel(0)) ) ) ) # ( !\KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (((\arch_loop_start~q\ & !\KB_PLAY~input_o\)) # (arch_recSel(1))) # (arch_recSel(0)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	datac => \ALT_INV_arch_loop_start~q\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ALLPLAY~input_o\,
	dataf => \ALT_INV_state.REC_OTHER~q\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \Mux32~0_combout\ & ( \Selector4~0_combout\ & ( arch_Ch0END(31) ) ) ) # ( !\Mux32~0_combout\ & ( \Selector4~0_combout\ & ( arch_Ch0END(31) ) ) ) # ( \Mux32~0_combout\ & ( !\Selector4~0_combout\ & ( (arch_Ch0END(31) & 
-- ((!\stateNum~1_combout\) # ((\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) ) # ( !\Mux32~0_combout\ & ( !\Selector4~0_combout\ & ( (arch_Ch0END(31) & ((!\stateNum~1_combout\) # (\state.REC_FIRST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	datac => \ALT_INV_stateNum~1_combout\,
	datad => ALT_INV_arch_Ch0END(31),
	datae => \ALT_INV_Mux32~0_combout\,
	dataf => \ALT_INV_Selector4~0_combout\,
	combout => \Selector4~1_combout\);

\arch_Ch0END[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch0END(31));

\arch_Ch0ACT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch0ACT~0_combout\ = ( \KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & 
-- (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( 
-- (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (!\KB_Selchannel[1]~input_o\ & \KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \arch_Ch0ACT~0_combout\);

\Selector132~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = ( \arch_Ch0ACT~0_combout\ & ( (\state.CH_CONTROL~q\ & (((!\KB_STOP~input_o\ & !\ch0HT~q\)) # (\KB_PLAY~input_o\))) ) ) # ( !\arch_Ch0ACT~0_combout\ & ( \state.CH_CONTROL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100010001000101010101010101010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_STOP~input_o\,
	datad => \ALT_INV_ch0HT~q\,
	datae => \ALT_INV_arch_Ch0ACT~0_combout\,
	combout => \Selector132~0_combout\);

\Selector132~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector132~1_combout\ = (\state.CH_CONTROL~q\ & (\KB_PLAY~input_o\ & (\ch0HT~q\ & \arch_Ch0ACT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_ch0HT~q\,
	datad => \ALT_INV_arch_Ch0ACT~0_combout\,
	combout => \Selector132~1_combout\);

\Selector132~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector132~2_combout\ = ( \Selector136~0_combout\ & ( \Selector132~1_combout\ ) ) # ( !\Selector136~0_combout\ & ( \Selector132~1_combout\ ) ) # ( \Selector136~0_combout\ & ( !\Selector132~1_combout\ & ( (!\Selector163~0_combout\ & (\arch_Ch0ACT~q\ & 
-- ((\Selector132~0_combout\)))) # (\Selector163~0_combout\ & (((\arch_Ch0ACT~q\ & \Selector132~0_combout\)) # (\Mux32~0_combout\))) ) ) ) # ( !\Selector136~0_combout\ & ( !\Selector132~1_combout\ & ( ((\Selector163~0_combout\ & \Mux32~0_combout\)) # 
-- (\arch_Ch0ACT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector163~0_combout\,
	datab => \ALT_INV_arch_Ch0ACT~q\,
	datac => \ALT_INV_Mux32~0_combout\,
	datad => \ALT_INV_Selector132~0_combout\,
	datae => \ALT_INV_Selector136~0_combout\,
	dataf => \ALT_INV_Selector132~1_combout\,
	combout => \Selector132~2_combout\);

arch_Ch0ACT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector132~2_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch0ACT~q\);

\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( !arch_Ch0END(16) & ( arch_Ch0END(15) & ( (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch0END(17)))) ) ) ) # ( arch_Ch0END(16) & ( !arch_Ch0END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ 
-- (arch_Ch0END(17))))) ) ) ) # ( !arch_Ch0END(16) & ( !arch_Ch0END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch0END(17))))) # (currMemAddress(15) & ((!currMemAddress(17) $ (arch_Ch0END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111000100000000000100110000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch0END(17),
	datae => ALT_INV_arch_Ch0END(16),
	dataf => ALT_INV_arch_Ch0END(15),
	combout => \process_0~2_combout\);

\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( arch_Ch0END(17) & ( !\process_0~2_combout\ & ( (\ch0HT~q\ & (!arch_Ch0END(31) & \arch_Ch0ACT~q\)) ) ) ) # ( !arch_Ch0END(17) & ( !\process_0~2_combout\ & ( (!currMemAddress(17) & (\ch0HT~q\ & (!arch_Ch0END(31) & 
-- \arch_Ch0ACT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(17),
	datab => \ALT_INV_ch0HT~q\,
	datac => ALT_INV_arch_Ch0END(31),
	datad => \ALT_INV_arch_Ch0ACT~q\,
	datae => ALT_INV_arch_Ch0END(17),
	dataf => \ALT_INV_process_0~2_combout\,
	combout => \process_0~3_combout\);

\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( \LessThan0~18_combout\ & ( \process_0~3_combout\ & ( (\LessThan0~17_combout\ & ((!\LessThan0~13_combout\) # ((!\LessThan0~6_combout\ & \LessThan0~8_combout\)))) ) ) ) # ( !\LessThan0~18_combout\ & ( \process_0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_LessThan0~8_combout\,
	datac => \ALT_INV_LessThan0~13_combout\,
	datad => \ALT_INV_LessThan0~17_combout\,
	datae => \ALT_INV_LessThan0~18_combout\,
	dataf => \ALT_INV_process_0~3_combout\,
	combout => \process_0~4_combout\);

arch_Ch0DEC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \process_0~4_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch0DEC~q\);

\arch_Ch1END[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch1END[5]~0_combout\ = ( \Mux51~1_combout\ & ( (\stateNum~1_combout\ & (((\Selector164~6_combout\) # (\Selector164~5_combout\)) # (\Selector164~4_combout\))) ) ) # ( !\Mux51~1_combout\ & ( (\stateNum~1_combout\ & \Selector164~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000101010101010100000000010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateNum~1_combout\,
	datab => \ALT_INV_Selector164~4_combout\,
	datac => \ALT_INV_Selector164~5_combout\,
	datad => \ALT_INV_Selector164~6_combout\,
	datae => \ALT_INV_Mux51~1_combout\,
	combout => \arch_Ch1END[5]~0_combout\);

\arch_Ch1END[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(7),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(7));

\arch_Ch1END[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(6));

\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!currMemAddress(6) & (arch_Ch1END(6) & (!currMemAddress(7) $ (arch_Ch1END(7))))) # (currMemAddress(6) & (!arch_Ch1END(6) & (!currMemAddress(7) $ (arch_Ch1END(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch1END(7),
	datad => ALT_INV_arch_Ch1END(6),
	combout => \LessThan1~0_combout\);

\arch_Ch1END[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector30~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(5));

\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = !currMemAddress(5) $ (!arch_Ch1END(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => ALT_INV_arch_Ch1END(5),
	combout => \LessThan1~1_combout\);

\arch_Ch1END[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(4),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(4));

\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = !currMemAddress(4) $ (!arch_Ch1END(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_arch_Ch1END(4),
	combout => \LessThan1~2_combout\);

\arch_Ch1END[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(1),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(1));

\arch_Ch1END[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(0));

\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!currMemAddress(1) & (currMemAddress(0) & (!arch_Ch1END(1) & !arch_Ch1END(0)))) # (currMemAddress(1) & ((!arch_Ch1END(1)) # ((currMemAddress(0) & !arch_Ch1END(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => ALT_INV_currMemAddress(1),
	datac => ALT_INV_arch_Ch1END(1),
	datad => ALT_INV_arch_Ch1END(0),
	combout => \LessThan1~3_combout\);

\arch_Ch1END[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(3),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(3));

\arch_Ch1END[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(2));

\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!currMemAddress(2) & (arch_Ch1END(2) & (!currMemAddress(3) $ (arch_Ch1END(3))))) # (currMemAddress(2) & (!arch_Ch1END(2) & (!currMemAddress(3) $ (arch_Ch1END(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch1END(3),
	datad => ALT_INV_arch_Ch1END(2),
	combout => \LessThan1~4_combout\);

\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!currMemAddress(3) & (currMemAddress(2) & (!arch_Ch1END(3) & arch_Ch1END(2)))) # (currMemAddress(3) & ((!arch_Ch1END(3)) # ((currMemAddress(2) & arch_Ch1END(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch1END(3),
	datad => ALT_INV_arch_Ch1END(2),
	combout => \LessThan1~5_combout\);

\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( \LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & !\LessThan1~2_combout\)) ) ) ) # ( !\LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\LessThan1~0_combout\ & 
-- (\LessThan1~1_combout\ & !\LessThan1~2_combout\)) ) ) ) # ( \LessThan1~4_combout\ & ( !\LessThan1~5_combout\ & ( (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & (!\LessThan1~2_combout\ & \LessThan1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_LessThan1~2_combout\,
	datad => \ALT_INV_LessThan1~3_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!currMemAddress(7) & (currMemAddress(6) & (!arch_Ch1END(7) & arch_Ch1END(6)))) # (currMemAddress(7) & ((!arch_Ch1END(7)) # ((currMemAddress(6) & arch_Ch1END(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch1END(7),
	datad => ALT_INV_arch_Ch1END(6),
	combout => \LessThan1~7_combout\);

\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( arch_Ch1END(4) & ( !\LessThan1~7_combout\ & ( (!currMemAddress(5)) # ((!arch_Ch1END(5)) # (!\LessThan1~0_combout\)) ) ) ) # ( !arch_Ch1END(4) & ( !\LessThan1~7_combout\ & ( (!\LessThan1~0_combout\) # ((!currMemAddress(4) & 
-- ((!currMemAddress(5)) # (!arch_Ch1END(5)))) # (currMemAddress(4) & (!currMemAddress(5) & !arch_Ch1END(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_currMemAddress(5),
	datac => ALT_INV_arch_Ch1END(5),
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => ALT_INV_arch_Ch1END(4),
	dataf => \ALT_INV_LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

\arch_Ch1END[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(11),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(11));

\arch_Ch1END[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(14),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(14));

\arch_Ch1END[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(13),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(13));

\arch_Ch1END[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(12),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(12));

\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( arch_Ch1END(13) & ( arch_Ch1END(12) & ( (currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch1END(14))))) ) ) ) # ( !arch_Ch1END(13) & ( arch_Ch1END(12) & ( (currMemAddress(12) & (!currMemAddress(13) & 
-- (!currMemAddress(14) $ (arch_Ch1END(14))))) ) ) ) # ( arch_Ch1END(13) & ( !arch_Ch1END(12) & ( (!currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch1END(14))))) ) ) ) # ( !arch_Ch1END(13) & ( !arch_Ch1END(12) & ( 
-- (!currMemAddress(12) & (!currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch1END(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch1END(14),
	datae => ALT_INV_arch_Ch1END(13),
	dataf => ALT_INV_arch_Ch1END(12),
	combout => \LessThan1~9_combout\);

\arch_Ch1END[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(10),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(10));

\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = !currMemAddress(10) $ (!arch_Ch1END(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_arch_Ch1END(10),
	combout => \LessThan1~10_combout\);

\arch_Ch1END[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(9),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(9));

\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = !currMemAddress(9) $ (!arch_Ch1END(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(9),
	datab => ALT_INV_arch_Ch1END(9),
	combout => \LessThan1~11_combout\);

\arch_Ch1END[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(8),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(8));

\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = !currMemAddress(8) $ (!arch_Ch1END(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_arch_Ch1END(8),
	combout => \LessThan1~12_combout\);

\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( !\LessThan1~11_combout\ & ( !\LessThan1~12_combout\ & ( (\LessThan1~9_combout\ & (!\LessThan1~10_combout\ & (!currMemAddress(11) $ (arch_Ch1END(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch1END(11),
	datac => \ALT_INV_LessThan1~9_combout\,
	datad => \ALT_INV_LessThan1~10_combout\,
	datae => \ALT_INV_LessThan1~11_combout\,
	dataf => \ALT_INV_LessThan1~12_combout\,
	combout => \LessThan1~13_combout\);

\LessThan1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\LessThan1~9_combout\ & (!\LessThan1~10_combout\ & (!currMemAddress(11) $ (arch_Ch1END(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch1END(11),
	datac => \ALT_INV_LessThan1~9_combout\,
	datad => \ALT_INV_LessThan1~10_combout\,
	combout => \LessThan1~14_combout\);

\LessThan1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = ( arch_Ch1END(13) & ( arch_Ch1END(12) & ( (currMemAddress(14) & !arch_Ch1END(14)) ) ) ) # ( !arch_Ch1END(13) & ( arch_Ch1END(12) & ( (!currMemAddress(13) & (currMemAddress(14) & !arch_Ch1END(14))) # (currMemAddress(13) & 
-- ((!arch_Ch1END(14)) # (currMemAddress(14)))) ) ) ) # ( arch_Ch1END(13) & ( !arch_Ch1END(12) & ( (!currMemAddress(14) & (currMemAddress(12) & (currMemAddress(13) & !arch_Ch1END(14)))) # (currMemAddress(14) & ((!arch_Ch1END(14)) # ((currMemAddress(12) & 
-- currMemAddress(13))))) ) ) ) # ( !arch_Ch1END(13) & ( !arch_Ch1END(12) & ( (!currMemAddress(14) & (!arch_Ch1END(14) & ((currMemAddress(13)) # (currMemAddress(12))))) # (currMemAddress(14) & (((!arch_Ch1END(14)) # (currMemAddress(13))) # 
-- (currMemAddress(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000100111111000000110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch1END(14),
	datae => ALT_INV_arch_Ch1END(13),
	dataf => ALT_INV_arch_Ch1END(12),
	combout => \LessThan1~15_combout\);

\LessThan1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = ( arch_Ch1END(10) & ( !\LessThan1~15_combout\ & ( (!currMemAddress(11)) # ((!\LessThan1~9_combout\) # (arch_Ch1END(11))) ) ) ) # ( !arch_Ch1END(10) & ( !\LessThan1~15_combout\ & ( (!\LessThan1~9_combout\) # ((!currMemAddress(10) & 
-- ((!currMemAddress(11)) # (arch_Ch1END(11)))) # (currMemAddress(10) & (!currMemAddress(11) & arch_Ch1END(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001110111111111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_currMemAddress(11),
	datac => ALT_INV_arch_Ch1END(11),
	datad => \ALT_INV_LessThan1~9_combout\,
	datae => ALT_INV_arch_Ch1END(10),
	dataf => \ALT_INV_LessThan1~15_combout\,
	combout => \LessThan1~16_combout\);

\LessThan1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = ( arch_Ch1END(8) & ( \LessThan1~16_combout\ & ( (!currMemAddress(9)) # ((!\LessThan1~14_combout\) # (arch_Ch1END(9))) ) ) ) # ( !arch_Ch1END(8) & ( \LessThan1~16_combout\ & ( (!\LessThan1~14_combout\) # ((!currMemAddress(8) & 
-- ((!currMemAddress(9)) # (arch_Ch1END(9)))) # (currMemAddress(8) & (!currMemAddress(9) & arch_Ch1END(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100011101111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_currMemAddress(9),
	datac => ALT_INV_arch_Ch1END(9),
	datad => \ALT_INV_LessThan1~14_combout\,
	datae => ALT_INV_arch_Ch1END(8),
	dataf => \ALT_INV_LessThan1~16_combout\,
	combout => \LessThan1~17_combout\);

\arch_Ch1END[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(17),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(17));

\arch_Ch1END[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(16),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(16));

\arch_Ch1END[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(15),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch1END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(15));

\LessThan1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = ( arch_Ch1END(16) & ( arch_Ch1END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch1END(17))))) ) ) ) # ( !arch_Ch1END(16) & ( arch_Ch1END(15) & ( (currMemAddress(15) & (!currMemAddress(16) & 
-- (!currMemAddress(17) $ (arch_Ch1END(17))))) ) ) ) # ( arch_Ch1END(16) & ( !arch_Ch1END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch1END(17))))) ) ) ) # ( !arch_Ch1END(16) & ( !arch_Ch1END(15) & ( 
-- (!currMemAddress(15) & (!currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch1END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch1END(17),
	datae => ALT_INV_arch_Ch1END(16),
	dataf => ALT_INV_arch_Ch1END(15),
	combout => \LessThan1~18_combout\);

\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (!arch_recSel(0)) # (arch_recSel(1)) ) ) ) # ( !\KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (!arch_recSel(0)) # (((\arch_loop_start~q\ & !\KB_PLAY~input_o\)) # 
-- (arch_recSel(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	datac => \ALT_INV_arch_loop_start~q\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ALLPLAY~input_o\,
	dataf => \ALT_INV_state.REC_OTHER~q\,
	combout => \Selector36~0_combout\);

\Selector36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = ( \Mux51~1_combout\ & ( \Selector36~0_combout\ & ( arch_Ch1END(31) ) ) ) # ( !\Mux51~1_combout\ & ( \Selector36~0_combout\ & ( arch_Ch1END(31) ) ) ) # ( \Mux51~1_combout\ & ( !\Selector36~0_combout\ & ( (arch_Ch1END(31) & 
-- ((!\stateNum~1_combout\) # ((\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) ) # ( !\Mux51~1_combout\ & ( !\Selector36~0_combout\ & ( (arch_Ch1END(31) & ((!\stateNum~1_combout\) # (\state.REC_FIRST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	datac => \ALT_INV_stateNum~1_combout\,
	datad => ALT_INV_arch_Ch1END(31),
	datae => \ALT_INV_Mux51~1_combout\,
	dataf => \ALT_INV_Selector36~0_combout\,
	combout => \Selector36~1_combout\);

\arch_Ch1END[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector36~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch1END(31));

\arch_Ch1ACT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch1ACT~0_combout\ = ( \KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & 
-- (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & !\KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( 
-- (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (!\KB_Selchannel[1]~input_o\ & \KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \arch_Ch1ACT~0_combout\);

\Selector133~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = ( \arch_Ch1ACT~0_combout\ & ( (\state.CH_CONTROL~q\ & (((!\KB_STOP~input_o\ & !\ch1HT~q\)) # (\KB_PLAY~input_o\))) ) ) # ( !\arch_Ch1ACT~0_combout\ & ( \state.CH_CONTROL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100010001000101010101010101010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_STOP~input_o\,
	datad => \ALT_INV_ch1HT~q\,
	datae => \ALT_INV_arch_Ch1ACT~0_combout\,
	combout => \Selector133~0_combout\);

\Selector133~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector133~1_combout\ = (\state.CH_CONTROL~q\ & (\KB_PLAY~input_o\ & (\ch1HT~q\ & \arch_Ch1ACT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_ch1HT~q\,
	datad => \ALT_INV_arch_Ch1ACT~0_combout\,
	combout => \Selector133~1_combout\);

\Selector133~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector133~2_combout\ = ( \Selector133~0_combout\ & ( \Selector133~1_combout\ ) ) # ( !\Selector133~0_combout\ & ( \Selector133~1_combout\ ) ) # ( \Selector133~0_combout\ & ( !\Selector133~1_combout\ & ( ((\Selector163~0_combout\ & \Mux51~1_combout\)) # 
-- (\arch_Ch1ACT~q\) ) ) ) # ( !\Selector133~0_combout\ & ( !\Selector133~1_combout\ & ( (!\Selector163~0_combout\ & (\arch_Ch1ACT~q\ & ((!\Selector136~0_combout\)))) # (\Selector163~0_combout\ & (((\arch_Ch1ACT~q\ & !\Selector136~0_combout\)) # 
-- (\Mux51~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector163~0_combout\,
	datab => \ALT_INV_arch_Ch1ACT~q\,
	datac => \ALT_INV_Mux51~1_combout\,
	datad => \ALT_INV_Selector136~0_combout\,
	datae => \ALT_INV_Selector133~0_combout\,
	dataf => \ALT_INV_Selector133~1_combout\,
	combout => \Selector133~2_combout\);

arch_Ch1ACT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector133~2_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch1ACT~q\);

\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( !arch_Ch1END(16) & ( arch_Ch1END(15) & ( (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch1END(17)))) ) ) ) # ( arch_Ch1END(16) & ( !arch_Ch1END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ 
-- (arch_Ch1END(17))))) ) ) ) # ( !arch_Ch1END(16) & ( !arch_Ch1END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch1END(17))))) # (currMemAddress(15) & ((!currMemAddress(17) $ (arch_Ch1END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111000100000000000100110000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch1END(17),
	datae => ALT_INV_arch_Ch1END(16),
	dataf => ALT_INV_arch_Ch1END(15),
	combout => \process_0~5_combout\);

\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( arch_Ch1END(17) & ( !\process_0~5_combout\ & ( (\ch1HT~q\ & (!arch_Ch1END(31) & \arch_Ch1ACT~q\)) ) ) ) # ( !arch_Ch1END(17) & ( !\process_0~5_combout\ & ( (!currMemAddress(17) & (\ch1HT~q\ & (!arch_Ch1END(31) & 
-- \arch_Ch1ACT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(17),
	datab => \ALT_INV_ch1HT~q\,
	datac => ALT_INV_arch_Ch1END(31),
	datad => \ALT_INV_arch_Ch1ACT~q\,
	datae => ALT_INV_arch_Ch1END(17),
	dataf => \ALT_INV_process_0~5_combout\,
	combout => \process_0~6_combout\);

\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( \LessThan1~18_combout\ & ( \process_0~6_combout\ & ( (\LessThan1~17_combout\ & ((!\LessThan1~13_combout\) # ((!\LessThan1~6_combout\ & \LessThan1~8_combout\)))) ) ) ) # ( !\LessThan1~18_combout\ & ( \process_0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~6_combout\,
	datab => \ALT_INV_LessThan1~8_combout\,
	datac => \ALT_INV_LessThan1~13_combout\,
	datad => \ALT_INV_LessThan1~17_combout\,
	datae => \ALT_INV_LessThan1~18_combout\,
	dataf => \ALT_INV_process_0~6_combout\,
	combout => \process_0~7_combout\);

arch_Ch1DEC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \process_0~7_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch1DEC~q\);

\arch_Ch2END[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch2END[6]~0_combout\ = ( \Mux51~0_combout\ & ( (\stateNum~1_combout\ & (((\Selector164~6_combout\) # (\Selector164~5_combout\)) # (\Selector164~4_combout\))) ) ) # ( !\Mux51~0_combout\ & ( (\stateNum~1_combout\ & \Selector164~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000101010101010100000000010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateNum~1_combout\,
	datab => \ALT_INV_Selector164~4_combout\,
	datac => \ALT_INV_Selector164~5_combout\,
	datad => \ALT_INV_Selector164~6_combout\,
	datae => \ALT_INV_Mux51~0_combout\,
	combout => \arch_Ch2END[6]~0_combout\);

\arch_Ch2END[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(7),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(7));

\arch_Ch2END[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(6));

\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!currMemAddress(6) & (arch_Ch2END(6) & (!currMemAddress(7) $ (arch_Ch2END(7))))) # (currMemAddress(6) & (!arch_Ch2END(6) & (!currMemAddress(7) $ (arch_Ch2END(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch2END(7),
	datad => ALT_INV_arch_Ch2END(6),
	combout => \LessThan2~0_combout\);

\arch_Ch2END[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector30~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(5));

\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = !currMemAddress(5) $ (!arch_Ch2END(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => ALT_INV_arch_Ch2END(5),
	combout => \LessThan2~1_combout\);

\arch_Ch2END[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(4),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(4));

\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = !currMemAddress(4) $ (!arch_Ch2END(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_arch_Ch2END(4),
	combout => \LessThan2~2_combout\);

\arch_Ch2END[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(1),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(1));

\arch_Ch2END[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(0));

\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!currMemAddress(1) & (currMemAddress(0) & (!arch_Ch2END(1) & !arch_Ch2END(0)))) # (currMemAddress(1) & ((!arch_Ch2END(1)) # ((currMemAddress(0) & !arch_Ch2END(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => ALT_INV_currMemAddress(1),
	datac => ALT_INV_arch_Ch2END(1),
	datad => ALT_INV_arch_Ch2END(0),
	combout => \LessThan2~3_combout\);

\arch_Ch2END[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(3),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(3));

\arch_Ch2END[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(2));

\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!currMemAddress(2) & (arch_Ch2END(2) & (!currMemAddress(3) $ (arch_Ch2END(3))))) # (currMemAddress(2) & (!arch_Ch2END(2) & (!currMemAddress(3) $ (arch_Ch2END(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch2END(3),
	datad => ALT_INV_arch_Ch2END(2),
	combout => \LessThan2~4_combout\);

\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!currMemAddress(3) & (currMemAddress(2) & (!arch_Ch2END(3) & arch_Ch2END(2)))) # (currMemAddress(3) & ((!arch_Ch2END(3)) # ((currMemAddress(2) & arch_Ch2END(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch2END(3),
	datad => ALT_INV_arch_Ch2END(2),
	combout => \LessThan2~5_combout\);

\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( \LessThan2~4_combout\ & ( \LessThan2~5_combout\ & ( (\LessThan2~0_combout\ & (\LessThan2~1_combout\ & !\LessThan2~2_combout\)) ) ) ) # ( !\LessThan2~4_combout\ & ( \LessThan2~5_combout\ & ( (\LessThan2~0_combout\ & 
-- (\LessThan2~1_combout\ & !\LessThan2~2_combout\)) ) ) ) # ( \LessThan2~4_combout\ & ( !\LessThan2~5_combout\ & ( (\LessThan2~0_combout\ & (\LessThan2~1_combout\ & (!\LessThan2~2_combout\ & \LessThan2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~0_combout\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_LessThan2~2_combout\,
	datad => \ALT_INV_LessThan2~3_combout\,
	datae => \ALT_INV_LessThan2~4_combout\,
	dataf => \ALT_INV_LessThan2~5_combout\,
	combout => \LessThan2~6_combout\);

\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!currMemAddress(7) & (currMemAddress(6) & (!arch_Ch2END(7) & arch_Ch2END(6)))) # (currMemAddress(7) & ((!arch_Ch2END(7)) # ((currMemAddress(6) & arch_Ch2END(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch2END(7),
	datad => ALT_INV_arch_Ch2END(6),
	combout => \LessThan2~7_combout\);

\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( arch_Ch2END(4) & ( !\LessThan2~7_combout\ & ( (!currMemAddress(5)) # ((!arch_Ch2END(5)) # (!\LessThan2~0_combout\)) ) ) ) # ( !arch_Ch2END(4) & ( !\LessThan2~7_combout\ & ( (!\LessThan2~0_combout\) # ((!currMemAddress(4) & 
-- ((!currMemAddress(5)) # (!arch_Ch2END(5)))) # (currMemAddress(4) & (!currMemAddress(5) & !arch_Ch2END(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_currMemAddress(5),
	datac => ALT_INV_arch_Ch2END(5),
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => ALT_INV_arch_Ch2END(4),
	dataf => \ALT_INV_LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

\arch_Ch2END[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(11),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(11));

\arch_Ch2END[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(14),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(14));

\arch_Ch2END[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(13),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(13));

\arch_Ch2END[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(12),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(12));

\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( arch_Ch2END(13) & ( arch_Ch2END(12) & ( (currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch2END(14))))) ) ) ) # ( !arch_Ch2END(13) & ( arch_Ch2END(12) & ( (currMemAddress(12) & (!currMemAddress(13) & 
-- (!currMemAddress(14) $ (arch_Ch2END(14))))) ) ) ) # ( arch_Ch2END(13) & ( !arch_Ch2END(12) & ( (!currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch2END(14))))) ) ) ) # ( !arch_Ch2END(13) & ( !arch_Ch2END(12) & ( 
-- (!currMemAddress(12) & (!currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch2END(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch2END(14),
	datae => ALT_INV_arch_Ch2END(13),
	dataf => ALT_INV_arch_Ch2END(12),
	combout => \LessThan2~9_combout\);

\arch_Ch2END[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(10),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(10));

\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = !currMemAddress(10) $ (!arch_Ch2END(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_arch_Ch2END(10),
	combout => \LessThan2~10_combout\);

\arch_Ch2END[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(9),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(9));

\LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = !currMemAddress(9) $ (!arch_Ch2END(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(9),
	datab => ALT_INV_arch_Ch2END(9),
	combout => \LessThan2~11_combout\);

\arch_Ch2END[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(8),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(8));

\LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = !currMemAddress(8) $ (!arch_Ch2END(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_arch_Ch2END(8),
	combout => \LessThan2~12_combout\);

\LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = ( !\LessThan2~11_combout\ & ( !\LessThan2~12_combout\ & ( (\LessThan2~9_combout\ & (!\LessThan2~10_combout\ & (!currMemAddress(11) $ (arch_Ch2END(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch2END(11),
	datac => \ALT_INV_LessThan2~9_combout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	datae => \ALT_INV_LessThan2~11_combout\,
	dataf => \ALT_INV_LessThan2~12_combout\,
	combout => \LessThan2~13_combout\);

\LessThan2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\LessThan2~9_combout\ & (!\LessThan2~10_combout\ & (!currMemAddress(11) $ (arch_Ch2END(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch2END(11),
	datac => \ALT_INV_LessThan2~9_combout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	combout => \LessThan2~14_combout\);

\LessThan2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~15_combout\ = ( arch_Ch2END(13) & ( arch_Ch2END(12) & ( (currMemAddress(14) & !arch_Ch2END(14)) ) ) ) # ( !arch_Ch2END(13) & ( arch_Ch2END(12) & ( (!currMemAddress(13) & (currMemAddress(14) & !arch_Ch2END(14))) # (currMemAddress(13) & 
-- ((!arch_Ch2END(14)) # (currMemAddress(14)))) ) ) ) # ( arch_Ch2END(13) & ( !arch_Ch2END(12) & ( (!currMemAddress(14) & (currMemAddress(12) & (currMemAddress(13) & !arch_Ch2END(14)))) # (currMemAddress(14) & ((!arch_Ch2END(14)) # ((currMemAddress(12) & 
-- currMemAddress(13))))) ) ) ) # ( !arch_Ch2END(13) & ( !arch_Ch2END(12) & ( (!currMemAddress(14) & (!arch_Ch2END(14) & ((currMemAddress(13)) # (currMemAddress(12))))) # (currMemAddress(14) & (((!arch_Ch2END(14)) # (currMemAddress(13))) # 
-- (currMemAddress(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000100111111000000110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch2END(14),
	datae => ALT_INV_arch_Ch2END(13),
	dataf => ALT_INV_arch_Ch2END(12),
	combout => \LessThan2~15_combout\);

\LessThan2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~16_combout\ = ( arch_Ch2END(10) & ( !\LessThan2~15_combout\ & ( (!currMemAddress(11)) # ((!\LessThan2~9_combout\) # (arch_Ch2END(11))) ) ) ) # ( !arch_Ch2END(10) & ( !\LessThan2~15_combout\ & ( (!\LessThan2~9_combout\) # ((!currMemAddress(10) & 
-- ((!currMemAddress(11)) # (arch_Ch2END(11)))) # (currMemAddress(10) & (!currMemAddress(11) & arch_Ch2END(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001110111111111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_currMemAddress(11),
	datac => ALT_INV_arch_Ch2END(11),
	datad => \ALT_INV_LessThan2~9_combout\,
	datae => ALT_INV_arch_Ch2END(10),
	dataf => \ALT_INV_LessThan2~15_combout\,
	combout => \LessThan2~16_combout\);

\LessThan2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~17_combout\ = ( arch_Ch2END(8) & ( \LessThan2~16_combout\ & ( (!currMemAddress(9)) # ((!\LessThan2~14_combout\) # (arch_Ch2END(9))) ) ) ) # ( !arch_Ch2END(8) & ( \LessThan2~16_combout\ & ( (!\LessThan2~14_combout\) # ((!currMemAddress(8) & 
-- ((!currMemAddress(9)) # (arch_Ch2END(9)))) # (currMemAddress(8) & (!currMemAddress(9) & arch_Ch2END(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100011101111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_currMemAddress(9),
	datac => ALT_INV_arch_Ch2END(9),
	datad => \ALT_INV_LessThan2~14_combout\,
	datae => ALT_INV_arch_Ch2END(8),
	dataf => \ALT_INV_LessThan2~16_combout\,
	combout => \LessThan2~17_combout\);

\arch_Ch2END[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(17),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(17));

\arch_Ch2END[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(16),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(16));

\arch_Ch2END[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(15),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch2END[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(15));

\LessThan2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = ( arch_Ch2END(16) & ( arch_Ch2END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch2END(17))))) ) ) ) # ( !arch_Ch2END(16) & ( arch_Ch2END(15) & ( (currMemAddress(15) & (!currMemAddress(16) & 
-- (!currMemAddress(17) $ (arch_Ch2END(17))))) ) ) ) # ( arch_Ch2END(16) & ( !arch_Ch2END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch2END(17))))) ) ) ) # ( !arch_Ch2END(16) & ( !arch_Ch2END(15) & ( 
-- (!currMemAddress(15) & (!currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch2END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch2END(17),
	datae => ALT_INV_arch_Ch2END(16),
	dataf => ALT_INV_arch_Ch2END(15),
	combout => \LessThan2~18_combout\);

\Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = ( \KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (!arch_recSel(1)) # (arch_recSel(0)) ) ) ) # ( !\KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( ((!arch_recSel(1)) # ((\arch_loop_start~q\ & !\KB_PLAY~input_o\))) # 
-- (arch_recSel(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	datac => \ALT_INV_arch_loop_start~q\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ALLPLAY~input_o\,
	dataf => \ALT_INV_state.REC_OTHER~q\,
	combout => \Selector68~0_combout\);

\Selector68~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = ( \Mux51~0_combout\ & ( \Selector68~0_combout\ & ( arch_Ch2END(31) ) ) ) # ( !\Mux51~0_combout\ & ( \Selector68~0_combout\ & ( arch_Ch2END(31) ) ) ) # ( \Mux51~0_combout\ & ( !\Selector68~0_combout\ & ( (arch_Ch2END(31) & 
-- ((!\stateNum~1_combout\) # ((\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) ) # ( !\Mux51~0_combout\ & ( !\Selector68~0_combout\ & ( (arch_Ch2END(31) & ((!\stateNum~1_combout\) # (\state.REC_FIRST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	datac => \ALT_INV_stateNum~1_combout\,
	datad => ALT_INV_arch_Ch2END(31),
	datae => \ALT_INV_Mux51~0_combout\,
	dataf => \ALT_INV_Selector68~0_combout\,
	combout => \Selector68~1_combout\);

\arch_Ch2END[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector68~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch2END(31));

\arch_Ch2ACT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch2ACT~0_combout\ = ( \KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & 
-- (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( 
-- (!\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (\KB_Selchannel[1]~input_o\ & \KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \arch_Ch2ACT~0_combout\);

\Selector134~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = ( \arch_Ch2ACT~0_combout\ & ( (\state.CH_CONTROL~q\ & (((!\KB_STOP~input_o\ & !\ch2HT~q\)) # (\KB_PLAY~input_o\))) ) ) # ( !\arch_Ch2ACT~0_combout\ & ( \state.CH_CONTROL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100010001000101010101010101010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_STOP~input_o\,
	datad => \ALT_INV_ch2HT~q\,
	datae => \ALT_INV_arch_Ch2ACT~0_combout\,
	combout => \Selector134~0_combout\);

\Selector134~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector134~1_combout\ = (\state.CH_CONTROL~q\ & (\KB_PLAY~input_o\ & (\ch2HT~q\ & \arch_Ch2ACT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_ch2HT~q\,
	datad => \ALT_INV_arch_Ch2ACT~0_combout\,
	combout => \Selector134~1_combout\);

\Selector134~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector134~2_combout\ = ( \Selector134~0_combout\ & ( \Selector134~1_combout\ ) ) # ( !\Selector134~0_combout\ & ( \Selector134~1_combout\ ) ) # ( \Selector134~0_combout\ & ( !\Selector134~1_combout\ & ( ((\Selector163~0_combout\ & \Mux51~0_combout\)) # 
-- (\arch_Ch2ACT~q\) ) ) ) # ( !\Selector134~0_combout\ & ( !\Selector134~1_combout\ & ( (!\Selector163~0_combout\ & (\arch_Ch2ACT~q\ & ((!\Selector136~0_combout\)))) # (\Selector163~0_combout\ & (((\arch_Ch2ACT~q\ & !\Selector136~0_combout\)) # 
-- (\Mux51~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector163~0_combout\,
	datab => \ALT_INV_arch_Ch2ACT~q\,
	datac => \ALT_INV_Mux51~0_combout\,
	datad => \ALT_INV_Selector136~0_combout\,
	datae => \ALT_INV_Selector134~0_combout\,
	dataf => \ALT_INV_Selector134~1_combout\,
	combout => \Selector134~2_combout\);

arch_Ch2ACT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector134~2_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch2ACT~q\);

\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ( !arch_Ch2END(16) & ( arch_Ch2END(15) & ( (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch2END(17)))) ) ) ) # ( arch_Ch2END(16) & ( !arch_Ch2END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ 
-- (arch_Ch2END(17))))) ) ) ) # ( !arch_Ch2END(16) & ( !arch_Ch2END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch2END(17))))) # (currMemAddress(15) & ((!currMemAddress(17) $ (arch_Ch2END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111000100000000000100110000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch2END(17),
	datae => ALT_INV_arch_Ch2END(16),
	dataf => ALT_INV_arch_Ch2END(15),
	combout => \process_0~8_combout\);

\process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ( arch_Ch2END(17) & ( !\process_0~8_combout\ & ( (\ch2HT~q\ & (!arch_Ch2END(31) & \arch_Ch2ACT~q\)) ) ) ) # ( !arch_Ch2END(17) & ( !\process_0~8_combout\ & ( (!currMemAddress(17) & (\ch2HT~q\ & (!arch_Ch2END(31) & 
-- \arch_Ch2ACT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(17),
	datab => \ALT_INV_ch2HT~q\,
	datac => ALT_INV_arch_Ch2END(31),
	datad => \ALT_INV_arch_Ch2ACT~q\,
	datae => ALT_INV_arch_Ch2END(17),
	dataf => \ALT_INV_process_0~8_combout\,
	combout => \process_0~9_combout\);

\process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = ( \LessThan2~18_combout\ & ( \process_0~9_combout\ & ( (\LessThan2~17_combout\ & ((!\LessThan2~13_combout\) # ((!\LessThan2~6_combout\ & \LessThan2~8_combout\)))) ) ) ) # ( !\LessThan2~18_combout\ & ( \process_0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~6_combout\,
	datab => \ALT_INV_LessThan2~8_combout\,
	datac => \ALT_INV_LessThan2~13_combout\,
	datad => \ALT_INV_LessThan2~17_combout\,
	datae => \ALT_INV_LessThan2~18_combout\,
	dataf => \ALT_INV_process_0~9_combout\,
	combout => \process_0~10_combout\);

arch_Ch2DEC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \process_0~10_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch2DEC~q\);

\arch_Ch3END[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch3END[5]~0_combout\ = ( \Mux51~2_combout\ & ( (\stateNum~1_combout\ & (((\Selector164~6_combout\) # (\Selector164~5_combout\)) # (\Selector164~4_combout\))) ) ) # ( !\Mux51~2_combout\ & ( (\stateNum~1_combout\ & \Selector164~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000101010101010100000000010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateNum~1_combout\,
	datab => \ALT_INV_Selector164~4_combout\,
	datac => \ALT_INV_Selector164~5_combout\,
	datad => \ALT_INV_Selector164~6_combout\,
	datae => \ALT_INV_Mux51~2_combout\,
	combout => \arch_Ch3END[5]~0_combout\);

\arch_Ch3END[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(7),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(7));

\arch_Ch3END[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(6));

\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!currMemAddress(6) & (arch_Ch3END(6) & (!currMemAddress(7) $ (arch_Ch3END(7))))) # (currMemAddress(6) & (!arch_Ch3END(6) & (!currMemAddress(7) $ (arch_Ch3END(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch3END(7),
	datad => ALT_INV_arch_Ch3END(6),
	combout => \LessThan3~0_combout\);

\arch_Ch3END[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector30~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(5));

\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = !currMemAddress(5) $ (!arch_Ch3END(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(5),
	datab => ALT_INV_arch_Ch3END(5),
	combout => \LessThan3~1_combout\);

\arch_Ch3END[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(4),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(4));

\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = !currMemAddress(4) $ (!arch_Ch3END(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_arch_Ch3END(4),
	combout => \LessThan3~2_combout\);

\arch_Ch3END[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(1),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(1));

\arch_Ch3END[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(0));

\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!currMemAddress(1) & (currMemAddress(0) & (!arch_Ch3END(1) & !arch_Ch3END(0)))) # (currMemAddress(1) & ((!arch_Ch3END(1)) # ((currMemAddress(0) & !arch_Ch3END(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(0),
	datab => ALT_INV_currMemAddress(1),
	datac => ALT_INV_arch_Ch3END(1),
	datad => ALT_INV_arch_Ch3END(0),
	combout => \LessThan3~3_combout\);

\arch_Ch3END[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(3),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(3));

\arch_Ch3END[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~0_combout\,
	clrn => \ResetN~input_o\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(2));

\LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!currMemAddress(2) & (arch_Ch3END(2) & (!currMemAddress(3) $ (arch_Ch3END(3))))) # (currMemAddress(2) & (!arch_Ch3END(2) & (!currMemAddress(3) $ (arch_Ch3END(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch3END(3),
	datad => ALT_INV_arch_Ch3END(2),
	combout => \LessThan3~4_combout\);

\LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (!currMemAddress(3) & (currMemAddress(2) & (!arch_Ch3END(3) & arch_Ch3END(2)))) # (currMemAddress(3) & ((!arch_Ch3END(3)) # ((currMemAddress(2) & arch_Ch3END(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(2),
	datab => ALT_INV_currMemAddress(3),
	datac => ALT_INV_arch_Ch3END(3),
	datad => ALT_INV_arch_Ch3END(2),
	combout => \LessThan3~5_combout\);

\LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = ( \LessThan3~4_combout\ & ( \LessThan3~5_combout\ & ( (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & !\LessThan3~2_combout\)) ) ) ) # ( !\LessThan3~4_combout\ & ( \LessThan3~5_combout\ & ( (\LessThan3~0_combout\ & 
-- (\LessThan3~1_combout\ & !\LessThan3~2_combout\)) ) ) ) # ( \LessThan3~4_combout\ & ( !\LessThan3~5_combout\ & ( (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & (!\LessThan3~2_combout\ & \LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datab => \ALT_INV_LessThan3~1_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~3_combout\,
	datae => \ALT_INV_LessThan3~4_combout\,
	dataf => \ALT_INV_LessThan3~5_combout\,
	combout => \LessThan3~6_combout\);

\LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (!currMemAddress(7) & (currMemAddress(6) & (!arch_Ch3END(7) & arch_Ch3END(6)))) # (currMemAddress(7) & ((!arch_Ch3END(7)) # ((currMemAddress(6) & arch_Ch3END(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001001100000111000100110000011100010011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(6),
	datab => ALT_INV_currMemAddress(7),
	datac => ALT_INV_arch_Ch3END(7),
	datad => ALT_INV_arch_Ch3END(6),
	combout => \LessThan3~7_combout\);

\LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = ( arch_Ch3END(4) & ( !\LessThan3~7_combout\ & ( (!currMemAddress(5)) # ((!arch_Ch3END(5)) # (!\LessThan3~0_combout\)) ) ) ) # ( !arch_Ch3END(4) & ( !\LessThan3~7_combout\ & ( (!\LessThan3~0_combout\) # ((!currMemAddress(4) & 
-- ((!currMemAddress(5)) # (!arch_Ch3END(5)))) # (currMemAddress(4) & (!currMemAddress(5) & !arch_Ch3END(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(4),
	datab => ALT_INV_currMemAddress(5),
	datac => ALT_INV_arch_Ch3END(5),
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => ALT_INV_arch_Ch3END(4),
	dataf => \ALT_INV_LessThan3~7_combout\,
	combout => \LessThan3~8_combout\);

\arch_Ch3END[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(11),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(11));

\arch_Ch3END[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(14),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(14));

\arch_Ch3END[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(13),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(13));

\arch_Ch3END[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(12),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(12));

\LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~9_combout\ = ( arch_Ch3END(13) & ( arch_Ch3END(12) & ( (currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch3END(14))))) ) ) ) # ( !arch_Ch3END(13) & ( arch_Ch3END(12) & ( (currMemAddress(12) & (!currMemAddress(13) & 
-- (!currMemAddress(14) $ (arch_Ch3END(14))))) ) ) ) # ( arch_Ch3END(13) & ( !arch_Ch3END(12) & ( (!currMemAddress(12) & (currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch3END(14))))) ) ) ) # ( !arch_Ch3END(13) & ( !arch_Ch3END(12) & ( 
-- (!currMemAddress(12) & (!currMemAddress(13) & (!currMemAddress(14) $ (arch_Ch3END(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch3END(14),
	datae => ALT_INV_arch_Ch3END(13),
	dataf => ALT_INV_arch_Ch3END(12),
	combout => \LessThan3~9_combout\);

\arch_Ch3END[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(10),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(10));

\LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~10_combout\ = !currMemAddress(10) $ (!arch_Ch3END(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_arch_Ch3END(10),
	combout => \LessThan3~10_combout\);

\arch_Ch3END[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(9),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(9));

\LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~11_combout\ = !currMemAddress(9) $ (!arch_Ch3END(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(9),
	datab => ALT_INV_arch_Ch3END(9),
	combout => \LessThan3~11_combout\);

\arch_Ch3END[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(8),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(8));

\LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~12_combout\ = !currMemAddress(8) $ (!arch_Ch3END(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_arch_Ch3END(8),
	combout => \LessThan3~12_combout\);

\LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~13_combout\ = ( !\LessThan3~11_combout\ & ( !\LessThan3~12_combout\ & ( (\LessThan3~9_combout\ & (!\LessThan3~10_combout\ & (!currMemAddress(11) $ (arch_Ch3END(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch3END(11),
	datac => \ALT_INV_LessThan3~9_combout\,
	datad => \ALT_INV_LessThan3~10_combout\,
	datae => \ALT_INV_LessThan3~11_combout\,
	dataf => \ALT_INV_LessThan3~12_combout\,
	combout => \LessThan3~13_combout\);

\LessThan3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\LessThan3~9_combout\ & (!\LessThan3~10_combout\ & (!currMemAddress(11) $ (arch_Ch3END(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(11),
	datab => ALT_INV_arch_Ch3END(11),
	datac => \ALT_INV_LessThan3~9_combout\,
	datad => \ALT_INV_LessThan3~10_combout\,
	combout => \LessThan3~14_combout\);

\LessThan3~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~15_combout\ = ( arch_Ch3END(13) & ( arch_Ch3END(12) & ( (currMemAddress(14) & !arch_Ch3END(14)) ) ) ) # ( !arch_Ch3END(13) & ( arch_Ch3END(12) & ( (!currMemAddress(13) & (currMemAddress(14) & !arch_Ch3END(14))) # (currMemAddress(13) & 
-- ((!arch_Ch3END(14)) # (currMemAddress(14)))) ) ) ) # ( arch_Ch3END(13) & ( !arch_Ch3END(12) & ( (!currMemAddress(14) & (currMemAddress(12) & (currMemAddress(13) & !arch_Ch3END(14)))) # (currMemAddress(14) & ((!arch_Ch3END(14)) # ((currMemAddress(12) & 
-- currMemAddress(13))))) ) ) ) # ( !arch_Ch3END(13) & ( !arch_Ch3END(12) & ( (!currMemAddress(14) & (!arch_Ch3END(14) & ((currMemAddress(13)) # (currMemAddress(12))))) # (currMemAddress(14) & (((!arch_Ch3END(14)) # (currMemAddress(13))) # 
-- (currMemAddress(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000100111111000000110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(12),
	datab => ALT_INV_currMemAddress(13),
	datac => ALT_INV_currMemAddress(14),
	datad => ALT_INV_arch_Ch3END(14),
	datae => ALT_INV_arch_Ch3END(13),
	dataf => ALT_INV_arch_Ch3END(12),
	combout => \LessThan3~15_combout\);

\LessThan3~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~16_combout\ = ( arch_Ch3END(10) & ( !\LessThan3~15_combout\ & ( (!currMemAddress(11)) # ((!\LessThan3~9_combout\) # (arch_Ch3END(11))) ) ) ) # ( !arch_Ch3END(10) & ( !\LessThan3~15_combout\ & ( (!\LessThan3~9_combout\) # ((!currMemAddress(10) & 
-- ((!currMemAddress(11)) # (arch_Ch3END(11)))) # (currMemAddress(10) & (!currMemAddress(11) & arch_Ch3END(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001110111111111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(10),
	datab => ALT_INV_currMemAddress(11),
	datac => ALT_INV_arch_Ch3END(11),
	datad => \ALT_INV_LessThan3~9_combout\,
	datae => ALT_INV_arch_Ch3END(10),
	dataf => \ALT_INV_LessThan3~15_combout\,
	combout => \LessThan3~16_combout\);

\LessThan3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~17_combout\ = ( arch_Ch3END(8) & ( \LessThan3~16_combout\ & ( (!currMemAddress(9)) # ((!\LessThan3~14_combout\) # (arch_Ch3END(9))) ) ) ) # ( !arch_Ch3END(8) & ( \LessThan3~16_combout\ & ( (!\LessThan3~14_combout\) # ((!currMemAddress(8) & 
-- ((!currMemAddress(9)) # (arch_Ch3END(9)))) # (currMemAddress(8) & (!currMemAddress(9) & arch_Ch3END(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100011101111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(8),
	datab => ALT_INV_currMemAddress(9),
	datac => ALT_INV_arch_Ch3END(9),
	datad => \ALT_INV_LessThan3~14_combout\,
	datae => ALT_INV_arch_Ch3END(8),
	dataf => \ALT_INV_LessThan3~16_combout\,
	combout => \LessThan3~17_combout\);

\arch_Ch3END[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(17),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(17));

\arch_Ch3END[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(16),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(16));

\arch_Ch3END[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => currMemAddress(15),
	clrn => \ResetN~input_o\,
	sclr => \ALT_INV_state.EMPTY~q\,
	ena => \arch_Ch3END[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(15));

\LessThan3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = ( arch_Ch3END(16) & ( arch_Ch3END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch3END(17))))) ) ) ) # ( !arch_Ch3END(16) & ( arch_Ch3END(15) & ( (currMemAddress(15) & (!currMemAddress(16) & 
-- (!currMemAddress(17) $ (arch_Ch3END(17))))) ) ) ) # ( arch_Ch3END(16) & ( !arch_Ch3END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch3END(17))))) ) ) ) # ( !arch_Ch3END(16) & ( !arch_Ch3END(15) & ( 
-- (!currMemAddress(15) & (!currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch3END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch3END(17),
	datae => ALT_INV_arch_Ch3END(16),
	dataf => ALT_INV_arch_Ch3END(15),
	combout => \LessThan3~18_combout\);

\Selector100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = ( \KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (!arch_recSel(0)) # (!arch_recSel(1)) ) ) ) # ( !\KB_ALLPLAY~input_o\ & ( \state.REC_OTHER~q\ & ( (!arch_recSel(0)) # ((!arch_recSel(1)) # ((\arch_loop_start~q\ & 
-- !\KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_arch_recSel(0),
	datab => ALT_INV_arch_recSel(1),
	datac => \ALT_INV_arch_loop_start~q\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ALLPLAY~input_o\,
	dataf => \ALT_INV_state.REC_OTHER~q\,
	combout => \Selector100~0_combout\);

\Selector100~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = ( \Mux51~2_combout\ & ( \Selector100~0_combout\ & ( arch_Ch3END(31) ) ) ) # ( !\Mux51~2_combout\ & ( \Selector100~0_combout\ & ( arch_Ch3END(31) ) ) ) # ( \Mux51~2_combout\ & ( !\Selector100~0_combout\ & ( (arch_Ch3END(31) & 
-- ((!\stateNum~1_combout\) # ((\process_0~0_combout\ & \state.REC_FIRST~q\)))) ) ) ) # ( !\Mux51~2_combout\ & ( !\Selector100~0_combout\ & ( (arch_Ch3END(31) & ((!\stateNum~1_combout\) # (\state.REC_FIRST~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_state.REC_FIRST~q\,
	datac => \ALT_INV_stateNum~1_combout\,
	datad => ALT_INV_arch_Ch3END(31),
	datae => \ALT_INV_Mux51~2_combout\,
	dataf => \ALT_INV_Selector100~0_combout\,
	combout => \Selector100~1_combout\);

\arch_Ch3END[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector100~1_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => arch_Ch3END(31));

\arch_Ch3ACT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \arch_Ch3ACT~0_combout\ = ( \KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( \KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & 
-- (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( \KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & \KB_Selchannel[1]~input_o\)) ) ) ) # ( !\KB_ClearCH~input_o\ & ( !\KB_STOP~input_o\ & ( 
-- (\KB_Selchannel[0]~input_o\ & (!\KB_REC~input_o\ & (\KB_Selchannel[1]~input_o\ & \KB_PLAY~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KB_Selchannel[0]~input_o\,
	datab => \ALT_INV_KB_REC~input_o\,
	datac => \ALT_INV_KB_Selchannel[1]~input_o\,
	datad => \ALT_INV_KB_PLAY~input_o\,
	datae => \ALT_INV_KB_ClearCH~input_o\,
	dataf => \ALT_INV_KB_STOP~input_o\,
	combout => \arch_Ch3ACT~0_combout\);

\Selector135~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = ( \arch_Ch3ACT~0_combout\ & ( (\state.CH_CONTROL~q\ & (((!\KB_STOP~input_o\ & !\ch3HT~q\)) # (\KB_PLAY~input_o\))) ) ) # ( !\arch_Ch3ACT~0_combout\ & ( \state.CH_CONTROL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100010001000101010101010101010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_KB_STOP~input_o\,
	datad => \ALT_INV_ch3HT~q\,
	datae => \ALT_INV_arch_Ch3ACT~0_combout\,
	combout => \Selector135~0_combout\);

\Selector135~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector135~1_combout\ = (\state.CH_CONTROL~q\ & (\KB_PLAY~input_o\ & (\ch3HT~q\ & \arch_Ch3ACT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.CH_CONTROL~q\,
	datab => \ALT_INV_KB_PLAY~input_o\,
	datac => \ALT_INV_ch3HT~q\,
	datad => \ALT_INV_arch_Ch3ACT~0_combout\,
	combout => \Selector135~1_combout\);

\Selector135~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector135~2_combout\ = ( \Selector135~0_combout\ & ( \Selector135~1_combout\ ) ) # ( !\Selector135~0_combout\ & ( \Selector135~1_combout\ ) ) # ( \Selector135~0_combout\ & ( !\Selector135~1_combout\ & ( ((\Selector163~0_combout\ & \Mux51~2_combout\)) # 
-- (\arch_Ch3ACT~q\) ) ) ) # ( !\Selector135~0_combout\ & ( !\Selector135~1_combout\ & ( (!\Selector163~0_combout\ & (\arch_Ch3ACT~q\ & ((!\Selector136~0_combout\)))) # (\Selector163~0_combout\ & (((\arch_Ch3ACT~q\ & !\Selector136~0_combout\)) # 
-- (\Mux51~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector163~0_combout\,
	datab => \ALT_INV_arch_Ch3ACT~q\,
	datac => \ALT_INV_Mux51~2_combout\,
	datad => \ALT_INV_Selector136~0_combout\,
	datae => \ALT_INV_Selector135~0_combout\,
	dataf => \ALT_INV_Selector135~1_combout\,
	combout => \Selector135~2_combout\);

arch_Ch3ACT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector135~2_combout\,
	clrn => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch3ACT~q\);

\process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = ( !arch_Ch3END(16) & ( arch_Ch3END(15) & ( (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch3END(17)))) ) ) ) # ( arch_Ch3END(16) & ( !arch_Ch3END(15) & ( (currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ 
-- (arch_Ch3END(17))))) ) ) ) # ( !arch_Ch3END(16) & ( !arch_Ch3END(15) & ( (!currMemAddress(15) & (currMemAddress(16) & (!currMemAddress(17) $ (arch_Ch3END(17))))) # (currMemAddress(15) & ((!currMemAddress(17) $ (arch_Ch3END(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111000100000000000100110000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(15),
	datab => ALT_INV_currMemAddress(16),
	datac => ALT_INV_currMemAddress(17),
	datad => ALT_INV_arch_Ch3END(17),
	datae => ALT_INV_arch_Ch3END(16),
	dataf => ALT_INV_arch_Ch3END(15),
	combout => \process_0~11_combout\);

\process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = ( arch_Ch3END(17) & ( !\process_0~11_combout\ & ( (\ch3HT~q\ & (!arch_Ch3END(31) & \arch_Ch3ACT~q\)) ) ) ) # ( !arch_Ch3END(17) & ( !\process_0~11_combout\ & ( (!currMemAddress(17) & (\ch3HT~q\ & (!arch_Ch3END(31) & 
-- \arch_Ch3ACT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_currMemAddress(17),
	datab => \ALT_INV_ch3HT~q\,
	datac => ALT_INV_arch_Ch3END(31),
	datad => \ALT_INV_arch_Ch3ACT~q\,
	datae => ALT_INV_arch_Ch3END(17),
	dataf => \ALT_INV_process_0~11_combout\,
	combout => \process_0~12_combout\);

\process_0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = ( \LessThan3~18_combout\ & ( \process_0~12_combout\ & ( (\LessThan3~17_combout\ & ((!\LessThan3~13_combout\) # ((!\LessThan3~6_combout\ & \LessThan3~8_combout\)))) ) ) ) # ( !\LessThan3~18_combout\ & ( \process_0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~6_combout\,
	datab => \ALT_INV_LessThan3~8_combout\,
	datac => \ALT_INV_LessThan3~13_combout\,
	datad => \ALT_INV_LessThan3~17_combout\,
	datae => \ALT_INV_LessThan3~18_combout\,
	dataf => \ALT_INV_process_0~12_combout\,
	combout => \process_0~13_combout\);

arch_Ch3DEC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \process_0~13_combout\,
	ena => \ResetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arch_Ch3DEC~q\);

\KB_RecOnMet~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_RecOnMet,
	o => \KB_RecOnMet~input_o\);

\KB_IMMstart~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_IMMstart,
	o => \KB_IMMstart~input_o\);

ww_recSel(0) <= \recSel[0]~output_o\;

ww_recSel(1) <= \recSel[1]~output_o\;

ww_recording <= \recording~output_o\;

ww_loop_start <= \loop_start~output_o\;

ww_Imm_start <= \Imm_start~output_o\;

ww_CurrState(0) <= \CurrState[0]~output_o\;

ww_CurrState(1) <= \CurrState[1]~output_o\;

ww_CurrState(2) <= \CurrState[2]~output_o\;

ww_ENDMemAddress(0) <= \ENDMemAddress[0]~output_o\;

ww_ENDMemAddress(1) <= \ENDMemAddress[1]~output_o\;

ww_ENDMemAddress(2) <= \ENDMemAddress[2]~output_o\;

ww_ENDMemAddress(3) <= \ENDMemAddress[3]~output_o\;

ww_ENDMemAddress(4) <= \ENDMemAddress[4]~output_o\;

ww_ENDMemAddress(5) <= \ENDMemAddress[5]~output_o\;

ww_ENDMemAddress(6) <= \ENDMemAddress[6]~output_o\;

ww_ENDMemAddress(7) <= \ENDMemAddress[7]~output_o\;

ww_ENDMemAddress(8) <= \ENDMemAddress[8]~output_o\;

ww_ENDMemAddress(9) <= \ENDMemAddress[9]~output_o\;

ww_ENDMemAddress(10) <= \ENDMemAddress[10]~output_o\;

ww_ENDMemAddress(11) <= \ENDMemAddress[11]~output_o\;

ww_ENDMemAddress(12) <= \ENDMemAddress[12]~output_o\;

ww_ENDMemAddress(13) <= \ENDMemAddress[13]~output_o\;

ww_ENDMemAddress(14) <= \ENDMemAddress[14]~output_o\;

ww_ENDMemAddress(15) <= \ENDMemAddress[15]~output_o\;

ww_ENDMemAddress(16) <= \ENDMemAddress[16]~output_o\;

ww_ENDMemAddress(17) <= \ENDMemAddress[17]~output_o\;

ww_currentMemAddress(0) <= \currentMemAddress[0]~output_o\;

ww_currentMemAddress(1) <= \currentMemAddress[1]~output_o\;

ww_currentMemAddress(2) <= \currentMemAddress[2]~output_o\;

ww_currentMemAddress(3) <= \currentMemAddress[3]~output_o\;

ww_currentMemAddress(4) <= \currentMemAddress[4]~output_o\;

ww_currentMemAddress(5) <= \currentMemAddress[5]~output_o\;

ww_currentMemAddress(6) <= \currentMemAddress[6]~output_o\;

ww_currentMemAddress(7) <= \currentMemAddress[7]~output_o\;

ww_currentMemAddress(8) <= \currentMemAddress[8]~output_o\;

ww_currentMemAddress(9) <= \currentMemAddress[9]~output_o\;

ww_currentMemAddress(10) <= \currentMemAddress[10]~output_o\;

ww_currentMemAddress(11) <= \currentMemAddress[11]~output_o\;

ww_currentMemAddress(12) <= \currentMemAddress[12]~output_o\;

ww_currentMemAddress(13) <= \currentMemAddress[13]~output_o\;

ww_currentMemAddress(14) <= \currentMemAddress[14]~output_o\;

ww_currentMemAddress(15) <= \currentMemAddress[15]~output_o\;

ww_currentMemAddress(16) <= \currentMemAddress[16]~output_o\;

ww_currentMemAddress(17) <= \currentMemAddress[17]~output_o\;

ww_Ch0Activate <= \Ch0Activate~output_o\;

ww_Ch1Activate <= \Ch1Activate~output_o\;

ww_Ch2Activate <= \Ch2Activate~output_o\;

ww_Ch3Activate <= \Ch3Activate~output_o\;
END structure;


