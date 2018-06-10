library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.std_logic_unsigned.all;
--use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;
-- Alex Grinshpun April 2017
-- Dudy Nov 13 2017

entity EDIT_1 is
port 	(
		--////////////////////	Clock Input	 	////////////////////	
	   	CLK  		: in std_logic;
		RESETn		: in std_logic;
		
		oCoord_X	: in integer;
		oCoord_Y	: in integer;
		EDIT			: IN STD_LOGIC;
		
		drawing_request	: out std_logic ;
		mVGA_RGB 	: out std_logic_vector(7 downto 0) 
	);
end EDIT_1;

architecture behav of EDIT_1 is 

constant object_X_size : integer := 30;
constant object_Y_size : integer := 18;
--constant R_high		: integer := 7;
--constant R_low		: integer := 5;
--constant G_high		: integer := 4;
--constant G_low		: integer := 2;
--constant B_high		: integer := 1;
--constant B_low		: integer := 0;

type ram_array is array(0 to object_Y_size - 1 , 0 to object_X_size - 1) of std_logic_vector(7 downto 0);  

-- 8 bit - color definition : "RRRGGGBB"  
constant object_colors: ram_array := ( 
(x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"00",x"00",x"00",x"00",x"00"),
(x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"04",x"08",x"08",x"08",x"28",x"28",x"28",x"28",x"28",x"28",x"28",x"28",x"28",x"28",x"28",x"04",x"04",x"00",x"00",x"00",x"00",x"00",x"00"),
(x"00",x"00",x"00",x"00",x"04",x"51",x"9a",x"9b",x"9a",x"9b",x"9b",x"9b",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"bb",x"76",x"28",x"04",x"04",x"00",x"00",x"00"),
(x"00",x"00",x"00",x"29",x"9a",x"bf",x"9a",x"96",x"96",x"96",x"96",x"9a",x"96",x"96",x"96",x"9a",x"9a",x"96",x"9a",x"9a",x"9a",x"bb",x"bf",x"df",x"bb",x"51",x"04",x"04",x"00",x"00"),
(x"00",x"00",x"08",x"9a",x"96",x"29",x"04",x"04",x"04",x"04",x"04",x"04",x"24",x"24",x"24",x"24",x"24",x"24",x"24",x"24",x"24",x"24",x"4d",x"bb",x"bf",x"9a",x"51",x"08",x"04",x"00"),
(x"00",x"04",x"72",x"96",x"04",x"00",x"04",x"00",x"00",x"00",x"00",x"04",x"00",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"29",x"9b",x"bf",x"76",x"31",x"08",x"00"),
(x"00",x"28",x"96",x"2d",x"00",x"24",x"00",x"28",x"51",x"71",x"4d",x"2d",x"71",x"51",x"28",x"28",x"4d",x"51",x"51",x"71",x"29",x"04",x"24",x"04",x"72",x"bf",x"9a",x"51",x"0c",x"04"),
(x"00",x"4d",x"76",x"04",x"00",x"24",x"00",x"2d",x"75",x"2d",x"28",x"51",x"51",x"51",x"71",x"51",x"51",x"2d",x"76",x"51",x"24",x"04",x"24",x"04",x"2d",x"9a",x"9a",x"55",x"2c",x"04"),
(x"00",x"4d",x"76",x"04",x"00",x"20",x"00",x"2d",x"75",x"51",x"2d",x"51",x"2d",x"04",x"51",x"75",x"4d",x"04",x"71",x"08",x"00",x"24",x"24",x"00",x"29",x"96",x"9a",x"55",x"31",x"04"),
(x"00",x"4d",x"76",x"04",x"00",x"00",x"00",x"2d",x"51",x"08",x"08",x"51",x"4d",x"28",x"51",x"71",x"4d",x"04",x"71",x"28",x"04",x"00",x"00",x"00",x"29",x"96",x"7a",x"55",x"31",x"04"),
(x"00",x"28",x"76",x"08",x"00",x"00",x"00",x"28",x"71",x"71",x"4d",x"4d",x"76",x"71",x"28",x"4d",x"4d",x"04",x"71",x"28",x"00",x"00",x"00",x"00",x"2d",x"7a",x"7a",x"55",x"2c",x"04"),
(x"00",x"04",x"55",x"4d",x"00",x"00",x"00",x"00",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"04",x"00",x"00",x"00",x"04",x"76",x"7a",x"56",x"31",x"0c",x"00"),
(x"00",x"00",x"2d",x"76",x"2d",x"04",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"51",x"76",x"56",x"55",x"31",x"08",x"00"),
(x"00",x"00",x"04",x"51",x"76",x"51",x"2d",x"2d",x"2d",x"2d",x"2d",x"2d",x"2d",x"2d",x"2d",x"2c",x"2d",x"2d",x"2d",x"2d",x"2d",x"2d",x"55",x"76",x"56",x"55",x"31",x"2c",x"04",x"00"),
(x"00",x"00",x"00",x"04",x"2d",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"55",x"35",x"31",x"2c",x"04",x"00",x"00"),
(x"00",x"00",x"00",x"00",x"04",x"08",x"2d",x"31",x"31",x"31",x"35",x"35",x"35",x"35",x"35",x"35",x"55",x"55",x"35",x"35",x"35",x"35",x"35",x"31",x"31",x"2c",x"04",x"00",x"00",x"00"),
(x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"04",x"08",x"2c",x"0c",x"2c",x"31",x"31",x"51",x"51",x"55",x"55",x"55",x"51",x"31",x"31",x"2c",x"2c",x"08",x"04",x"00",x"00",x"00",x"00"),
(x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"04",x"04",x"04",x"04",x"08",x"08",x"08",x"08",x"08",x"08",x"08",x"08",x"04",x"04",x"04",x"00",x"00",x"00",x"00",x"00",x"00")
);
-- one bit mask  0 - off 1 dispaly 
type object_form is array (0 to object_Y_size - 1 , 0 to object_X_size - 1) of std_logic;
constant object : object_form := (
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111"),
("111111111111111111111111111111")


);


