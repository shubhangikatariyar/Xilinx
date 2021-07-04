----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:02 09/10/2020 
-- Design Name: 
-- Module Name:    EXP2 - Behavioral 
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

entity EXP2 is
port(   bin : inout std_logic_vector(3 downto 0);  --binary input
        G : inout std_logic_vector(3 downto 0)  --gray code output
		  
        );
		  
end EXP2;


architecture Behavioral of EXP2 is

begin

--xor gates.
G(3) <= bin(3);
G(2) <= bin(3) xor bin(2);
G(1) <= bin(2) xor bin(1);
G(0) <= bin(1) xor bin(0);

bin(3) <= G(3);
bin(2) <= G(3) xor G(2);
bin(1) <= G(3) xor G(2) xor G(1);
bin(0) <= G(3) xor G(2) xor G(1) xor G(0);

end Behavioral;

