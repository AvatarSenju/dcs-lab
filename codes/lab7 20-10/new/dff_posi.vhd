----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2018 03:14:28 PM
-- Design Name: 
-- Module Name: dff_posi - Behavioral
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

entity dff_posi is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end dff_posi;

architecture Behavioral of dff_posi is

begin

process(d,clk)
begin
    if(rising_edge(clk))then
        q<=d;
    end if;
end process;
    

end Behavioral;
