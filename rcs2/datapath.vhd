----------------------------------------------------------------------------------
-- Company: TUM
-- Engineer: Haitham S. Fawzi
-- 
-- Create Date:    16:22:51 07/10/2023 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: The edits made are: added 4 output signals for the Y_TRAFO reading from registers and added an St input that controls the select of the 4th MUX
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity datapath is
    Port ( CLOCK: in STD_LOGIC;
			  enable1: in STD_LOGIC;
			  enable2: in STD_LOGIC;
			  enable3: in STD_LOGIC;
			  SEL: in STD_LOGIC_VECTOR(1 downto 0);
			  St: in STD_LOGIC_VECTOR(1 downto 0);
			  X1 : in  STD_LOGIC_VECTOR (15 downto 0);
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
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0)		  
			  );
end datapath;

architecture Behavioral of datapath is
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
	
	component reg16 
      Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));

end component;

component mux4x1 
 Port ( 	  D0 : in  STD_LOGIC_VECTOR (15 downto 0);
           D1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  D2 : in  STD_LOGIC_VECTOR (15 downto 0);
           D3 : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal mux1_out : std_logic_vector(15 downto 0);
signal mux2_out : std_logic_vector(15 downto 0);
signal mux3_out : std_logic_vector(15 downto 0);
signal mux4_out : std_logic_vector(15 downto 0);

signal mul1_out : std_logic_vector(15 downto 0);
signal adder1_out : std_logic_vector(15 downto 0);
signal xor1_out : std_logic_vector(15 downto 0);

signal R1_out : std_logic_vector(15 downto 0);
signal R2_out : std_logic_vector(15 downto 0);
signal R3_out : std_logic_vector(15 downto 0);
signal R4_out : std_logic_vector(15 downto 0);
signal R5_out : std_logic_vector(15 downto 0);
signal R6_out : std_logic_vector(15 downto 0);
signal R7_out : std_logic_vector(15 downto 0);
signal R8_out : std_logic_vector(15 downto 0);

begin

mux1: mux4x1 port map (
		D0 =>X1,
		D1 =>X4,
		D2 =>Z5,
		D3 =>Z6,
		S =>SEL,
		O =>mux1_out
		);

mux2: mux4x1 port map (
		D0 =>Z1,
		D1 =>Z4,
		D2 =>R5_out,
		D3 =>R8_out,
		S =>SEL,
		O =>mux2_out
		);

mux3: mux4x1 port map (
		D0 =>X3,
		D1 =>X2,
		D2 =>R6_out,
		D3 =>R7_out,
		S =>SEL,
		O =>mux3_out
		);
mux4: mux4x1 port map (
		D0 =>Z3,
		D1 =>Z2,
		D2 =>mul1_out,
		D3 =>mul1_out,
		S =>St,
		O =>mux4_out
		);	

multplier_1: mulop port map (
          I_1 => mux1_out,
          I_2 => mux2_out,
          O_1 => mul1_out			
        );	

adder_1: addop port map (
	 I_1 => mux3_out,
	 I_2 => mux4_out,
	 O_1 => adder1_out
	
	);	

xor_1: xorop port map (
          I_1 => mul1_out,
          I_2 => adder1_out,
          O_1 => xor1_out			
        );	

xor_2: xorop port map (
          I_1 => R3_out,
          I_2 => adder1_out,
          O_1 => Y3			
        );		
xor_3: xorop port map (
          I_1 => R2_out,
          I_2 => mul1_out,
          O_1 => Y2			
        );	
xor_4: xorop port map (
          I_1 => R4_out,
          I_2 => adder1_out,
          O_1 => Y4			
        );	
xor_5: xorop port map (
          I_1 => R1_out,
          I_2 => mul1_out,
          O_1 => Y1			
        );			  

reg1: reg16 port map(
		clk=>CLOCK,
		enable=>enable1,
		data_in=>mul1_out,
		data_out=>R1_out
		);
reg2: reg16 port map(
		clk=>CLOCK,
		enable=>enable1,
		data_in=>adder1_out,
		data_out=>R2_out
		);
reg3: reg16 port map(
		clk=>CLOCK,
		enable=>enable2,
		data_in=>adder1_out,
		data_out=>R3_out
		);
reg4: reg16 port map(
		clk=>CLOCK,
		enable=>enable2,
		data_in=>mul1_out,
		data_out=>R4_out
		);	
		
		
reg5: reg16 port map(
		clk=>CLOCK,
		enable=>enable1,
		data_in=>xor1_out,
		data_out=>R5_out
		);

reg6: reg16 port map(
		clk=>CLOCK,
		enable=>enable2,
		data_in=>xor1_out,
		data_out=>R6_out
		);	
reg7: reg16 port map(
		clk=>CLOCK,
		enable=>enable3,
		data_in=>mul1_out,
		data_out=>R7_out
		);
reg8: reg16 port map(
		clk=>CLOCK,
		enable=>enable3,
		data_in=>adder1_out,
		data_out=>R8_out
		);

Y1_TRAFO<=R1_out;
Y2_TRAFO<=R2_out;
Y3_TRAFO<=R3_out;
Y4_TRAFO<=R4_out;

end Behavioral;

