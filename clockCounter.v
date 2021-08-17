module clockCounter
(
input clock,
output reg [1:0] num
);


always @(posedge clock)
	if (num == 2'd3)
		num <= 2'b0;
	else
		num <= num + 2'd1;
endmodule