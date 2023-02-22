`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2023 08:18:12 PM
// Design Name: 
// Module Name: BCGsim
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


module BCGsim;
    logic [31:0] rs1;
    logic [31:0] rs2;
    logic br_eq;
    logic br_lt;
    logic br_ltu;
    
    BCG myBCG(
        .rs1(rs1), 
        .rs2(rs2), 
        .br_eq(br_eq), 
        .br_lt(br_lt), 
        .br_ltu(br_ltu)
        );
    
    initial begin
        // Test #1: br_eq = 1, br_lt = 0, br_ltu = 0
        rs1 = 32'b1;
        rs2 = 32'b1;
        
        // Test #2: br_eq = 0, br_lt = 0, br_ltu = 0
        #10;
        rs1 = 32'b1;
        rs2 = 32'b0;
        
        // Test #3: br_eq = 0, br_lt = 1, br_ltu = 1
        #10;
        rs1 = 32'b0;
        rs2 = 32'b1;
        
        // Test #4: br_eq = 0, br_lt = 1, br_ltu = 0
        #10;
        rs1 = 32'b11111111111111111111111111111111;
        rs2 = 32'b0;
        
        // Test #5: br_eq = 0, br_lt = 0, br_ltu = 1
        #10;
        rs1 = 32'b0;
        rs2 = 32'b11111111111111111111111111111111;
    end
endmodule

