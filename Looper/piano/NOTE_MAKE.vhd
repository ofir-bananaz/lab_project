LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY NOTE_MAKE IS
	PORT
		(
			CLK					:	IN  STD_LOGIC				;	
			resetN					:  IN	 STD_LOGIC;
			oct			         :  IN  std_logic_vector(1 downto 0);
			FREQ					:	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			note					:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
		
END NOTE_MAKE;

ARCHITECTURE behave OF note_MAKE IS
SIGNAL SIG  :	STD_LOGIC_VECTOR(15 DOWNTO 0);
CONSTANT ZERO : STD_LOGIC_VECTOR(15 DOWNTO 0):= "0000000000000000";
constant one : std_logic_vector:="01";
constant two : std_logic_vector:="10";
constant three : std_logic_vector:="11";
BEGIN
	PROCESS (CLK, resetN,oct)
			BEGIN
				IF resetN = '0' then
					SIG<=ZERO;
				ELSIF (CLK'EVENT AND CLK = '1') THEN
					case oct is 
						when one =>
							SIG<=FREQ;
						when two =>
							SIG(15 DOWNTO 1)<=FREQ(15 DOWNTO 1);
							SIG(0)<='0';
						when three =>
							SIG(15 DOWNTO 2)<=FREQ(15 DOWNTO 2);
							SIG(1 DOWNTO 0)<="00";
						when others =>
							SIG<=FREQ;
					end case;				
				end if;
		END PROCESS;
	NOTE<=SIG;	
END BEHAVE;