1module JKff_tb;
reg j,k,clk;
wire q,qc;
JKff add(j,k,clk,q,qc);
initial
begin
$dumpfile("JKff.vcd");
$dumpvars(0,JKff_tb);
$monitor("clk = %b j = %b k = %b q = %b qc = %b",clk,j,k,q,qc);
clk = 0;
j = 0;k = 0;
clk = 1;
#5
clk = 0;
j = 1;k = 0; 
clk = 1;
#5
clk = 0;
j = 0;k = 1;
clk = 1;
#5
clk = 0;
j = 1;k = 1;
clk = 1;
#5
clk = 0;
j = 0;k = 0;
clk = 1;
end
endmodule