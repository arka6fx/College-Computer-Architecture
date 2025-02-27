
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AdderSubtractorCompositeUnit is
    Port ( a   : in  STD_LOGIC_vector(3 downto 0);
           b   : in  STD_LOGIC_vector(3 downto 0);
           sw : in  STD_LOGIC;
           Cout : out std_logic;
           s  : out STD_LOGIC_vector(3 downto 0));
           
end AdderSubtractorCompositeUnit;

architecture Behavioral of AdderSubtractorCompositeUnit is
   component RippleCarryAdder
        Port ( a   : in  STD_LOGIC_vector(3 downto 0);
               b   : in  STD_LOGIC_vector(3 downto 0);
               Cin  : in  STD_LOGIC;
               Cout : out std_logic;
               s   : out STD_LOGIC_vector(3 downto 0));           
    end component;

    signal sig : STD_LOGIC_vector(3 downto 0);

begin
    sig(0) <= b(0) xor sw;
    sig(1) <= b(1) xor sw;
    sig(2) <= b(2) xor sw;
    sig(3) <= b(3) xor sw;
    X1: RippleCarryAdder port map(a,sig,sw,Cout,s);
    
end Behavioral;
