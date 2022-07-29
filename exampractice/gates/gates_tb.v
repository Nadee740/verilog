`include "gates.v"
module gates_tb;
    reg a,b;
    wire y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;
    gates my_gate(a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
    initial
      begin
        $dumpfile("gates.vcd");
        $dumpvars(0,gates_tb);
        $display("a\tb\tand\tor\t not\tnand\tnor\txor\txnor");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
        a=0;b=0;
        #5;
         a=0;b=1;
        #5;
         a=1;b=0;
        #5;
         a=1;b=1;
        #5;
      end
endmodule
