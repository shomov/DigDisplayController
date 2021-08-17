module digitConv
(
input [13:0] number,
input clk,
output reg [3:0] units,
output reg [3:0] dec,
output reg [3:0] hungr,
output reg [3:0] thous
);

reg [29:0] memory;
integer i, j;
always @(posedge clk)
begin
	for(i = 14; i <= 29; i = i + 1)
		memory[i] = 0;
   memory[13:0] = number;
	
	for(j = 0; j < 14; j = j+1) 
	begin
		for(i = 4; i > 0; i = i-1) 
		begin
			if (memory[4*i + 13 -: 4] >= 5) 
				memory[13+4*i -: 4] = memory[13+4*i -: 4] + 4'd3;
		end
		memory[29:0] = memory << 1;
	end

units = memory[17:14];
dec = memory[21:18];
hungr = memory[25:22];
thous = memory[29:26];

end




endmodule