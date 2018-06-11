library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Alex Grinshpun Apr 2017
-- Dudy Nov 13 2017

entity objects_mux is
port 	(
		CLK	: in std_logic; --						//	27 MHz
		
		-------------------------------------------------------------METRONOM UNITS
		UNITS_0_drawing_request : in std_logic;
		UNITS_0_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_1_drawing_request : in std_logic;
		UNITS_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_2_drawing_request : in std_logic;
		UNITS_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_3_drawing_request : in std_logic;
		UNITS_3_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_4_drawing_request : in std_logic;
		UNITS_4_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_5_drawing_request : in std_logic;
		UNITS_5_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_6_drawing_request : in std_logic;
		UNITS_6_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_7_drawing_request : in std_logic;
		UNITS_7_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_8_drawing_request : in std_logic;
		UNITS_8_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		UNITS_9_drawing_request : in std_logic;
		UNITS_9_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------METRONOM TENS
		TENS_0_drawing_request : in std_logic;
		TENS_0_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_1_drawing_request : in std_logic;
		TENS_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_2_drawing_request : in std_logic;
		TENS_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_3_drawing_request : in std_logic;
		TENS_3_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_4_drawing_request : in std_logic;
		TENS_4_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_5_drawing_request : in std_logic;
		TENS_5_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_6_drawing_request : in std_logic;
		TENS_6_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_7_drawing_request : in std_logic;
		TENS_7_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_8_drawing_request : in std_logic;
		TENS_8_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		TENS_9_drawing_request : in std_logic;
		TENS_9_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------
		HUNDREDS_0_drawing_request : in std_logic;
		HUNDREDS_0_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		HUNDREDS_1_drawing_request : in std_logic;
		HUNDREDS_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		HUNDREDS_2_drawing_request : in std_logic;
		HUNDREDS_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------LOOPER
		PLAY_1_drawing_request : in std_logic;
		PLAY_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		PLAY_2_drawing_request : in std_logic;
		PLAY_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		PLAY_3_drawing_request : in std_logic;
		PLAY_3_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		PLAY_4_drawing_request : in std_logic;
		PLAY_4_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		RECORD_1_drawing_request : in std_logic;
		RECORD_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		RECORD_2_drawing_request : in std_logic;
		RECORD_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		RECORD_3_drawing_request : in std_logic;
		RECORD_3_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		RECORD_4_drawing_request : in std_logic;
		RECORD_4_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		EDIT_1_drawing_request : in std_logic;
		EDIT_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		EDIT_2_drawing_request : in std_logic;
		EDIT_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		EDIT_3_drawing_request : in std_logic;
		EDIT_3_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		EDIT_4_drawing_request : in std_logic;
		EDIT_4_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------NOTES 
		C_drawing_request : in std_logic;
		C_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		Cm_drawing_request : in std_logic;
		Cm_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		D_drawing_request : in std_logic;
		D_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		Dm_drawing_request : in std_logic;
		Dm_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		E_drawing_request : in std_logic;
		E_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		F_drawing_request : in std_logic;
		F_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		Fm_drawing_request : in std_logic;
		Fm_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		G_drawing_request : in std_logic;
		G_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		Gm_drawing_request : in std_logic;
		Gm_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		A_drawing_request : in std_logic;
		A_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		Am_drawing_request : in std_logic;
		Am_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		B_drawing_request : in std_logic;
		B_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		CU_drawing_request : in std_logic;
		CU_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------smiley
		smiley_0_drawing_request : in std_logic;
		smiley_0_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		smiley_1_drawing_request : in std_logic;
		smiley_1_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		smiley_2_drawing_request : in std_logic;
		smiley_2_mVGA_RGB 	: in std_logic_vector(7 downto 0);
		-------------------------------------------------------------BACKGROUND
		
		PIANO_STAT_drawing_request : in std_logic;
		PIANO_STAT_mVGA_RGB 	: in std_logic_vector(7 downto 0); 
		METRONOM_STAT_drawing_request : in std_logic;
		METRONOM_STAT_mVGA_RGB 	: in std_logic_vector(7 downto 0); 
		LOOPER_STAT_drawing_request : in std_logic;
		LOOPER_STAT_mVGA_RGB 	: in std_logic_vector(7 downto 0); 
		BACKGROUND_drawing_request : in std_logic;	
		BACKGROUND_mVGA_RGB 	: in std_logic_vector(7 downto 0);  


		m_mVGA_R 	: out std_logic_vector(7 downto 0); --	,  
		m_mVGA_G 	: out std_logic_vector(7 downto 0); --	, 
		m_mVGA_B 	: out std_logic_vector(7 downto 0); --	, 
		RESETn : in std_logic

	);
