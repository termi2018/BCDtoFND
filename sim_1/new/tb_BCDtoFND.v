`timescale 1ns / 1ps

module tb_BCDtoFND();
    reg [1:0] i_digitSelect;
    reg i_en;
    wire [3:0] o_digit;

    FND_Select_Decoder dut(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .o_digit(o_digit)
    );

    initial begin
        #00 i_en = 1'b1; i_digitSelect = 2'b00;
        #10 i_en = 1'b1; i_digitSelect = 2'b01;
        #10 i_en = 1'b1; i_digitSelect = 2'b10;
        #10 i_en = 1'b1; i_digitSelect = 2'b11;

        #10 i_en = 1'b0; i_digitSelect = 2'b00;
        #10 i_en = 1'b0; i_digitSelect = 2'b01;
        #10 i_en = 1'b0; i_digitSelect = 2'b10;
        #10 i_en = 1'b0; i_digitSelect = 2'b11;
        #10 $finish;
    end
endmodule