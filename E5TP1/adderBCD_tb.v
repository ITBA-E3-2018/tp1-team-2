`include "adderBCD.v"

module adderBCD_tb;

//Test Data Types
reg [3:0] in0, in1;
wire [3:0] out0, out1;
wire flag;

//Test Indexes
reg [3:0] i,j;

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
  $display("In0\tIn1\tOut\tError");
  $monitor("%d\t%d\t%d,%d\t%b", in0, in1, out1, out0, flag);
end


always begin
for (i = 0; i<15 ; i = i+1) begin
    #1 in0 = i;
    for (j=0; j<15; j = j+1) begin
      #1in1 = j;
    end
end
#20$finish;
end



endmodule