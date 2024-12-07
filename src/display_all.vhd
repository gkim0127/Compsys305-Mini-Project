LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity display_all is
	port (	start, reset, pb1, pb2, clk, vert_sync : in std_logic;
				pixel_row, pixel_col : in std_logic_vector(9 downto 0);
				state : in std_logic_vector(1 downto 0);
				left_click_in, right_click_in : in std_logic;
				red, green, blue : out std_logic);
end display_all;

architecture arc of display_all is
-- add components

-- ball
component bouncy_Ball is
		port ( 	pb1, pb2, clk, vert_sync	: IN std_logic;
          pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			 left_click_in, right_click_in : in std_logic;
			 signal ball_on : out std_logic);
end component bouncy_ball;

-- pipe
component pipe is
	port(	start, reset : in std_logic;
			--random_pipe_size : in std_logic_vector(9 downto 0);
			pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			vert_sync : in std_logic;
			signal pipe_on : out std_logic;
			signal q_x_pos_1, q_x_pos_2, q_x_pos_3 : out std_logic_vector(10 downto 0);
			signal q_pipe1_upper, q_pipe1_lower, q_pipe2_upper, q_pipe2_lower, q_pipe3_upper, q_pipe3_lower : out std_logic_vector(10 downto 0));

end component pipe;

-- mode display
component mode_display is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			clk : in std_logic;
			state : IN std_logic_vector(1 downto 0);
			char_text_out : out std_logic);
end component mode_display;

-- gameover display
component gameover_display is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			clk : in std_logic;
			state : IN std_logic_vector(1 downto 0);
			char_text_out2 : out std_logic);
end component gameover_display;


signal bird_ball_on : std_logic;
signal s_pipe_on : std_logic;
signal s_text_out : std_logic;
signal s_text_out2 : std_logic;


begin

-- assign mapping
flappy_bird : bouncy_ball port map(pb1, pb2, clk, vert_sync, pixel_row, pixel_col, left_click_in, right_click_in, bird_ball_on);
pipes : pipe port map(start, reset, pixel_row, pixel_col, vert_sync, s_pipe_on);
text_display : mode_display port map(pixel_row, pixel_col, clk, state, s_text_out);
gameover : gameover_display port map(pixel_row, pixel_col, clk, state, s_text_out2);


process (state)
begin
	if (state = "00") then
		-- gameover screen
		red <= not s_text_out2;
		green <= not s_text_out2;
		blue <= '1' or s_text_out2 ;
		
		
	-- text screen only
	elsif (state = "11") then
		
		-- dark blue background and white/grey text
		--red <= not('1') or s_text_out;
		--green <= not('1') or s_text_out;
		--blue <= '1' or s_text_out ;
		
		red <=  bird_ball_on or s_pipe_on;
		green <= s_pipe_on or (not bird_ball_on);
		blue <=  not bird_ball_on;
	
	elsif (state = "10") then
		-- main menu screen
		-- grey background and dark blue text
		red <= not s_text_out;
		green <= not s_text_out;
		blue <= '1' or s_text_out ;
	
	else
		red <= not s_text_out;
		green <= not s_text_out;
		blue <= '1' or s_text_out ;
	end if;
end process;


end architecture arc;