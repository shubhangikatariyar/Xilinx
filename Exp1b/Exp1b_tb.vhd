--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:58:51 09/04/2020
-- Design Name:   
-- Module Name:   C:/Xilinx/Exp1b/Exp1b_tb.vhd
-- Project Name:  Exp1b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Exp1b
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
 
ENTITY Exp1b_tb IS
END Exp1b_tb;
 
ARCHITECTURE behavior OF Exp1b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Exp1b
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : INOUT  std_logic;
         e : INOUT  std_logic;
         f : INOUT  std_logic;
         HAS : OUT  std_logic;
         HAC : OUT  std_logic;
         FAS : OUT  std_logic;
         FAC : OUT  std_logic;
         HSB : OUT  std_logic;
         FSB : OUT  std_logic;
         FSD : OUT  std_logic;
         HSD : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

	--BiDirs
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;

 	--Outputs
   signal HAS : std_logic;
   signal HAC : std_logic;
   signal FAS : std_logic;
   signal FAC : std_logic;
   signal HSB : std_logic;
   signal FSB : std_logic;
   signal FSD : std_logic;
   signal HSD : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Exp1b PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          HAS => HAS,
          HAC => HAC,
          FAS => FAS,
          FAC => FAC,
          HSB => HSB,
          FSB => FSB,
          FSD => FSD,
          HSD => HSD
        );

--   -- Clock process definitions
--   <clock>_process :process
 --  begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
stim_proc: process
   begin		      wait;
   end process;

END;
