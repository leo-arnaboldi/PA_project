`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2025 19:05:57
// Design Name: 
// Module Name: mem
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


module mem #(
    parameter reg_size = 32,
    parameter mem_size = 32
)(
    input clk,
    input [mem_size -1:0] WE,
    input [reg_size-1:0] Din,
    output reg [mem_size-1:0][reg_size-1:0] Dout = '{default:0}
    );
    
    always_ff @(posedge clk) 
        Dout[WE] <= Din;
       

endmodule
