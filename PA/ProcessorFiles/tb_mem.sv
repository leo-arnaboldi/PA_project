`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2025 19:24:31
// Design Name: 
// Module Name: tb_mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mem;

localparam int reg_size = 32;
    localparam int mem_size = 32;
    
    logic clk;
    logic [mem_size - 1 : 0] in;
    logic [mem_size - 1 : 0] WE;
    logic [mem_size-1:0][reg_size-1:0] out;

    mem #(
        .reg_size(mem_size), 
        .mem_size(reg_size)
    ) dut (
        .clk(clk),
        .Din(in),
        .WE(WE),
        .Dout(out)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // Ejemplo de datos
        for (int i=0; i<mem_size; i++)begin
		
		in = (i << 2) + (i << 4) + (i << 8) + i;
		WE = i;
		@(posedge clk);
        
        end;
        //in[0] = 32'hAAAA_BBBB;
        //in[1] = 32'h1111_2222;
        //in[2] = 32'hDEAD_BEEF;
        // ...
		
		//for (int i=0; i< 2**W; i++) begin
		//	sel = i; #10;
		//end;
		
        //sel = 0; #10;
        //sel = 1; #10;
        //sel = 2; #10;
        $stop;   // detener simulaci�n
    end


endmodule
