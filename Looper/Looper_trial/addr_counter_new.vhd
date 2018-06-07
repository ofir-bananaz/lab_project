library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity addr_counter_new is
	port(
		resetN, CLK_IN,en, en1		:in std_logic;
		max_addr : in std_logic_vector (17 downto 0);
		addr				:out std_logic_vector (17 downto 0)
		); --modify
end addr_counter_new;



architecture addr_counter_new_arch of addr_counter_new is

signal sig : std_logic_vector(17 downto 0):=(others=> '0');--modify
 
begin
	process(CLK_IN,resetN,en,en1)
		 variable counter: integer ;
		 variable max: integer range 1 to 262144:= 1;--modify
	begin
		 if resetN = '0' then
			  counter := 0 ;
			  sig <= std_logic_vector(to_unsigned(counter, addr'length));
			  
		elsif rising_edge(CLK_IN) then
			if(en='1' and en1='1') then
				counter := counter + 1 ;
				sig <= std_logic_vector(to_unsigned(counter, addr'length));
				max  :=  conv_integer(max_addr);
				
				if (counter = max) then
					counter :=0;
					sig<= (others=>'0');
				
				end if;
			end if;
			  
		end if;
	end process;
	
addr<=sig;

end addr_counter_new_arch;