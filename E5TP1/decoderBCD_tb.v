`include "decoderBCD.v"

module decoderBCD_tb;

reg [3:0] in;
reg [4:0] i;
wire [9:0] out;

decoderBCD dec_udt(.in(in), .out(out));

initial begin
  in = 0;
  $display("In\tOut");
  $monitor("%d\t%b", in, out);
end


always begin
for (i = 0; i<=15 ; i = i+1) begin
    #1in = i;
end
#20$finish;
end

initial begin
  $dumpfile("decoderBCD.vcd");
  $dumpvars;
end

endmodule