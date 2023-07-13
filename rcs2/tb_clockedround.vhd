--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:10:01 07/10/2023
-- Design Name:   
-- Module Name:   /home/haitham/VHDL_LAB/submission_template/submit/rcs2/tb_clockedround.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clockedround
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
 
ENTITY tb_clockedround IS
END tb_clockedround;
 
ARCHITECTURE behavior OF tb_clockedround IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clockedround
    PORT(
         CLK : IN  std_logic;
         INIT : IN  std_logic;
         TRAFO : IN  std_logic;
         X1 : IN  std_logic_vector(15 downto 0);
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
         Y4 : OUT  std_logic_vector(15 downto 0);
         RESULT : OUT  std_logic;
         Y1_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y2_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y3_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y4_TRAFO : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal INIT : std_logic := '0';
   signal TRAFO : std_logic := '0';
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z5 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z6 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   signal RESULT : std_logic;
   signal Y1_TRAFO : std_logic_vector(15 downto 0);
   signal Y2_TRAFO : std_logic_vector(15 downto 0);
   signal Y3_TRAFO : std_logic_vector(15 downto 0);
   signal Y4_TRAFO : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clockedround PORT MAP (
          CLK => CLK,
          INIT => INIT,
          TRAFO => TRAFO,
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
          Y4 => Y4,
          RESULT => RESULT,
          Y1_TRAFO => Y1_TRAFO,
          Y2_TRAFO => Y2_TRAFO,
          Y3_TRAFO => Y3_TRAFO,
          Y4_TRAFO => Y4_TRAFO
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		INIT<='1';
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
		 wait for CLK_period;
		 INIT<='0';
	 wait until RESULT ='1';
		wait for (CLK_period/2);
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
			INIT<='1';
					
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
		 wait for CLK_period;
		 INIT<='0';
		  
	 wait until RESULT ='1';
		wait for (CLK_period/2);
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
				INIT<='1';	
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
		 wait for CLK_period;
		 INIT<='0';
		  
	 wait until RESULT ='1';
	 wait for (CLK_period/2);
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
	INIT<='1';
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
		 wait for CLK_period;
		 INIT<='0';
				  
	 wait until RESULT ='1';
	 wait for (CLK_period/2);
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
					INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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

	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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
	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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

	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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
	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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

	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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

	INIT<='1';
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
 wait for CLK_period;
		 INIT<='0';

wait until RESULT ='1';
wait for (CLK_period/2);
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
