library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux is
port( 
d0: in std_logic;
d1: in std_logic;
d2: in std_logic;
d3: in std_logic;
A: in std_logic;
B: in std_logic;
O: out std_logic
);
end mux;

architecture behave of mux is
begin

O<= 
d0 when (A='0' and B='0') else
d1 when (A='0' and B='1') else
d2 when (A='1' and B='0') else
d3;

end behave;
