`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE233 Perks
// Engineer: Ethan Buttram
// 
// Create Date: 02/06/2023 08:11:23 PM
// Design Name: REG_FILE
// Module Name: REG_FILE
// Project Name: OTTER MCU
// Target Devices: Basys3
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


module REG_FILE(
    input clk,
    input [4:0] RF_ADR1,
    input [4:0] RF_ADR2,
    input [4:0] RF_WA,
    input [31:0] RF_WD,
    input RF_EN,
    output logic [31:0] rs1,
    output logic [31:0] rs2
    );
    
    //creates 32x32 matrix for rams
    //visually this is like the table that Perks provides where data is horizontal and addresses are vertical
    logic [31:0] ram [0:31];
    
    //initializing all registers to zero
    initial begin
        int i;
        for (i=0; i < $size(ram); i++)
        begin
            ram[i] = 0;
        end
    end
    
    //assigns rs1 and rs2 to ram values at RF_ADR1 and RF_ADR2 addresses on clock pulse
    always_ff @(posedge clk) 
    begin
        rs1 <= ram[RF_ADR1];
        rs2 <= ram[RF_ADR2];
    end
    
    //on clock rise, if the write address is nonzero and enable is high, write data to specified ram address
    always @(posedge clk)
    begin
        if (RF_WA != 0 && RF_EN)
            ram[RF_WA] <= RF_WD;
    end
     
endmodule
