----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.08.2022 13:32:10
-- Design Name: 
-- Module Name: comparador - Behavioral
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

entity comparador is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           f1 : out STD_LOGIC;
           f2 : out STD_LOGIC;
           f3 : out STD_LOGIC);
end comparador;

architecture Behavioral of comparador is

begin

f1 <= '1' WHEN a0 = '1' AND a1 = '0' AND b1 = '0' AND b0 = '0' ELSE
      '1' WHEN a1 = '1' AND a0 = '0' AND b1 = '0' AND b0 = '0' ELSE
      '1' WHEN a1 = '1' AND b0 = '1' AND b1 = '0' AND a0 = '0' ELSE
      '1' WHEN a1 = '1' AND a0 = '1' AND b1 = '0' AND b0 = '0' ELSE
      '1' WHEN a1 = '1' AND a0 = '1' AND b0 = '1' AND b1 = '0' ELSE
      '1' WHEN a1 = '1' AND a0 = '1' AND b1 = '1' AND b0 = '0' ELSE
      '0';

f2 <= '1' WHEN b0 = '1' AND a1 = '0' AND b1 = '0' AND a0 = '0' ELSE
      '1' WHEN b1 = '1' AND a1 = '0' AND b0 = '0' AND a0 = '0' ELSE
      '1' WHEN b0 = '1' AND b1 = '1' AND a1 = '0' AND a0 = '0' ELSE
      '1' WHEN a0 = '1' AND b1 = '1' AND a1 = '0' AND b0 = '0' ELSE
      '1' WHEN a0 = '1' AND b1 = '1' AND b0 = '1' AND a1 = '0' ELSE
      '1' WHEN a1 = '1' AND b1 = '1' AND b0 = '1' AND a0 = '0' ELSE
      '0';
      
f3 <= '1' WHEN a0 = '0' AND a1 = '0' AND b0 = '0' AND b1 = '0' ELSE
      '1' WHEN a0 = '1' AND b0 = '1' AND a1 = '0' AND b1 = '0' ELSE
      '1' WHEN a1 = '1' AND b1 = '1' AND a0 = '0' AND b0 = '0' ELSE
      '1' WHEN a0 = '1' AND a1 = '1' AND b0 = '1' AND b1 = '1' ELSE
      '0';


end Behavioral;
