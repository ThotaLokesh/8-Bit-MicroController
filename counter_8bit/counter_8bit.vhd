library ieee;
use ieee.std_logic_1164.all;

entity counter_8bit is
port(
clk,RST:in std_logic;
Q:buffer std_logic_vector(7 downto 0)
);
end entity;

architecture struc of counter_8bit is
signal s:std_logic_vector(7 downto 0);
signal t,t0,t1,t2,t3,t4,t5:std_logic;
component JK_flipflop
port(
J,K,clk,RST: in std_logic;
Q,Q1:buffer std_logic
);
end component;
begin
t<=Q(0);
t0<=Q(1) and t;
t1<=Q(2) and t0;
t2<=Q(3) and t1;
t3<=Q(4) and t2;
t4<=Q(5) and t3;
t5<=Q(6) and t4;
ff0: JK_flipflop port map('1','1',clk,RST,Q(0),s(0));
ff1: JK_flipflop port map(t,t,clk,RST,Q(1),s(1));
ff2: JK_flipflop port map(t0,t0,clk,RST,Q(2),s(2));
ff3: JK_flipflop port map(t1,t1,clk,RST,Q(3),s(3));
ff4: JK_flipflop port map(t2,t2,clk,RST,Q(4),s(4));
ff5: JK_flipflop port map(t3,t3,clk,RST,Q(5),s(5));
ff6: JK_flipflop port map(t4,t4,clk,RST,Q(6),s(6));
ff7: JK_flipflop port map(t5,t5,clk,RST,Q(7),s(7));
end architecture;