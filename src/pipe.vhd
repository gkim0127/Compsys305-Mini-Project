library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all;

entity pipe is
	port(	start, reset : in std_logic;
			--random_pipe_size : in std_logic_vector(9 downto 0);
			pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			vert_sync : in std_logic;
			signal pipe_on : out std_logic;
			signal q_x_pos_1, q_x_pos_2, q_x_pos_3 : out std_logic_vector(10 downto 0);
			signal q_pipe1_upper, q_pipe1_lower, q_pipe2_upper, q_pipe2_lower, q_pipe3_upper, q_pipe3_lower : out std_logic_vector(10 downto 0));
end entity pipe;


architecture arc of pipe is

-- first pipe
--signal pipe_on : std_logic;
signal pipe_x_pos : std_logic_vector(10 downto 0) := CONV_STD_LOGIC_VECTOR(360,11);
signal pipe_y_pos : std_logic_vector(9 downto 0);
signal pipe_x_motion : std_logic_vector(10 downto 0);

-- second pipe
signal pipe2_x_pos : std_logic_vector(10 downto 0):= CONV_STD_LOGIC_VECTOR(720,11);
signal pipe2_y_pos : std_logic_vector(9 downto 0);
signal pipe2_x_motion : std_logic_vector(10 downto 0);

-- third pipe
signal pipe3_x_pos : std_logic_vector(10 downto 0):= CONV_STD_LOGIC_VECTOR(1080,11);
signal pipe3_y_pos : std_logic_vector(9 downto 0);
signal pipe3_x_motion : std_logic_vector(10 downto 0);

-- constant dimensions
constant pipe_width : STD_LOGIC_VECTOR (10 downto 0) := CONV_STD_LOGIC_VECTOR(50, 11); -- width of each pipe
constant pipe_gap   : STD_LOGIC_VECTOR (10 downto 0) := CONV_STD_LOGIC_VECTOR(80, 11); -- Gap between two pipes

-- pipe 1
signal pipe1_upper : std_logic_vector(10 downto 0)   	:= pipe_y_pos - pipe_gap;
signal pipe1_lower : std_logic_vector(10 downto 0)   	:= pipe_y_pos + pipe_gap;
-- pipe 2
signal pipe2_upper : std_logic_vector(10 downto 0)   	:= pipe2_y_pos - pipe_gap;
signal pipe2_lower : std_logic_vector(10 downto 0)   	:= pipe2_y_pos + pipe_gap;
-- pipe 3
signal pipe3_upper : std_logic_vector(10 downto 0)   	:= pipe3_y_pos - pipe_gap;
signal pipe3_lower : std_logic_vector(10 downto 0)   	:= pipe3_y_pos + pipe_gap;


begin

-- where the pipe gap will occur
pipe_y_pos <= CONV_STD_LOGIC_VECTOR(250, 10);
pipe2_y_pos <= CONV_STD_LOGIC_VECTOR(250, 10);
pipe3_y_pos <= CONV_STD_LOGIC_VECTOR(250, 10);
					
						  -- first pipe
pipe_on <= '1' when (('0' & pixel_column + pipe_width > '0' & pipe_x_pos) and
						  ('0' & pixel_column + pipe_width < pipe_x_pos + pipe_width) and
						  ((pixel_row < pipe_y_pos) or
						  ('0' & pixel_row > pipe_y_pos + pipe_gap))) or

						  -- second pipe
						  (('0' & pixel_column + pipe_width > '0' & pipe2_x_pos) and
						  ('0' & pixel_column + pipe_width < pipe2_x_pos + pipe_width) and
						  ((pixel_row < pipe2_y_pos) or
						  ('0' & pixel_row > pipe2_y_pos + pipe_gap))) or
						  
						  -- third pipe
						  (('0' & pixel_column + pipe_width > '0' & pipe3_x_pos) and
						  ('0' & pixel_column + pipe_width < pipe3_x_pos + pipe_width) and
						  ((pixel_row < pipe3_y_pos) or
						  ('0' & pixel_row > pipe3_y_pos + pipe_gap))) 
				  
				  else
				  '0';						  
				  


	process(vert_sync)
	begin
		if (rising_edge(vert_sync)) then
		
			-- first pipe
			-- if position at right side, move towards left side
			if (pipe_x_pos <= CONV_STD_LOGIC_VECTOR(0,11)) then
				pipe_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe_x_motion <= - CONV_STD_LOGIC_VECTOR(30,11);
			else
				pipe_x_motion <= - CONV_STD_LOGIC_VECTOR(2,11);
			end if;
			pipe_x_pos <= pipe_x_pos + pipe_x_motion;
			
			
			-- second pipe
			if (pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(0,11)) then
				pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe2_x_motion <= - CONV_STD_LOGIC_VECTOR(30,11);				
			else
				pipe2_x_motion <= - CONV_STD_LOGIC_VECTOR(2,11);				
			end if;			
			pipe2_x_pos <= pipe2_x_pos + pipe2_x_motion;
			
			
			-- third pipe
			if (pipe3_x_pos <= CONV_STD_LOGIC_VECTOR(0,11)) then			
				pipe3_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe3_x_motion <= - CONV_STD_LOGIC_VECTOR(30,11);				
			else
				pipe3_x_motion <= - CONV_STD_LOGIC_VECTOR(2,11);				
			end if;			
			pipe3_x_pos <= pipe3_x_pos + pipe3_x_motion;
			
				
		end if;
		
	end process;
	
	q_pipe1_upper <= pipe1_upper;
	q_pipe2_upper <= pipe2_upper;
	q_pipe3_upper <= pipe3_upper;
	
	q_pipe1_lower <= pipe1_lower;
	q_pipe2_lower <= pipe2_lower;
	q_pipe3_lower <= pipe3_lower;
	
	q_x_pos_1 <= pipe_x_pos;
	q_x_pos_2 <= pipe2_x_pos;
	q_x_pos_3 <= pipe3_x_pos;

	
end architecture arc;