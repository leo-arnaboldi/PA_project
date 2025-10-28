module and_array #(
    parameter N = 32, // array size
)
(
    input  logic [N-1:0] in_vec,
    input  logic         enable,
    output logic [N-1:0] out_vec
);

    always_comb begin
        if (enable)
            out_vec = in_vec;  
        else
            out_vec = '0;      
    end

endmodule