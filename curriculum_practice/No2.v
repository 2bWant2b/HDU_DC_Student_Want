`timescale 1ns / 1ps

module No2(A, B, C, D, S, EN, Y);
		input [1:0] A;
		input [1:0] B;
		input [1:0] C;
		input [1:0] D;
		input [1:0] S;
		input EN;
		output [1:0] Y;

		wire [1:0] A;
		wire [1:0] B;
		wire [1:0] C;
		wire [1:0] D;
		wire [1:0] S;
		wire EN;
		wire [1:0] Y;

   	wire a, b, c, d;

   	assign a = (S == 2'b00) & (!EN);
   	assign b = (S == 2'b01) & (!EN);
   	assign c = (S == 2'b10) & (!EN);
   	assign d = (S == 2'b11) & (!EN);
		assign Y[0] = (a & A[0]) | (b & B[0]) | (c & C[0]) | (d & D[0]);
		assign Y[1] = (a & A[1]) | (b & B[1]) | (c & C[1]) | (d & D[1]);

endmodule
