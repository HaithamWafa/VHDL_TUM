--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:50:00 06/22/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/rcs1/tb_key_generator.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: key_generator
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
 
ENTITY tb_key_generator IS
END tb_key_generator;
 
ARCHITECTURE behavior OF tb_key_generator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT key_generator
    PORT(
         key : IN  std_logic_vector(127 downto 0);
         round_counter : IN  std_logic_vector(3 downto 0);
         key1 : OUT  std_logic_vector(15 downto 0);
         key2 : OUT  std_logic_vector(15 downto 0);
         key3 : OUT  std_logic_vector(15 downto 0);
         key4 : OUT  std_logic_vector(15 downto 0);
         key5 : OUT  std_logic_vector(15 downto 0);
         key6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal key : std_logic_vector(127 downto 0) := (others => '0');
   signal round_counter : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal key1 : std_logic_vector(15 downto 0);
   signal key2 : std_logic_vector(15 downto 0);
   signal key3 : std_logic_vector(15 downto 0);
   signal key4 : std_logic_vector(15 downto 0);
   signal key5 : std_logic_vector(15 downto 0);
   signal key6 : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: key_generator PORT MAP (
          key => key,
          round_counter => round_counter,
          key1 => key1,
          key2 => key2,
          key3 => key3,
          key4 => key4,
          key5 => key5,
          key6 => key6
        );


   -- Stimulus process
   stim_proc: process
	constant period: time:= 10 ns;
   begin		
     key<=X"00010002000300040005000600070008";
	  round_counter<="0000";
	  wait for period;
	  round_counter<="0001";
   	wait for period;
		  round_counter<="0010";
	  wait for period;
	  round_counter<="0011";
   	wait for period;
		  round_counter<="0100";
	  wait for period;
	  round_counter<="0101";
   	wait for period;
		  round_counter<="0110";
	  wait for period;
	  round_counter<="0111";
   	wait for period;
		  round_counter<="1000";
	  wait for period;
	 
	  
      wait;
   end process;

END;
