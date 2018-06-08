--Looper State machine


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity LooperSM is
	port (
		----INPUTS----
		--standard sychronic inputs
		enable                             : in std_logic;
		clk                                : in std_logic;
		ResetN                             : in std_logic;
		
		--keyboard controller inputs
		KB_Selchannel                      : in std_logic_vector(1 downto 0); --4 channels
		KB_PLAY                            : in std_logic;
		KB_REC                             : in std_logic;
		KB_STOP                            : in std_logic;
		KB_ClearCH                         : in std_logic;
		KB_ALLPLAY                         : in std_logic;
		                   
		
		--Metronome Mode
		MetMode                            : in std_logic; -- '1' -> metronome mode is ON
		MetBarEND                          : in std_logic; -- '1' ---> Bar on last count
	                   
		--memory input                   
		currMemAddress                     : in std_logic_vector(17 downto 0);		 --debug - we need this input

		----OUTPUTS----
		recSel                             : out std_logic_vector(1 downto 0);
		recording                          : out std_logic;
		loop_start                         : out std_logic; -- also to zero in memory
		MetRESET                           : out std_logic; -- '1' -> metronome mode is ON
		commandRecieved                    : out std_logic; -- indicated that command has been used - used in SMlooperKBD
		                   
		CurrState                          : out std_logic_vector(2 downto 0); --debug
		--ENDMemAddress   : out std_logic_vector(17 downto 0); --debug
		--currentMemAddress   : out std_logic_vector(17 downto 0); --debug
		
		
		ChActivate                         : out std_logic_vector(3 downto 0);
		
		chPlayingVGA                       : out std_logic_vector(3 downto 0);-- play or stopped
		chHasTrackVGA                      : out std_logic_vector(3 downto 0);--
		chRecordingVGA                     : out std_logic_vector(3 downto 0)

		
	);
end LooperSM;



architecture arc_LooperSM of LooperSM is
	--STATE MACHINE--
	type state_type is (EMPTY, PRE_REC_FIRST, REC_FIRST, CH_CONTROL, PRE_REC, REC_OTHER); --state machine states;
	signal state: state_type;
	
	signal arch_MetModeFlag   : std_logic; -- also to zero in memory
	signal MetBarENDTOKEN  : std_logic;
	
	--ARCHITRECTURE TO OUTPUT--
	signal arch_commandRecieved: std_logic; -- also to zero in memory
	signal arch_loop_start: std_logic; -- also to zero in memory
	signal arch_recSel : std_logic_vector(1 downto 0);
	signal arch_recording : std_logic;
	signal arch_Ch0END, arch_Ch1END, arch_Ch2END, arch_Ch3END: integer;
	signal arch_Ch0ACT, arch_Ch1ACT, arch_Ch2ACT, arch_Ch3ACT: std_logic;
	signal arch_Ch0DEC, arch_Ch1DEC, arch_Ch2DEC, arch_Ch3DEC: std_logic; -- DECISION variable
	signal ch0HT, ch1HT, ch2HT, ch3HT: std_logic; -- does our channel "has track?"
	signal arch_MetRESET: std_logic;
	
	
	--VGA OUTPUTS --
	signal arch_chPlayingVGA, arch_chHasTrackVGA, arch_chRecordingVGA : std_logic_vector(3 downto 0);
	
	
	--DEBUG--
	--signal currMemAddress  : std_logic_vector(17 downto 0); --debug
	--signal endAddr  : std_logic_vector(17 downto 0); --debug
	signal stateNum: integer; --used for debugging because states simulation does not work on quartos
	
	
	
	--ARCHITRECTURE VARIABLES -- 

	
