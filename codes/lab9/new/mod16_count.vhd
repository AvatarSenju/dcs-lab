----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2018 02:18:59 PM
-- Design Name: 
-- Module Name: mod_16 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod16_count is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           ld : in STD_LOGIC;
           cnt : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           tc : out STD_LOGIC);
end mod16_count;

architecture Behavioral of mod16_count is
signal t : std_logic_vector(3 downto 0) := "0000";

begin
process(I,clk,clr,ld,cnt)
begin
    if clr = '1' then
        t<= "0000";
    elsif (ld ='1') then
                  t<=I;
    elsif(clr = '0' and rising_edge(clk)) then 
        if(ld = '0' and cnt = '1') then 
            t<= t+1;
        else
            t<= t;
        end if;
        
     
        
     end if;
end process;

process(t,cnt)
begin
    if(t = "1111" and cnt = '1' ) then
        tc<='1';
    else
        tc<='0';
    end if;
end process;
s<=t;
end Behavioral;
