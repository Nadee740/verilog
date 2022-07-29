`include "mux.v"
module mux_tb;
reg a,b,c,d,s0,s1;
wire s;
mux my_mux(a,b,c,d,s0,s1,s);


   initial 
     begin
      $display("a\tb\tc\td\ts0\ts1\toutput");
      $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b",a,b,c,d,s0,s1,s);
      a=0;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=1;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=0;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=1;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=0;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=1;b=0;c=0;d=0;s0=0;s1=0;
     #5;
     a=0;b=0;c=0;d=0;s0=0;s1=0;
      #5;
      a=1;b=0;c=0;d=0;s0=0;s1=0;
      
      


     end
endmodule