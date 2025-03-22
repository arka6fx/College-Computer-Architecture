library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ThreeToEightDecoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           en: in STD_LOGIC;
           d : out STD_LOGIC_vector (7 downto 0));
end ThreeToEightDecoder;

architecture Behavioral of ThreeToEightDecoder is
component Decoder
         Port ( a : in  STD_LOGIC;
                b : in  STD_LOGIC;
                enable : in STD_LOGIC;
                d : out STD_LOGIC_vector (3 downto 0));
end component;
signal nen : std_logic;
begin
nen <= not en;
D1: Decoder port map(a,b,nen,d(3 downto 0));
D2: Decoder port map(a,b,en,d(7 downto 4)); 

end Behavioral;

