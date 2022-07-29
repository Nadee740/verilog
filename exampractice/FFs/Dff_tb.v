module Dff_tb;
reg clk,d;
wire q,qc;
Dff add(clk,d,q,qc);
initial
begin
    $monitor("clk = %b d = %b q = %b qc = %b",clk,d,q,qc);
    clk=0;
    d=0;
    clk=1;
    #5
    clk=0;
    d=1;
    clk=1;
end
endmodule
