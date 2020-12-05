`timescale 1ns / 1ns
module td4testbench;
    reg CLK;
    reg RSTB;
    wire [3:0]OUT;

    td4 td4(.CLK(CLK), .RSTB(RSTB), .OUT(OUT));
    
    always begin
        CLK = 1;
        #50	CLK = 0;
        #50;
	end

    initial begin
        $monitor("TIME %t: OUT=%d", $realtime, OUT);
        $dumpfile("wave.vcd");
        $dumpvars;
        RSTB = 0;
        #50 RSTB = 1;
        #50
        #(2e4) $finish;
    end
endmodule
