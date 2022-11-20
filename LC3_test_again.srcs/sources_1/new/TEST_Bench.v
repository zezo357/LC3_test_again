`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2021 12:21:59 PM
// Design Name: 
// Module Name: TEST_Bench
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


module TEST_Bench();
	reg clk;
    reg reset;
 wire [15:0] addr, din;   // Address and data-in lines for memory
 wire [15:0] dout;         // Data-out lines from memory
 wire rd;                 // Signal to indicate memory read or write
 wire complete;            // Signal to indicate completion of read/write


SimpleLC3 P(clk, reset, addr, din, dout, rd, complete);
//module mem(clk,readdata,address,writesignal,writedata);
mem M(clk,dout,addr,rd,din,complete);

	initial begin
		clk=0;
		
		while(1)#5 clk=~clk;
		end
		
		initial begin
                reset=1;
                #10
                reset=0;
                end
endmodule
