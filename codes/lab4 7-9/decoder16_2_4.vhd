----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/07/2018 03:29:02 PM
-- Design Name: 
-- Module Name: decoder16_2_4 - Behavioral
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

entity decoder16_2_4 is

    Port ( inp : in STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC;
           res : out STD_LOGIC_VECTOR (15 downto 0));
end decoder16_2_4;

architecture Behavioral of decoder16_2_4 is

component decoder2_4 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           en : in STD_LOGIC;
           c0 : out STD_LOGIC;
           c1 : out STD_LOGIC;
           c2 : out STD_LOGIC;
           c3 : out STD_LOGIC);
end component;

signal e0,e1,e2,e3:STD_LOGIC;

begin

d1: decoder2_4 port map(inp(0),inp(1),en,e0,e1,e2,e3);
d2: decoder2_4 port map(inp(0),inp(1),e0,res(0),res(1),res(2),res(3));
d3: decoder2_4 port map(inp(0),inp(1),e1,res(4),res(5),res(6),res(7));
d4: decoder2_4 port map(inp(0),inp(1),e2,res(8),res(9),res(10),res(11));
d5: decoder2_4 port map(inp(0),inp(1),e3,res(12),res(13),res(14),res(15));



end Behavioral;
