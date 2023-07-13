----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:    18:21:37 05/21/2023 
-- Design Name: 
-- Module Name:    module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity round is
    Port ( X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end round;

architecture Behavioral of round is

component mulop
    port(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
   end component;
	component xorop
    port(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
   end component;
	component addop
    port(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
   end component;
    

  
   signal mul1_out : std_logic_vector(15 downto 0);
	signal mul2_out : std_logic_vector(15 downto 0);
	signal mul3_out : std_logic_vector(15 downto 0);
	signal mul4_out : std_logic_vector(15 downto 0);
	signal adder1_out : std_logic_vector(15 downto 0);
	signal adder2_out : std_logic_vector(15 downto 0);
	signal adder3_out : std_logic_vector(15 downto 0);
	signal adder4_out : std_logic_vector(15 downto 0);
	signal xor3_out : std_logic_vector(15 downto 0);
	signal xor4_out : std_logic_vector(15 downto 0);
   
begin

multplier_1: mulop port map (
          I_1 => X1,
          I_2 => Z1,
          O_1 => mul1_out			
        );
xor_1: xorop port map (
          I_1 => mul1_out,
          I_2 => mul3_out,
          O_1 => Y1			
        );
adder_1: addop port map (
	 I_1 => X2,
	 I_2 => Z2,
	 O_1 => adder1_out
	
	);
	
xor_2: xorop port map (
				 I_1 => adder1_out,
				 I_2 => adder2_out,
				 O_1 => Y3
			
			  );
xor_3: xorop port map (
		 I_1 => mul1_out,
		 I_2 => adder4_out,
		 O_1 => xor3_out
);
multplier_2: mulop port map (
          I_1 => xor3_out,
          I_2 => Z5,
          O_1 => mul2_out			
        );
adder_2: addop port map (
	 I_1 => mul2_out,
	 I_2 => mul3_out,
	 O_1 => adder2_out
	
	);
	
xor_4: xorop port map (
		 I_1 => adder1_out,
		 I_2 => mul4_out,
		 O_1 => xor4_out
);
adder_3: addop port map (
	 I_1 => xor4_out,
	 I_2 => mul2_out,
	 O_1 => adder3_out
	);
multplier_3: mulop port map (
          I_1 => adder3_out,
          I_2 => Z6,
          O_1 => mul3_out			
        );
adder_4: addop port map (
	 I_1 => X3,
	 I_2 => Z3,
	 O_1 => adder4_out
	);
xor_5: xorop port map (
		 I_1 => adder4_out,
		 I_2 => mul3_out,
		 O_1 => Y2
);
multplier_4: mulop port map (
          I_1 => X4,
          I_2 => Z4,
          O_1 => mul4_out			
        );
xor_6: xorop port map (
		 I_1 => adder2_out,
		 I_2 => mul4_out,
		 O_1 => Y4
);

end Behavioral;

