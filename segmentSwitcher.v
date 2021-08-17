module segmentSwitcher
(
input [1:0] num,
input [7:0] seg1,
input [7:0] seg2,
input [7:0] seg3,
input [7:0] seg4,
output reg [3:0] dig,
output reg [7:0] sgm
);


always @*
begin
  case(num)
   2'd0: 
	begin
		sgm = seg1;
		dig[3:0] = 4'd14;	
	end
   2'd1: 
	begin
		sgm = seg2;
		dig[3:0] = 4'd13;
	end
   2'd2: 
	begin
		sgm = seg3;
		dig[3:0] = 4'd11;
	end
   2'd3: 
	begin
		sgm = seg4;
		dig[3:0] = 4'd7;
	end
  endcase
end

endmodule