Library ieee ;
use ieee.std_logic_1164.all ;
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity mux_loop_TEST is

port ( resetN : in std_logic ;
 clk : in std_logic ;
 play : in std_logic_vector (3 downto 0);
 rec : in std_logic_vector (3 downto 0);
 stop : in std_logic_vector (3 downto 0);
 clear : in std_logic_vector (3 downto 0);
  channel_out :	out std_logic_vector(1 downto 0);
 play_out: out std_logic ;
 rec_out :	out std_logic ;
 stop_out : out std_logic ;
 clear_out : out  std_logic );

end mux_loop_TEST;

architecture behavior of mux_loop_TEST is

signal play_sig :  std_logic;
signal rec_sig :  std_logic;
signal stop_sig :  std_logic;
signal clear_sig :  std_logic;
signal channel_sig :  std_logic_vector(1 downto 0);
begin 
play_out<=play_sig;
rec_out<=rec_sig;
stop_out<=stop_sig;
clear_out<=clear_sig;
channel_out<=channel_sig;

process(clk,resetn)

begin

	if resetn='0' then
		play_sig<='0';
		rec_sig<='0';
		stop_sig<='0';
		clear_sig<='0';
		channel_sig<="00";
	elsif rising_edge(clk) then
		play_sig<='0';
		rec_sig<='0';
		stop_sig<='0';
		clear_sig<='0';
		channel_sig<="00";
		if( play(0)='1') then 
			play_sig<='1'; 
			rec_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="00";
		elsif ( play(1)='1') then 
			play_sig<='1';
			rec_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="01";
		elsif ( play(2)='1') then 
			play_sig<='1';
			rec_sig<='0';
			stop_sig<='0';
			clear_sig<='0';	
			channel_sig<="10";
		elsif ( play(3)='1') then 
			play_sig<='1'; 
			rec_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="11";
		end if;
		if( rec(0)='1') then 
			rec_sig<='1';
			PLAY_sig<='0';
			stop_sig<='0';
			clear_sig<='0';	
			channel_sig<="00";
		elsif ( rec(1)='1') then 
			rec_sig<='1'; 
			PLAY_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="01";
		elsif ( rec(2)='1') then 
			rec_sig<='1'; 
			PLAY_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="10";
		elsif ( rec(3)='1') then 
			rec_sig<='1'; 
			PLAY_sig<='0';
			stop_sig<='0';
			clear_sig<='0';
			channel_sig<="11";
		end if;
	   if( stop(0)='1') then 
			stop_sig<='1'; 
			PLAY_sig<='0';
			REC_sig<='0';
			clear_sig<='0';
			channel_sig<="00";
		elsif ( stop(1)='1') then 
			stop_sig<='1';
			PLAY_sig<='0';
			REC_sig<='0';
			clear_sig<='0';	
			channel_sig<="01";
		elsif ( stop(2)='1') then 
			stop_sig<='1';
			PLAY_sig<='0';
			REC_sig<='0';
			clear_sig<='0';	
			channel_sig<="10";
		elsif ( stop(3)='1') then 
			stop_sig<='1';
			PLAY_sig<='0';
			REC_sig<='0';
			clear_sig<='0';	
			channel_sig<="11";
		end if;
		if( clear(0)='1') then 
			clear_sig<='1';
			PLAY_sig<='0';
			stop_sig<='0';
			rEC_sig<='0';	
			channel_sig<="00";
		elsif ( clear(1)='1') then 
			clear_sig<='1'; 
			PLAY_sig<='0';
			stop_sig<='0';
			rEC_sig<='0';
			channel_sig<="01";
		elsif ( clear(2)='1') then 
			clear_sig<='1';
			PLAY_sig<='0';
			stop_sig<='0';
			rEC_sig<='0';	
			channel_sig<="10";
		elsif ( clear(3)='1') then 
			clear_sig<='1'; 
			PLAY_sig<='0';
			stop_sig<='0';
			rEC_sig<='0';
			channel_sig<="11";
		end if;
	end if;
end process;
end architecture; 