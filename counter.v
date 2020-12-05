module counter(CLK, RSTB, IN, LOAD, OUT);
    input CLK;
    input RSTB;
    input [3:0]IN;
    input LOAD;
    output reg [3:0]OUT;

    always @(posedge CLK or negedge RSTB)begin
        if(RSTB == 0)begin
            OUT <= 0;
        end else begin
            if(LOAD == 1)begin
                OUT <= OUT + 1;
            end else begin
                OUT <= IN;
            end
        end
    end
endmodule
