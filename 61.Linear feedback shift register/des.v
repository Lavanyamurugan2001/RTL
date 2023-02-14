module LFSR(clk, rst,op);
output reg [3:0] op;
input clk,rst;
  always@(posedge clk) begin
    if(rst) op <= 4'hf;
    else op = {op[2:0],(op[3]^op[2])};
  end
endmodule
