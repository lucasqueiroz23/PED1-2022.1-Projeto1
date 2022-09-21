----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/25/2022 09:01:31 PM
-- Design Name: 
-- Module Name: detector_de_prioridade - Behavioral
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

entity detector_de_prioridade is
    Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           p2 : in STD_LOGIC;
           p3 : in STD_LOGIC;
           x1 : out STD_LOGIC;
           x0 : out STD_LOGIC;
           int : out STD_LOGIC);
end detector_de_prioridade;

architecture Behavioral of detector_de_prioridade is

begin

x1 <= '0' WHEN p0 = '1' ELSE
      '0' WHEN p1 = '1' ELSE
      '1' WHEN p2 = '1' ELSE
      '1' WHEN p3 = '1' ELSE
      '1' WHEN p0 = '0' AND p1 = '0' AND p2 = '0' AND p3 = '0';

int <= '0' WHEN p0 = '0' AND p1 = '0' AND p2 = '0' AND p3 = '0' ELSE
        '1';


x0 <= '1' WHEN p0 = '0' AND p1 = '0' AND p2 = '0' AND p3 = '0' ELSE
      '1' WHEN p3 = '1' AND p0 = '0' AND p1 = '0' AND p2 = '0' ELSE
      '1' WHEN p1 = '1' AND p0 = '0' ELSE
      '0';

      

end Behavioral;
