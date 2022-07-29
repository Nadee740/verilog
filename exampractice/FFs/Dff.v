module Dff(clk,d,q,qc);
input clk,d;
output q,qc;
reg q,qc;
initial
begin
q=0;
qc=1;
end
always @(posedge clk)
begin
    q=d;
    qc=!q;
end
endmodule
    