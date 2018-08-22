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

//Resources Definition
wire [4:0] in;
reg [3:0] out0;
reg [3:0] out1;

initial begin
  out0 = 0;
  out1 = 0;
end

always @(in) begin
out1 = in/10;
out0 = in%10;
end

endmodule
