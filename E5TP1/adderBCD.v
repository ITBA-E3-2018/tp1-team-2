`include "decoderBCD.v"
`include "sum4bit.v"
`include "filterBCD.v"

module adderBCD(
    in0,    //BCD Input 0
    in1,    //BCD Input 1
    out0,   //BCD Output 0
    out1,   //BCD Output 1
    flag
);

//Defining Inputs
input [3:0] in0; //BCD Input 0
input [3:0] in1; //BCD Input 1

//Defining Outputs
output [3:0] out0;  //BCD Output digit 0
output [3:0] out1;  //BCD Output digit 1
output flag;

//Defining data types
wire [3:0] in0, in1;
wire [4:0] sum;
wire [3:0] out0,out1;
wire [3:0] f0, f1;
wire e0, e1;

//Declaring and connecting modules
filterBCD filter0(
    .in(in0),
    .out(f0),
    .error(e0)
    );
filterBCD filter1(
    .in(in1),
    .out(f1),
    .error(e1)
    );
sum4bit adder(
    .x0(f0),
    .x1(f1),
    .o(sum)
    );
decoderBCD decoder (
    .in(sum),
    .out0(out0),
    .out1(out1)
    );

assign flag = e0 || e1;

endmodule