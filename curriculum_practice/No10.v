`timescale 1ns / 1ps

module No10(clk, j, k, q, qn);
	input clk, j, k;
	output q, qn;
	wire clk, j, k;
	reg q, qn;
	always @ (posedge clk) //ʱ�������ص���ʱ���ж�jk��ֵ
	begin
		case({j,k})
			2'b00: {q, qn} <= {q, qn}; //���{j,k}=00���򴥷������ڱ���״̬
			2'b01: {q, qn} <= 2'b01; //���{j,k}=01���򴥷�����1
			2'b10: {q, qn} <= 2'b10; //ͬ��10������
			2'b11: {q, qn} <= {~q, ~qn}; //11,��ת
			default: q <= q;
		endcase
	end
endmodule
