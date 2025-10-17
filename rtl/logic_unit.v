//======================================================
// Module: logic_unit
// Author: Soliman Yehia
// Date: Oct 2025
// Description: Performs 4-bit logical operations
//======================================================
module logic_unit(
    input  [3:0] a,
    input  [3:0] b,
    input  [1:0] op,   // 00=AND, 01=OR, 10=XOR, 11=NOT
    output reg [3:0] result
);
always @(*) begin
    case(op)
        2'b00: result = a & b;   // AND
        2'b01: result = a | b;   // OR
        2'b10: result = a ^ b;   // XOR
        2'b11: result = ~a;      // NOT (on a only)
        default: result = 4'b0000;
    endcase
end
endmodule

