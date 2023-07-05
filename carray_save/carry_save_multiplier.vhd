library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carry_save_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           P : out  STD_LOGIC_VECTOR (11 downto 0));
end carry_save_multiplier;

architecture Behavioral of carry_save_multiplier is

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

signal X1, X2, X3, X4, X5, Y1, Y2, Y3, Y4, Y5 : STD_LOGIC_VECTOR (5 downto 0);
signal S1, S2, S3, S4, S5 : STD_LOGIC_VECTOR(5 downto 0);
signal cout1, cout2, cout3, cout4, cout5: STD_LOGIC_VECTOR (5 downto 0);

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
	 Y1(5) <= A(5) and B(1);

	 -- Second row of partial products
	 X2(0) <= A(0) and B(2);
    X2(1) <= A(1) and B(2);
    X2(2) <= A(2) and B(2);
	 X2(3) <= A(3) and B(2);
	 X2(4) <= A(4) and B(2);
	 X2(5) <= A(5) and B(2);


	 Y2(5) <= cout1(5);

	 --Third row of partial products
	 X3(0) <= A(0) and B(3);
    X3(1) <= A(1) and B(3);
    X3(2) <= A(2) and B(3);
	 X3(3) <= A(3) and B(3);
	 X3(4) <= A(4) and B(3);
	 X3(5) <= A(5) and B(3);


	 Y3(5) <= cout2(5);

	 --Foruth row of partial products
	 X4(0) <= A(0) and B(4);
    X4(1) <= A(1) and B(4);
    X4(2) <= A(2) and B(4);
	 X4(3) <= A(3) and B(4);
	 X4(4) <= A(4) and B(4);
	 X4(5) <= A(5) and B(4);


	 Y4(5) <= cout3(5);

	 --5 row of partial products

	 X5(0) <= A(0) and B(5);
    X5(1) <= A(1) and B(5);
    X5(2) <= A(2) and B(5);
	 X5(3) <= A(3) and B(5);
	 X5(4) <= A(4) and B(5);
	 X5(5) <= A(5) and B(5);


	 Y5(5) <= cout4(5);

--Implementing FA and HAs

--Row 1
h11 : half_adder port map (X1(0), Y1(0), cout1(0), p(1));
f11 : Full_adder port map (X1(1), Y1(1), cout1(0), Y2(0), cout1(1));
f12 : Full_adder port map (X1(2), Y1(2), cout1(1), Y2(1), cout1(2));
f13 : Full_adder port map (X1(3), Y1(3), cout1(2), Y2(2), cout1(3));
f14 : Full_adder port map (X1(4), Y1(4), cout1(3), Y2(3), cout1(4));
h15 : half_adder port map (Y1(5), cout1(4), cout1(5), Y2(4));

--Row2
h21 : half_adder port map (X2(0), Y2(0), cout2(0), p(2));
f22 : Full_adder port map (X2(1), Y2(1), cout2(0), Y3(0), cout2(1));
f23 : Full_adder port map (X2(2), Y2(2), cout2(1), Y3(1), cout2(2));
f24 : Full_adder port map (X2(3), Y2(3), cout2(2), Y3(2), cout2(3));
f25 : Full_adder port map (X2(4), Y2(4), cout2(3), Y3(3), cout2(4));
f26 : Full_adder port map (X2(5), Y2(5), cout2(4), Y3(4), cout2(5));

--Row3
h31 : half_adder port map (X3(0), Y3(0), cout3(0), p(3));
f32 : Full_adder port map (X3(1), Y3(1), cout3(0), Y4(0), cout3(1));
f33 : Full_adder port map (X3(2), Y3(2), cout3(1), Y4(1), cout3(2));
f34 : Full_adder port map (X3(3), Y3(3), cout3(2), Y4(2), cout3(3));
f35 : Full_adder port map (X3(4), Y3(4), cout3(3), Y4(3), cout3(4));
f36 : Full_adder port map (X3(5), Y3(5), cout3(4), Y4(4), cout3(5));

--Row4
h41 : half_adder port map (X4(0), Y4(0), cout4(0), p(4));
f42 : Full_adder port map (X4(1), Y4(1), cout4(0), Y5(0), cout4(1));
f43 : Full_adder port map (X4(2), Y4(2), cout4(1), Y5(1), cout4(2));
f44 : Full_adder port map (X4(3), Y4(3), cout4(2), Y5(2), cout4(3));
f45 : Full_adder port map (X4(4), Y4(4), cout4(3), Y5(3), cout4(4));
f46 : Full_adder port map (X4(5), Y4(5), cout4(4), Y5(4), cout4(5));


--Row5
h51 : half_adder port map (X5(0), Y5(0), cout5(0), p(5));
f52 : Full_adder port map (X5(1), Y5(1), cout5(0), p(6), cout5(1));
f53 : Full_adder port map (X5(2), Y5(2), cout5(1), p(7), cout5(2));
f54 : Full_adder port map (X5(3), Y5(3), cout5(2), p(8), cout5(3));
f55 : Full_adder port map (X5(4), Y5(4), cout5(3), p(9), cout5(4));
f56 : Full_adder port map (X5(5), Y5(5), cout5(4), p(10), cout5(5));

p(11) <= cout5(5);




end Behavioral;




