module SRff(clk,s,r,q,qc);
input clk,s,r;
output q,qc;
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
     if(s==0 && r == 0)
		begin
			q=q;
			qc=qc;
		end
		else if(s==0 && r == 1)
		begin
			q=0;
			qc=1;
		end
		else if(s==1 && r == 0)
		begin
			q=1;
			qc=0;
		end
		else
		begin
			q=1'bx;
			qc=1'bx;
		end
     end
end
endmodule
