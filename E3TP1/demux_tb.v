`include "demux.v"

module demux_tb;

reg data_in;
reg [1:0] data_select;
wire [3:0] data_out;

demux e_0(.demux_in(data_in),.demux_select(data_select),.demux_out(data_out));

initial begin
    data_in = 1;
end

always begin
    #1 data_select = 0;
    #1 data_select = 1;
    #1 data_select = 2;
    #1 data_select = 3;
    #10 $finish;
end

initial begin
  $dumpfile("demux.vcd");
  $dumpvars;
end

initial begin
  $display("Input value\tSelector\tOutput");
  $monitor("%b\t\t%d\t\t%b",data_in, data_select, data_out);
end

endmodule
