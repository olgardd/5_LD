library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic;
  signal r_SIG2   : std_logic;
  signal r_SIG3   : std_logic;
signal w_RESULT1 : std_logic;
-- naudoti 4ARBA vhd
  component LD is
    port (
      A    :in  std_logic;
      B    :in  std_logic;
      C    :in  std_logic;
F : out std_logic
);
  end component LD;
--behin behave
begin

  and_gate_INST : LD
    port map (
      A    => r_SIG1,
      B    => r_SIG2,
      C    => r_SIG3,
	F => w_RESULT1
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
	wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
	wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
  end process;

end behave;
