module Tff_tb;
reg t,clk;
wire q,qc;
Tff add(t,clk,q,qc);
initial
begin
$dumpfile("Tff.vcd");
$dumpvars(0,Tff_tb);
$monitor("clk = %b t = %b q = %b qc = %b",clk,t,q,qc);
clk = 0;
t = 1;
clk = 1;
#5
clk = 1;
t = 0;
clk = 0;
#5
clk = 0;
t = 1;
clk = 1;
#5
clk = 0;
t = 0;
clk = 1;
#5
clk = 0;
t = 1;
clk = 1;
#5
clk = 0;
t = 1;
clk = 1;
end
endmodule