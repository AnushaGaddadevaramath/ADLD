module tic_tac_toe_game_tb;

	// Inputs
	reg clock;
	reg reset;
	reg play;
	reg pc;
	reg [3:0] computer_position;
	reg [3:0] player_position;

	// Outputs
	wire [1:0] pos1;
	wire [1:0] pos2;
	wire [1:0] pos3;
	wire [1:0] pos4;
	wire [1:0] pos5;
	wire [1:0] pos6;
	wire [1:0] pos7;
	wire [1:0] pos8;
	wire [1:0] pos9;
	wire [1:0] who;

	// Instantiate the Unit Under Test (UUT)
	tic_tac_toe_game uut (
		.clock(clock), 
		.reset(reset), 
		.play(play), 
		.pc(pc), 
		.computer_position(computer_position), 
		.player_position(player_position), 
		.pos1(pos1), 
		.pos2(pos2), 
		.pos3(pos3), 
		.pos4(pos4), 
		.pos5(pos5), 
		.pos6(pos6), 
		.pos7(pos7), 
		.pos8(pos8), 
		.pos9(pos9), 
		.who(who)
	);

	initial begin
	// Initialize Inputs
	clock = 0;
	forever #5 clock = ~clock;
   end
	initial begin
  // Initialize Inputs
  play = 0;
  reset = 1;
  computer_position = 0;
  player_position = 0;
  pc = 0;
  #100;
  reset = 0;
  #100;
  play = 1;
  pc = 0;
  computer_position = 4;
  player_position = 0;
  #50;
  pc = 1;
  play = 0;
  #100;
  reset = 0;
  play = 1;
  pc = 0;
  computer_position = 8;
  player_position = 1;
  #100;
  pc = 1;
  play = 0;  
  #100;
  reset = 0;
  play = 1;
  pc = 0;
  computer_position = 6;
  player_position = 2;
  #100;
  pc = 1;
  play = 0; 
  #50
  pc = 0;
  play = 0;   
  end
      
endmodule

