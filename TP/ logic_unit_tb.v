`timescale 1ns/1ps

module logic_unit_tb;
    reg [3:0] a, b;
    reg [1:0] op;
    wire [3:0] result;
    integer i;

    logic_unit dut (a, b, op, result);

    initial begin
        $display("=== Logic Unit Testbench ===");
        for (op = 0; op < 4; op = op + 1) begin
            case (op)
                2'b00: $display("Testing AND...");
                2'b01: $display("Testing OR...");
                2'b10: $display("Testing XOR...");
                2'b11: $display("Testing NOT...");
            endcase

            // 4 test vectors per operation
            repeat (4) begin
                a = $random % 16;
                b = $random % 16;
                #1;
                case(op)
                    2'b00: if (result !== (a & b)) $display("FAIL: a=%b b=%b", a, b);
                    2'b01: if (result !== (a | b)) $display("FAIL: a=%b b=%b", a, b);
                    2'b10: if (result !== (a ^ b)) $display("FAIL: a=%b b=%b", a, b);
                    2'b11: if (result !== (~a))    $display("FAIL: a=%b", a);
                    default: ;
                endcase
            end
        end
        $display("=== Tests Completed ===");
        $finish;
    end
endmodule

