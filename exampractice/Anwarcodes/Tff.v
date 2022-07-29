module Tff(t,clk,q,qc);
output q,qc;
input t,clk;
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
