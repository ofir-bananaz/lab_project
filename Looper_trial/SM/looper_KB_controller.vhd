--Looper keyboard Translator


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity ChannelSM is
	port (

		--keyboard inputs
		ResetN        : in std_logic;
		clk           : in std_logic;
	

		-- Outputs
		Selchannel    : out std_logic_vector(1 downto 0); --4 channels
		RecOnMet      : out std_logic;
		PLAY          : out std_logic;
		ALLPLAY       : out std_logic;
		REC           : out std_logic;
		STOP          : out std_logic;
		ClearCH       : out std_logic;
		
		IMMstart : out std_logic;

		
	);
end ChannelSM;



architecture arc_LooperSM of LooperSM is

		signal arch_KBdata        : std_logic_vector(7 downto 0);  -ignoring extended
		signal arch_Selchannel    :  std_logic_vector(1 downto 0); --4 channels
		signal arch_RecOnMet      :  std_logic;
		signal arch_PLAY          :  std_logic;
		signal arch_ALLPLAY       :  std_logic;
		signal arch_REC           :  std_logic;		
		signal arch_STOP          :  std_logic;
		signal arch_ClearCH       :  std_logic;



begin
-- Synchronous Part
	process(ResetN,clk)
	begin
		if ResetN = '0' then
			arch_KBdata      <= "00000000";
			arch_Selchannel  <= "00";
			arch_RecOnMet    <= '0';
			arch_PLAY        <= '0';
			arch_ALLPLAY     <= '0'; 
			arch_REC         <= '0';
			arch_STOP        <= '0';
			arch_ClearCH     <= '0';

					
			
		elsif (rising_edge(clk))  then
			--default values:
			arch_KBdata <= KBdata(7 downto 0);
			arch_Rec_PLAY<='0';
			arch_STOP<='0';
			arch_RecOnMet<='0';
					
			case KBdata is
			
				when x"16"=> --"1" On keyboard
					arch_sel_channel<="00";
					
				when x"1E"=> --"2" On keyboard
					arch_sel_channel<="01";
					
				when x"26"=> --"3" On keyboard
					arch_sel_channel<="10";
					
				when x"25"=> --"4" On keyboard
					arch_sel_channel<="11";
					
				when x"70"=> -- "0" On the keypad
					arch_RecOnMet <='1';
					
				when x"29"=> --"SPACE" on Keyboard
					arch_ALLPLAY <= '1'; --for one cycle;
					
				when x"7A"=> --"?" on Keyboard
					if make ='1' then
						arch_STOP<='1';
					end if;
					
				when x"66"=> --"backSpace" on Keyboard
					if make ='1' then
						arch_STOP<='1';
					end if;
					
					--need to insert clearchannel machnism
					--if break ='1' and CNflag ='1';
								
			end case;
				
		end if;
		
	end process;

-- Asynchronous Part
	sel_channel <= arch_sel_channel ;
	RecOnMet <= arch_RecOnMet ;
	Rec_PLAY <= arch_Rec_PLAY ; 
	arch_STOP <= arch_STOP ;

end arc_LooperSM; 