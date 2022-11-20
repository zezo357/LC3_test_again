`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 01:43:00 PM
// Design Name: 
// Module Name: memory
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

module mem(clk,readdata,address,writesignal,writedata,complete);
input clk,writesignal;
input [15:0] address,writedata;
output reg [15:0] readdata;
output reg complete;
reg [15:0] memorycells[0:2**9];
initial
begin  
$readmemb("instructionmem.mem", memorycells); 
$readmemh("datamem.mem", memorycells,255); 

end 
always@*
complete<=0;
always@(posedge clk)
begin 
readdata<=memorycells[address];
if(!writesignal)
memorycells[address]<=writedata;
complete<=1;
end

endmodule
