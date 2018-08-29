----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2018 03:19:58 PM
-- Design Name: 
-- Module Name: stage_4 - structural
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

entity stage_4 is
    Port ( x0 : in STD_LOGIC;
           x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           x3 : in STD_LOGIC;
           x4 : in STD_LOGIC;
           x5 : in STD_LOGIC;
           x6 : in STD_LOGIC;
           x7 : in STD_LOGIC;
           x8 : in STD_LOGIC;
           x9 : in STD_LOGIC;
           res : out STD_LOGIC);
end stage_4;

architecture structural of stage_4 is

component or_3gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           result : out STD_LOGIC);
end component;

signal a,b,c,d :STD_LOGIC;

begin

a<=x0 or x1;
gate1: or_3gate port map(x2,x3,x4,b);
gate2: or_3gate port map(b,a,x5,c);
gate3: or_3gate port map(c,x7,x6,d);
gate4: or_3gate port map(d,x8,x9,res);

end structural;
