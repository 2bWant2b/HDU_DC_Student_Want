`timescale 1ns / 1ps
module No3(enable, data_in, data_out);
	input[2:0] enable;
	input[2:0] data_in;
	output[7:0] data_out;
	wire [2:0] data_in;
	wire [2:0] enable;
	reg [7:0] data_out;
	always @ (enable or data_in)
	begin
		if (enable == 3'b100)
			case (data_in)
				3'b000: data_out = 8'b11111110;
				3'b001: data_out = 8'b11111101;
				3'b010: data_out = 8'b11111011;
				3'b011: data_out = 8'b11110111;
				3'b100: data_out = 8'b11101111;
				3'b101: data_out = 8'b11011111;
				3'b110: data_out = 8'b10111111;
				3'b111: data_out = 8'b01111111;
				default: data_out = 8'bxxxxxxxx;
			endcase
		else
			data_out=8'b11111111;
	end
endmodule