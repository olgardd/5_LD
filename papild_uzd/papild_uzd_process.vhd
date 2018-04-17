library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
signal r_SIG1 : std_logic;
signal r_SIG2 : std_logic;
signal r_SIG3 : std_logic;
signal r_SIG4 : std_logic;
signal r_SIG5 : std_logic;
signal r_SIG6 : std_logic;
signal w_RESULT1 : std_logic;
-- naudoti 4ARBA vhd
  component mux is
    port (
A : in std_logic;
B : in std_logic;
d0 : in std_logic;
d1 : in std_logic;
d2 : in std_logic;
d3 : in std_logic;
O : out std_logic
);
  end component mux;
--behin behave
begin

  and_gate_INST : mux
    port map (
    A=> r_SIG1,
    B=> r_SIG2,
	d0=> r_SIG3,
	d1=> r_SIG4,
	d2=> r_SIG5,
	d3=> r_SIG6,
	O=> w_RESULT1
      );
	  
	-- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG3 <= '1';
    r_SIG4 <= '0';
    r_SIG5 <= '1';
    r_SIG6 <= '0';  
	--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    r_SIG1 <= '0';
	r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '1';
    wait for 10 ns;
	
  end process;

end behave;
