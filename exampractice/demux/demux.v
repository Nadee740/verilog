module demux(s0,s1,x,d0,d1,d2,d3)
input s0,s1,x
output d0,d1,d2,d3;
assign d0=(!s1&!s0&x);
assign d1=(!s1&s0&x);
assign d2=(s1&!s0&x);
assign d3=(s1&s0&x);
endmodule