signal		ObjectStartX	:  integer:=107;
signal 		ObjectStartY 	:  integer:=237;
		
signal bCoord_X : integer := 0;-- offset from start position 
signal bCoord_Y : integer := 0;

signal drawing_X : std_logic := '0';
signal drawing_Y : std_logic := '0';

--		
signal objectEndX : integer;
signal objectEndY : integer;

begin

-- Calculate object end boundaries
objectEndX	<= object_X_size+ObjectStartX;
objectEndY	<= object_Y_size+ObjectStartY;

-- Signals drawing_X[Y] are active when obects coordinates are being crossed

-- test if ooCoord is in the rectangle defined by Start and End 
	drawing_X	<= '1' when  (oCoord_X  >= ObjectStartX) and  (oCoord_X < objectEndX) else '0';
    drawing_Y	<= '1' when  (oCoord_Y  >= ObjectStartY) and  (oCoord_Y < objectEndY) else '0';

-- calculate offset from start corner 
	bCoord_X 	<= (oCoord_X - ObjectStartX) when ( drawing_X = '1' and  drawing_Y = '1'  ) else 0 ; 
	bCoord_Y 	<= (oCoord_Y - ObjectStartY) when ( drawing_X = '1' and  drawing_Y = '1'  ) else 0 ; 


process ( RESETn, CLK)

  		
   begin
	if RESETn = '0' then
	    mVGA_RGB	<=  (others => '0') ; 	
		drawing_request	<=  '0' ;

		elsif rising_edge(CLK) then
		if EDIT = '1' then
			mVGA_RGB	<=  object_colors(bCoord_Y , bCoord_X);	--get from colors table 
			drawing_request	<= object(bCoord_Y , bCoord_X) and drawing_X and drawing_Y ; -- get from mask table if inside rectangle
		else
			mVGA_RGB	<=  (others => '0') ; 
			drawing_request	<=  '0' ;
		end if;	
	end if;

  end process;

		
end behav;		
		