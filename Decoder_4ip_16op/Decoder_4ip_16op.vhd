LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODER_4IP_16op IS
PORT(
A: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY;


ARCHITECTURE STRUC OF DECODER_4IP_16op IS
SIGNAL S: STD_LOGIC_VECTOR(3 DOWNTO 0);

--COMPONENT DECLARATION
component and_4
PORT(
A: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
F: OUT STD_LOGIC
);
END COMPONENT;
begin
S<= not A;
AND0: and_4 port map(A(0)=>S(0),A(1)=>S(1),A(2)=>S(2),A(3)=>S(3),F=>F(0));
AND1: and_4 port map(A(0)=>A(0),A(1)=>S(1),A(2)=>S(2),A(3)=>S(3),F=>F(1));
AND2: and_4 port map(A(0)=>S(0),A(1)=>A(1),A(2)=>S(2),A(3)=>S(3),F=>F(2));
AND3: and_4 port map(A(0)=>A(0),A(1)=>A(1),A(2)=>S(2),A(3)=>S(3),F=>F(3));
AND4: and_4 port map(A(0)=>S(0),A(1)=>S(1),A(2)=>A(2),A(3)=>S(3),F=>F(4));
AND5: and_4 port map(A(0)=>A(0),A(1)=>S(1),A(2)=>A(2),A(3)=>S(3),F=>F(5));
AND6: and_4 port map(A(0)=>S(0),A(1)=>A(1),A(2)=>A(2),A(3)=>S(3),F=>F(6));
AND7: and_4 port map(A(0)=>A(0),A(1)=>A(1),A(2)=>A(2),A(3)=>S(3),F=>F(7));
AND8: and_4 port map(A(0)=>S(0),A(1)=>S(1),A(2)=>S(2),A(3)=>A(3),F=>F(8));
AND9: and_4 port map(A(0)=>A(0),A(1)=>S(1),A(2)=>S(2),A(3)=>A(3),F=>F(9));
AND10: and_4 port map(A(0)=>S(0),A(1)=>A(1),A(2)=>S(2),A(3)=>A(3),F=>F(10));
AND11: and_4 port map(A(0)=>A(0),A(1)=>A(1),A(2)=>S(2),A(3)=>A(3),F=>F(11));
AND12: and_4 port map(A(0)=>S(0),A(1)=>S(1),A(2)=>A(2),A(3)=>A(3),F=>F(12));
AND13: and_4 port map(A(0)=>A(0),A(1)=>S(1),A(2)=>A(2),A(3)=>A(3),F=>F(13));
AND14: and_4 port map(A(0)=>S(0),A(1)=>A(1),A(2)=>A(2),A(3)=>A(3),F=>F(14));
AND15: and_4 port map(A(0)=>A(0),A(1)=>A(1),A(2)=>A(2),A(3)=>A(3),F=>F(15));
END ARCHITECTURE;




