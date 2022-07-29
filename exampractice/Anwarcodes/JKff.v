module JKff(j,k,clk,q,qc);
output q,qc;
input j,k,clk;
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
		if(j==0 && k == 0)
		begin
			q=q;
			qc=qc;
		end
		else if(j==0 && k == 1)
		begin
			q=0;
			qc=1;
		end
		else if(j==1 && k == 0)
		begin
			q=1;
			qc=0;
		end
		else
		begin
			q=!q;
			qc=!qc;
		end
	end
end
endmodule
