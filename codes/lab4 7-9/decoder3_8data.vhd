----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/07/2018 02:48:59 PM
-- Design Name: 
-- Module Name: decoder3_8data - Behavioral
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

entity decoder3_8data is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           d0 : out STD_LOGIC;
           d1 : out STD_LOGIC;
           d2 : out STD_LOGIC;
           d3 : out STD_LOGIC;
           d4 : out STD_LOGIC;
           d5 : out STD_LOGIC;
           d6 : out STD_LOGIC;
           d7 : out STD_LOGIC);
end decoder3_8data;

architecture Behavioral of decoder3_8data is

begin

d0<=en and (not a) and (not b) and (not c);
d1<=en and (not a) and (not b) and c;
d2<=en and (not a) and b and (not c);
d3<=en and (not a) and b  and c;
d4<=en and  a and (not b) and (not c);
d5<=en and  a and (not b)  and c;
d6<=en and  a and b and (not c);
d7<=en and  a and b and  c;


end Behavioral;
