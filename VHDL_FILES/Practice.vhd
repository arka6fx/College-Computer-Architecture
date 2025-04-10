library ieee;
use ieee.std_logic_1164.all;

entity Practice is
	port( a,b,Cin: in std_logic;
		Cout,s: out std_logic);
end Practice;

architecture Behavioral of Practice is
begin
s <= a xor b xor Cin;
Cout <= (a and b) or (Cin and(a xor b));
end Behavioral;

  
