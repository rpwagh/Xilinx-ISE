`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:54 09/19/2019 
// Design Name: 
// Module Name:    Decoder2_4 
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
 module decoder_2to4(Y3, Y2, Y1, Y0, A, B, en);
 output Y3, Y2, Y1, Y0;
 input A, B;
 input en;
 reg Y3, Y2, Y1, Y0;

 always @(A or B or en) begin
 if (en == 1'b1)
 case ( {A,B} )
 2'b00: {Y3,Y2,Y1,Y0} = 4'b1110;
 2'b01: {Y3,Y2,Y1,Y0} = 4'b1101;
 2'b10: {Y3,Y2,Y1,Y0} = 4'b1011;
 2'b11: {Y3,Y2,Y1,Y0} = 4'b0111;
 default: {Y3,Y2,Y1,Y0} = 4'bxxxx;
 endcase
 if (en == 0)
 {Y3,Y2,Y1,Y0} = 4'b1111;
 end
 endmodule 
 
