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
		
		duty20ms     		   : out std_logic                ;
		quater, 	barEND      : out std_logic                ;
		newBPM 			      : out std_logic                );
end Metronome;



architecture Metronome_arch of Metronome is
		constant array_size 			: integer := 256 ;
	 	signal arch_newBPM , arch_duty20ms : std_logic ;
		signal arch_dout, arch_barEND      : std_logic ;
		
begin

	process(CLK,RESETN)
	
		 variable counter: integer                                  ;
		 variable quaterCounter: integer      range 0 to 4 :=  0    ;
		 variable BPMcurr: integer range 10 to 255 := 60            ;
		 variable counterLimit: integer := 50000000                 ;
	    constant equationConst: integer := 30000000000             ; -- 50M* 60 sec aprox. = 833333
		 constant SecPerMin: integer := 60                          ;
		 constant quaterCounterLimit: integer range 0 to 4 :=  4    ;
		 
		 type table_type is array(0 to array_size - 1) of std_logic_vector(31 downto 0);
		     constant CountLimitTable : table_type := (
X"02FAF080",
X"B2D05E00",
X"59682F00",
X"3B9ACA00",
X"2CB41780",
X"23C34600",
X"1DCD6500",
X"198B7B24",
X"165A0BC0",
X"13DE4355",
X"11E1A300",
X"10417CE8",
X"0EE6B280",
X"0DC1424E",
X"0CC5BD92",
X"0BEBC200",
X"0B2D05E0",
X"0A84BA3C",
X"09EF21AA",
X"09694850",
X"08F0D180",
X"0883D3B6",
X"0820BE74",
X"07C646DE",
X"07735940",
X"07270E00",
X"06E0A127",
X"069F6BC7",
X"0662DEC9",
X"062A7ED3",
X"05F5E100",
X"05C4A831",
X"059682F0",
X"056B29A2",
X"05425D1E",
X"051BE56D",
X"04F790D5",
X"04D532F9",
X"04B4A428",
X"0495C0C4",
X"047868C0",
X"045C7F2B",
X"0441E9DB",
X"04289111",
X"04105F3A",
X"03F940AA",
X"03E3236F",
X"03CDF71B",
X"03B9ACA0",
X"03A63629",
X"03938700",
X"03819369",
X"03705093",
X"035FB47D",
X"034FB5E3",
X"03404C2E",
X"03316F64",
X"0323181A",
X"03153F69",
X"0307DEE1",
X"02FAF080",
X"02EE6EA7",
X"02E25418",
X"02D69BE7",
X"02CB4178",
X"02C04076",
X"02B594D1",
X"02AB3AB7",
X"02A12E8F",
X"02976CF4",
X"028DF2B6",
X"0284BCD1",
X"027BC86A",
X"027312D2",
X"026A997C",
X"02625A00",
X"025A5214",
X"02527F8E",
X"024AE062",
X"0243729B",
X"023C3460",
X"023523ED",
X"022E3F95",
X"022785C2",
X"0220F4ED",
X"021A8BA5",
X"02144888",
X"020E2A46",
X"02082F9D",
X"02025759",
X"01FCA055",
X"01F70978",
X"01F191B7",
X"01EC3810",
X"01E6FB8D",
X"01E1DB43",
X"01DCD650",
X"01D7EBDB",
X"01D31B14",
X"01CE6336",
X"01C9C380",
X"01C53B3A",
X"01C0C9B4",
X"01BC6E45",
X"01B82849",
X"01B3F724",
X"01AFDA3E",
X"01ABD107",
X"01A7DAF1",
X"01A3F777",
X"01A02617",
X"019C6653",
X"0198B7B2",
X"019519C0",
X"01918C0D",
X"018E0E2C",
X"018A9FB4",
X"01874041",
X"0183EF70",
X"0180ACE4",
X"017D7840",
X"017A512C",
X"01773753",
X"01742A63",
X"01712A0C",
X"016E3600",
X"016B4DF3",
X"0168719F",
X"0165A0BC",
X"0162DB05",
X"0160203B",
X"015D701B",
X"015ACA68",
X"01582EE6",
X"01559D5B",
X"0153158E",
X"01509747",
X"014E2252",
X"014BB67A",
X"0149538D",
X"0146F95B",
X"0144A7B3",
X"01425E68",
X"01401D4C",
X"013DE435",
X"013BB2F7",
X"01398969",
X"01376763",
X"01354CBE",
X"01333954",
X"01312D00",
X"012F279D",
X"012D290A",
X"012B3123",
X"01293FC7",
X"012754D6",
X"01257031",
X"012391B8",
X"0121B94D",
X"011FE6D4",
X"011E1A30",
X"011C5344",
X"011A91F6",
X"0118D62B",
X"01171FCA",
X"01156EBA",
X"0113C2E1",
X"01121C27",
X"01107A76",
X"010EDDB7",
X"010D45D2",
X"010BB2B3",
X"010A2444",
X"01089A70",
X"01071523",
X"01059449",
X"010417CE",
X"01029FA0",
X"01012BAC",
X"00FFBBE0",
X"00FE502A",
X"00FCE879",
X"00FB84BC",
X"00FA24E2",
X"00F8C8DB",
X"00F77098",
X"00F61C08",
X"00F4CB1C",
X"00F37DC6",
X"00F233F7",
X"00F0EDA1",
X"00EFAAB6",
X"00EE6B28",
X"00ED2EE9",
X"00EBF5ED",
X"00EAC027",
X"00E98D8A",
X"00E85E0A",
X"00E7319B",
X"00E60830",
X"00E4E1C0",
X"00E3BE3D",
X"00E29D9D",
X"00E17FD5",
X"00E064DA",
X"00DF4CA2",
X"00DE3722",
X"00DD2451",
X"00DC1424",
X"00DB0692",
X"00D9FB92",
X"00D8F319",
X"00D7ED1F",
X"00D6E99B",
X"00D5E883",
X"00D4E9D0",
X"00D3ED78",
X"00D2F374",
X"00D1FBBB",
X"00D10646",
X"00D0130B",
X"00CF2204",
X"00CE3329",
X"00CD4672",
X"00CC5BD9",
X"00CB7355",
X"00CA8CE0",
X"00C9A873",
X"00C8C606",
X"00C7E594",
X"00C70716",
X"00C62A84",
X"00C54FDA",
X"00C47710",
X"00C3A020",
X"00C2CB05",
X"00C1F7B8",
X"00C12633",
X"00C05672",
X"00BF886D",
X"00BEBC20",
X"00BDF184",
X"00BD2896",
X"00BC614F",
X"00BB9BA9",
X"00BAD7A1",
X"00BA1531",
X"00B95454",
X"00B89506",
X"00B7D740",
X"00B71B00",
X"00B6603F",
X"00B5A6F9",
X"00B4EF2B",
X"00B438CF",
X"00B383E1"

);
		 
	begin
	
			if RESETN = '0' then
				arch_dout          <= '0' ;
				arch_newBPM        <= '0' ;
				BPMcurr            :=  60 ;
				counter            :=  0  ;
				quaterCounter      :=  0  ;
				arch_duty20ms      <= '0' ;
				
			elsif rising_edge(CLK) then
				arch_barEND <= '0';
				arch_dout <='0';
				arch_duty20ms <='0';
				
				if enable = '1' then
				  counter := counter + 1 ;
				  
				   if counter < 10000000 then -- 20milisec
						arch_duty20ms <='1';
					else
						arch_duty20ms <='0';
					end if;
				  
				  
					if (BPMcurr /= inBPM) then -- newBPM insertion -> reset 
						arch_newBPM  <= '1';
						BPMcurr      := inBPM;
						counterLimit :=	conv_integer(CountLimitTable(inBPM));
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
	duty20ms <= arch_duty20ms;

end Metronome_arch;
