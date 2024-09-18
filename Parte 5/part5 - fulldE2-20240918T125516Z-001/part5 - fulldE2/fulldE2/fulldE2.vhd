library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Library work;

entity fulldE2 is
	port(
	Clk    : in std_logic;
	HEX00, HEX01, HEX02, HEx03, HEX04, HEX05, HEX06, HEX10, HEX11, HEX12, HEX13, HEX14, HEX15, HEX16, HEX20, HEX21, HEX22, HEX23, HEX24, HEX25, HEX26, HEX30, HEX31, HEX32, HEX33, HEX34, HEX35, HEX36, HEX40, HEX41, HEX42, HEX43, HEX44, HEX45, HEX46, HEX50, HEX51, HEX52, HEX53, HEX54, HEX55, HEX56, HEX60, HEX61, HEX62, HEX63, HEX64, HEX65, HEX66, HEX70, HEX71, HEX72, HEX73, HEX74, HEX75, HEX76  : out std_logic
	);
end fulldE2;

architecture contador of fulldE2 is
component aula4
	port(
		Zerar : IN STD_LOGIC;
		B0    : IN STD_LOGIC;
     	B1    : IN STD_LOGIC;
     	B2    : IN STD_LOGIC;
     	B3    : IN STD_LOGIC;
     	D0    : OUT STD_LOGIC;
     	D1    : OUT STD_LOGIC;
     	D2    : OUT STD_LOGIC;
     	D3    : OUT STD_LOGIC;
     	D4    : OUT STD_LOGIC;
     	D5    : OUT STD_LOGIC;
     	D6    : OUT STD_LOGIC
	);
end component;

signal d0, d1, d2, d3, d4, d5, d6, d7 : std_logic_vector(0 to 3);

