--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:08 08/28/2020
-- Design Name:   
-- Module Name:   C:/Xilinx/halfadder/halfadder_tb.vhd
-- Project Name:  halfadder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: halfadder
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
 
ENTITY halfadder_tb IS
END halfadder_tb;
 
ARCHITECTURE behavior OF halfadder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT halfadder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfadder PORT MAP (
          a => a,
          b => b,
          sum => sum,
          carry => carry
        );

   -- Clock process definitions
  -- <clock>_process :process
   begin
	--	<clock> <= '0';
	--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
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
		

    --  wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
