----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2018 03:35:09 PM
-- Design Name: 
-- Module Name: sipo_16 - Behavioral
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

entity sipo_16 is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg : out STD_LOGIC_VECTOR (15 downto 0));
end sipo_16;

architecture Behavioral of sipo_16 is

signal x:STD_LOGIC_VECTOR (7 downto 0);


component sipo_8 is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg : out STD_LOGIC_VECTOR (7 downto 0));
end component;



begin

s1: sipo_8 port map(d,clk,x(7 downto 0));
reg(7 downto 0)<=x(7 downto 0);
s2: sipo_8 port map(x(7),clk,reg(15 downto 8));

end Behavioral;
