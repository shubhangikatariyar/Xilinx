----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:20 09/04/2020 
-- Design Name: 
-- Module Name:    Exp1b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Exp1b is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           HAS : out  STD_LOGIC;
           HAC : out  STD_LOGIC;
           FAS : out  STD_LOGIC;
           FAC : out  STD_LOGIC;
           HSB : out  STD_LOGIC;
           FSB : out  STD_LOGIC;
           FSD : out  STD_LOGIC;
           HSD : out  STD_LOGIC);
end Exp1b;

architecture Behavioral of Exp1b is

begin

 HAS <= c XOR b;
 HAC <= c AND b;
 
 FAS <= (a XOR b) XOR c;
 FAC <= (a AND b) OR (b AND c) OR (c AND a);
 
 HSB <=  b OR (not c);
 HSD <= c XOR b;
 
 FSB <= a XOR b XOR c;
 FSD <= ((not a) AND b) OR (((not a) OR b) AND c);
 

end Behavioral;

