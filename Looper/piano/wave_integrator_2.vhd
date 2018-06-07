LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
--use ieee.numeric_std.all;


ENTITY wave_integrator_2 IS
	PORT
		(
			CLK					:	IN  STD_LOGIC;
			resetN				:	IN  STD_LOGIC;
			EFFECT				:	IN	 STD_LOGIC;
			data_in_1			:  IN  std_logic_vector(15 downto 0);
			data_in_2			:  IN  std_logic_vector(15 downto 0);
			DATA_OUT				:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
		
END wave_integrator_2;

ARCHITECTURE behave OF wave_integrator_2 is 

signal sum: std_logic_vector(17 downto 0); 
constant zero: std_logic_vector(17 downto 0):="000000000000000000";
constant zero1: std_logic_vector(15 downto 0):="0000000000000000";
begin

process(clk,resetN)
begin
	if resetN='0' then
		sum<=zero;
	elsif(rising_edge(clk)) then
		IF EFFECT='1' THEN
			sum<= conv_std_logic_vector((conv_integer(signed(data_in_1)))*(conv_integer(signed(data_in_2)))/164000,sum'length);
		ELSE
			SUM<=ZERO;
		END IF;
	end if;
end process;

data_out<=conv_std_logic_vector((conv_integer(signed(sum))),data_out'length);
end behave;		