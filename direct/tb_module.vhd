--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:30:08 05/21/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/direct/tb_module.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: module
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

 
ENTITY tb_round IS
END tb_round;
 
ARCHITECTURE behavior OF tb_round IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round
    PORT(
         X1 : IN  std_logic_vector (15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X1 : std_logic_vector(15 downto 0) := x"0000";
   signal X2 : std_logic_vector(15 downto 0) := x"0000";
   signal X3 : std_logic_vector(15 downto 0) := x"0000";
   signal X4 : std_logic_vector(15 downto 0) := x"0000";
   signal Z1 : std_logic_vector(15 downto 0) := x"0000";
   signal Z2 : std_logic_vector(15 downto 0) := x"0000";
   signal Z3 : std_logic_vector(15 downto 0) := x"0000";
   signal Z4 : std_logic_vector(15 downto 0) := x"0000";
   signal Z5 : std_logic_vector(15 downto 0) := x"0000";
   signal Z6 : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round PORT MAP (
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3,
          Z4 => Z4,
          Z5 => Z5,
          Z6 => Z6,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

  
 

   -- Stimulus process
   stim_proc: process
	constant period: time := 10 ns;
   begin		
    
       X1 <= x"0000";
       X2 <= x"0000";
		 X3 <= x"0000";
		 X4 <= x"0000";
       Z1 <= x"0000";
		 Z2 <= x"0000";
		 Z3 <= x"0000";
		 Z4 <= x"0000";
		 Z5 <= x"0000";
		 Z6 <= x"0000";
		  
	 wait for period;
        assert Y1 = x"0001"
            report "Test 1: failed"
            severity error;
		  assert Y2 = x"0000"
            report "Test 1: failed"
            severity error;
			assert Y3 = x"0000"
            report "Test 1: failed"
            severity error;
		  assert Y4 = x"0001"
            report "Test 1: failed"
            severity error;
							
		X1 <= x"ffff";
		X2 <= x"0000";
		X3 <= x"0000";
		X4 <= x"0000";
		Z1 <= x"0000";
		Z2 <= x"0000";
		Z3 <= x"0000";
		Z4 <= x"0000";
		Z5 <= x"0000";
		Z6 <= x"0000";
		  
	 wait for period;
        assert Y1 = x"0003"
            report "Test 2: failed"
            severity error;
		  assert Y2 = x"0001"
            report "Test 2: failed"
            severity error;
			assert Y3 = x"0000"
            report "Test 2: failed"
            severity error;
		  assert Y4 = x"0001"
            report "Test 2: failed"
            severity error;
				
		X1 <= x"ffff";
		X2 <= x"aaaa";
		X3 <= x"0000";
		X4 <= x"0000";
		Z1 <= x"0000";
		Z2 <= x"0000";
		Z3 <= x"0000";
		Z4 <= x"0000";
		Z5 <= x"0000";
		Z6 <= x"0000";
		  
	 wait for period;
        assert Y1 = x"5555"
            report "Test 3: failed"
            severity error;
		  assert Y2 = x"5557"
            report "Test 3: failed"
            severity error;
			assert Y3 = x"fffc"
            report "Test 3: failed"
            severity error;
		  assert Y4 = x"5557"
            report "Test 3: failed"
            severity error;

		X1 <= x"ffff";
		X2 <= x"aaaa";
		X3 <= x"5555";
		X4 <= x"0000";
		Z1 <= x"0000";
		Z2 <= x"0000";
		Z3 <= x"0000";
		Z4 <= x"0000";
		Z5 <= x"0000";
		Z6 <= x"0000";
				  
	 wait for period;
        assert Y1 = x"aaae"
            report "Test 4: failed"
            severity error;
		  assert Y2 = x"fff9"
            report "Test 4: failed"
            severity error;
			assert Y3 = x"fffc"
            report "Test 4: failed"
            severity error;
		  assert Y4 = x"5557"
            report "Test 4: failed"
            severity error;
X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"0000";
Z2 <= x"0000";
Z3 <= x"0000";
Z4 <= x"0000";
Z5 <= x"0000";
Z6 <= x"0000";

wait for period;
assert Y1 = x"e390"
report "Test 5: failed"
severity error;
assert Y2 = x"b6c7"
report "Test 5: failed"
severity error;
assert Y3 = x"2496"
report "Test 5: failed"
severity error;
assert Y4 = x"5553"
report "Test 5: failed"
severity error;


X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"0000";
Z3 <= x"0000";
Z4 <= x"0000";
Z5 <= x"0000";
Z6 <= x"0000";

wait for period;
assert Y1 = x"e390"
report "Test 6: failed"
severity error;
assert Y2 = x"ffed"
report "Test 6: failed"
severity error;
assert Y3 = x"2496"
report "Test 6: failed"
severity error;
assert Y4 = x"5553"
report "Test 6: failed"
severity error;

X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"1c71";
Z3 <= x"0000";
Z4 <= x"0000";
Z5 <= x"0000";
Z6 <= x"0000";

wait for period;
assert Y1 = x"4921"
report "Test 7: failed"
severity error;
assert Y2 = x"555c"
report "Test 7: failed"
severity error;
assert Y3 = x"2496"
report "Test 7: failed"
severity error;
assert Y4 = x"38e2"
report "Test 7: failed"
severity error;


X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"1c71";
Z3 <= x"cccc";
Z4 <= x"0000";
Z5 <= x"0000";
Z6 <= x"0000";

wait for period;
assert Y1 = x"07bd"
report "Test 8: failed"
severity error;
assert Y2 = x"6cb4"
report "Test 8: failed"
severity error;
assert Y3 = x"2496"
report "Test 8: failed"
severity error;
assert Y4 = x"38e2"
report "Test 8: failed"
severity error;

X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"1c71";
Z3 <= x"cccc";
Z4 <= x"0002";
Z5 <= x"0000";
Z6 <= x"0000";

wait for period;
assert Y1 = x"95e2"
report "Test 9: failed"
severity error;
assert Y2 = x"feeb"
report "Test 9: failed"
severity error;
assert Y3 = x"b6d9"
report "Test 9: failed"
severity error;
assert Y4 = x"38e6"
report "Test 9: failed"
severity error;


X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"1c71";
Z3 <= x"cccc";
Z4 <= x"0002";
Z5 <= x"eeee";
Z6 <= x"0000";

wait for period;
assert Y1 = x"bc61"
report "Test 10: failed"
severity error;
assert Y2 = x"d768"
report "Test 10: failed"
severity error;
assert Y3 = x"b6d9"
report "Test 10: failed"
severity error;
assert Y4 = x"38e6"
report "Test 10: failed"
severity error;


X1 <= x"ffff";
X2 <= x"aaaa";
X3 <= x"5555";
X4 <= x"2492";
Z1 <= x"db6d";
Z2 <= x"1c71";
Z3 <= x"cccc";
Z4 <= x"0002";
Z5 <= x"eeee";
Z6 <= x"8888";

wait for period;
assert Y1 = x"2521"
report "Test 11: failed"
severity error;
assert Y2 = x"4e28"
report "Test 11: failed"
severity error;
assert Y3 = x"2f99"
report "Test 11: failed"
severity error;
assert Y4 = x"a1a6"
report "Test 11: failed"
severity error;

      wait;
   end process;

END;
