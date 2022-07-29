module Tff_tb;
reg t,clk;
wire q,qc;
Tff add(clk,t,q,qc);
initial
begin
 $monitor("clk = %b t = %b q = %b qc = %b",clk,t,q,qc);
 clk=0;
 t=0;
 clk=1;
 #5
 clk=0;
 t=1;
 clk=1;
end
endmodule


