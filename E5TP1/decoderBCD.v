module decoderBCD (
  in,
  out
);

input [3:0] in;
output [9:0] out;

wire [3:0] in;
reg [9:0] out;

initial begin
  out = 0;
end

always @(in)
if (in<10) begin
  out = 9'b000000001 << in;
end
else begin
  out = 0;
end

endmodule
