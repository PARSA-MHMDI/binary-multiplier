library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity carry_save_multiplier_test is
end carry_save_multiplier_test;

architecture Behavioral of carry_save_multiplier_test is

    component carry_save_multiplier
        Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
               B : in  STD_LOGIC_VECTOR (5 downto 0);
               P : out  STD_LOGIC_VECTOR (11 downto 0));
    end component;

    signal A_tb : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
    signal B_tb : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
    signal P_tb : STD_LOGIC_VECTOR(11 downto 0);

begin


process
    begin

		 for i in 0 to 63 loop
			for j in 0 to 63 loop
			  A_tb <= std_logic_vector(to_unsigned(i, A_tb'length));
			  B_tb <= std_logic_vector(to_unsigned(j, B_tb'length));
			  wait for 1 ns;
			end loop;
		 end loop;
        
        wait;
    end process;
	 
	 dut: carry_save_multiplier port map(A => A_tb, B => B_tb, P => P_tb);

end Behavioral;
