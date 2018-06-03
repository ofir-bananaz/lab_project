--Looper State machine


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity LooperSM is
	port (
		----INPUTS----
		--standard sychronic inputs
		clk             : in std_logic;
		ResetN          : in std_logic;
		
		--keyboard controller inputs
		KB_Selchannel   : in std_logic_vector(1 downto 0); --4 channels
		KB_RecOnMet     : in std_logic;
		KB_PLAY         : in std_logic;
		KB_ALLPLAY      : in std_logic;
		KB_REC          : in std_logic;
		KB_STOP         : in std_logic;
		KB_ClearCH      : in std_logic;
		
		KB_IMMstart     : in std_logic;
	
		--memory input
		currMemAddress  : in std_logic_vector(17 downto 0);		 --debug - we need this input

		----OUTPUTS----
		recSel          : out std_logic_vector(1 downto 0);
		recording       : out std_logic;
		loop_start      : out std_logic; -- also to zero in memory
		Imm_start       : out std_logic; --mode for immediate start
		
		
		--CurrState       : out std_logic_vector(2 downto 0); --debug
		--ENDMemAddress   : out std_logic_vector(17 downto 0); --debug
		--currentMemAddress   : out std_logic_vector(17 downto 0); --debug
		
		
		Ch0Activate, Ch1Activate, Ch2Activate, Ch3Activate :  out std_logic
		
		

		

		
	);
end LooperSM;



architecture arc_LooperSM of LooperSM is
	--STATE MACHINE--
	type state_type is (EMPTY, REC_FIRST, CH_CONTROL, PRE_REC, REC_OTHER); --state machine states;
	signal state: state_type;
	
	--ARCHITRECTURE TO OUTPUT--
	signal arch_loop_start: std_logic; -- also to zero in memory
	signal arch_Imm_start: std_logic; --mode for immediate start
	signal arch_recSel : std_logic_vector(1 downto 0);
	signal arch_recording : std_logic;
	signal arch_Ch0END, arch_Ch1END, arch_Ch2END, arch_Ch3END: integer;
	signal arch_Ch0ACT, arch_Ch1ACT, arch_Ch2ACT, arch_Ch3ACT: std_logic;
	signal arch_Ch0DEC, arch_Ch1DEC, arch_Ch2DEC, arch_Ch3DEC: std_logic; -- DECISION variable
	signal ch0HT, ch1HT, ch2HT, ch3HT: std_logic; -- does our channel "has track?"
	
	--DEBUG--
	--signal currMemAddress  : std_logic_vector(17 downto 0); --debug
	--signal endAddr  : std_logic_vector(17 downto 0); --debug
	--signal stateNum: integer; --used for debugging because states simulation does not work on quartos
	
	
	
	--ARCHITRECTURE VARIABLES -- 

	
