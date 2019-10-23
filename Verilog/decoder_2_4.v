`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:48:18 10/17/2019 
// Design Name: 
// Module Name:    decoder_2_4 
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
module decoder_2_4(data,code);
output [3:0] data;
input [1:0] code;
reg [3:0] data;
always @ (code)
case(code)
0 : data=4'b0001;
1 : data=4'b0010;
2 : data=4'b0100;
3 : data=4'b1000;
endcase 
endmodule 