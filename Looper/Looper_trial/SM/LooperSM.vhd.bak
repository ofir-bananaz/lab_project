--Looper State machine


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity LooperSM is
	port (
		clk : in std_logic;
		ResetN : in std_logic;
		
		--keyboard controller inputs
		KB_sel_channel: in std_logic_vector(1 downto 0); --4 channels
		KB_RecOnMet : in std_logic;
		KB_Rec_PLAY : in std_logic;
		KB_STOP : in std_logic;
		KB_ClearCH : in std_logic;
	
		--curr channel inputs
		ChannelEndAddr : in std_logic_vector(17 downto 0); -- Send the firsts end address;
		loop_start : in std_logic;
		has_track :out std_logic;

	
		--memory input
		currMemAdress: in std_logic_vector(17 downto 0)		

		-- Outputs
		loop_exists : out std_logic;
		play : out std_logic;
		stop : out std_logic;
		rec : out std_logic;
		clearCH : out std_logic -- play=0 is stop
		
	);
end LooperSM;



architecture arc_LooperSM of LooperSM is

	type state_type is (transToRegularMode, channelControl, channelREC, transToMetronomeMode, metChannelControl, metChannelREC); --state machine states;
	signal state: state_type;
	
	signal curr_sel_channel: std_logic_vector(1 downto 0); -- current selected channel
	signal arch : std_logic;
	
	variable mem_end_address : integer range 0 to 524287; -- number of addresses
	variable Rec_counter : integer range 0 to 4; -- Count how many channels have record on them
	


begin
-- Synchronous Part
	process(clk,ResetN)
	begin
		if ResetN='0' then
		
			mem_end_address :=0;
			sel_channel_sig <= "00";
			Rec_counter :=0;
			RecLock<='0';
			other_loop_exists<='0';
			state <=transToRegularMode;
			
		elsif (rising_edge(clk))  then
		
			case state is
				------------------------------
				when transToRegularMode=>
				
					mem_end_address :=0;
					RecLock<='0';
					loop_exists<='0';
					Rec_counter :=0;
					state<=channelControl;
					
				------------------------------				
				when channelControl=>
					
					--add conditions
					if (KB_RecOnMet ='1')
						state<=transToMetronomeMode;
						
					elsif (KB_Rec_PLAY ='1' and )				
						state<=channelREC;
						
					elsif (KB_STOP ='1')		
					
					
					elsif (KB_ClearCH ='1')						

						
					else
						curr_sel_channel <= sel_channel;
					end if;
					
					
					if (Rec_counter >0)
						loop_exists <='1';
					else
						loop_exists <='0';	
					
				------------------------------
				when channelREC=>
					Qtmp<= "0011";
					state<=s4;
					
				------------------------------
				when transToMetronomeMode=>
					mem_end_address :=0;
					RecOnMet<='1';
					RecLock<='0';
					loop_exists<='0';
					Rec_counter :=0;
					state<=metChannelControl;

				------------------------------
				when metChannelControl=>
					Qtmp<= "0111";
					state<=metChannelREC;
					state<=transToRegularMode;

				------------------------------
				when metChannelREC=>
					Qtmp<= "1000";
					state<=metChannelControl;
					
					
			end case;
			
			
		end if;
		
end process;

-- Asynchronous Part



	



end arc_LooperSM; 