module multiplexer(SELECT, CH0, CH1, CH2, CH3, OUT);
    input [1:0]SELECT;
    input [3:0]CH0;
    input [3:0]CH1;
    input [3:0]CH2;
    input [3:0]CH3;
    output reg [3:0]OUT;

    always @(*)begin
        case(SELECT)
            0: OUT = CH0;
            1: OUT = CH1;
            2: OUT = CH2;
            3: OUT = CH3;
        endcase
    end
endmodule
