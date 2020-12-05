module td4(CLK, RSTB, OUT);
    input CLK, RSTB;
    output [3:0]OUT;

    wire [3:0]ADDRESS;
    wire [3:0]OP;
    wire [3:0]IM;

    wire [1:0]SELECT;
    wire [3:0]LOAD;

    wire [3:0]CH0;
    wire [3:0]CH1;
    wire [3:0]CH2;
    wire [3:0]CH3;
    wire [3:0]ALU_IN;
    wire [3:0]ALU_OUT;
    wire C;
    reg CF;
    assign OUT = CH2;
    assign CH3 = 0;

    rom rom0(.ADDRESS(ADDRESS), .OUT({OP[3:0], IM[3:0]}));

    register AREG(.CLK(CLK), .RSTB(RSTB), .IN(ALU_OUT), .LOAD(LOAD[0]), .OUT(CH0));
    register BREG(.CLK(CLK), .RSTB(RSTB), .IN(ALU_OUT), .LOAD(LOAD[1]), .OUT(CH1));
    register CREG(.CLK(CLK), .RSTB(RSTB), .IN(ALU_OUT), .LOAD(LOAD[2]), .OUT(CH2));
    counter PC(.CLK(CLK), .RSTB(RSTB), .IN(ALU_OUT), .LOAD(LOAD[3]), .OUT(ADDRESS));

    decoder decoder0(.OP(OP), .CF(CF), .LOAD(LOAD), .SELECT(SELECT));
    multiplexer mux0(.SELECT(SELECT), .CH0(CH0), .CH1(CH1), .CH2(CH2), .CH3(CH3), .OUT(ALU_IN));
    alu alu0(.INA(ALU_IN), .INB(IM), .OUT(ALU_OUT), .CF(C));

    always @(posedge CLK or negedge RSTB)begin
        if(RSTB == 0)begin
            CF <= 0;
        end else begin
            CF <= C;
        end
    end
endmodule