signal num : integer range 0 to 50000000;
signal sum07 : integer range 0 to 7;																  
signal Clear :std_logic := '0';
signal vazio0, vazio1, vazio2, vazio3, vazio4, vazio5, vazio6, vazio7 : std_logic;

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
					sum07 <= sum07 + 1;
					if(sum07=8) then
						sum07 <= 0;
					end if;
				else
					Clear <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process(Clk)
	begin
	if(sum07=0) then
		d0 <= std_logic_vector(to_unsigned(2, 4));
		d1 <= std_logic_vector(to_unsigned(14, 4));
		d2 <= std_logic_vector(to_unsigned(13, 4));
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d4 <= std_logic_vector(to_unsigned(15, 4));
		d5 <= std_logic_vector(to_unsigned(15, 4));
		d6 <= std_logic_vector(to_unsigned(15, 4));
		d7 <= std_logic_vector(to_unsigned(15, 4));
	elsif(sum07=1) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(2, 4));
		d2 <= std_logic_vector(to_unsigned(14, 4));
		d3 <= std_logic_vector(to_unsigned(13, 4));
		d4 <= std_logic_vector(to_unsigned(15, 4));
		d5 <= std_logic_vector(to_unsigned(15, 4));
		d6 <= std_logic_vector(to_unsigned(15, 4));
		d7 <= std_logic_vector(to_unsigned(15, 4));
	elsif(sum07=2) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(2, 4));
		d3 <= std_logic_vector(to_unsigned(14, 4));
		d4 <= std_logic_vector(to_unsigned(13, 4));
		d5 <= std_logic_vector(to_unsigned(15, 4));
		d6 <= std_logic_vector(to_unsigned(15, 4));
		d7 <= std_logic_vector(to_unsigned(15, 4));
	elsif(sum07=3) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(2, 4));
		d4 <= std_logic_vector(to_unsigned(14, 4));
		d5 <= std_logic_vector(to_unsigned(13, 4));
		d6 <= std_logic_vector(to_unsigned(15, 4));
		d7 <= std_logic_vector(to_unsigned(15, 4));
	elsif(sum07=4) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d4 <= std_logic_vector(to_unsigned(2, 4));
		d5 <= std_logic_vector(to_unsigned(14, 4));
		d6 <= std_logic_vector(to_unsigned(13, 4));
		d7 <= std_logic_vector(to_unsigned(15, 4));
	elsif(sum07=5) then
		d0 <= std_logic_vector(to_unsigned(15, 4));
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d4 <= std_logic_vector(to_unsigned(15, 4));
		d5 <= std_logic_vector(to_unsigned(2, 4));
		d6 <= std_logic_vector(to_unsigned(14, 4));
		d7 <= std_logic_vector(to_unsigned(13, 4));
	elsif(sum07=6) then
		d0 <= std_logic_vector(to_unsigned(13, 4));
		d1 <= std_logic_vector(to_unsigned(15, 4));
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d4 <= std_logic_vector(to_unsigned(15, 4));
		d5 <= std_logic_vector(to_unsigned(15, 4));
		d6 <= std_logic_vector(to_unsigned(2, 4));
		d7 <= std_logic_vector(to_unsigned(14, 4));
	elsif(sum07=7) then
		d0 <= std_logic_vector(to_unsigned(14, 4));
		d1 <= std_logic_vector(to_unsigned(13, 4));
		d2 <= std_logic_vector(to_unsigned(15, 4));
		d3 <= std_logic_vector(to_unsigned(15, 4));
		d4 <= std_logic_vector(to_unsigned(15, 4));
		d5 <= std_logic_vector(to_unsigned(15, 4));
		d6 <= std_logic_vector(to_unsigned(15, 4));
		d7 <= std_logic_vector(to_unsigned(2, 4));
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
		
	if(d4="1111") then
		vazio4 <= '1';
	else
		vazio4 <= '0';
	end if;
	
	if(d5="1111") then
		vazio5 <= '1';
	else
		vazio5 <= '0';
	end if;
	if(d6="1111") then
		vazio6 <= '1';
	else
		vazio6 <= '0';
	end if;
	
	if(d7="1111") then
		vazio7 <= '1';
	else
		vazio7 <= '0';
	end if;
	end process;
	
	-- display de 7 segmentos		
	display0 : aula4
		port map(Zerar => vazio0, B0 => d0(3), B1 => d0(2), B2 => d0(1), B3 => d0(0), D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
		
	display1 : aula4
		port map(Zerar => vazio1, B0 => d1(3), B1 => d1(2), B2 => d1(1), B3 => d1(0), D0 => HEX10, D1 => HEX11, D2 => HEX12, D3 => HEX13, D4 => HEX14, D5 => HEX15, D6 => HEX16);

	display2 : aula4
		port map(Zerar => vazio2, B0 => d2(3), B1 => d2(2), B2 => d2(1), B3 => d2(0), D0 => HEX20, D1 => HEX21, D2 => HEX22, D3 => HEX23, D4 => HEX24, D5 => HEX25, D6 => HEX26);

	display3 : aula4
		port map(Zerar => vazio3, B0 => d3(3), B1 => d3(2), B2 => d3(1), B3 => d3(0), D0 => HEX30, D1 => HEX31, D2 => HEX32, D3 => HEX33, D4 => HEX34, D5 => HEX35, D6 => HEX36);
		
	display4 : aula4
		port map(Zerar => vazio4, B0 => d4(3), B1 => d4(2), B2 => d4(1), B3 => d4(0), D0 => HEX40, D1 => HEX41, D2 => HEX42, D3 => HEX43, D4 => HEX44, D5 => HEX45, D6 => HEX46);
		
	display5 : aula4
		port map(Zerar => vazio5, B0 => d5(3), B1 => d5(2), B2 => d5(1), B3 => d5(0), D0 => HEX50, D1 => HEX51, D2 => HEX52, D3 => HEX53, D4 => HEX54, D5 => HEX55, D6 => HEX56);

	display6 : aula4
		port map(Zerar => vazio6, B0 => d6(3), B1 => d6(2), B2 => d6(1), B3 => d6(0), D0 => HEX60, D1 => HEX61, D2 => HEX62, D3 => HEX63, D4 => HEX64, D5 => HEX65, D6 => HEX66);

	display7 : aula4
		port map(Zerar => vazio7, B0 => d7(3), B1 => d7(2), B2 => d7(1), B3 => d7(0), D0 => HEX70, D1 => HEX71, D2 => HEX72, D3 => HEX73, D4 => HEX74, D5 => HEX75, D6 => HEX76);

	
end contador;