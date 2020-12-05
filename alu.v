module alu(INA, INB, OUT, CF);
    input [3:0]INA;
    input [3:0]INB;
    output [3:0]OUT;
    output CF;

    assign {CF, OUT[3:0]} = INA + INB;
endmodule
