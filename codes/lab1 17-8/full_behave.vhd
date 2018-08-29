----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2018 03:46:22 PM
-- Design Name: 
-- Module Name: full_behave - Behavioral
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

entity full_behave is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end full_behave;

architecture Behavioral of full_behave is

begin
process(a,b,c)
    begin
    if(a='0' and b='0' and c='0')then
        Sum<='0';
        Carry<='0';
    elsif(a='0' and b='0' and c='1')then
        Sum<='1';
        Carry<='0';
    elsif(a='0' and b='1' and c='0')then
        Sum<='1';
        Carry<='0';
    elsif(a='0' and b='1' and c='1')then
        Sum<='0';
        Carry<='1';
    elsif(a='1' and b='0' and c='0')then
        Sum<='1';
        Carry<='0';
    elsif(a='1' and b='0' and c='1')then
        Sum<='0';
        Carry<='1';                                    
    elsif(a='1' and b='1' and c='0')then
        Sum<='0';
        Carry<='1';
    else                                       
        Sum<='1';
        Carry<='1';  
    end if;
    end process;                                                
end Behavioral;
