module tb_mux41_nand;
    // Declare testbench signals
    reg s1, s0;
    reg d0, d1, d2, d3;
    wire y;

    // Instantiate the module under test
    mux41_nand dut (
        .s1(s1),
        .s0(s0),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .y(y)
    );

    // Initial block for setting up the test cases
    initial begin
        // Set up a dump file for GTKWave
        $dumpfile("tb_mux41_nand.vcd");
        $dumpvars(0, tb_mux41_nand);

        // Display header
        $display("s1 s0 d0 d1 d2 d3 | y");
        $display("---------------------");

        // Test case 1: Select d0
        s1 = 0; s0 = 0; d0 = 1; d1 = 0; d2 = 0; d3 = 0;
        #10; $display("%b  %b  %b  %b  %b  %b | %b", s1, s0, d0, d1, d2, d3, y);

        // Test case 2: Select d1
        s1 = 0; s0 = 1; d0 = 0; d1 = 1; d2 = 0; d3 = 0;
        #10; $display("%b  %b  %b  %b  %b  %b | %b", s1, s0, d0, d1, d2, d3, y);

        // Test case 3: Select d2
        s1 = 1; s0 = 0; d0 = 0; d1 = 0; d2 = 1; d3 = 0;
        #10; $display("%b  %b  %b  %b  %b  %b | %b", s1, s0, d0, d1, d2, d3, y);

        // Test case 4: Select d3
        s1 = 1; s0 = 1; d0 = 0; d1 = 0; d2 = 0; d3 = 1;
        #10; $display("%b  %b  %b  %b  %b  %b | %b", s1, s0, d0, d1, d2, d3, y);

        // Test case 5: All inputs are zero
        s1 = 0; s0 = 0; d0 = 0; d1 = 0; d2 = 0; d3 = 0;
        #10; $display("%b  %b  %b  %b  %b  %b | %b", s1, s0, d0, d1, d2, d3, y);

        // Finish simulation
        $finish;
    end
endmodule
