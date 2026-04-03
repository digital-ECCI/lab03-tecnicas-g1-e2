`timescale 1ns/1ps

module tb_segmentos;

reg [3:0] bin;
wire [6:0] seg;

integer i;


segmentos UUT(
    .bin(bin),
    .seg(seg)
);

initial begin
    $dumpfile("segmentos_tb.vcd");
    $dumpvars(0, tb_segmentos);

    
    for (i = 0; i < 16; i = i + 1) begin
        bin = i;
        #10;
    end

    $finish;
end

endmodule