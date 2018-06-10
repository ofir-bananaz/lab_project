Library ieee ;
use ieee.std_logic_1164.all ;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;


entity KEY_kbd is

port ( resetN : in std_logic ;
 clk : in std_logic ;
 din : in std_logic_vector (8 downto 0);
 KEY_CODE: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 make : in std_logic ;
 break : in std_logic ;
 dout : out std_logic );
end KEY_kbd;

architecture behavior of KEY_kbd is

 signal out_X: std_logic;
 
begin

 dout <= out_X;
 
 process ( resetN , clk)
	 begin
		 if resetN = '0' then
			 out_X <= '0';
		 elsif rising_edge(clk) then
			 if (din(7 DOWNTO 0) = KEY_CODE) and (make = '1')  Then
				 out_X <= '1';
			 else
				OUT_X<='0';
				 
			 end if;
		 end if;
	 end process;
end architecture;
