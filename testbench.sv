// Code your testbench here
// or browse Examples

module test;
  wire Q;
  reg J, K, rst, clk;
  
  jk_ff M_UUT(Q, J, K, rst, clk);
  
  initial
    begin
      $dumpfile("wave.vcd");
      $dumpvars(0,Q, J, K, rst, clk);
      $monitor($time," rst=%b clk=%b J=%b K=%b  Q=%b ", rst, clk, J, K, Q);
      rst=1'b1;clk=1'b0;
      #97 J=1'b1; K=1'b1; rst=1'b0;
      #102 J=1'b0; K=1'b0;
      #6 J=1'b0; K=1'b1;
      #105 J=1'b0; K=1'b0;
      #180 J=1'b1; K=1'b0;
      #60 J=1'b1; K=1'b1;
      #100 $finish;
    end
  always #100 clk=~clk;
endmodule