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
        -- Add two positive numbers
        I_1 <= x"0001";
        I_2 <= x"0001";
		  wait for period;
        assert O_1 = x"0002"
            report "Test failed: adding two positive numbers failed"
            severity error;
		  
	    -- Add 1 to max value to test overflow/wrap-around condition
        I_1 <= x"FFFF"; -- Input 1
        I_2 <= x"0001"; -- Input 2

		  	wait for period;

    
        assert O_1 = x"0000"
            report "Test failed: wrap-around behavior is incorrect"
            severity error;
       
         -- Add 65535 to a random number test modulo 65536 addition
        I_1 <= x"FFFF"; -- Input 1
        I_2 <= x"FF00"; -- Input 2
      wait for 10 ns;
        assert O_1 = x"FEFF"
            report "Test failed: modulo behavior is incorrect"
            severity error;
  

        wait;
    end process;

END;
