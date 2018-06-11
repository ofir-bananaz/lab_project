LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
--use ieee.numeric_std.all;


ENTITY wave_integrator_13 IS
	PORT
		(
			CLK					:	IN  STD_LOGIC;
			resetN				:	IN  STD_LOGIC;
			data_in_1			:  IN  std_logic_vector(15 downto 0);
			data_in_2			:  IN  std_logic_vector(15 downto 0);
			data_in_3			:  IN  std_logic_vector(15 downto 0);
			data_in_4			:  IN  std_logic_vector(15 downto 0);
			data_in_5			:  IN  std_logic_vector(15 downto 0);
			data_in_6			:  IN  std_logic_vector(15 downto 0);
			data_in_7			:  IN  std_logic_vector(15 downto 0);
			data_in_8			:  IN  std_logic_vector(15 downto 0);
			data_in_9			:  IN  std_logic_vector(15 downto 0);
			data_in_1_0			:  IN  std_logic_vector(15 downto 0);
			data_in_1_1			:  IN  std_logic_vector(15 downto 0);
			data_in_1_2			:  IN  std_logic_vector(15 downto 0);
			data_in_1_3			:  IN  std_logic_vector(15 downto 0);
			data_out		 	:	OUT STD_LOGIC_vector(15 downto 0) 
		);
		
END wave_integrator_13;

ARCHITECTURE behave OF wave_integrator_13 is 

signal sum: std_logic_vector(18 downto 0); 
signal modd: std_logic_vector(3 downto 0);
constant zero: std_logic_vector(18 downto 0):="0000000000000000000";
constant zero1: std_logic_vector(15 downto 0):="0000000000000000";
begin

process(clk,resetN)
begin
	if resetN='0' then
		sum<=zero;
	elsif(rising_edge(clk)) then
		modd<="0000";
		sum<= conv_std_logic_vector((conv_integer(signed(data_in_1)))
											+(conv_integer(signed(data_in_2)))
											+(conv_integer(signed(data_in_3)))
											+(conv_integer(signed(data_in_4)))
											+(conv_integer(signed(data_in_5)))
											+(conv_integer(signed(data_in_6)))
											+(conv_integer(signed(data_in_7)))
											+(conv_integer(signed(data_in_8)))
											+(conv_integer(signed(data_in_9)))
											+(conv_integer(signed(data_in_1_0)))
											+(conv_integer(signed(data_in_1_1)))
											+(conv_integer(signed(data_in_1_2)))
											+(conv_integer(signed(data_in_1_3)))
											,sum'length);
						if data_in_1/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_2/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_3/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_4/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_5/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_6/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_7/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_8/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_9/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_1_0/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_1_1/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_1_2/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
						if data_in_1_3/=zero1 then
							modd<= conv_std_logic_vector((conv_integer(unsigned(modd)))+1,modd'length);	
						end if;
	end if;
end process;

data_out<=conv_std_logic_vector((conv_integer(signed(sum)))/conv_integer(unsigned(modd)),data_out'length);
end behave;		