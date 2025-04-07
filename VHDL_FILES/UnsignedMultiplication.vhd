library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity UnsignedMultiplication is
	port( m : in STD_LOGIC_VECTOR(3 downto 0);
              q : in STD_LOGIC_VECTOR(3 downto 0);
              p : out STD_LOGIC_VECTOR(7 downto 0));
end UnsignedMultiplication;

architecture Behavioral of UnsignedMultiplication is

begin
process(m,q)
variable m1: std_logic_vector(4 downto 0);
variable ac: std_logic_vector(8 downto 0);
begin
m1:='0' & m;
ac(8 downto 4):= "00000";
ac(3 downto 0):= q;
for i in 1 to 4 loop
	if ac(0) = '1' then
        ac(8 downto 4) := ac(8 downto 4) + m1;
        end if;

ac:='0' & ac(8 downto 1);
end loop;
p<= ac(7 downto 0);
end process;
end Behavioral;
     
             
