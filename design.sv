// Code your design here

module jk_ff(output Q, input J, K, rst, clk);     //defining the ports
  reg Q;                       //Q is the flip-flop's output
  always@(posedge clk, posedge rst)    //triggered by positive edge of clock
    begin
      if(rst) begin
        Q <= 1'b0;
      end else begin
        case({J,K})         //concatenation of J & K for case
          2'b00:  Q <= Q;
          2'b01:  Q <= 1'b0;
          2'b10:  Q <= 1'b1;
          2'b11:  Q <= ~Q;
        endcase
      end
    end
endmodule
          