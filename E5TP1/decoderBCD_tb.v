`include "decoderBCD.v"

module decoderBCD_tb;

//Defining test variables
reg [4:0] in;
reg [4:0] i;
wire [3:0] out0;
wire [3:0] out1;

//Connecting the ports
decoderBCD dec_udt(
  .in(in),
  .out0(out0),
  .out1(out1)
  );

//Code
initial begin
  $dumpfile("decoderBCD.vcd");
  $dumpvars;
end

initial begin
  in = 0;
  $display("In\tOut1\tOut0\tBCD view");
  $monitor("%d\t%b\t%b\t%b\t%d,%d", in, in, out1, out0, out1, out0);
end


always begin
for (i = 0; i<31 ; i = i+1) begin
    #1in = i;
end
#1 in = 31;
#20$finish;
end



endmodule