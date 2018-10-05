----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2018 02:20:26 PM
-- Design Name: 
-- Module Name: mux2_1_behave - Behavioral
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

entity mux2_1_behave is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           res : out STD_LOGIC);
end mux2_1_behave;

architecture Behavioral of mux2_1_behave is

begin
process(a,b,s)
    begin
        case s is
        when '0' => res <=a;
        when '1' => res <=b;
        when others => res <='X';
        end case;
    end process;
end Behavioral;
