module watchdog_timer_tb;
    reg clk;
    reg rst;
    reg en;
    wire wdt;

    watchdog_timer uut (clk, rst, en, wdt);

    initial begin
        clk = 0;
        rst = 1;
        en = 0;
        #5 rst = 0;
        #5 en = 1;
        forever begin
            #5 clk = ~clk;
        end
    end
endmodule
