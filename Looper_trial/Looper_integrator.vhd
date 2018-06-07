-- Looper Sound integrator;
-- AVG data that we get from memory in 4 cycles, presenting


library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all;

entity Looper_integrator is
   port ( resetN   : in  std_logic                    ;
          clk      : in  std_logic                    ;
			 enable      : in  std_logic                    ;
			 
          din      : in  std_logic_vector(15 downto 0) ; -- input vector
			 dinAddr      : in  std_logic_vector(17 downto 0) ; -- input vector
			 
			 ActiveChCount : in  std_logic_vector(2 downto 0) ; -- number of curr active Channels
			 
			 -- Active chanels:
			 Ch0Active: in  std_logic                    ;
			 Ch1Active: in  std_logic                    ;
			 Ch2Active: in  std_logic                    ;
			 Ch3Active: in  std_logic                    ;
			
			 
			 
			 dout_new : out  std_logic                    ; -- bit if a new output is ready
          dout     : out std_logic_vector(15 downto 0) -- the new out put
			);

end Looper_integrator ;


architecture arc_Looper_integrator of Looper_integrator is
	signal data : std_logic_vector(15 downto 0);
	signal proc_dout_new : std_logic ;
	signal proc_out : std_logic_vector(15 downto 0);

begin

process(clk,resetN)
	 variable currActive: integer range 0 to 3;
	 variable counter: integer range 0 to 3;
	 constant max: integer := 3;
	 
	 variable div: integer range 0 to 4; -- number of ch
	 variable sum: integer :=0;

	begin
		 if RESETN = '0' then
			  counter := 0 ;
			  sum := 0;
			  div := 0;
			  proc_out <= conv_std_logic_vector(0, dout'length);

		elsif rising_edge(CLK) then
			if enable = '1' then
				currActive:=conv_integer(dinAddr(1 downto 0));
				-- din is summed only if channel is Active
				if (currActive = 0 and Ch0Active = '1') or (currActive = 1 and Ch1Active = '1') or (currActive = 2 and Ch2Active = '1') or (currActive = 3 and Ch3Active = '1') then
					data<=din;
				else
					data <= conv_std_logic_vector(0, data'length);
				end if;
				
				sum := conv_integer(data) + sum;
				
				if (counter  = max) then
					if (ActiveChCount = "000") then
						proc_out <= conv_std_logic_vector(0, dout'length); -- No channel is active -> mute output
					else
						div := conv_integer(ActiveChCount);
						proc_out <= conv_std_logic_vector(sum/div, dout'length);
					end if;
					
					proc_dout_new <='1';
					sum := 0;
					counter :=0; 
				else
					counter := counter + 1 ;
				end if;
			end if; -- end if enable = '1'
		 end if;
	end process;


	dout <= proc_out ;
	dout_new <= proc_dout_new;
end arc_Looper_integrator ;






