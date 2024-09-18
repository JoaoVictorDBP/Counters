library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Library work;

entity o50MHzCounter is
	port(
	Clk    : in std_logic;
	HEX00, HEX01, HEX02, HEx03, HEX04, HEX05, HEX06  : out std_logic
	);
end o50MHzCounter;

architecture contador of o50MHzCounter is
component aula4
	port(
		B0 : IN STD_LOGIC;
     	B1 : IN STD_LOGIC;
     	B2 : IN STD_LOGIC;
     	B3 : IN STD_LOGIC;
     	D0 : OUT STD_LOGIC;
     	D1 : OUT STD_LOGIC;
     	D2 : OUT STD_LOGIC;
     	D3 : OUT STD_LOGIC;
     	D4 : OUT STD_LOGIC;
     	D5 : OUT STD_LOGIC;
     	D6 : OUT STD_LOGIC
	);
end component;

signal num : integer range 0 to 50000000;
signal sum09 : integer range 0 to 9;																  
signal eh50 : std_logic;
signal bito : std_logic_vector(0 to 3);
signal Clear :std_logic := '0';

begin
	process(Clk)
	begin
		if(rising_edge(Clk)) then
			if(Clear='1') then
				num <= 0;
				Clear <= '0';
			else
				num <= num + 1;
				
				if(num=50000000) then
					Clear <= '1';
					sum09 <= sum09 + 1;
					if(sum09=9) then
						sum09 <= 0;
					end if;
				else
					Clear <= '0';
				end if;
			end if;
		end if;
	end process;
	
	bito <= std_logic_vector(to_unsigned(sum09, 4));
	
	-- display de 7 segmentos
	display : aula4
		port map(B0 => bito(3), B1 => bito(2), B2 => bito(1), B3 => bito(0), D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
end contador;