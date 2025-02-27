
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Incrementer is
    Port ( a   : in  STD_LOGIC_vector(3 downto 0);
           Cout : out std_logic;
           s   : out STD_LOGIC_vector(3 downto 0));
           
end Incrementer;

architecture Behavioral of Incrementer is
    component HalfAdder
          Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
    end component;

    signal cp : STD_LOGIC_vector(2 downto 0);

begin
    X1: HalfAdder port map('1',a(0),s(0),cp(0));
    X2: HalfAdder port map(cp(0),a(1),s(1),cp(1));
    X3: HalfAdder port map(cp(1),a(2),s(2),cp(2));
    X4: HalfAdder port map(cp(2),a(3),s(3),Cout);

        

end Behavioral;
