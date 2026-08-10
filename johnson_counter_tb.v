`timescale 1ns/1ps

module johnson_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate Johnson Counter
    johnson_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);

        $monitor("Time = %0t | Reset = %b | Q = %b",
                 $time, reset, q);

        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #80;
        $finish;
    end

endmodule