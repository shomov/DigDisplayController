module numToLED
(
input [3:0] num,
input clk,
output reg [7:0] led
);


always @(posedge clk)
	case (num)
	  4'd0: led = 8'h40;
	  4'd1: led = 8'h79;
	  4'd2: led = 8'h24;
	  4'd3: led = 8'h30;
	  4'd4: led = 8'h19;
	  4'd5: led = 8'h12;
	  4'd6: led = 8'h02;
	  4'd7: led = 8'h78;
	  4'd8: led = 8'h00;
	  4'd9: led = 8'h10;
	endcase

endmodule