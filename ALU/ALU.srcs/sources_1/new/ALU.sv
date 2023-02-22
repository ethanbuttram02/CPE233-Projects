`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 01:09:39 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALU_FUN,
    output logic [31:0] result
    );
    
    //always comb runs on rising edge of the clock to check the ALU function and run that operation
    always_comb begin
        case(ALU_FUN)
            4'b0000: //ADD
                result = A + B;
            4'b1000: //SUB
                result = A - B;
            4'b0110: //OR 
                result = A | B;
            4'b0111: //AND
                result = A && B;
            4'b0100: //XOR
                result = A ^ B;
            4'b0101: //SRL
                result = A >> B;
            4'b0001: //SLL
                result = A << B;
            4'b1101: //SRA
                result = A >>> B;
            4'b0010: //SLT
                result = ($signed(A) < $signed(B)) ? 1 : 0;
            4'b0011: //SLTU
                result = (A < B) ? 1 : 0;
            4'b1101: //LUI-COPY
                result = A;
            default: //sets result to zero
                result = 4'b0000;
        endcase
    end  
endmodule
