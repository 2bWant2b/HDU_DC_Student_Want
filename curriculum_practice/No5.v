`timescale 1ns / 1ps
module No5(A, B, Y);
	input [3:0] A;
	input [3:0] B;
	wire [3:0] A;
	wire [3:0] B;
	output [2:0] Y;
	reg [2:0] Y;
	always @ (*)
	if (A == B)
	begin
		Y = 3'b101;
	end else if (A > B)
	begin
		Y = 3'b011;
	end else
	begin
		Y = 3'b110;
	end
endmodule
