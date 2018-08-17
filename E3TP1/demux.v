module demux(
    demux_in,       //Entrada de la senal
    demux_select,   //Entrada de selector
    demux_out       //Salida de la senal
);

//Declaracion de entradas
input demux_in;

//Declaracion de salidas
output [3:0] demux_out;

//Supuestamente esta seria inout?
input [1:0] demux_select;

//Supongo que esto tambien se hace.
wire demux_in;
wire [1:0] demux_select;
reg [3:0] demux_out;

always @ (demux_in) begin
  demux_out = 0;    //Limpio lo que estaba antes
  demux_out[demux_select] = demux_in;
end

endmodule