----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea_rcs2 is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_rcs2;

architecture Structural of idea_rcs2 is

component key_generator 
	  Port ( key : in  STD_LOGIC_VECTOR (127 downto 0);
           round_counter : in  STD_LOGIC_VECTOR (3 downto 0);
           key1 : out  STD_LOGIC_VECTOR (15 downto 0);
           key2 : out  STD_LOGIC_VECTOR (15 downto 0);
           key3 : out  STD_LOGIC_VECTOR (15 downto 0);
           key4 : out  STD_LOGIC_VECTOR (15 downto 0);
           key5 : out  STD_LOGIC_VECTOR (15 downto 0);
           key6 : out  STD_LOGIC_VECTOR (15 downto 0));
	 end component;
 component clockedround_ext
    port(
         CLK : in  std_logic;
         INIT : in  std_logic;
         TRAFO : in  std_logic;
         X1 : in  std_logic_vector(15 downto 0);
         X2 : in  std_logic_vector(15 downto 0);
         X3 : in  std_logic_vector(15 downto 0);
         X4 : in  std_logic_vector(15 downto 0);
         Z1 : in  std_logic_vector(15 downto 0);
         Z2 : in  std_logic_vector(15 downto 0);
         Z3 : in  std_logic_vector(15 downto 0);
         Z4 : in  std_logic_vector(15 downto 0);
         Z5 : in  std_logic_vector(15 downto 0);
         Z6 : in  std_logic_vector(15 downto 0);
         Y1 : out  std_logic_vector(15 downto 0);
         Y2 : out  std_logic_vector(15 downto 0);
         Y3 : out  std_logic_vector(15 downto 0);
         Y4 : out  std_logic_vector(15 downto 0);
         RESULT : out  std_logic;
         Y1_TRAFO : out  std_logic_vector(15 downto 0);
         Y2_TRAFO : out  std_logic_vector(15 downto 0);
         Y3_TRAFO : out  std_logic_vector(15 downto 0);
         Y4_TRAFO : out  std_logic_vector(15 downto 0)
        );
   end component;

component roundcounter
    port(
         CLK : in  std_logic;
         START : in  std_logic;
         RESULT : in  std_logic;
         READY : out  std_logic;
         S_i : out  std_logic;
         INIT : out  std_logic;
         TRAFO : out  std_logic;
         ROUND : out  std_logic_vector(3 downto 0)
        );
    end component; 
	 
component reg16 
      Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));

end component;	 
component mux21 
 Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
           D1 : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

--roundcounter inputs
signal rc_result: std_logic;

--roundcounter outputs
signal rc_trafo: std_logic;
signal rc_init: std_logic;
signal rc_si: std_logic;
--signal rc_ready: std_logic;
signal rc_round: std_logic_vector(3 downto 0);

--MUX output
signal mux1_out: std_logic_vector(15 downto 0);
signal mux2_out: std_logic_vector(15 downto 0);
signal mux3_out: std_logic_vector(15 downto 0);
signal mux4_out: std_logic_vector(15 downto 0);

--KEY generator outputs
signal generated_key1: std_logic_vector(15 downto 0);
signal generated_key2: std_logic_vector(15 downto 0);
signal generated_key3: std_logic_vector(15 downto 0);
signal generated_key4: std_logic_vector(15 downto 0);
signal generated_key5: std_logic_vector(15 downto 0);
signal generated_key6: std_logic_vector(15 downto 0);

--register
signal R1_in: std_logic_vector(15 downto 0);
signal R2_in: std_logic_vector(15 downto 0);
signal R3_in: std_logic_vector(15 downto 0);
signal R4_in: std_logic_vector(15 downto 0);

signal R1_out: std_logic_vector(15 downto 0);
signal R2_out: std_logic_vector(15 downto 0);
signal R3_out: std_logic_vector(15 downto 0);
signal R4_out: std_logic_vector(15 downto 0);

begin

 ccdr_ext1: clockedround_ext PORT MAP (
          CLK => CLOCK,
          INIT => rc_init,
          TRAFO => rc_trafo,
          X1 => mux1_out,
          X2 => mux2_out,
          X3 => mux3_out,
          X4 => mux4_out,
          Z1 => generated_key1,
          Z2 => generated_key2,
          Z3 => generated_key3,
          Z4 => generated_key4,
          Z5 => generated_key5,
          Z6 => generated_key6,
          Y1 => R1_in,
          Y2 => R2_in,
          Y3 => R3_in,
          Y4 => R4_in,
          RESULT => rc_result,
          Y1_TRAFO => Y_1,
          Y2_TRAFO => Y_2,
          Y3_TRAFO => Y_3,
          Y4_TRAFO => Y_4
        );

 rc1: roundcounter PORT MAP (
          CLK => CLOCK,
          START => START,
          RESULT => rc_result,
          READY => READY,
          S_i => rc_si,
          INIT => rc_init,
          TRAFO => rc_trafo,
          ROUND => rc_round
        );
		  
keygen: key_generator port map(
		key=>KEY,
		round_counter=> rc_round,
		key1=>generated_key1,
		key2=>generated_key2,
		key3=>generated_key3,
		key4=>generated_key4,
		key5=>generated_key5,
		key6=>generated_key6
		);
		
mux1: mux21 port map (
		D0 =>R1_out,
		D1 =>X_1,
		S =>rc_si,
		O =>mux1_out
		);

mux2: mux21 port map (
		D0 =>R2_out,
		D1 =>X_2,
		S =>rc_si,
		O =>mux2_out
		);
			


mux3: mux21 port map (
		D0 =>R3_out,
		D1 =>X_3,
		S =>rc_si,
		O =>mux3_out
		);

mux4	: mux21 port map (
		D0 =>R4_out,
		D1 =>X_4,
		S =>rc_si,
		O =>mux4_out
		);
reg1: reg16 port map(
		clk=>CLOCK,
		enable=>rc_result,
		data_in=>R1_in,
		data_out=>R1_out
		);
reg2: reg16 port map(
		clk=>CLOCK,
		enable=>rc_result,
		data_in=>R2_in,
		data_out=>R2_out
		);
reg3: reg16 port map(
		clk=>CLOCK,
		enable=>rc_result,
		data_in=>R3_in,
		data_out=>R3_out
		);
reg4: reg16 port map(
		clk=>CLOCK,
		enable=>rc_result,
		data_in=>R4_in,
		data_out=>R4_out
		);			

--READY<=rc_ready;

end Structural;

