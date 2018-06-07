library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


----------------------------------------

entity Metronome is
	port(
		RESETN, CLK, enable	: in  std_logic                ;
		resetCount	         : in  std_logic                ;
		BPMin                : in  integer  range 0 to 255  ; -- bpm is in range 0-255;
		
		quater, 	bar         : out std_logic                ;
		newBPM 			      : out std_logic               );
end Metronome;



architecture Metronome_arch of Metronome is

	 	signal arch_newBPM : std_logic ;
		signal arch_dout, arch_bar  : std_logic ;
		
begin

	process(CLK,RESETN)
		 variable counter: integer                                  ;
		 variable quaterCounter: integer      range 0 to 4 :=  0    ;
		 variable BPMcurr: integer range 0 to 255 := 0              ;
		 variable counterLimit: integer := 50000000                 ;
	    constant equationConst: integer := 833333                  ; -- 50Mhz/ 60 sec aprox.
		 constant SecPerMin: integer := 60                          ;
		 constant quaterCounterLimit: integer range 0 to 4 :=  4    ; 
		 
	begin
	
			if RESETN = '0' then
				arch_dout          <= '0' ;
				arch_newBPM        <= '0' ;
				BPMcurr            :=  0  ;
				counter            :=  0  ;
				quaterCounter      :=  0  ;
				
			elsif rising_edge(CLK) then
				arch_bar <= '0';
				arch_dout <='0';
				
				if enable = '1' then
				  counter := counter + 1 ;
				  
					if (BPMcurr = BPMin) then -- newBPM insertion -> reset 
						arch_newBPM  <= '1';
						BPMcurr      := BPMin;
						counterLimit := equationConst*BPMin;
						counter      := 0;
						quaterCounter      :=  0  ;
						
					elsif (counterLimit = counter or resetCount ='1') then
						arch_dout <='1'    ;
						counter :=0        ;
						quaterCounter := quaterCounter + 1 ;
						
						if quaterCounter = quaterCounterLimit then
							quaterCounter := 0;
							arch_bar <= '1';
						end if;
						
					end if;
				end if;
			end if; -- rising clock end;
			
	end process;
	
	quater <= arch_dout   ;
	bar    <= arch_bar    ;
	newBPM <= arch_newBPM ;

end Metronome_arch;
