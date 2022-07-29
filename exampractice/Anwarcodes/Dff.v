module Dff(d,clk,q,qc);
output q,qc;
input d,clk;
reg q,qc;
initial
begin
q=0;
qc=1;
end
always@(posedge clk)
begin
	if(clk)
	begin
		q = d;
		qc = !d;
	end
end
endmodule
