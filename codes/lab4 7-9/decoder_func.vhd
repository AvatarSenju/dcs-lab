----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/07/2018 03:05:16 PM
-- Design Name: 
-- Module Name: decoder_func - Behavioral
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

entity decoder_func is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           res : out STD_LOGIC);
end decoder_func;

architecture Behavioral of decoder_func is

signal d0,d1,d2,d3,d4,d5,d6,d7:STD_LOGIC;

component decoder3_8data is
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
end component;


begin

dc: decoder3_8data port map(a,b,c,en,d0,d1,d2,d3,d4,d5,d6,d7);

res<=d1 or d4 or d3 or d6;


end Behavioral;
