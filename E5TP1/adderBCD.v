`include "decoderBCD.v"
`include "sum4bit.v"

module adderBCD(
    in0,    //BCD Input 0
    in1,    //BCD Input 1
    out0,   //BCD Output 0
    out1    //BCD Output 1
);

//Defining Inputs
input [3:0] in0; //BCD Input 0
input [3:0] in1; //BCD Input 1

//Defining Outputs
output [3:0] out0;  //BCD Output digit 0
output [3:0] out1;  //BCD Output digit 1

//Defining data types
wire [3:0] in0, in1;
wire [4:0] sum;
wire [3:0] out0,out1;

//Declaring included modules
sum4bit adder(.x0(in0),.x1(in1),.o(sum));
decoderBCD decoder (.in(sum),.out0(out0),.out1(out1));


//Code
/*
Get whatever is going to do the sum of the 2 4-bit numbers here
*/

endmodule