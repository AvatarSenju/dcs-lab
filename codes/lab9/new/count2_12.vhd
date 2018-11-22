----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2018 03:04:49 PM
-- Design Name: 
-- Module Name: mod_12 - Behavioral
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

entity count2_12 is
    Port ( 
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           ld : in STD_LOGIC;
           cnt : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           tc : out STD_LOGIC);
end count2_12;

architecture Behavioral of count2_12 is
component mod16_count is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           ld : in STD_LOGIC;
           cnt : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           tc : out STD_LOGIC);
end component;

signal y: std_logic;
signal t : std_logic_vector(3 downto 0) := "0010";
begin
y <= (t(3) and t(2)) or ld or clr;
M1: mod16_count port map("0010",clk,clr,y,cnt,t,tc);

s<=t;
end Behavioral;