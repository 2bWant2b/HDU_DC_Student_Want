`timescale 1ns / 1ps

module No15(NoOE, S, CLK, D, Q);
	input NoOE, CLK;
	input [1:0] S;
  	input [3:0] D;
  	output [3:0] Q;
	wire NoOE, CLK;
	wire [1:0] S;
	wire [3:0] D;
  	reg [3:0] Q;
  	always @(posedge CLK or posedge NoOE)
  	begin
  		if (NoOE == 1) Q <= 4'bz; //¸ß×è½ûÖ¹Êä³ö
  		else
  		begin
  			case (S)
				2'b00: Q <= Q; //±£³Ö
				2'b01: Q <= {Q[2:0], Q[3]}; //×óÒÆÒ»Î»
				2'b10: Q <= {Q[0], Q[3:1]}; //ÓÒÒÆÒ»Î»
				2'b11: Q <= D;
			endcase
  		end
    end
endmodule
