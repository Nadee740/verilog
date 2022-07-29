module Dff_tb;
reg d,clk;
wire q,qc;
Dff add(d,clk,q,qc);
initial
begin
$dumpfile("Dff.vcd");
$dumpvars(0,Dff_tb);
$monitor("clk = %b d = %b q = %b qc = %b",clk,d,q,qc);
clk = 0;
d = 1;
clk = 1;
#5
clk = 1;
d = 0;
clk = 0;
#5
clk = 0;
d = 1;
clk = 1;
#5
clk = 0;
d = 0;
clk = 1;
#5
clk = 0;
d = 1;
clk = 1;
#5
clk = 0;
d = 1;
clk = 1;
end
endmodule