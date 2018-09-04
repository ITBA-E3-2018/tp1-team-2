`include "src/sum4bit/sum4bit.v"

module sum4bit_tb;

//Defining test variables
reg [3:0] in0, in1;
reg [4:0] i, j;
wire [4:0] out;

//Connecting the ports
sum4bit sum_udt(
  .x0(in0),
  .x1(in1),
  .o(out)
  );

//Code
initial begin
  $dumpfile("sum4bit.vcd");
  $dumpvars;
end

initial begin
  in0 = 0;
  in1 = 0;
  $display("In0\t+\tIn1\t=\tOut");
  $monitor("%d\t\t%d\t\t%d", in0, in1, out);
end

always begin
for (i = 0; i<16 ; i = i+1) begin
  for (j=0; j<16; j = j+1) begin
    in0 = i[3:0];
    in1 = j[3:0];
    #1;
  end
end
#20$finish;
end

endmodule