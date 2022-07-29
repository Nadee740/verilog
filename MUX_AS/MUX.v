 module MUX(d,s1,s0,y0,y1,y2,y3);
input d,s1,s0;
output y0,y1,y2,y3;
assign y0 = d&!s1&!s0,y1 = d&!s1&s0,y2 = d&s1&!s0,y3 = d&s1&s0;
endmodule