----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2018 02:46:55 PM
-- Design Name: 
-- Module Name: mux8_1x2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8_1x2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           e1 : in STD_LOGIC;
           f : in STD_LOGIC;
           g : in STD_LOGIC;
           h : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s3 : in STD_LOGIC;
           res : out STD_LOGIC);
end mux8_1x2;

architecture Behavioral of mux8_1x2 is

signal x1,x2,x3,x4,x5,x6:STD_LOGIC;


component mux2_1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           res : out STD_LOGIC);
end component;

begin
m1: mux2_1 port map(a,b,s1,x1);
m2: mux2_1 port map(c,d,s1,x2);
m3: mux2_1 port map(e1,f,s1,x3);
m4: mux2_1 port map(g,h,s1,x4);
m5: mux2_1 port map(x1,x2,s2,x5);
m6: mux2_1 port map(x3,x4,s2,x6);
mf: mux2_1 port map(x5,x6,s3,res);

end Behavioral;
