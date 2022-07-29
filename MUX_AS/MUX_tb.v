module MUX_tb;
reg d,s1,s0;
wire y0,y1,y2,y3;
MUX add(d,s1,s0,y0,y1,y2,y3);
initial
begin
$dumpfile("MUX.vcd");
$dumpvars(0,MUX_tb);
$monitor("d = %b s1 = %b s0 = %b y0 = %b y1 = %b y2 = %b y3 = %b",d,s1,s0,y0,y1,y2,y3);
d = 1;s1 = 0;s0 = 0;
#5
d = 1;s1 = 0;s0 = 1;
#5
d = 1;s1 = 1;s0 = 0;
#5
d = 1;s1 = 1;s0 = 1;
end
endmodule