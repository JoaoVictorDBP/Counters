library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Library work;

entity dE2 is
	port(
	Clk    : in std_logic;
	HEX00, HEX01, HEX02, HEx03, HEX04, HEX05, HEX06, HEX10, HEX11, HEX12, HEX13, HEX14, HEX15, HEX16, HEX20, HEX21, HEX22, HEX23, HEX24, HEX25, HEX26, HEX30, HEX31, HEX32, HEX33, HEX34, HEX35, HEX36  : out std_logic
	);
end dE2;

architecture contador of dE2 is
component aula4
	port(
		Zerar : IN STD_LOGIC;
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

signal d0, d1, d2, d3 : std_logic_vector(0 to 3);

signal num : integer range 0 to 50000000;
signal sum03 : integer range 0 to 3;																  
signal eh50 : std_logic;
signal bito : std_logic_vector(0 to 3);
signal Clear :std_logic := '0';
signal vazio0, vazio1, vazio2, vazio3 : std_logic;

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
					sum03 <= sum03 + 1;
					if(sum03=4) then
						sum03 <= 0;
					end if;
				else
					Clear <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process(Clk)
	begin
	if(sum03=0) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(2, 4));
		d2 <= std_logic_vector(to_unsigned(14, 4));
		d3 <= std_logic_vector(to_unsigned(13, 4));
	elsif(sum03=1) then
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(2, 4));
		d3 <= std_logic_vector(to_unsigned(14, 4));
		d0 <= std_logic_vector(to_unsigned(13, 4));
	elsif(sum03=2) then
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(2, 4));
		d0 <= std_logic_vector(to_unsigned(14, 4));
		d1 <= std_logic_vector(to_unsigned(13, 4));
	else
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d0 <= std_logic_vector(to_unsigned(2, 4));
		d1 <= std_logic_vector(to_unsigned(14, 4));
		d2 <= std_logic_vector(to_unsigned(13, 4));
	end if;
	end process;
	
	process(Clk)
	begin
	if(d0="1111") then
		vazio0 <= '1';
	else
		vazio0 <= '0';
	end if;
	
	if(d1="1111") then
		vazio1 <= '1';
	else
		vazio1 <= '0';
	end if;
	if(d2="1111") then
		vazio2 <= '1';
	else
		vazio2 <= '0';
	end if;
	
	if(d3="1111") then
		vazio3 <= '1';
	else
		vazio3 <= '0';
	end if;
	end process;
	
	-- bito <= std_logic_vector(to_unsigned(sum03, 2));
	
	-- display de 7 segmentos		
	display0 : aula4
		port map(Zerar => vazio0, B0 => d0(3), B1 => d0(2), B2 => d0(1), B3 => d0(0), D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
		
	display1 : aula4
		port map(Zerar => vazio1, B0 => d1(3), B1 => d1(2), B2 => d1(1), B3 => d1(0), D0 => HEX10, D1 => HEX11, D2 => HEX12, D3 => HEX13, D4 => HEX14, D5 => HEX15, D6 => HEX16);

	display2 : aula4
		port map(Zerar => vazio2, B0 => d2(3), B1 => d2(2), B2 => d2(1), B3 => d2(0), D0 => HEX20, D1 => HEX21, D2 => HEX22, D3 => HEX23, D4 => HEX24, D5 => HEX25, D6 => HEX26);

	display3 : aula4
		port map(Zerar => vazio3, B0 => d3(3), B1 => d3(2), B2 => d3(1), B3 => d3(0), D0 => HEX30, D1 => HEX31, D2 => HEX32, D3 => HEX33, D4 => HEX34, D5 => HEX35, D6 => HEX36);

	
end contador;