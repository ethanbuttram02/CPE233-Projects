`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 10:07:01 AM
// Design Name: 
// Module Name: Immed_Gen
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


module Immed_Gen(
    input [31:0] INSTRUCT,
    output logic [31:0] U_TYPE,
    output logic [31:0] I_TYPE,
    output logic [31:0] S_TYPE,
    output logic [31:0] B_TYPE,
    output logic [31:0] J_TYPE
);

//Concatenates different portions of the INSTRUCT input into the 5 different formats

assign U_TYPE = {INSTRUCT[31:12], 12'b0};
assign I_TYPE = {20'b0, {INSTRUCT[31], INSTRUCT[30:20]}};
assign S_TYPE = {20'b0, {INSTRUCT[31], {INSTRUCT[30:25], INSTRUCT[11:7]}}};
assign B_TYPE = {19'b0, {INSTRUCT[31], {INSTRUCT[7], {INSTRUCT[30:25], {INSTRUCT[11:8], 1'b0}}}}};
assign J_TYPE = {11'b0, {INSTRUCT[31], {INSTRUCT[19:12], {INSTRUCT[20], {INSTRUCT[30:21], 1'b0}}}}};

endmodule
