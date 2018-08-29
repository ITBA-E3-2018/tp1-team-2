`include "src/demux/demux.v"

module demux_tb;

reg data_in;
reg [1:0] data_select;
wire o0,o1,o2,o3;

demux e_0(
    .d_in(data_in),
    .d_sel(data_select),
    .d_out_0(o0),
    .d_out_1(o1),
    .d_out_2(o2),
    .d_out_3(o3)
    );

initial begin
    data_in = 1;
    data_select = 0;
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
  $display("Input\tSelector\tOut_0\tOut_1\tOut_2\tOut_3");
  $monitor("%b\t%d\t\t%d\t%d\t%d\t%d",data_in, data_select, o0,o1,o2,o3);
end

endmodule
