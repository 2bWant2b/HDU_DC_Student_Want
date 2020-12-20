`timescale 1ns / 1ps
module No4(EN, In, Y, Done);
	input EN;
	input [7:0] In;
	output [2:0] Y;
	output Done;

	wire EN;
	wire [7:0] In;
	reg [2:0] Y;
	reg Done;

	always @ (EN or In)
	if (EN == 0)
	begin
		if (In[0])
		begin
			Y = 3'b000;
			Done = 1;
		end
		else if (In[1])
		begin
			Y = 3'b001;
			Done = 1;
		end else if (In[2])
		begin
			Y = 3'b010;
			Done = 1;
		end else if (In[3])
		begin
			Y = 3'b011;
			Done = 1;
		end else if (In[4])
		begin
			Y = 3'b100;
			Done = 1;
		end else if (In[5])
		begin
			Y = 3'b101;
			Done = 1;
		end else if (In[6])
		begin
			Y = 3'b110;
			Done = 1;
		end else if (In[7])
		begin
			Y = 3'b111;
			Done = 1;
		end else
		begin
			Y = 3'b000;
			Done = 0;
		end
	end else
	begin
		Y = 3'b000;
		Done = 0;
	end
endmodule
