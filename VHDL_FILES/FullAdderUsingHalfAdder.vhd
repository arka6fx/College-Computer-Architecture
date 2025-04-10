library ieee;
use ieee.std_logic_1164.all;

entity FullAdderUsingHalfAdder is
	port( a,b,Cin : in std_logic;
		Cout,s : out std_logic);
end FullAdderUsingHalfAdder;

architecture Behavioral of FullAdderUsingHalfAdder is
	component HalfAdder
	 	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
	end component;
	signal sig1, sig2, sig3: std_logic;
begin
x1: HalfAdder port map(a,b,sig1,sig2);
x2: HalfAdder port map(sig1,Cin,s,sig3);
Cout <= sig2 or sig3;

end Behavioral;

