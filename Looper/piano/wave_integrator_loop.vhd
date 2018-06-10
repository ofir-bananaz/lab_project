LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
--use ieee.numeric_std.all;


ENTITY wave_integrator_loop IS
	PORT
		(
			CLK					:	IN  STD_LOGIC;
			resetN				:	IN  STD_LOGIC;
			data_in_1			:  IN  std_logic_vector(15 downto 0);
			data_in_2			:  IN  std_logic_vector(15 downto 0);
			data_out		 	:	OUT STD_LOGIC_vector(15 downto 0) 
		);
		
END wave_integrator_loop;

ARCHITECTURE behave OF wave_integrator_loop is 

signal sum: std_logic_vector(16 downto 0); 
--signal modd: std_logic_vector(1 downto 0);
constant zero: std_logic_vector(16 downto 0):="00000000000000000";
constant zero1: std_logic_vector(15 downto 0):="0000000000000000";
begin

process(clk,resetN)
begin
	if resetN='0' then
		sum<=zero;
	elsif(rising_edge(clk)) then
		--modd<="01";
		sum<= conv_std_logic_vector((conv_integer(signed(data_in_1)))
											+(conv_integer(signed(data_in_2)))

											,sum'length);

						
	end if;
end process;

data_out<=conv_std_logic_vector(((conv_integer(signed(sum)))),data_out'length);
end behave;		