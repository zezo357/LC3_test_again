`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2021 12:12:47 PM
// Design Name: 
// Module Name: tb
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


module SimpleLC3 (clock, reset, addr, din, dout, rd, complete);
 input clock;               // Global system clock
 input reset;               // Global system reset
 output [15:0] addr, din;   // Address and data-in lines for memory
 input [15:0] dout;         // Data-out lines from memory
 output rd;                 // Signal to indicate memory read or write
 input complete;            // Signal to indicate completion of read/write

wire F_Control, M_Control;
wire [1:0] W_Control;
wire [3:0] state;
wire [5:0] C_Control, E_Control;
wire [15:0] npc, pcout, aluout, dout, addr, DR_in;
wire [47:0] D_Data;
wire [2:0] sr1, sr2, dr;
wire [15:0] VSR1, VSR2;

RegFile R1 (VSR1, VSR2, sr1, sr2, dr, DR_in, state, clock, reset);
Controller C1 (clock, reset, state, C_Control, complete);
Execute E1 (E_Control, D_Data, aluout, pcout, npc);
Fetch F1 (clock, reset, state, addr, npc, rd, pcout, F_Control);
MemAccess M1 (state, M_Control, VSR2, pcout, addr, din, dout, rd);
Writeback W1 (W_Control, aluout, dout, pcout, npc, DR_in);
Decode D1 (VSR1, VSR2, clock, state, dout, C_Control, E_Control, M_Control, W_Control, F_Control, D_Data, DR_in, sr1, sr2, dr);
endmodule
