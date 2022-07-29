module mux(a,b,c,d,s0,s1,s);
input a,b,c,d,s0,s1;
output s;
assign s=(!s1&!s0&a)|(!s1&s0&b)|(s1&!s0&c)|(s1&s0&d);
endmodule