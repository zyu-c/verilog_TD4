module decoder(OP, CF, LOAD, SELECT);
    input [3:0]OP;
    input CF;
    output [3:0]LOAD;
    output [1:0]SELECT;
    wire a,b,c,d;

    assign a = ((~OP[0]) & CF);
    assign b = (~OP[2]);
    assign c = (~OP[3]);
    assign d = (~OP[2]) | (~OP[3]) | ((~OP[0]) & CF);

    assign SELECT[0] = OP[0] | OP[3];
    assign SELECT[1] = OP[1];
    
    assign LOAD[0] = OP[2] | OP[3];
    assign LOAD[1] = (~OP[2]) | OP[3];
    assign LOAD[2] = OP[2] | (~OP[3]);
    assign LOAD[3] = (~OP[2]) | (~OP[3]) | ((~OP[0]) & CF);
endmodule
