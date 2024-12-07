LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


entity state_control_v2 is
	port(pb1, pb2, pb3, clk, vert_sync : in std_logic;
			life : in std_logic;
			state : OUT STD_LOGIC_VECTOR(1 downto 0));
end entity state_control_v2;


architecture behaviour of state_control_v2 is



signal s_state : std_logic_vector(1 downto 0) := "00";
	
begin


	state_v2: process (pb1, pb2, pb3, life)
	begin
	--if (rising_edge(clk)) then
		if (pb1 = '0') then
			-- game over screen
			s_state <= "00";
		elsif (pb2 = '0') then
			-- start game
			s_state <= "11";
		elsif (pb3 = '0') then
			-- main menu
			s_state <= "10";
		end if;
	--end if;
	
	state <= s_state;
	
	end process state_v2;
	
	
end behaviour; 