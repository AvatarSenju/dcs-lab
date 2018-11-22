----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2018 03:33:33 PM
-- Design Name: 
-- Module Name: t_ff - Behavioral
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

entity t_ff is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end t_ff;

architecture Behavioral of t_ff is
signal temp:STD_LOGIC:='0';
begin

process(clk,t)
begin
    if(rising_edge(clk)) then
        if(t='1')then
            temp<=not temp;
            q<= temp;
            qb<= not temp;
        else
                       
            q<=temp;
            qb<= not temp;
        end if;
    end if;

--    q<=temp;
--    qb<=not temp;
    
end process;
    



end Behavioral;
