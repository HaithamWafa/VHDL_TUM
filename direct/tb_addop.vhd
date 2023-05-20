--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:25:44 05/11/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/direct/tb_addop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addop
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

--notes
--you have to wait for some time after changing the stimulus before the assert statement in the process!
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_addop IS
END tb_addop;
 
ARCHITECTURE behavior OF tb_addop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal I_2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_1 : std_logic_vector(15 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addop PORT MAP (
          I_1 => I_1,
          I_2 => I_2,
          O_1 => O_1
        );


   -- Stimulus process
   stim_proc: process
	 constant period: time := 10 ns;
   begin
        
        I_1 <= x"0000";
        I_2 <= x"0000";
		  wait for period;
        assert O_1 = x"0000"
            report "Test 1: failed"
            severity error;
		  
        I_1 <= x"7ce3"; -- Input 1
        I_2 <= x"0000"; -- Input 2

		  	wait for period;

    
        assert O_1 = x"7ce3"
            report "Test 2: failed"
            severity error;
       
        I_1 <= x"7ce3"; -- Input 1
        I_2 <= x"2db6"; -- Input 2
      wait for period;
        assert O_1 = x"aa99"
            report "Test 3: failed"
            severity error;
				
				 
        I_1 <= x"fce3"; -- Input 1
        I_2 <= x"2db6"; -- Input 2
      wait for period;
        assert O_1 = x"2a99"
            report "Test 4: failed"
            severity error;
				 
        I_1 <= x"fce3"; -- Input 1
        I_2 <= x"edb6"; -- Input 2
      wait for period;
        assert O_1 = x"ea99"
            report "Test 5: failed"
            severity error;
				 
        I_1 <= x"7ce3"; -- Input 1
        I_2 <= x"edb6"; -- Input 2
      wait for period;
        assert O_1 = x"6a99"
            report "Test 6: failed"
            severity error;
 

        wait;
    end process;

END;
