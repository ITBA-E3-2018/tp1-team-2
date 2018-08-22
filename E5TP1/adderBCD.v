`include "decoderBCD.v"
`include "sum4bit.v"

module adderBCD(
    in0,    //BCD Input 0
    in1,    //BCD Input 1
    out0,   //BCD Output 0
    out1    //BCD Output 1
);

//Defining Inputs
input [3:0] in0, in1;

//Defining Outputs
output [3:0] out0, out1;

//Defining variables
wire [3:0] in0, in1;
reg [4:0] sum;
reg [3:0] out0,out1;

//Declaring included modules
decoderBCD decoder (.in(sum),.out0(out0),.out1(out1));

//Code
/*
Get whatever is going to do the sum of the 2 4-bit numbers here
*/



endmodule