//This BCD Decoder supports numbers of up to 5-bits
//I'm not sure if Decoder is the proper name

module decoderBCD (
  in,   //5-bit Input Value
  out0, //4-bit Output BCD Digit 0
  out1  //4-bit Output BCD Digit 1
);

//Input Declaration
input [4:0] in;

//Output Declaration
output [3:0] out0;
output [3:0] out1;

//Data type definition
wire [4:0] in;
wire [3:0] out0;
wire [3:0] out1;

assign out0 = in % 10;
assign out1 = in / 10;

endmodule
