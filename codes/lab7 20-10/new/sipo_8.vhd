----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2018 03:13:51 PM
-- Design Name: 
-- Module Name: sipo_8 - Behavioral
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

entity sipo_8 is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg : out STD_LOGIC_VECTOR (7 downto 0));
end sipo_8;

architecture Behavioral of sipo_8 is

component dff_posi is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

signal x0,x1,x2,x3,x4,x5,x6,x7:STD_LOGIC:='0';

begin


d0: dff_posi port map(d,clk,x0);
d1: dff_posi port map(x0,clk,x1);
d2: dff_posi port map(x1,clk,x2);
d3: dff_posi port map(x2,clk,x3);
d4: dff_posi port map(x3,clk,x4);
d5: dff_posi port map(x4,clk,x5);
d6: dff_posi port map(x5,clk,x6);
d7: dff_posi port map(x6,clk,x7);

reg(0)<=x0;
reg(1)<=x1;
reg(2)<=x2;
reg(3)<=x3;
reg(4)<=x4;
reg(5)<=x5;
reg(6)<=x6;
reg(7)<=x7;


end Behavioral;
