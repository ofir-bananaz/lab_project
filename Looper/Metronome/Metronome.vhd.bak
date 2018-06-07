library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


----------------------------------------

entity Metronome is
	port(
		RESETN, CLK, enable	: in  std_logic                ;
		resetCount	         : in  std_logic                ;
		inBPM                : in  integer  range 0 to 255  ; -- bpm is in range 0-255;
		
		quater, 	barEND         : out std_logic              ;
		newBPM 			      : out std_logic                );
end Metronome;



architecture Metronome_arch of Metronome is

	 	signal arch_newBPM : std_logic ;
		signal arch_dout, arch_barEND  : std_logic ;
		
begin

	process(CLK,RESETN)
	
		 variable counter: integer                                  ;
		 variable quaterCounter: integer      range 0 to 4 :=  0    ;
		 variable BPMcurr: integer range 0 to 255 := 0              ;
		 variable counterLimit: integer := 50000000                 ;
	    constant equationConst: integer := 833333                  ; -- 50Mhz/ 60 sec aprox. = 833333
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
				arch_barEND <= '0';
				arch_dout <='0';
				
				if enable = '1' then
				  counter := counter + 1 ;
				  
					if (BPMcurr /= inBPM) then -- newBPM insertion -> reset 
						arch_newBPM  <= '1';
						BPMcurr      := inBPM;
						counterLimit := equationConst * inBPM;
						counter      := 0;
						quaterCounter      :=  0  ;
					elsif resetCount ='1' then
						quaterCounter := 0;
						counter := 0       ;
						
					elsif counterLimit = counter then
						arch_dout <='1'    ;
						counter := 0       ;
						quaterCounter := quaterCounter + 1 ;
						
						if quaterCounter = quaterCounterLimit then
							quaterCounter := 0;
							arch_barEND <= '1';
						end if;
						
					end if;
				end if;
			end if; -- rising clock end;
			
	end process;
	
	quater <= arch_dout   ;
	barEND    <= arch_barEND    ;
	newBPM <= arch_newBPM ;

end Metronome_arch;
