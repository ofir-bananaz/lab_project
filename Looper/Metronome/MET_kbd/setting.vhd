Library ieee ;
use ieee.std_logic_1164.all ;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;


entity setting is

port ( resetN : in std_logic ;
 clk : in std_logic ;
 up : in std_logic ;
 down : in std_logic ;
 dout : out integer range 0 to 255 );
end setting;

architecture behavior of setting is
	signal arch_counter: integer := 60;
	
begin

	process ( resetN , clk)
		
		variable counter: integer := 60;
	 
	 begin
		 if resetN = '0' then
			 counter := 60;
		 elsif rising_edge(clk) then
			if up='1' and counter >=20 and counter <255 then
				counter := counter+1;
			end if;
			if down='1' and counter >20 and counter <=255 then
				counter := counter-1;
			end if;
			
			arch_counter <= counter;

		 end if;
	 end process;
	 
	 dout<= arch_counter; 
	 
end architecture;




