module RISC_V_CPU_tb();
    // ʱ�Ӻ͸�λ�ź�
    logic clk;
    logic reset;
    // ʵ����RISC-V CPU
    RISC_V_CPU_Top dut(
        .clk(clk),
        .reset(reset)
    );
    // ʱ�����ɣ�����Ϊ10ns
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    // ��ʼ������
    initial begin
        // ��λCPU
        reset = 1;#20;
        reset = 0;
        // �����㹻����ʱ����ִ�в��Գ���
        #2000;
        // ��������
        $finish;
    end
endmodule