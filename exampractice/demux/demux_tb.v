`include "demux.v"
module demux;
reg s0,s1,x;
wire d0,d1,d2,d3;
demux add(s0,s1,x,d0,d1,d2,d3);
initial 
begin
    $monitor("s0 =%b s1=%b ")
 