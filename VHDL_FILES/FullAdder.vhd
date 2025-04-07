library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           Cin: in STD_LOGIC;
           s : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
begin
    s <= a XOR b XOR Cin;  
    Cout <= (a AND b) OR (Cin AND (a XOR b));  
end Behavioral;


