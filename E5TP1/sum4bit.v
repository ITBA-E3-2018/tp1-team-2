module sum4bit(
    x0, //Sumando 0 (4-bit)
    x1, //Sumando 1 (4-bit)
    o   //Resultado (5-bit)
);

input wire [3:0] x0, x1;
output reg [4:0] o;

initial begin
  o = 0;
end

always @(x0 or x1) begin
  o = x0 + x1;
end


endmodule