module mux #(
	parameter w_sel = 4,
	parameter v_size = 32
)(
		input logic [2**w_sel - 1 : 0][v_size - 1 : 0] in,
		input logic [w_sel - 1 : 0] sel,
		output logic [v_size - 1 : 0] out
);

	always_comb begin
		out = in [sel];
	end

endmodule