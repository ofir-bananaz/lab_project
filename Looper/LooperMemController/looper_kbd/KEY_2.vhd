Library ieee ;
use ieee.std_logic_1164.all ;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;


entity KEY_2 is

port ( resetN : in std_logic ;
 clk : in std_logic ;
 din : in std_logic_vector (8 downto 0);
 KEY_CODE: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 make : in std_logic ;
 break : in std_logic ;
 dout : out std_logic );
end KEY_2;

architecture behavior of KEY_2 is

 signal pressed: std_logic;
 signal out_X: std_logic;
begin

 dout <= out_X;
 
 process ( resetN , clk)
	 begin
		 if resetN = '0' then
			 out_X <= '0';
			 pressed <= '0';
		 elsif rising_edge(clk) then
			 if (din(7 DOWNTO 0) = KEY_CODE) and (make = '1') and (pressed ='0')  Then
			 pressed <= '1';
			 out_X <= not(out_x);
			 elsif (din(7 DOWNTO 0) = KEY_CODE) and (break = '1') then
			 pressed <= '0';
			 end if;
		 end if;
	 end process;
end architecture;
