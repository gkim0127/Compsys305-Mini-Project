LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, clk, vert_sync	: IN std_logic;
          pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			 left_click_in, right_click_in : in std_logic;
			 signal ball_on : out std_logic;
			 signal dead : out std_logic);
			--red, green, blue : OUT std_logic);		
END bouncy_ball;



architecture behavior of bouncy_ball is

	-- declare components
	component pipe is
			port(	start, reset : in std_logic;
				--random_pipe_size : in std_logic_vector(9 downto 0);
				pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
				vert_sync : in std_logic;
				signal pipe_on : out std_logic;
				signal q_x_pos_1, q_x_pos_2, q_x_pos_3 : out std_logic_vector(10 downto 0);
				signal q_pipe1_upper, q_pipe1_lower, q_pipe2_upper, q_pipe2_lower, q_pipe3_upper, q_pipe3_lower : out std_logic_vector(10 downto 0));

	end component pipe;


--SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

-- signal for pipes
signal s_pipe_on : std_logic;
signal start, reset : std_logic;
signal pipe_x_pos_1, pipe_x_pos_2, pipe_x_pos_3 : std_logic_vector(10 downto 0);
signal q_pipe1_upper, q_pipe1_lower, q_pipe2_upper, q_pipe2_lower, q_pipe3_upper, q_pipe3_lower : std_logic_vector(10 downto 0);

signal collision_flag : std_logic := '0';

-- constant dimensions
constant pipe_width : STD_LOGIC_VECTOR (10 downto 0) := CONV_STD_LOGIC_VECTOR(50, 11); -- width of each pipe
constant pipe_gap   : STD_LOGIC_VECTOR (10 downto 0) := CONV_STD_LOGIC_VECTOR(80, 11); -- Gap between two pipes

signal life_point : integer := 3;

BEGIN

size <= CONV_STD_LOGIC_VECTOR(5,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
--ball_x_pos <= CONV_STD_LOGIC_VECTOR(590,11);
ball_x_pos <= CONV_STD_LOGIC_VECTOR(100,11);



ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
--pipes : pipe port map(start, reset, pixel_row, pixel_col, vert_sync, s_pipe_on);
pipes : pipe port map(start, reset, pixel_row, pixel_column, vert_sync, s_pipe_on, pipe_x_pos_1, pipe_x_pos_2, pipe_x_pos_3, 
								q_pipe1_upper, q_pipe1_lower, q_pipe2_upper, q_pipe2_lower, q_pipe3_upper, q_pipe3_lower);





Move_Ball: process (vert_sync, left_click_in)  	
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then
	
		-- bounce ball up a certain y position with every mouse click
		if (left_click_in = '1') then
		-- TO DO
			ball_y_motion <= - CONV_STD_LOGIC_VECTOR(3,10); 
		else 
		-- ball falls
			ball_y_motion <= CONV_STD_LOGIC_VECTOR(4, 10);
			
			-- remaining stationary at bottom of screen
			if (ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) then
				ball_y_motion <= - CONV_STD_LOGIC_VECTOR(0,10);
			elsif (ball_y_pos <= size) then 
				--ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
				-- do nothing
			end if;
			
		end if;
		ball_y_pos <= ball_y_pos + ball_y_motion;
		
		
		-- note y_pos for all three pipes is set to CONV_STD_LOGIC_VECTOR(250, 10)
		
		-- collision detection 
		-- pipe 1
		if ((((ball_x_pos + size) >= (pipe_x_pos_1 - pipe_width) and (ball_x_pos - size) <= (pipe_x_pos_1)) and
			((ball_y_pos - size) <= CONV_STD_LOGIC_VECTOR(250, 10) or (ball_y_pos + size) >= q_pipe1_lower)) and collision_flag = '0') then
				collision_flag <= '1';
		
		-- pipe 2
		elsif ((((ball_x_pos + size) >= (pipe_x_pos_2 - pipe_width) and (ball_x_pos - size) <= (pipe_x_pos_2)) and
				 ((ball_y_pos - size) <= CONV_STD_LOGIC_VECTOR(250, 10) or (ball_y_pos + size) >= q_pipe2_lower)) and collision_flag = '0') then
				collision_flag <= '1';
				
		-- pipe 3
		elsif ((((ball_x_pos + size) >= (pipe_x_pos_3 - pipe_width) and (ball_x_pos - size) <= (pipe_x_pos_3)) and
				 ((ball_y_pos - size) <= CONV_STD_LOGIC_VECTOR(250, 10) or (ball_y_pos + size) >= q_pipe3_lower)) and collision_flag = '0') then
				collision_flag <= '1';
		end if;
		
		-- if collision occurs reset ball position
		-- reduce lifepoint by one every collision
		if (collision_flag = '1') then
			if (life_point > 0) then
					ball_y_pos <= CONV_STD_LOGIC_VECTOR(100, 10);
					--ball_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11);
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(5,10);
					collision_flag <= '0';
					dead <= '0';
			else
					dead <= '1';
			end if;
		end if;		
		

	
	end if;
		
end process Move_Ball;



END behavior;

