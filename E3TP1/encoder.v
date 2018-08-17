module  encoder (
encoder_in, //Entrada de 4 patas
encoder_out //Salida Binaria de 2 patas
);

  //Initialize Input(s).
  input [3:0] encoder_in;

  //Initialize Output(s).
  output [1:0] encoder_out;
  
  //No se si esto hacia falta pero por ahora lo dejo.
  wire [3:0] encoder_in;
  reg [1:0] encoder_out;

  always @ (encoder_in) begin
    encoder_out = 0;
    
    /*
    //Trying with cases. However, it doesn't contemplate value hierarchy.
    case (encoder_in)
      4'b0001: encoder_out = 0;
      4'b0010: encoder_out = 1;
      4'b0100: encoder_out = 2;
      4'b1000: encoder_out = 3;
      default: encoder_out = 0;
    endcase
    */

    //Trying with if satetements. It should be considering value hierarchy.
    //MSB should take priority over the output.
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