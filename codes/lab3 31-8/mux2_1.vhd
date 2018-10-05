----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2018 02:14:28 PM
-- Design Name: 
-- Module Name: mux2_1 - DataFlow
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

entity mux2_1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           res : out STD_LOGIC);
end mux2_1;

architecture DataFlow of mux2_1 is

begin


res<=(((not s) and a) or (s and b));

end DataFlow;
