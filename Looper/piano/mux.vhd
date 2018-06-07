library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity mux is
port(
  CLK     					: in std_logic;
  resetN 					: in std_logic;
  data						: in std_logic;
  data_1   					: in std_logic_vector(15 downto 0);
  data_2   					: in std_logic_vector(15 downto 0);
  Q       					: out std_logic_vector(15 downto 0)
);
end mux;

architecture arch of mux is

signal sig :  std_logic_vector(15 downto 0);
constant zero1: std_logic_vector(15 downto 0):="0000000000000000";

begin

process(clk, resetN)
begin

	if resetN='0' then
		sig<=zero1;
	elsif rising_edge(clk) then
		if data='1' then
			sig<=data_2;
		else
			sig<=data_1;
		end if;
	end if;
end process;

Q<=sig;

end arch;