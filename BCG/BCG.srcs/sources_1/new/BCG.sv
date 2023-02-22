`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2023 07:53:18 PM
// Design Name: 
// Module Name: BCG
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


module BCG(
    input [31:0] rs1,
    input [31:0] rs2,
    output logic br_eq,
    output logic br_lt,
    output logic br_ltu
);

    always_comb begin
        br_eq = 0;
        br_lt = 0;
        br_ltu = 0;
        //does all 3 comparisons for the CU_DCDR to decode
        if (rs1 == rs2)
            br_eq = 1'b1;
        if ($signed(rs1) < $signed(rs2))
            br_lt = 1'b1;
        if (rs1 < rs2)
            br_ltu = 1'b1;
        end
endmodule
