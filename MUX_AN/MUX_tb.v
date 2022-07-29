`include "MUX.v"
module MUX_tb;
reg s1,s0,y0,y1,y2,y3;
wire d;
MUX add(s1,s0,y0,y1,y2,y3,d);
initial
begin
$dumpfile("MUX.vcd");
$dumpvars(0,MUX_tb);
$monitor("s1 = %b s0 = %b y0 = %b y1 = %b y2 = %b y3 = %b d = %b",s1,s0,y0,y1,y2,y3,d);
y0 = 1;y1 = 0;y2 = 0;y3 = 0;s1 = 0;s0 = 0;
#5
y0 = 0;y1 = 1;y2 = 0;y3 = 0;s1 = 0;s0 = 1;
#5
y0 = 0;y1 = 0;y2 = 1;y3 = 0;s1 = 1;s0 = 0;
#5
y0 = 0;y1 = 0;y2 = 0;y3 = 1;s1 = 1;s0 = 1;
end
endmodule