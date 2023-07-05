library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array_multipler is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           P : out  STD_LOGIC_VECTOR (11 downto 0));
end array_multipler;

architecture Behavioral of array_multipler is

component Full_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carrout : out  STD_LOGIC);
			  end component;

component half_adder is port (a, b : in STD_LOGIC;
										c, s : out STD_LOGIC);
										end component;


signal X1, X2, X3, X4, X5, Y1, Y2, Y3, Y4, Y5, Y6 : STD_LOGIC_VECTOR (5 downto 0);
signal S1, S2, S3, S4, S5 : STD_LOGIC_VECTOR(5 downto 0);
signal cout1, cout2, cout3, cout4, cout5, cout6: STD_LOGIC_VECTOR (5 downto 0);


begin

    -- First row of partial products
    P(0)  <= A(0) and B(0);
	 X1(0) <= A(1) and B(0);
    X1(1) <= A(2) and B(0);
    X1(2) <= A(3) and B(0);
	 X1(3) <= A(4) and B(0);
	 X1(4) <= A(5) and B(0);
	 
    Y1(0) <= A(0) and B(1);
    Y1(1) <= A(1) and B(1);
    Y1(2) <= A(2) and B(1);
    Y1(3) <= A(3) and B(1);
    Y1(4) <= A(4) and B(1);
	 
	 -- Second row of partial products
    P(1) <= S1(0);
	 X2(0) <= A(0) and B(2);
    X2(1) <= A(1) and B(2);
    X2(2) <= A(2) and B(2);
	 X2(3) <= A(3) and B(2);
	 X2(4) <= A(4) and B(2);

    Y2(0) <= s1(1);
    Y2(1) <= S1(2);
    Y2(2) <= S1(3);
    Y2(3) <= S1(4);
    Y2(4) <= A(5) and B(1);	 

	 -- Third row of partial products
    P(2) <= S2(0);
	 X3(0) <= A(0) and B(3);
    X3(1) <= A(1) and B(3);
    X3(2) <= A(2) and B(3);
	 X3(3) <= A(3) and B(3);
	 X3(4) <= A(4) and B(3);

    Y3(0) <= s2(1);
    Y3(1) <= S2(2);
    Y3(2) <= S2(3);
    Y3(3) <= S2(4);
    Y3(4) <= A(5) and B(2);
	 
	 -- fourth row of partial products
    P(3) <= S3(0);
	 X4(0) <= A(0) and B(4);
    X4(1) <= A(1) and B(4);
    X4(2) <= A(2) and B(4);
	 X4(3) <= A(3) and B(4);
	 X4(4) <= A(4) and B(4);

    Y4(0) <= s3(1);
    Y4(1) <= S3(2);
    Y4(2) <= S3(3);
    Y4(3) <= S3(4);
    Y4(4) <= A(5) and B(3);
	 
	 -- fifth row of partial products
    P(4) <= S4(0);
	 X5(0) <= A(0) and B(5);
    X5(1) <= A(1) and B(5);
    X5(2) <= A(2) and B(5);
	 X5(3) <= A(3) and B(5);
	 X5(4) <= A(4) and B(5);

    Y5(0) <= s4(1);
    Y5(1) <= S4(2);
    Y5(2) <= S4(3);
    Y5(3) <= S4(4);
    Y5(4) <= A(5) and B(4);

	 --Sixth row of partial products
    P(5) <= S5(0);
	 Y6(5) <= A(5) and B(5);

--Implementing FA and HAs

--Row 1
h11 : half_adder port map (X1(0), Y1(0), cout1(0), s1(0));
h12 : half_adder port map (X1(1), Y1(1), cout1(1), s1(1));
h13 : half_adder port map (X1(2), Y1(2), cout1(2), s1(2));
h14 : half_adder port map (X1(3), Y1(3), cout1(3), s1(3));
h15 : half_adder port map (X1(4), Y1(4), cout1(4), s1(4));

--Row2
f21 : Full_adder port map (X2(0), Y2(0), cout1(0), s2(0), cout2(0));
f22 : Full_adder port map (X2(1), Y2(1), cout1(1), s2(1), cout2(1));
f23 : Full_adder port map (X2(2), Y2(2), cout1(2), s2(2), cout2(2));
f24 : Full_adder port map (X2(3), Y2(3), cout1(3), s2(3), cout2(3));
f25 : Full_adder port map (X2(4), Y2(4), cout1(4), s2(4), cout2(4));

--Row3
f31 : Full_adder port map (X3(0), Y3(0), cout2(0), s3(0), cout3(0));
f32 : Full_adder port map (X3(1), Y3(1), cout2(1), s3(1), cout3(1));
f33 : Full_adder port map (X3(2), Y3(2), cout2(2), s3(2), cout3(2));
f34 : Full_adder port map (X3(3), Y3(3), cout2(3), s3(3), cout3(3));
f35 : Full_adder port map (X3(4), Y3(4), cout2(4), s3(4), cout3(4));

--Row4
f41 : Full_adder port map (X4(0), Y4(0), cout3(0), s4(0), cout4(0));
f42 : Full_adder port map (X4(1), Y4(1), cout3(1), s4(1), cout4(1));
f43 : Full_adder port map (X4(2), Y4(2), cout3(2), s4(2), cout4(2));
f44 : Full_adder port map (X4(3), Y4(3), cout3(3), s4(3), cout4(3));
f45 : Full_adder port map (X4(4), Y4(4), cout3(4), s4(4), cout4(4));

--Row5
f51 : Full_adder port map (X5(0), Y5(0), cout4(0), s5(0), cout5(0));
f52 : Full_adder port map (X5(1), Y5(1), cout4(1), s5(1), cout5(1));
f53 : Full_adder port map (X5(2), Y5(2), cout4(2), s5(2), cout5(2));
f54 : Full_adder port map (X5(3), Y5(3), cout4(3), s5(3), cout5(3));
f55 : Full_adder port map (X5(4), Y5(4), cout4(4), s5(4), cout5(4));

--Row6
h61 : half_adder port map (cout5(0), s5(1), cout6(0), p(6));
f62 : Full_adder port map (cout6(0), s5(2), cout5(1), p(7), cout6(1));
f63 : Full_adder port map (cout6(1), s5(3), cout5(2), p(8), cout6(2));
f64 : Full_adder port map (cout6(2), s5(4), cout5(3), p(9), cout6(3));
f65 : Full_adder port map (cout6(3),  Y6(5), cout5(4), p(10), p(11));



end Behavioral;

