library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RestoringDivision is
	port( m : in STD_LOGIC_VECTOR(3 downto 0);
              q : in STD_LOGIC_VECTOR(3 downto 0);
              r : out STD_LOGIC_VECTOR(7 downto 0));
end RestoringDivision;

architecture Behavioral of RestoringDivision is
begin

process(m, q)
    variable acc: std_logic_vector(8 downto 0);
    variable divisor: std_logic_vector(4 downto 0);
begin
    acc(8 downto 4) := "00000"; 
    acc(3 downto 0) := q;         
    divisor := '0' & m;           

   
    for i in 0 to 3 loop
        acc := acc(7 downto 0) & '0'; 
        
     
        acc(8 downto 4) := acc(8 downto 4) - divisor;
        
        if acc(8) = '0' then
            acc(0) := '1'; 
        else
            acc(0) := '0'; 
            acc(8 downto 4) := acc(8 downto 4) + divisor; 
        end if;
    end loop;

    r <= acc(7 downto 0); 
end process;

end Behavioral;

