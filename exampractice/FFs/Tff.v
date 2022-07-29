module Tff(clk,t,q,qc);
input clk,t;
output q,qc;
reg q,qc;
initial
begin
q=0;
qc=1;
end
always @(posedge clk)
begin
    if(clk)
    begin
        if(t==0)
        begin
        q=q;
        qc=qc;
        end
        else
        begin
        q=!q;
        qc=!qc;
        end
    end
end
endmodule