`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2023 08:38:45 PM
// Design Name: 
// Module Name: BAG
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


module BAG(
    input [31:0] rs1,
    input [31:0] I_type, 
    input [31:0] J_type, 
    input [31:0] B_type, 
    input [31:0] PC,
    output logic [31:0] jalr, 
    output logic [31:0] branch, 
    output logic [31:0] jal
    );
    
    assign jalr = rs1 + I_type;
    assign branch = PC + B_type;
    assign jal = PC + J_type;
    
endmodule
