----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/07/2018 02:16:28 PM
-- Design Name: 
-- Module Name: decoder2_4 - Behavioral
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

entity decoder2_4 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           en : in STD_LOGIC;
           c0 : out STD_LOGIC;
           c1 : out STD_LOGIC;
           c2 : out STD_LOGIC;
           c3 : out STD_LOGIC);
end decoder2_4;

architecture Behavioral of decoder2_4 is

begin

process(a,b,en)
begin
    if(en='1')then
       if(a='0' and b='0')then
            c0<='1';
            c1<='0';
            c2<='0';
            c3<='0';
       elsif(a='0' and b='1')then
            c0<='0';
            c1<='1';
            c2<='0';
            c3<='0';
       elsif(a='1' and b='0')then
            c0<='0';
            c1<='0';
            c2<='1';
            c3<='0';
       else
            c0<='0';
            c1<='0';
            c2<='0';
            c3<='1';
        end if;
    else
        c0<='0';
        c1<='0';
        c2<='0';
        c3<='0';
    end if;
    end process;


end Behavioral;
