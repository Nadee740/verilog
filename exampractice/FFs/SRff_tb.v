
module SRff_tb;
reg s,r,clk;
wire q,qc;
SRff add(clk,s,r,q,qc);
initial
begin
    $monitor("clk = %b s = %b r = %b q = %b qc = %b",clk,s,r,q,qc);
    clk=0;
    s=0;r=0;
    clk=1;
    #5
    clk=0;
    s=0;r=1;
    clk=1;
    #5
    clk=0;
    s=1;r=0;
    clk=1;
    #5
    clk=0;
    s=1;r=1;
    clk=1;
    #5
    clk=0;
    s=0;r=0;
    clk=1;
     #5
    clk=0;
    s=0;r=1;
    clk=1;
     #5
    clk=0;
    s=0;r=0;
    clk=1;
end
endmodule

