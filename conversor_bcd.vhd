----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2022 07:32:44 PM
-- Design Name: 
-- Module Name: conversor - Behavioral
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

entity conversor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           saida_a : out STD_LOGIC;
           saida_b : out STD_LOGIC;
           saida_c : out STD_LOGIC;
           saida_d : out STD_LOGIC;
           saida_e : out STD_LOGIC;
           saida_f : out STD_LOGIC;
           saida_g : out STD_LOGIC);
end conversor;

architecture Behavioral of conversor is

begin

saida_a <= '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '0' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '1' ELSE
           '0';
           
saida_b <= '1' WHEN A = '0' AND B = '1' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '0' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '1' AND D = '1' ELSE
           '0';
           
saida_c <= '1' WHEN A = '0' AND B = '0' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '1' AND D = '1' ELSE
           '0';
        
saida_d <= '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '0' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '1' AND D = '1' ELSE
           '0';
           
saida_e <= '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '0' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '0' AND C = '0' AND D = '1' ELSE
           '0';
           
saida_f <= '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '0' AND C = '1' AND D = '0' ELSE
           '1' WHEN A = '0' AND B = '0' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '1' AND D = '1' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '1' AND B = '1' AND C = '0' AND D = '1' ELSE
           '0';
           
saida_g <= '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '0' ELSE
           '1' WHEN A = '0' AND B = '0' AND C = '0' AND D = '1' ELSE
           '1' WHEN A = '0' AND B = '1' AND C = '1' AND D = '1' ELSE
           '0';
           


end Behavioral;
