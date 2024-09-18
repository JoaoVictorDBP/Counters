Library IEEE;
USE IEEE.Std_logic_1164.all;

Library work;

entity Contador8BitPlaca is
	port(
		Enable : in std_logic;
		Clk : in std_logic;
		Clear : in std_logic;
		HEX00, HEX01, HEX02, HEX03, HEX04, HEX05, HEX06, HEX10, HEX11, HEX12, HEX13, HEX14, HEX15, HEX16 : out std_logic
	);
end Contador8BitPlaca;

Library IEEE;
USE IEEE.Std_logic_1164.all;

entity Contador is
	port(
		Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out std_logic;
		Enable : in std_logic;
		Clear : in std_logic;
		Clk : in std_logic
	);
end Contador;

Library IEEE;
USE IEEE.Std_logic_1164.all;

entity T_flip_flop is 
   port(
      output : out std_logic;    
      Clk : in std_logic;   
      T : in  std_logic;
		Clear : in std_logic
   );
end T_flip_flop;

-- parte que define o comportamento do T flip flop
architecture Behavioral of T_flip_flop is  
begin 
 process(Clk, Clear)
 variable teste : std_logic;
 begin 
    if(rising_edge(Clk)) then
		if(Clear='1') then
		teste := '0';
		elsif(T = '1') then
		teste := not teste;
		end if;
    end if;
    output <= teste;
 end process;  
end Behavioral; 

-- parte que define o circuito do contador de 8 bits
architecture contar8bit of Contador is
signal out_tff1 : std_logic;
signal in_tff2 : std_logic;
signal out_tff2 : std_logic;
signal in_tff3 : std_logic;
signal out_tff3 : std_logic;
signal in_tff4 : std_logic;
signal out_tff4 : std_logic;
signal in_tff5 : std_logic;
signal out_tff5 : std_logic;
signal in_tff6 : std_logic;
signal out_tff6 : std_logic;
signal in_tff7 : std_logic;
signal out_tff7 : std_logic;
signal in_tff8 : std_logic;
signal out_tff8 : std_logic;

begin
	tff1 : entity work.T_flip_flop(Behavioral) 
			port map (T => Enable, Clear => Clear, Clk => Clk, output => out_tff1);
	in_tff2 <= Enable and out_tff1;
	Q0 <= out_tff1;
	tff2 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff2, Clear => Clear, Clk => Clk, output => out_tff2);
	in_tff3 <= in_tff2 and out_tff2;
	Q1 <= out_tff2;
	tff3 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff3, Clear => Clear, Clk => Clk, output => out_tff3);
	in_tff4 <= in_tff3 and out_tff3;
	Q2 <= out_tff3;
	tff4 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff4, Clear => Clear, Clk => Clk, output => out_tff4);
	in_tff5 <= in_tff4 and out_tff4;
	Q3 <= out_tff4;
	tff5 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff5, Clear => Clear, Clk => Clk, output => out_tff5);
	in_tff6 <= in_tff5 and out_tff5;
	Q4 <= out_tff5;
	tff6 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff6, Clear => Clear, Clk => Clk, output => out_tff6);
	in_tff7 <= in_tff6 and out_tff6;
	Q5 <= out_tff6;
	tff7 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff7, Clear => Clear, Clk => Clk, output => out_tff7);
	in_tff8 <= in_tff7 and out_tff7;
	Q6 <= out_tff7;
	tff8 : entity work.T_flip_flop(Behavioral) 
			port map (T => in_tff8, Clear => Clear, Clk => Clk, output => out_tff8);
	Q7 <= out_tff8 and in_tff8;
end contar8bit;

architecture circuito of Contador8BitPlaca is
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

signal bit0 : std_logic;
signal bit1 : std_logic;
signal bit2 : std_logic;
signal bit3 : std_logic;
signal bit4 : std_logic;
signal bit5 : std_logic;
signal bit6 : std_logic;
signal bit7 : std_logic;

begin
	contador1 : entity work.Contador(contar8bit)
		port map(Enable => Enable, Clk => Clk, Clear => Clear, Q0 => bit0, Q1 => bit1, Q2 => bit2, Q3 => bit3, Q4 => bit4, Q5 => bit5, Q6 => bit6, Q7 => bit7);
	display1 : aula4 
		port map(B0 => bit0, B1 => bit1, B2 => bit2, B3 => bit3, D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
	display2 : aula4 
		port map(B0 => bit4, B1 => bit5, B2 => bit6, B3 => bit7, D0 => HEX10, D1 => HEX11, D2 => HEX12, D3 => HEX13, D4 => HEX14, D5 => HEX15, D6 => HEX16);
end circuito;