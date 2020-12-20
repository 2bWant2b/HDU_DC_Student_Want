`timescale 1ns / 1ps

module No10(clk, j, k, q, qn);
	input clk, j, k;
	output q, qn;
	wire clk, j, k;
	reg q, qn;
	always @ (posedge clk) //时钟上升沿到来时，判断jk的值
	begin
		case({j,k})
			2'b00: {q, qn} <= {q, qn}; //如果{j,k}=00，则触发器处于保持状态
			2'b01: {q, qn} <= 2'b01; //如果{j,k}=01，则触发器置1
			2'b10: {q, qn} <= 2'b10; //同理10，清零
			2'b11: {q, qn} <= {~q, ~qn}; //11,翻转
			default: q <= q;
		endcase
	end
endmodule
