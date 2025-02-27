
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decrementer is
    Port ( a   : in  STD_LOGIC_vector(3 downto 0);
           b   : in  STD_LOGIC_vector(3 downto 0);
           Cout : out std_logic;
           s   : out STD_LOGIC_vector(3 downto 0));
           
end Decrementer;

architecture Behavioral of Decrementer is
    component FullAdderUsingHalfAdder
         Port ( af   : in  STD_LOGIC;
           bf   : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           sf   : out STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;

    signal cp : STD_LOGIC_vector(2 downto 0);

begin
    X1: FullAdderUsingHalfAdder port map(a(0),'1','0',s(0),cp(0));
    X2: FullAdderUsingHalfAdder port map(a(1),'1',cp(0),s(1),cp(1));
    X3: FullAdderUsingHalfAdder port map(a(2),'1',cp(1),s(2),cp(2));
    X4: FullAdderUsingHalfAdder port map(a(3),'1',cp(2),s(3),Cout);
    

end Behavioral;

