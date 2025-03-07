library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC);
end Multiplexer;

architecture Behavioral of Multiplexer is
begin
process(S, I)  
begin
    case S is
        when "00" => Y <= I(0); 
        when "01" => Y <= I(1); 
        when "10" => Y <= I(2); 
        when "11" => Y <= I(3); 
        when others=> Y<='U';
    end case;
end process;
end Behavioral;

