----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2018 03:17:01 PM
-- Design Name: 
-- Module Name: ripple_add - Behavioral
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

entity ripple_add is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           c : out STD_LOGIC);
end ripple_add;





architecture Behavioral of ripple_add is


component full_dataflow is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

signal c1,c2,c3:STD_LOGIC;

begin

fa0:full_dataflow port map(a(0),b(0),'0',s(0),c1);
fa1:full_dataflow port map(a(1),b(1),c1,s(1),c2);
fa2:full_dataflow port map(a(2),b(2),c2,s(2),c3);
fa3:full_dataflow port map(a(3),b(3),c3,s(3),c);


end Behavioral;
