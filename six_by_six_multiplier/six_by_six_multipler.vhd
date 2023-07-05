library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity six_by_six_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           P : out  STD_LOGIC_VECTOR (11 downto 0));
end six_by_six_multiplier;

architecture Behavioral of six_by_six_multiplier is

component six_bit_adder is Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
											  b : in  STD_LOGIC_VECTOR (5 downto 0);
											  Cin : in  STD_LOGIC;
											  s : out  STD_LOGIC_VECTOR (5 downto 0);
											  Cout : out  STD_LOGIC);
end component;
	 
	 
signal X1, X2, X3, X4, X5, Y1, Y2, Y3, Y4, Y5 : STD_LOGIC_VECTOR (5 downto 0);
signal S1, S2, S3, S4, S5 : STD_LOGIC_VECTOR(5 downto 0);
signal Cout1, Cout2, Cout3, Cout4, Cout5: STD_LOGIC;

begin

    -- First row of partial products
    X1(0) <= A(1) and B(0);
    X1(1) <= A(2) and B(0);
    X1(2) <= A(3) and B(0);
	 X1(3) <= A(4) and B(0);
	 X1(4) <= A(5) and B(0);
	 X1(5) <= '0';

    Y1(0) <= A(0) and B(1);
    Y1(1) <= A(1) and B(1);
    Y1(2) <= A(2) and B(1);
    Y1(3) <= A(3) and B(1);
    Y1(4) <= A(4) and B(1);
    Y1(5) <= A(5) and B(1);
	 
	 -- Second row of partial products
    X2(0) <= S1(1);
    X2(1) <= S1(2);
    X2(2) <= S1(3);
    X2(3) <= S1(4);
    X2(4) <= S1(5);	 
    X2(5) <= Cout1;
	 
	 Y2(0) <= A(0) and B(2);
    Y2(1) <= A(1) and B(2);
    Y2(2) <= A(2) and B(2);
	 Y2(3) <= A(3) and B(2);
	 Y2(4) <= A(4) and B(2);
	 Y2(5) <= A(5) and B(2);
	 
	 --third row of partial products
	 X3(0) <= S2(1);
    X3(1) <= S2(2);
    X3(2) <= S2(3);
    X3(3) <= S2(4);
    X3(4) <= S2(5);
    X3(5) <= Cout2;
		
	 Y3(0) <= A(0) and B(3);
    Y3(1) <= A(1) and B(3);
    Y3(2) <= A(2) and B(3);
    Y3(3) <= A(3) and B(3);
    Y3(4) <= A(4) and B(3);
	 Y3(5) <= A(5) and B(3);
	
	 --fourth row of partial products
	 X4(0) <= S3(1);
    X4(1) <= S3(2);
    X4(2) <= S3(3);
    X4(3) <= S3(4);
    X4(4) <= S3(5);
    X4(5) <= Cout3;
		
	 Y4(0) <= A(0) and B(4);
    Y4(1) <= A(1) and B(4);
    Y4(2) <= A(2) and B(4);
    Y4(3) <= A(3) and B(4);
    Y4(4) <= A(4) and B(4);
	 Y4(5) <= A(5) and B(4);

	 --fifth row of partial products
	 X5(0) <= S4(1);
    X5(1) <= S4(2);
    X5(2) <= S4(3);
    X5(3) <= S4(4);
    X5(4) <= S4(5);
    X5(5) <= Cout4;
		
	 Y5(0) <= A(0) and B(5);
    Y5(1) <= A(1) and B(5);
    Y5(2) <= A(2) and B(5);
    Y5(3) <= A(3) and B(5);
    Y5(4) <= A(4) and B(5);
	 Y5(5) <= A(5) and B(5);


    -- Add the partial products using binary adders
    binary_adder1: six_bit_adder port map(X1, Y1, '0', S1, Cout1);
	 binary_adder2: six_bit_adder port map(X2, Y2, '0', S2, Cout2);
	 binary_adder3: six_bit_adder port map(X3, Y3, '0', S3, Cout3);
	 binary_adder4: six_bit_adder port map(X4, Y4, '0', S4, Cout4);
	 binary_adder5: six_bit_adder port map(X5, Y5, '0', P(10 downto 5), p(11));
	 
    -- Output the final product
	 P(4) <= S4(0);
	 P(3) <= S3(0);
	 P(2) <= S2(0);
	 P(1) <= S1(0);
	 P(0) <= B(0) and A(0);
 	 
	 

end Behavioral;
