----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2018 02:49:47 PM
-- Design Name: 
-- Module Name: siso_8_reset - Behavioral
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

entity siso_8_reset is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           res : in STD_LOGIC;
           reg : out STD_LOGIC);
end siso_8_reset;

architecture Behavioral of siso_8_reset is

signal x0,x1,x2,x3,x4,x5,x6,x7:STD_LOGIC:='0';

component dff_R is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           res : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

begin


d0: dff_R port map(d,clk,res,x0);
d1: dff_R port map(x0,clk,res,x1);
d2: dff_R port map(x1,clk,res,x2);
d3: dff_R port map(x2,clk,res,x3);
d4: dff_R port map(x3,clk,res,x4);
d5: dff_R port map(x4,clk,res,x5);
d6: dff_R port map(x5,clk,res,x6);
d7: dff_R port map(x6,clk,res,reg);


end Behavioral;