begin
-- Synchronous Part
	process(clk,ResetN)
		
		variable recCounter : integer range 0 to 4; -- Count how many channels have record on them
		variable memEndAddr: integer range 0 to 262143; -- MAX_ADDRESS must be plus always plus 1 - see addr counter to get the point -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		constant MAX_ADDR: integer range 0 to 262143 := 262143;--modify

	begin
		if ResetN='0' then
		
			--INPUTS--
			
			state<=EMPTY;
			arch_loop_start <='1'; -- also to zero in memory
			arch_Imm_start <= '0'; --mode for immediate start
			arch_recSel <="00";
			arch_recording <='0';
			
			arch_Ch0END <= MAX_ADDR;
			arch_Ch1END <= MAX_ADDR;
			arch_Ch2END <= MAX_ADDR;
			arch_Ch3END <= MAX_ADDR;
			
			
			arch_Ch0ACT <= '0';
			arch_Ch1ACT <= '0';
			arch_Ch2ACT <= '0';
			arch_Ch3ACT <= '0';

			ch0HT <= '0';
			ch1HT <= '0';
			ch2HT <= '0';
			ch3HT <= '0';
			
			--ARCH VARIABLES-- 
			recCounter := 0;
			memEndAddr := MAX_ADDR; -- MAX_ADDRESS
			
			
			--currMemAddress <= "000000000000000000"; --debug
			--stateNum <= 7 ;-- debug

			
		elsif (rising_edge(clk))  then
			-- default value
			arch_loop_start <='0';
		
			--Flip IMMEDIATE START MODE;
			--if KB_IMMstart = '1' and arch_Imm_start = '0' then
				--arch_Imm_start <= '1';
			--elsif KB_IMMstart = '1' and arch_Imm_start = '1' then
				--arch_Imm_start <= '0';
			--end if; 
			case state is
				------------------------------
				when EMPTY=> --stateNum <= 0 ;-- debug
				------------------------------
				
					arch_loop_start <='1'; -- also to zero in memory
					arch_Imm_start <= '0'; --mode for immediate start
					arch_recSel <="00";
					arch_recording <='0';
					
					arch_Ch0END <= 0 ;
					arch_Ch1END <= 0 ;
					arch_Ch2END <= 0 ;
					arch_Ch3END <= 0 ;
					
					
					arch_Ch0ACT <= '0' ; --changed from END_ADDR because we don't wanna play when EMPTY
					arch_Ch1ACT <= '0' ;
					arch_Ch2ACT <= '0' ;
					arch_Ch3ACT <= '0' ;

					ch0HT <= '0' ;
					ch1HT <= '0' ;
					ch2HT <= '0' ;
					ch3HT <= '0' ;
					
					
					--ARCH VARIABLES-- 
					recCounter := 0;
					memEndAddr := MAX_ADDR; -- MAX_ADDRESS
					

					if KB_REC = '1' then
						arch_recording <='1';
						arch_recSel <= KB_Selchannel;
						arch_loop_start <='1';
						case arch_recSel is
							when "00" => arch_Ch0ACT <='1' ;
							when "01" => arch_Ch1ACT <='1' ;
							when "10" => arch_Ch2ACT <='1' ;
							when "11" => arch_Ch3ACT <='1' ;
						end case;
						state<=REC_FIRST;
					end if;
					
				------------------------------				
				when REC_FIRST=> --stateNum <= 1 ;-- debug
				------------------------------
					recCounter:= 1;
					
					if (MAX_ADDR = conv_integer(CurrMemAddress) or KB_PLAY ='1' or KB_ALLPLAY = '1') then -- end of recording
						arch_recording <='0';
						memEndAddr  :=  conv_integer(CurrMemAddress);
						arch_loop_start <='1';
						state<=CH_CONTROL;
						case arch_recSel is
							when "00" => ch0HT <= '1'; arch_Ch0END <= conv_integer(CurrMemAddress);
							when "01" => ch1HT <= '1'; arch_Ch1END <= conv_integer(CurrMemAddress);
							when "10" => ch2HT <= '1'; arch_Ch2END <= conv_integer(CurrMemAddress);
							when "11" => ch3HT <= '1'; arch_Ch3END <= conv_integer(CurrMemAddress); -- so we will be on
						end case;
					end if;       
					              
					
				------------------------------
				when CH_CONTROL=> --stateNum <= 2 ;-- debug
				------------------------------
					arch_recording <='0';
					-----
					if KB_REC = '1' then -- can be more complicated - yes -> if the same as first track as first one need to reset time -> go to first rec;
					-----
						arch_recSel <= KB_Selchannel;
						if (KB_Selchannel = "00" and ch0HT='0') or (KB_Selchannel = "01" and ch1HT='0') or (KB_Selchannel = "10" and ch2HT='0') or (KB_Selchannel = "11" and ch3HT='0') then
							recCounter:= recCounter+1;
						end if;
						state<=PRE_REC;
					-----
					elsif KB_PLAY = '1' then -- CHANGE TO IF HAS TRACK --> PLAY
					-----
						case KB_Selchannel is
							when "00" => if ch0HT='1' then arch_Ch0ACT <='1'; end if;
							when "01" => if ch1HT='1' then arch_Ch1ACT <='1'; end if;
							when "10" => if ch2HT='1' then arch_Ch2ACT <='1'; end if;
							when "11" => if ch3HT='1' then arch_Ch3ACT <='1'; end if;
						end case;
					-----
					elsif KB_STOP = '1' then
					-----
						case KB_Selchannel is
							when "00" => arch_Ch0ACT <='0';
							when "01" => arch_Ch1ACT <='0';
							when "10" => arch_Ch2ACT <='0';
							when "11" => arch_Ch3ACT <='0';
						end case;
						
					-----
					elsif KB_ClearCH = '1' then
					-----
						if (KB_Selchannel = "00" and ch0HT='1') or (KB_Selchannel = "01" and ch1HT='1') or (KB_Selchannel = "10" and ch2HT='1') or (KB_Selchannel = "11" and ch3HT='1') then
							recCounter:= recCounter-1;
						end if;
						
						case KB_Selchannel is
							when "00" =>  if ch0HT='1' then arch_Ch0ACT <='0'; ch0HT <= '0';end if; 
							when "01" =>  if ch1HT='1' then arch_Ch1ACT <='0'; ch1HT <= '0';end if; 
							when "10" =>  if ch2HT='1' then arch_Ch2ACT <='0'; ch2HT <= '0';end if; 
							when "11" =>  if ch3HT='1' then arch_Ch3ACT <='0'; ch3HT <= '0';end if; 
						end case;
						
						
						if recCounter =0 then
							arch_loop_start <='1';
							state<=EMPTY;
						end if;
					end if;
					
				------------------------------
				when PRE_REC=> --stateNum <= 3 ;-- debug
				------------------------------
					if arch_loop_start = '1' then -- can improve by allowing stopping before record start
						arch_recording <='1';
						case arch_recSel is
							when "00" => arch_Ch0ACT <='1';
							when "01" => arch_Ch1ACT <='1';
							when "10" => arch_Ch2ACT <='1';
							when "11" => arch_Ch3ACT <='1';
						end case;
						state<=REC_OTHER;
					end if;
					
				------------------------------
				when REC_OTHER=> --stateNum <= 4 ;-- debug
					------------------------------
					if (arch_loop_start = '1' or KB_PLAY ='1' or KB_ALLPLAY ='1') then -- end of recording
						arch_recording <='0';
						state<=CH_CONTROL;
						case arch_recSel is
							when "00" => ch0HT <= '1'; arch_Ch0END <= conv_integer(CurrMemAddress);
							when "01" => ch1HT <= '1'; arch_Ch1END <= conv_integer(CurrMemAddress)+1;
							when "10" => ch2HT <= '1'; arch_Ch2END <= conv_integer(CurrMemAddress)+2;
							when "11" => ch3HT <= '1'; arch_Ch3END <= conv_integer(CurrMemAddress)+3;
						end case;
					end if;
			end case;
			
			
			-- CHANNEL ACTIVATION DECISION MAKING --
			-- CH0
			if ch0HT = '1' and arch_Ch0END >= conv_integer(CurrMemAddress) and arch_Ch0ACT = '1' then
				arch_Ch0DEC <='1';
			else
				arch_Ch0DEC <='0';
			end if;
			
			--CH1
			if ch1HT = '1' and arch_Ch1END >= conv_integer(CurrMemAddress) and arch_Ch1ACT = '1' then
				arch_Ch1DEC <='1';
			else
				arch_Ch1DEC <='0';
			end if;
			
			--CH2
			if ch2HT = '1' and arch_Ch2END >= conv_integer(CurrMemAddress) and arch_Ch2ACT = '1' then
				arch_Ch2DEC <='1';
			else
				arch_Ch2DEC <='0';
			end if;
			
			--CH3
			if ch3HT = '1' and arch_Ch3END >= conv_integer(CurrMemAddress) and arch_Ch3ACT = '1' then
				arch_Ch3DEC <='1';
			else
				arch_Ch3DEC <='0';
			end if;
			
			
			if conv_integer(CurrMemAddress) = memEndAddr-1 then --changed because 0 zero address will be set only just in the round
				arch_loop_start <='1';
			end if;
			
			
			
			--DEBUG --
			--endAddr <= conv_std_logic_vector(memEndAddr,18);
			--currMemAddress <= currMemAddress+'1'; --debug
			--if (arch_loop_start = '1') then currMemAddress <= "000000000000000000"; end if; --debug

						
			
		end if;
		
end process;

-- Asynchronous Part

	recSel      <= arch_recSel;
	recording   <= arch_recording;
	loop_start  <= arch_loop_start;
	Imm_start   <= arch_Imm_start;
	Ch0Activate <= arch_Ch0DEC;
	Ch1Activate <= arch_Ch1DEC;
	Ch2Activate <= arch_Ch2DEC;
	Ch3Activate <= arch_Ch3DEC;
	
	--CurrState   <=  conv_std_logic_vector(stateNum,3); --debug
	
	--ENDMemAddress<=endAddr; --debug
	--currentMemAddress <= currMemAddress; --debug
	


end arc_LooperSM; 