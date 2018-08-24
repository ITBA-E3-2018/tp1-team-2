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
reg [3:0] out0,out1;
wire flag;

//Declaring included modules
filterBCD filter0(.in(in0), .out(adder.x0), .error(flag));
filterBCD filter1(.in(in1), .out(adder.x1), .error(flag));
sum4bit adder(.x0(in0),.x1(in1),.o(sum));
decoderBCD decoder (.in(sum),.out0(out0),.out1(out1));



//Code
/*
Get whatever is going to do the sum of the 2 4-bit numbers here
*/

always @ (in0 or in1) begin
  if(flag == 1) begin
    assign out0 = x;
    assign out1 = x;
  end
end

endmodule