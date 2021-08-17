module LEDdigDisplayController
(
input clk,
input [13:0] num,
output wire [3:0] dig,
output wire [7:0] seg
);

wire digpll;
PLLdigRotation pll(.inclk0(clk), .c0(digpll));
wire [1:0] dignum;
clockCounter digRotation(.clock(digpll), .num(dignum));


wire [3:0] u;
wire [3:0] d;
wire [3:0] h;
wire [3:0] t;
digitConv BDC (.number(num), .clk(digpll), .units(u), .dec(d), .hungr(h), .thous(t));

wire [7:0] led1;
wire [7:0] led2;
wire [7:0] led3;
wire [7:0] led4;
numToLED N2Lu (.num(u), .clk(digpll), .led(led1));
numToLED N2Ld (.num(d), .clk(digpll), .led(led2));
numToLED N2Lh (.num(h), .clk(digpll), .led(led3));
numToLED N2Lt (.num(t), .clk(digpll), .led(led4));


segmentSwitcher control (.num(dignum), .seg1(led1), .seg2(led2), .seg3(led3), .seg4(led4), .dig(dig), .sgm(seg));

endmodule