module  encoder (
encoder_in, //4-bit Input
encoder_out //2-bit Output
);

  //Initialize Input(s).
  input [3:0] encoder_in;

  //Initialize Output(s).
  output [1:0] encoder_out;
  
  //Data type definition.
  wire [3:0] encoder_in;
  reg [1:0] encoder_out;

  always @ (encoder_in) begin
    encoder_out = 0;
    //MSB takes priority over the output.
    if (encoder_in & 4'b0001) begin
      encoder_out = 0;
    end
    if (encoder_in & 4'b0010) begin
      encoder_out = 1;
    end
    if (encoder_in & 4'b0100) begin
      encoder_out = 2;
    end
    if (encoder_in & 4'b1000) begin
      encoder_out = 3;
    end

  end


endmodule