begin
-- Synchronous Part
	process(clk,ResetN)		
		variable recCounter : integer range 0 to 4; -- Count how many channels have record on them
		variable stpCounter : integer range 0 to 4; -- Count how many channels have been stopped
		variable memEndAddr : integer range 0 to 262143; -- MAX_ADDRESS must be plus always plus 1 - see addr counter to get the point -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		constant MAX_ADDR   : integer := 262143; --constant MAX_ADDR didn't work using raw values

	begin
		if ResetN='0' then
		
			--INPUTS--
			
			state<=EMPTY;
			--met-mode
			MetBarENDTOKEN <= '0';
			arch_MetModeFlag <='0';
			
			arch_loop_start <='1'; -- also to zero in memory
			arch_recSel <="00";
			arch_recording <='0';
			
			arch_Ch0END <= 0;
			arch_Ch1END <= 0;
			arch_Ch2END <= 0;
			arch_Ch3END <= 0;
			
			
			arch_Ch0ACT <= '0';
			arch_Ch1ACT <= '0';
			arch_Ch2ACT <= '0';
			arch_Ch3ACT <= '0';

			ch0HT <= '0';
			ch1HT <= '0';
			ch2HT <= '0';
			ch3HT <= '0';
			
			arch_commandRecieved <='0';
			
			--ARCH VARIABLES-- 
			recCounter := 0;
			stpCounter := 0;
			memEndAddr := 262143; -- MAX_ADDR constant didn't work - using raw values
			
			
			--currMemAddress <= "000000000000000000"; --debug
			--stateNum <= 7 ;-- debug

			
	elsif (rising_edge(clk))  then
	 
		--MODES AND FAST CLOCK PROCEDURES-- 
	   --Met-Mode
		if MetBarEND = '1' then
    		MetBarENDTOKEN <= '1';
		end if;

      if (MetMode = '1' and arch_MetModeFlag /= '1')  then
			state <= EMPTY          ;
      	arch_MetModeFlag  <= '1';
  		
      elsif (MetMode = '0' and arch_MetModeFlag /= '0') then -- Switch Met-mode OFF
      	state <= EMPTY      ;
      	arch_MetModeFlag  <= '0';
      end if;
		
		
  		
  		--MODES AND MEM CLOCK PROCEDURES--
    	 if enable ='1' then
    			--Default values
    			arch_loop_start <='0';
				arch_MetRESET <= '0' ;
				
				
				if ( KB_PLAY ='1' or KB_ALLPLAY = '1' or KB_REC = '1' or KB_STOP ='1' or KB_ClearCH ='1') then
					arch_commandRecieved <='1';
				else
					arch_commandRecieved <='0';
				end if;
								
			
    			case state is
    				------------------------------
    				when EMPTY=> stateNum <= 0 ;-- debug
    				------------------------------
    				
    					arch_loop_start  <= '1'  ; -- also to zero in memory
    					arch_recSel      <= "00" ;
    					arch_recording   <= '0'  ;
    					
    					arch_Ch0END <= 0 ;
    					arch_Ch1END <= 0 ;
    					arch_Ch2END <= 0 ;
    					arch_Ch3END <= 0 ;
    					
    					
    					arch_Ch0ACT <= '0' ;
    					arch_Ch1ACT <= '0' ;
    					arch_Ch2ACT <= '0' ;
    					arch_Ch3ACT <= '0' ;
    
    					ch0HT <= '0' ;
    					ch1HT <= '0' ;
    					ch2HT <= '0' ;
    					ch3HT <= '0' ;
    					
    					
    					--ARCH VARIABLES-- 
    					recCounter := 0;
    					stpCounter := 0;
    					memEndAddr := 262143; -- MAX_ADDR constant didn't work - using raw values
    					
    
    					if KB_REC = '1' then
    						arch_MetRESET <='1';
    						MetBarENDTOKEN <= '0';
							
    						arch_recSel <= KB_Selchannel;
    						state<=PRE_REC_FIRST;
    					end if;
    					
    				------------------------------				
    				when PRE_REC_FIRST=> stateNum <= 1 ;-- debug
    				------------------------------

						arch_recording <='1';
						arch_loop_start <='1';
						case arch_recSel is
							when "00" => arch_Ch0ACT <='1' ;
							when "01" => arch_Ch1ACT <='1' ;
							when "10" => arch_Ch2ACT <='1' ;
							when "11" => arch_Ch3ACT <='1' ;
						end case;
						
						state<=REC_FIRST;

    				
    				------------------------------				
    				when REC_FIRST=> stateNum <= 2 ;-- debug
    				------------------------------
    					recCounter:= 1;
    					arch_recording <='1';
    					
    					if (arch_MetModeFlag ='1' and MetBarENDTOKEN = '1') or --MET-Mode cond
							(arch_MetModeFlag ='0' and ( KB_PLAY ='1' or KB_ALLPLAY = '1')) or (262143 = conv_integer(CurrMemAddress)) then -- end of recording  -- MAX_ADDR constant didn't work - using raw values
							
							MetBarENDTOKEN <= '0'; --used token
    						arch_recording <='0';
    						memEndAddr  :=  conv_integer(CurrMemAddress);
    						arch_loop_start <='1';
    						state<=CH_CONTROL;
    						case arch_recSel is
    							when "00" => ch0HT <= '1'; 
    							when "01" => ch1HT <= '1'; 
    							when "10" => ch2HT <= '1'; 
    							when "11" => ch3HT <= '1';  -- so we will be on
    						end case;
    						
    						arch_Ch0END <= memEndAddr;
    						arch_Ch1END <= memEndAddr;
    						arch_Ch2END <= memEndAddr;
    						arch_Ch3END <= memEndAddr;
    					end if;       
    									  
    					
    				------------------------------
    				when CH_CONTROL=> stateNum <= 3 ;-- debug
    				------------------------------
    					-- default values
    					arch_recording <='0'; -- dont start
    
    					-----
    					if KB_REC = '1' then
    					-----
    						state<=PRE_REC;
    						arch_recSel <= KB_Selchannel;
    						if (recCounter = 1) and ((KB_Selchannel = "00" and ch0HT='1') or (KB_Selchannel = "01" and ch1HT='1') or (KB_Selchannel = "10" and ch2HT='1') or (KB_Selchannel = "11" and ch3HT='1')) then -- if we choose to record on a lonely track -> that's a first rec
							   arch_MetRESET <='1';
								MetBarENDTOKEN <= '0';
    							state<=PRE_REC_FIRST;
    						end if;
    						if (KB_Selchannel = "00" and ch0HT='0') or (KB_Selchannel = "01" and ch1HT='0') or (KB_Selchannel = "10" and ch2HT='0') or (KB_Selchannel = "11" and ch3HT='0') then
    							recCounter:= recCounter+1;
    						
    						end if;
    						
    						
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
    						
    						
    						if recCounter = 0 then
    							arch_loop_start <='1';
    							state<=EMPTY;
    						end if;
    					end if;
    
    				------------------------------
    				when PRE_REC=> stateNum <= 4 ;-- debug
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
    				when REC_OTHER=> stateNum <= 5 ;-- debug
    					------------------------------
    					arch_recording <='1';
    					if (conv_integer(CurrMemAddress) = memEndAddr -1 or KB_PLAY ='1' or KB_ALLPLAY ='1') then -- end of recording
    						arch_recording <='0';
    						state<=CH_CONTROL;
    						case arch_recSel is
    							when "00" => ch0HT <= '1'; arch_Ch0END <= conv_integer(CurrMemAddress)-0; --want to end at the adress of 4
    							when "01" => ch1HT <= '1'; arch_Ch1END <= conv_integer(CurrMemAddress)-1;
    							when "10" => ch2HT <= '1'; arch_Ch2END <= conv_integer(CurrMemAddress)-2;
    							when "11" => ch3HT <= '1'; arch_Ch3END <= conv_integer(CurrMemAddress)-3;
    						end case;
    						
    					elsif (KB_STOP ='1') then
    						arch_recording <='0';
    						state<=CH_CONTROL;
    						case arch_recSel is
    							when "00" => ch0HT <= '1'; arch_Ch0ACT <='1'; arch_Ch0END <= conv_integer(CurrMemAddress)-0;  --want to end at the address of 0,
    							when "01" => ch1HT <= '1'; arch_Ch1ACT <='1'; arch_Ch1END <= conv_integer(CurrMemAddress)-1;  
    							when "10" => ch2HT <= '1'; arch_Ch2ACT <='1'; arch_Ch2END <= conv_integer(CurrMemAddress)-2;  
    							when "11" => ch3HT <= '1'; arch_Ch3ACT <='1'; arch_Ch3END <= conv_integer(CurrMemAddress)-3;  
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
    			
    			
    			if conv_integer(CurrMemAddress) = memEndAddr-1 then -- zero address will be set only the round after
    				arch_loop_start <='1';
    			end if;
    			
    			
    			  						
				if arch_recording = '1' then
					case arch_recSel is -- can be implemented using shift but not straight forward enough
						when "00" => arch_chRecordingVGA <= "0001";
						when "01" => arch_chRecordingVGA <= "0010"; 
						when "10" => arch_chRecordingVGA <= "0100"; 
						when "11" => arch_chRecordingVGA <= "1000";
					end case;
				else
					arch_chRecordingVGA <= "0000";
				end if;
				
				arch_chPlayingVGA(0)   <= arch_Ch0ACT;
				arch_chPlayingVGA(1)   <= arch_Ch1ACT;
				arch_chPlayingVGA(2)   <= arch_Ch2ACT;
				arch_chPlayingVGA(3)   <= arch_Ch3ACT;
				  
				arch_chHasTrackVGA(0)  <= ch0HT;
				arch_chHasTrackVGA(1)  <= ch1HT;
				arch_chHasTrackVGA(2)  <= ch2HT;
				arch_chHasTrackVGA(3)  <= ch3HT;
				
				
    			--DEBUG --
    			--endAddr <= conv_std_logic_vector(memEndAddr,18);
    			--currMemAddress <= currMemAddress+'1'; --debug
    			--if (arch_loop_start = '1') then currMemAddress <= "000000000000000000"; end if; --debug
				

  			
  		end if;--enable
  	end if; 
end process;

-- Asynchronous Part

	recSel          <= arch_recSel         ;
	recording       <= arch_recording      ;
	loop_start      <= arch_loop_start     ;
	ChActivate(0)   <= arch_Ch0DEC         ;
	ChActivate(1)   <= arch_Ch1DEC         ;
	ChActivate(2)   <= arch_Ch2DEC         ;
	ChActivate(3)   <= arch_Ch3DEC         ;
	 
	chHasTrackVGA   <= arch_chHasTrackVGA  ;
	chPlayingVGA    <= arch_chPlayingVGA   ;
	chRecordingVGA  <= arch_chRecordingVGA ;
	
	MetRESET        <= arch_MetRESET       ;
	commandRecieved <= arch_commandRecieved;
	
	
	
	CurrState   <=  conv_std_logic_vector(stateNum,3); --debug
	
	--ENDMemAddress<=endAddr; --debug
	--currentMemAddress <= currMemAddress; --debug
	


end arc_LooperSM; 