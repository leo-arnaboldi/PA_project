module alu (
    input  logic [1:0] op,        // 1=ADD, 2=SUB, 3=MUL
    input  logic [31:0] a,         
    input  logic [31:0] b,        
    output logic [31:0] result    // Result
);

    always_comb begin
        case(op)
            2'b00: result = 32'b0; 
            2'b01: result = a + b; // ADD
            2'b10: result = a - b; // SUB
            2'b11: result = a * b; // MUL
        endcase
    end
    

endmodule
