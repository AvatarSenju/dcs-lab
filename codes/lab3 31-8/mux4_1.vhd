----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2018 02:32:11 PM
-- Design Name: 
-- Module Name: mux4_1 - Behavioral
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

entity mux4_1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           res : out STD_LOGIC);
end mux4_1;

architecture Behavioral of mux4_1 is

begin

res<= ((not s2) and(((not s1) and a) or (s1 and b))) or ((not s2) and(((not s1) and c) or (s1 and d)));

end Behavioral;
