--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:36:58 06/21/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/rcs1/tb_mux21.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux21
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
 
ENTITY tb_mux21 IS
END tb_mux21;
 
ARCHITECTURE behavior OF tb_mux21 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux21
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(15 downto 0) := (others => '0');
   signal D1 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux21 PORT MAP (
          D0 => D0,
          D1 => D1,
          S => S,
          O => O
        );

   
 

   -- Stimulus process
   stim_proc: process
	 constant period: time := 10 ns;
   begin		
      D0 <= x"0000";
		D1 <= x"1111";
		S<='0';
		wait for period;
		S<='1';
		wait for period;
		S<='0';
		wait for period;
		D0 <= x"1010";
		D1 <= x"0101";
		S<='1';
		wait for period;
		D0 <= x"1010";
		D1 <= x"0101";
		S<='0';
		wait for period;
		D0 <= x"1110";
		D1 <= x"1100";
		S<='1';
		wait for period;
		S<='X';
      wait;
   end process;

END;
