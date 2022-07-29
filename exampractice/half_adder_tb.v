`include "half_adder.v"
module half_adder_tb;
      reg a,b;
      wire sum,carry;
      half_adder add2(a,b,sum,carry);
      initial
         begin
             $dumpfile("half_adder");
             $dumpvars(0,half_adder_tb);
             $monitor("A = %b  B= %b SUM = %b CARRY =%b",a,b,sum,carry);
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
