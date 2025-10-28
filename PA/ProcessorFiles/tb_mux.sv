`timescale 1ns / 1ps
module tb_mux;

    localparam int W = 4;
    localparam int V = 32;

    logic [2**W - 1 : 0][V - 1 : 0] in;
    logic [W - 1 : 0] sel;
    logic [V - 1 : 0] out;

    mux #(.w_sel(W), .v_size(V)) dut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Ejemplo de datos
        for (int i=0; i<2**W; i++)begin
		
		in[i] = (i << 2) + (i << 4) + (i << 8) + i;
        
        end;
        //in[0] = 32'hAAAA_BBBB;
        //in[1] = 32'h1111_2222;
        //in[2] = 32'hDEAD_BEEF;
        // ...
		
		for (int i=0; i< 2**W; i++) begin
			sel = i; #10;
		end;
		
        //sel = 0; #10;
        //sel = 1; #10;
        //sel = 2; #10;
        $stop;   // detener simulación
    end

endmodule