end objects_mux;

architecture behav of objects_mux is 
signal m_mVGA_t 	: std_logic_vector(7 downto 0); --	,  

begin

-- priority encoder process

process ( RESETn, CLK)
begin 
	if RESETn = '0' then
			m_mVGA_t	<=  (others => '0') ; 	

	elsif rising_edge(CLK) then
		if (UNITS_0_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_0_mVGA_RGB; 
		ELSif (UNITS_1_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_1_mVGA_RGB;
		ELSif (UNITS_2_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_2_mVGA_RGB;
		ELSif (UNITS_3_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_3_mVGA_RGB;
		ELSif (UNITS_4_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_4_mVGA_RGB;
		ELSif (UNITS_5_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_5_mVGA_RGB;
		ELSif (UNITS_6_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_6_mVGA_RGB;
		ELSif (UNITS_7_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_7_mVGA_RGB;
		ELSif (UNITS_8_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_8_mVGA_RGB;
		ELSif (UNITS_9_drawing_request = '1' ) then  
			m_mVGA_t <= UNITS_9_mVGA_RGB;
----------------------------------------------------------------------------
		ELSif (TENS_0_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_0_mVGA_RGB;
		ELSif (TENS_1_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_1_mVGA_RGB;
		ELSif (TENS_2_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_2_mVGA_RGB;
		ELSif (TENS_3_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_3_mVGA_RGB;
		ELSif (TENS_4_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_4_mVGA_RGB;
		ELSif (TENS_5_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_5_mVGA_RGB;
		ELSif (TENS_6_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_6_mVGA_RGB;
		ELSif (TENS_7_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_7_mVGA_RGB;
		ELSif (TENS_8_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_8_mVGA_RGB;
		ELSif (TENS_9_drawing_request = '1' ) then  
			m_mVGA_t <= TENS_9_mVGA_RGB;
------------------------------------------------------------------------------
		ELSif (HUNDREDS_0_drawing_request = '1' ) then  
			m_mVGA_t <= HUNDREDS_0_mVGA_RGB;
		ELSif (HUNDREDS_1_drawing_request = '1' ) then  
			m_mVGA_t <= HUNDREDS_1_mVGA_RGB;
		ELSif (HUNDREDS_2_drawing_request = '1' ) then  
			m_mVGA_t <= HUNDREDS_2_mVGA_RGB;
------------------------------------------------------------------------------
		ELSif (RECORD_1_drawing_request = '1' ) then  
			m_mVGA_t <= RECORD_1_mVGA_RGB;
		ELSif (RECORD_2_drawing_request = '1' ) then  
			m_mVGA_t <= RECORD_2_mVGA_RGB;
		ELSif (RECORD_3_drawing_request = '1' ) then  
			m_mVGA_t <= RECORD_3_mVGA_RGB;
		ELSif (RECORD_4_drawing_request = '1' ) then  
			m_mVGA_t <= RECORD_4_mVGA_RGB;
------------------------------------------------------------------------------
		ELSif (PLAY_1_drawing_request = '1' ) then  
			m_mVGA_t <= PLAY_1_mVGA_RGB;
		ELSif (PLAY_2_drawing_request = '1' ) then  
			m_mVGA_t <= PLAY_2_mVGA_RGB;
		ELSif (PLAY_3_drawing_request = '1' ) then  
			m_mVGA_t <= PLAY_3_mVGA_RGB;
		ELSif (PLAY_4_drawing_request = '1' ) then  
			m_mVGA_t <= PLAY_4_mVGA_RGB;
------------------------------------------------------------------------------
		ELSif (C_drawing_request = '1' ) then  
			m_mVGA_t <= C_mVGA_RGB;
		ELSif (Cm_drawing_request = '1' ) then  
			m_mVGA_t <= Cm_mVGA_RGB;
		ELSif (D_drawing_request = '1' ) then  
			m_mVGA_t <= D_mVGA_RGB;
		ELSif (Dm_drawing_request = '1' ) then  
			m_mVGA_t <= Dm_mVGA_RGB;
		ELSif (E_drawing_request = '1' ) then  
			m_mVGA_t <= E_mVGA_RGB;
		ELSif (F_drawing_request = '1' ) then  
			m_mVGA_t <= F_mVGA_RGB;
		ELSif (Fm_drawing_request = '1' ) then  
			m_mVGA_t <= Fm_mVGA_RGB;
		ELSif (G_drawing_request = '1' ) then  
			m_mVGA_t <= G_mVGA_RGB;
		ELSif (Gm_drawing_request = '1' ) then  
			m_mVGA_t <= Gm_mVGA_RGB;
		ELSif (A_drawing_request = '1' ) then  
			m_mVGA_t <= A_mVGA_RGB;
		ELSif (Am_drawing_request = '1' ) then  
			m_mVGA_t <= Am_mVGA_RGB;
		ELSif (B_drawing_request = '1' ) then  
			m_mVGA_t <= B_mVGA_RGB;
		ELSif (CU_drawing_request = '1' ) then  
			m_mVGA_t <= CU_mVGA_RGB;	
------------------------------------------------------------------------
		ELSif (EDIT_1_drawing_request = '1' ) then  
			m_mVGA_t <= EDIT_1_mVGA_RGB;
		ELSif (EDIT_2_drawing_request = '1' ) then  
			m_mVGA_t <= EDIT_2_mVGA_RGB;
		ELSif (EDIT_3_drawing_request = '1' ) then  
			m_mVGA_t <= EDIT_3_mVGA_RGB;
		ELSif (EDIT_4_drawing_request = '1' ) then  
			m_mVGA_t <= EDIT_4_mVGA_RGB;
------------------------------------------------------------------------
		ELSif (smiley_0_drawing_request = '1' ) then  
			m_mVGA_t <= smiley_0_mVGA_RGB;
		ELSif (smiley_1_drawing_request = '1' ) then  
			m_mVGA_t <= smiley_1_mVGA_RGB;
		ELSif (smiley_2_drawing_request = '1' ) then  
			m_mVGA_t <= smiley_2_mVGA_RGB;
------------------------------------------------------------------------
		ELSif (METRONOM_STAT_drawing_request = '1' ) then  
			m_mVGA_t <= METRONOM_STAT_mVGA_RGB; 
		ELSif (PIANO_STAT_drawing_request = '1' ) then  
			m_mVGA_t <= PIANO_STAT_mVGA_RGB; 
		ELSif (LOOPER_STAT_drawing_request = '1' ) then  
			m_mVGA_t <= LOOPER_STAT_mVGA_RGB; 
		else
			m_mVGA_t <= BACKGROUND_mVGA_RGB ;
		end if; 
	end if ; 

end process ;

m_mVGA_R	<= m_mVGA_t(7 downto 5)& "00000"; -- expand to 10 bits 
m_mVGA_G	<= m_mVGA_t(4 downto 2)& "00000";
m_mVGA_B	<= m_mVGA_t(1 downto 0)& "000000";


end behav;