module Procesor(d,clearn,enable,clk,q);
input d,clearn,enable,clk;
output q;
reg [3:0] q;

always @(posedge clk)
	if (!clearn)
		q <= 1'b0;
	else
		if (enable)
		q <= (q+1)%16;
endmodule
