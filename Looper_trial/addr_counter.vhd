library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity addr_counter is
	port(
		resetN, CLK_IN,en, en1, AddrZero	:in std_logic;
		
		
		addr				:out std_logic_vector (17 downto 0)); --modify
end addr_counter;



architecture addr_counter_arch of addr_counter is

signal sig : std_logic_vector(17 downto 0):=(others=> '0');--modify
 
begin
	process(CLK_IN,resetN,en,en1)
		 variable counter: integer ;
		 variable curr_max: integer ;
		 constant max: integer := 262143;--modify
	begin
		 if resetN = '0' then
			  counter := 0 ;
			  sig <= std_logic_vector(to_unsigned(counter, addr'length));
			  
		elsif rising_edge(CLK_IN) then
			if AddrZero = '1' then
				counter:=0;
			end if; 
			
			if(en='1' and en1='1') then
				
				sig <= std_logic_vector(to_unsigned(counter, addr'length));
				counter := counter + 1 ; -- was moved from line 33 Can cause troubles?
				
				if (counter  = max) then
					counter :=0;
					sig<= (others=>'0');
				
				end if;
			end if;
			  
		end if;
	end process;
	
addr<=sig;

end addr_counter_arch;
