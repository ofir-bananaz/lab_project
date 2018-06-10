Library ieee ;
use ieee.std_logic_1164.all ;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all;

entity BPMvga is

port ( resetN : in std_logic ;
 clk : in std_logic ;
currentBPM: IN integer range 0 to 255;
unit 		: out std_logic_vector(9 downto 0) ;
ten  		: out std_logic_vector(9 downto 0) ;
hundred  : out std_logic_vector(9 downto 0)) ;

end BPMvga;

architecture behavior of BPMvga is

 signal unitx: integer;
 signal tenx: integer;
 signal hundredx: integer;
 signal unit_sig : std_logic_vector (9 downto 0);
 signal ten_sig : std_logic_vector (9 downto 0);
 signal hundred_sig : std_logic_vector (9 downto 0);
 constant zero : std_logic_vector(9 downto 0):= "0000000001";
 constant one : std_logic_vector(9 downto 0):= "0000000010";
 constant two : std_logic_vector(9 downto 0):= "0000000100";
 constant three : std_logic_vector(9 downto 0):= "0000001000";
 constant four : std_logic_vector(9 downto 0):= "0000010000";
 constant five : std_logic_vector(9 downto 0):= "0000100000";
 constant six : std_logic_vector(9 downto 0):= "0001000000";
 constant seven : std_logic_vector(9 downto 0):= "0010000000";
 constant eight : std_logic_vector(9 downto 0):= "0100000000";
 constant nine : std_logic_vector(9 downto 0):= "1000000000";


begin

 unit <= unit_sig;
 ten<= ten_sig;
 hundred<=hundred_sig;
 
 process ( resetN , clk)
	 begin
		 if resetN = '0' then
			 unit_sig <= zero;
			 ten_sig<= six;
			 hundred_sig<=zero;
		 elsif rising_edge(clk) then
			unitx<=  (currentBPM mod 10) ;
			tenx<=  ( (currentBPM/10) mod 10);
			hundredx<=  ((currentBPM/100) mod 10);
			 case unitx is
				when 0 =>
					unit_sig<=zero;
				when 1 =>
					unit_sig<=one;
				when 2 =>
					unit_sig<=two;
				when 3 =>
					unit_sig<=three;
				when 4 =>
					unit_sig<=four;
				when 5 =>
					unit_sig<=five;
				when 6 =>
					unit_sig<=six;
				when 7 =>
					unit_sig<=seven;
				when 8 =>
					unit_sig<=eight;
				when 9 =>
					unit_sig<=nine;
				when others=>
					unit_sig<=zero;
				end case;
			case tenx is
				when 0 =>
					ten_sig<=zero;
				when 1 =>
					ten_sig<=one;
				when 2 =>
					ten_sig<=two;
				when 3 =>
					ten_sig<=three;
				when 4 =>
					ten_sig<=four;
				when 5 =>
					ten_sig<=five;
				when 6 =>
					ten_sig<=six;
				when 7 =>
					ten_sig<=seven;
				when 8 =>
					ten_sig<=eight;
				when 9 =>
					ten_sig<=nine;
				when others=>
					ten_sig<=zero;
			end case;
			case hundredx is
				when 0 =>
					hundred_sig<=zero;
				when 1 =>
					hundred_sig<=one;
				when 2 =>
					hundred_sig<=two;
				when 3 =>
					hundred_sig<=three;
				when 4 =>
					hundred_sig<=four;
				when 5 =>
					hundred_sig<=five;
				when 6 =>
					hundred_sig<=six;
				when 7 =>
					hundred_sig<=seven;
				when 8 =>
					hundred_sig<=eight;
				when 9 =>
					hundred_sig<=nine;
				when others=>
					hundred_sig<=zero;
			end case;
		 end if;
	 end process;
end architecture;
