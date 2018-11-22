----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2018 03:17:09 PM
-- Design Name: 
-- Module Name: sr_ff_behav - Behavioral
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

entity sr_ff_behav is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end sr_ff_behav;

architecture Behavioral of sr_ff_behav is

begin

process(s,r,clk)
    begin
    if(rising_edge(clk)) then
        if(s='1' and r='0') then
            q<='1';
            qb<='0';
        elsif(s='0' and r='1') then
            q<='0';
            qb<='1';
        elsif(s='1' and r='1') then
            q<='Z';
            qb<='Z';
        end if;
    end if;
    end process;
end Behavioral;
