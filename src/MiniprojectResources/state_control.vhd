LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity state_control is
	port(clk, pb1, pb2, pb3,life: IN STD_LOGIC;		-- not sure if clk needed, life ?	
			state : OUT STD_LOGIC_VECTOR(1 downto 0));
end entity state_control;


-- if state is 00 main menu
-- if state is 01 training mode
-- if state is 10 game mode (play)
-- if state is 11 game over

architecture behaviour of state_control
begin
signal s_state,s_next_state, s_menu, s_training, s_play, s_game_over;

	assgin_state:process(s_state)
		begin
			case state_s is
				when s_menu =>
					state <= "00";
				when s_training =>
					state <= "10";
				when s_regular =>
					state <= "01";
				when s_over =>
					state <= "11";
			end case;
		end assgin_state;

	fn_next_state: process (pb1,pb2,pb3,life)
		begin	
			case (s_state)
			   -- when in menu screen
				when s_menu =>
					if (pb1 = '0') then 					
						s_next_state <= s_training;
					elsif (pb2 = '0') then				
						s_next_state <= s_play;
					else 									
						s_next_state <= s_menu;
					end if; 
					
				 -- when in training mode
				when s_training =>
					if (life = '0') then 					
						s_next_state <= s_game_over;
					elsif (pb3 = '0') then				
						s_next_state <= s_menu;
					else 									
						s_next_state <= s_training;
					end if;
					
				 -- when in play mode
				when s_play =>
					if (life = '0') then 					
						s_next_state <= s_game_over;
					elsif (pb3 = '0') then				
						s_next_state <= s_menu;
					else 									
						s_next_state <= s_play;
					end if;
				
				-- when in game over screen
				when s_game_over =>
					if (pb3 = '0') then				
						next_state <= s_menu;
					else 									
						next_state <= s_game_over;
					end if;
			end case;
	end fn_next_state;
end behaviour; 