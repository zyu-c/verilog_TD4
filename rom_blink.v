module rom(ADDRESS, OUT);
    input [3:0]ADDRESS;
    output reg [7:0]OUT;

    parameter MEM_0 = 8'b1011_0011;
    parameter MEM_1 = 8'b1011_0110;
    parameter MEM_2 = 8'b1011_1100;
    parameter MEM_3 = 8'b1011_1000;
    parameter MEM_4 = 8'b1011_1000;
    parameter MEM_5 = 8'b1011_1100;
    parameter MEM_6 = 8'b1011_0110;
    parameter MEM_7 = 8'b1011_0011;
    parameter MEM_8 = 8'b1011_0001;
    parameter MEM_9 = 8'b1111_0000;
    parameter MEM_A = 8'b0000_0000;
    parameter MEM_B = 8'b0000_0000;
    parameter MEM_C = 8'b0000_0000;
    parameter MEM_D = 8'b0000_0000;
    parameter MEM_E = 8'b0000_0000;
    parameter MEM_F = 8'b0000_0000;

    always @(*) begin
        case(ADDRESS)
            8'h0: OUT <= MEM_0;
            8'h1: OUT <= MEM_1;
            8'h2: OUT <= MEM_2;
            8'h3: OUT <= MEM_3;
            8'h4: OUT <= MEM_4;
            8'h5: OUT <= MEM_5;
            8'h6: OUT <= MEM_6;
            8'h7: OUT <= MEM_7;
            8'h8: OUT <= MEM_8;
            8'h9: OUT <= MEM_9;
            8'ha: OUT <= MEM_A;
            8'hb: OUT <= MEM_B;
            8'hc: OUT <= MEM_C;
            8'hd: OUT <= MEM_D;
            8'he: OUT <= MEM_E;
            8'hf: OUT <= MEM_F;
        endcase
    end
endmodule
