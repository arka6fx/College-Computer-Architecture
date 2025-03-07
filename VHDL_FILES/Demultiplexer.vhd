library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demultiplexer is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           I : in  STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Demultiplexer;

architecture Behavioral of Demultiplexer is
begin
process(S, I)  
begin
    Y<="UUUU";
    case S is
        when "00" => Y(0) <= I; 
        when "01" => Y(1) <= I; 
        when "10" => Y(2) <= I; 
        when "11" => Y(3) <= I;
        when others => y <= "UUUU";
    end case;
end process;
end Behavioral;

