`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:11 09/19/2019 
// Design Name: 
// Module Name:    DFF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF(D,clk,syncReset,Q);
    input D;
    input clk;
    input syncReset;
    output reg Q;
    
always@(posedge clk)
begin
if (syncReset==1'b1)
	Q <= 1'b0;
else
	Q <= D;
end
endmodule