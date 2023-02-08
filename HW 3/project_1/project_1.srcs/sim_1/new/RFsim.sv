`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2023 08:37:01 PM
// Design Name: 
// Module Name: RFsim
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


module RFsim;

logic clk_tb;
logic [4:0] RF_ADR1_TB;
logic [4:0] RF_ADR2_TB;
logic [4:0] RF_WA_TB;
logic [31:0] RF_WD_TB;
logic RF_EN_TB;
logic [31:0] rs1_tb;
logic [31:0] rs2_tb;

REG_FILE RF_TB (
    .clk(clk_tb),
    .RF_ADR1(RF_ADR1_TB),
    .RF_ADR2(RF_ADR2_TB),
    .RF_WA(RF_WA_TB),
    .RF_WD(RF_WD_TB),
    .RF_EN(RF_EN_TB),
    .rs1(rs1_tb),
    .rs2(rs2_tb)
    );

always begin
    clk_tb = 0;
    #5;
    clk_tb = 1;
    #5;
end

initial begin
    RF_EN_TB = 0;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 30;
    RF_WA_TB = 31;
    RF_WD_TB = 8'hFFFFFFFF;
    #10;

    RF_EN_TB = 1;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 30;
    RF_WA_TB = 31;
    RF_WD_TB = 8'hFFFFFFFF;
    #10;
    
    RF_EN_TB = 1;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 0;
    RF_WA_TB = 0;
    RF_WD_TB = 8'hFFFFFFFF;
    #10;
    
    RF_EN_TB = 1;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 30;
    RF_WA_TB = 30;
    RF_WD_TB = 8'hFFFFFFFF;
    #10;
    
    RF_EN_TB = 1;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 30;
    RF_WA_TB = 30;
    RF_WD_TB = 8'hABCD1234;
    #10;
    
    RF_EN_TB = 1;
    RF_ADR1_TB = 31;
    RF_ADR2_TB = 30;
    RF_WA_TB = 31;
    RF_WD_TB = 8'h4321DCBA;
    
    end
endmodule
