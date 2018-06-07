library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity addr_counter is
generic(COUNT_SIZE : INTEGER := 8);
port(
		CLK_IN	:	in	std_logic;
		resetN	:	in	std_logic;
		en			: 	in std_logic;
		en1		: 	in std_logic;
		addr		: 	out std_logic_vector(COUNT_SIZE - 1 downto 0)
	);
end addr_counter;

architecture addr_counter_arch of addr_counter is
	constant count_limit		: std_logic_vector(COUNT_SIZE - 1 downto 0) := ( others => '1'); -- max value 
	signal tmp					: std_logic_vector(COUNT_SIZE - 1 downto 0);
begin
	process(CLK_IN,resetN)
	begin
		if resetN = '0' then
			tmp <= (others => '0');
		elsif rising_edge(CLK_IN) then
			if en = '1' and en1 = '1' then
				tmp <= tmp + 1;
			end if;
			IF(EN1='0')	THEN
				TMP<=(OTHERS=>'0');
			END IF;
		end if;
		addr <= tmp;
	end process;
end addr_counter_arch;