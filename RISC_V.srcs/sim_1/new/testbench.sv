module RISC_V_CPU_tb();
    // 时钟和复位信号
    logic clk;
    logic reset;
    // 实例化RISC-V CPU
    RISC_V_CPU_Top dut(
        .clk(clk),
        .reset(reset)
    );
    // 时钟生成，周期为10ns
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    // 初始化测试
    initial begin
        // 复位CPU
        reset = 1;#20;
        reset = 0;
        // 运行足够长的时间以执行测试程序
        #2000;
        // 结束仿真
        $finish;
    end
endmodule