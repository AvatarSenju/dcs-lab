----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2018 02:16:04 PM
-- Design Name: 
-- Module Name: siso_8 - Behavioral
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

entity siso_8 is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg : out STD_LOGIC);
end siso_8;

architecture Behavioral of siso_8 is

signal x0,x1,x2,x3,x4,x5,x6,x7:STD_LOGIC:='0';

component dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

begin

d0: dff port map(d,clk,x0);
d1: dff port map(x0,clk,x1);
d2: dff port map(x1,clk,x2);
d3: dff port map(x2,clk,x3);
d4: dff port map(x3,clk,x4);
d5: dff port map(x4,clk,x5);
d6: dff port map(x5,clk,x6);
d7: dff port map(x6,clk,reg);






end Behavioral;
