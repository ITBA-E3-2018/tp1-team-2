`include "src/adderBCD/adderBCD.v"

module adderBCD_tb;

//Test Data Types
reg [3:0] in0, in1;
wire [3:0] out0, out1;
wire flag;

//Test Indexes
reg [4:0] i,j;

//Connecting the ports adderBCD
adderBCD adder_udt(
  .in0(in0),
  .in1(in1),
  .out0(out0),
  .out1(out1),
  .flag(flag)
  );

//Code
initial begin
  $dumpfile( "adderBCD.vcd");
  $dumpvars;
end

initial begin
  in0 = 0;
  in1 = 0;
  $display("BCD Adder Testbench");
  $display("In1\tIn0\t\tOut\t\tError");
  $monitor("%d\t%d\t\t%d,%d\t%b", in1, in0, out1, out0, flag);
end

always begin
for (i = 0; i<16 ; i = i+1) begin
    for (j=0; j<16; j = j+1) begin
      in1 = i[3:0];
      in0 = j[3:0];
      #1;
    end
end
#20$finish;
end

endmodule