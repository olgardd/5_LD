library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
signal r_SIG1   : std_logic_vector (2 downto 0);
signal w_RESULT1 : std_logic;
-- naudoti 4ARBA vhd
  component LD is
    port (
A : in std_logic_vector (2 downto 0);
FF : out std_logic
);
  end component LD;
--behin behave
begin

  and_gate_INST : LD
    port map (
	A=> r_SIG1,
	FF=> w_RESULT1
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= "000";
    wait for 10 ns;
    r_SIG1 <= "001";
    wait for 10 ns;
    r_SIG1 <= "010";
    wait for 10 ns;
    r_SIG1 <= "011";
    wait for 10 ns;
	r_SIG1 <= "100";
    wait for 10 ns;
	r_SIG1 <= "101";
    wait for 10 ns;
	r_SIG1 <= "110";
    wait for 10 ns;
	r_SIG1 <= "111";
    wait for 10 ns;
  end process;

end behave;
