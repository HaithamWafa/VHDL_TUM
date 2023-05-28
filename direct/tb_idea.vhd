--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:28:23 05/24/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/direct/tb_idea.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea
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
 
ENTITY tb_idea IS
END tb_idea;
 
ARCHITECTURE behavior OF tb_idea IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         X_1 : IN  std_logic_vector(15 downto 0);
         X_2 : IN  std_logic_vector(15 downto 0);
         X_3 : IN  std_logic_vector(15 downto 0);
         X_4 : IN  std_logic_vector(15 downto 0);
         Y_1 : OUT  std_logic_vector(15 downto 0);
         Y_2 : OUT  std_logic_vector(15 downto 0);
         Y_3 : OUT  std_logic_vector(15 downto 0);
         Y_4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal X_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_4 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y_1 : std_logic_vector(15 downto 0);
   signal Y_2 : std_logic_vector(15 downto 0);
   signal Y_3 : std_logic_vector(15 downto 0);
   signal Y_4 : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea PORT MAP (
          KEY => KEY,
          X_1 => X_1,
          X_2 => X_2,
          X_3 => X_3,
          X_4 => X_4,
          Y_1 => Y_1,
          Y_2 => Y_2,
          Y_3 => Y_3,
          Y_4 => Y_4
        );


   -- Stimulus process
   stim_proc: process
		 constant period: time := 10 ns;
   begin	
	
--test 1	

       X_1 <= x"1111";
       X_2 <= x"2222";
		 X_3 <= x"4444";
		 X_4 <= x"8888";
      KEY <= x"00010002000300040005000600070008";
		  
	 wait for period;
        assert Y_1 = x"8aa9"
            report "Test 1: failed"
            severity error;
		  assert Y_2 = x"0fef"
            report "Test 1: failed"
            severity error;
			assert Y_3 = x"c0c9"
            report "Test 1: failed"
            severity error;
		  assert Y_4 = x"56f6"
            report "Test 1: failed"
            severity error;
	--test 2			
       X_1 <= x"0000";
       X_2 <= x"0000";
		 X_3 <= x"0000";
		 X_4 <= x"0000";
      KEY <= x"00000000000000000000000000000000";
		  
	 wait for period;
        assert Y_1 = x"0001"
            report "Test 2: failed"
            severity error;
		  assert Y_2 = x"0001"
            report "Test 2: failed"
            severity error;
			assert Y_3 = x"0000"
            report "Test 2: failed"
            severity error;
		  assert Y_4 = x"0000"
            report "Test 2: failed"
            severity error;				


      wait;
   end process;

END;
