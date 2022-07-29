module Gates(a,b,y_and,y_or,y_not,y_nor,y_nand,y_xor,y_xnor);
    input a,b;
    output y_and,y_or,y_not,y_nor,y_nand,y_xor,y_xnor;
    assign y_and = a & b,y_nand = !y_and;
    assign y_or = a | b,y_nor = !y_or;
    assign y_not = !a;
    assign y_xor = a ^ b,y_xnor = !y_xor;
endmodule