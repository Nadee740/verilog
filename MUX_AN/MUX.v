module MUX(s1,s0,y0,y1,y2,y3,d);
input s1,s0,y0,y1,y2,y3;
output d;
assign d = (y0&!s1&!s0) + (y1&!s1&s0) + (y2&s1&!s0) + (y3&s1&s0);
endmodule