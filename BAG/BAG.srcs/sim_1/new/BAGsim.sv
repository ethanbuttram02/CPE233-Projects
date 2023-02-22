`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2023 08:57:56 PM
// Design Name: 
// Module Name: BAGsim
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

module BAGsim;

    logic [31:0] rs1;
    logic [31:0] I_type;
    logic [31:0] J_type;
    logic [31:0] B_type;
    logic [31:0] PC;
    logic [31:0] jalr;
    logic [31:0] branch;
    logic [31:0] jal;

    BAG thebag(
        .rs1(rs1),
        .I_type(I_type),
        .J_type(J_type),
        .B_type(B_type),
        .PC(PC),
        .jalr(jalr),
        .branch(branch),
        .jal(jal)
    );
    
    initial begin
        //initialize and test 0's
        rs1 = 32'b0;
        I_type = 32'b0;
        J_type = 32'b0;
        B_type = 32'b0;
        PC = 32'b0;
        
        //example 1
        #10;
        rs1 = 32'b0;
        I_type = 32'b0;
        J_type = 32'b0;
        B_type = 32'b11111111111111111111111111011000;
        PC = 32'b1010000;
        
        //example 2
        #10;
        rs1 = 32'b0;    
        I_type = 32'b0;
        J_type = 32'b0;
        B_type = 32'b111100;
        PC = 32'b1010000;
        
        //example 3
        #10;
        rs1 = 32'b0;
        I_type = 32'b0;
        J_type = 32'b0;
        B_type = 32'b1111000;
        PC = 32'b1010000;
        
        //example 4
        #10;
        rs1 = 32'b0;
        I_type = 32'b0;
        J_type = 32'b11111111111111111111111110011100;
        B_type = 32'b0;
        PC = 32'b1111000;
        
        //example 5
        #10;
        rs1 = 32'b1010; //no value specified in example 5, so I say it is 10
        I_type = 32'b1010000;
        J_type = 32'b0;
        B_type = 32'b0;
        PC = 32'b1010000;
    end
endmodule
