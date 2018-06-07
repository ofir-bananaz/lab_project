-- This module is dividing the 50MHz CLOCK OSC, and sends clock
-- enable it to the appropriate outputs in order to achieve
-- operation at slower rate of individual modules (this is done
-- to keep the whole system globally synchronous).
-- All DACs output are set to 100 KHz. 

 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY prescaler_NEW IS
	PORT
		(
			CLK_IN					:	IN  STD_LOGIC				;	
			resetN					:  IN	 STD_LOGIC;
			count_limit          :  IN  INTEGER  RANGE 0 to 32768;
			OCT						:	IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			prescaler_1	 		:	OUT STD_LOGIC ;
			prescaler_2	 		:	OUT STD_LOGIC 
		);
		
END prescaler_NEW;


ARCHITECTURE behave OF prescaler_NEW IS


constant ZERO : std_logic_vector:="000";
constant one : std_logic_vector:="001";
constant two : std_logic_vector:="010";
constant three : std_logic_vector:="100";
SIGNAL PRESCALER_COUNTER		: INTEGER:=-1 ;
SIGNAL COUNT						: INTEGER RANGE 0 TO 32768:=COUNT_LIMIT;
SIGNAL prescaler_1_t					: STD_LOGIC;
SIGNAL COMP							: STD_LOGIC_VECTOR(2 DOWNTO 0);

	BEGIN

		
	PROCESS (CLK_IN, resetN)
			BEGIN
				IF resetN = '0' then
					prescaler_1_t	<= '0';
					PRESCALER_COUNTER	<= 0;
					COMP<=ZERO;
				ELSIF (CLK_IN'EVENT AND CLK_IN = '1') THEN
					IF(COMP/=OCT AND OCT/=ZERO) THEN
						COMP<=OCT;
					END IF;
					
					CASE COMP IS
						WHEN ONE =>
							COUNT<=COUNT_LIMIT/2;
						WHEN THREE =>
							COUNT<=COUNT_LIMIT*2;
						WHEN OTHERS =>
							COUNT<=COUNT_LIMIT;
						END CASE;
					prescaler_2	<=	prescaler_1_t; -- 1 clk delay
					
					if  (PRESCALER_COUNTER >= count) then
						prescaler_1_t <= '1' ;
					ELSE 
						prescaler_1_t <= '0';
					END IF;

					IF (PRESCALER_COUNTER >= count) THEN
						PRESCALER_COUNTER <= 0;
					ELSE
						PRESCALER_COUNTER <= PRESCALER_COUNTER + 1;
					END IF;

				END IF;
		END PROCESS;

	prescaler_1	<=		prescaler_1_t;

	END behave;