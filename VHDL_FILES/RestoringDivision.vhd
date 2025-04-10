library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity RestoringDivision is
    Port ( 
        m      : in  STD_LOGIC_VECTOR (3 downto 0); 
        q      : in  STD_LOGIC_VECTOR (3 downto 0);  
        quo    : out STD_LOGIC_VECTOR (3 downto 0); 
        remain : out STD_LOGIC_VECTOR (4 downto 0)   
    );
end RestoringDivision;
architecture Behavioral of RestoringDivision is
begin
    process (m, q)
        variable acc     : STD_LOGIC_VECTOR (8 downto 0);
        variable divisor : STD_LOGIC_VECTOR (4 downto 0);
    begin
        acc(8 downto 4) := "00000";        
        acc(3 downto 0) := m;              
        divisor := '0' & q;                

        for i in 1 to 4 loop
            acc := acc(7 downto 0) & '0';   

            acc(8 downto 4) := acc(8 downto 4) - divisor;

            if acc(8) = '0' then            
                acc(0) := '1';
            else                           
                acc(8 downto 4) := acc(8 downto 4) + divisor;
                acc(0) := '0';
            end if;
        end loop;

        quo    <= acc(3 downto 0);         
        remain <= acc(8 downto 4);          
    end process;
end Behavioral;

