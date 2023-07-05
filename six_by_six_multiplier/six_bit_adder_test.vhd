library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity six_bit_adder_tb is
end six_bit_adder_tb;

architecture Behavioral of six_bit_adder_tb is
  signal a, b: std_logic_vector(5 downto 0);
  signal Cin: std_logic;
  signal s: std_logic_vector(5 downto 0);
  signal Cout: std_logic;
  
  component six_bit_adder is
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           b : in  STD_LOGIC_VECTOR (5 downto 0);
           Cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (5 downto 0);
           Cout : out  STD_LOGIC);
  end component;
begin
  DUT: six_bit_adder port map (a, b, Cin, s, Cout);


stimulus: process
	begin
	  a <= "000011";
	  b <= "000011";
	  Cin <= '0';
	  
	  wait for 10 ns;
	  
	  a <= "111111";
	  b <= "000001";
	  Cin <= '1';
	  
	  wait for 10 ns;
	  
	  a <= "100000";
	  b <= "011111";
	  Cin <= '0';
	  
	  wait for 10 ns;
	  
	  a <= "010101";
	  b <= "000101";
	  Cin <= '0';
	  
	  wait;
	end process;

check: process
begin
  wait for 10 ns;
  assert s = "000110" and Cout = '0' report "Test Case 1 Failed" severity error;
  
  wait for 10 ns;
  assert s = "000000" and Cout = '1' report "Test Case 2 Failed" severity error;
  
  wait for 10 ns;
  assert s = "111111" and Cout = '0' report "Test Case 3 Failed" severity error;
  
  wait;
end process;

end Behavioral;
