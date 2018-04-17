library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LD is port (
A : in std_logic_vector (2 downto 0);
FF : out std_logic
);
end LD;
architecture design_style of LD is
begin
process (A)
begin

case A is
when "000" => FF <= '1';
when "001" => FF <= '0';
when "010" => FF <= '1';
when "011" => FF <= '0';
when "100" => FF <= '1';
when "101" => FF <= '1';
when "110" => FF <= '0';
when "111" => FF <= '0';
when others => null;
end case;

end process;
end;



