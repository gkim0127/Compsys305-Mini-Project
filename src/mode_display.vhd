LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;
use ieee.numeric_std.all;

entity mode_display is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			clk : in std_logic;
			state : IN std_logic_vector(1 downto 0);
			char_text_out : out std_logic);
end entity;


architecture arc of mode_display is 
--begin
	component char_rom is
			port(
					character_address	:	in std_logic_vector (5 downto 0);
					font_row, font_col	:	in std_logic_vector (2 downto 0);
					clock				: 	in std_logic ;
					rom_mux_output		:	out std_logic);
	end component char_rom;
	
	-- used to test different states
	--signal s_state : std_logic_vector(1 downto 0):= "11";
	--signal s_state : std_logic_vector(1 downto 0);
	signal character_address : std_logic_vector (5 downto 0);
	
	begin
	-- assign components
	text_on : char_rom port map (character_address, pixel_row(4 downto 2), pixel_col(4 downto 2), clk, char_text_out);
	
	--text_out <= '1';
	

	text_display: process(pixel_col, pixel_row, state)
		begin
			-- menu display training and game options 
				-- T
				if 
					pixel_col >= std_logic_vector(to_unsigned(200, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(230, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="010100" ; 
				-- R
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(230, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(260, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="010010" ; 
				-- A
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(260, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(290, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="000001" ; 
				-- I
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(320, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="001001" ; 
				-- N
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="001110" ; 
				-- I
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="001001" ; 
				-- N
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(380, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(410, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="001110" ;
				-- G
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(410, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(440, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(60, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(90, 10)) then
				   character_address <="000111" ; 
				
				----------------------------------------------------
				
				-- P
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(260, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(290, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="010000" ; 
				-- L
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(320, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="001100" ; 
				-- A
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="000001" ; 
				-- Y
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="011001" ; 
				--P
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="010000" ; 
				--B
				elsif
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="001011" ; 
				--2
				elsif
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="110010" ; 
		
				else
					character_address <="100000" ; 
				end if; 
			
		end process text_display;
					
					
--font_row<=pixel_row(4 downto 2);
--font_col<=pixel_col(4 downto 2);

end architecture arc;
