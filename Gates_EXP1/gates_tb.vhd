--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:30 08/07/2020
-- Design Name:   
-- Module Name:   C:/Xilinx/Gates_EXP1/gates_tb.vhd
-- Project Name:  Gates_EXP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gates
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY gates_tb IS
END gates_tb;
 
ARCHITECTURE behavior OF gates_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gates
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gates PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here

  a <= '0';
  b <= '0';
  wait for 10ns;	
  
  a <= '0';
  b <= '1';
  wait for 10ns;
  
  
  a <= '1';
  b <= '0';
  wait for 10ns;
  
  a <= '1';
  b <= '1';
  wait for 10ns;
  
  
      wait;
   end process;

END;
