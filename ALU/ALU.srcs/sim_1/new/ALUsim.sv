`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 12:07:14 PM
// Design Name: 
// Module Name: ALUsim
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


module ALUsim;
    logic [31:0] A;
    logic [31:0] B;
    logic [31:0] result;
    logic [3:0] ALU_FUN;

    ALU ALU_tb(
        .A(A),
        .B(B),
        .ALU_FUN(ALU_FUN),
        .result(result)
        );


    initial begin
        // ADD
        A = 32'hA50F96C3;
        B = 32'h5AF0693C;
        ALU_FUN = 4'b0000;
        #10;

        A = 32'h84105F21;
        B = 32'h7B105FDE;
        #10;

        A = 32'hFFFFFFFF;
        B = 32'h00000001;
        #10;
        #10;

        // SUB
        A = 32'h00000000;
        B = 32'h00000001;
        ALU_FUN = 4'b1101;
        #10;

        A = 32'hAA806355;
        B = 32'h550162AA;
        #10;

        A = 32'h550162AA;
        B = 32'hAA806355;
        #10;
        #10;

        // AND
        A = 32'hA55A00FF;
        B = 32'h5A5AFFFF;
        ALU_FUN = 4'b0011;
        #10;

        A = 32'hC3C3F966;
        B = 32'hFF669F5A;
        #10;
        #10;

        // OR
        A = 32'h9A9AC300;
        B = 32'h5A5AFFFF;
        ALU_FUN = 4'b0010;
        #10;

        A = 32'hC3C3F966;
        B = 32'hFF669F5A;
        #10;
        #10;

        // XOR
        A = 32'hAA5500FF;
        B = 32'h5AA50FF0;
        ALU_FUN = 4'b1001;
        #10;

        A = 32'hA5A56C6C;
        B = 32'hFF00C6FF;
        #10;
        #10;

        // SRL
        A=32'h805A6CF3;
        B=32'h00000010;
        ALU_FUN=4'b0101;
        #10;

        A=32'h705A6CF3;
        B=32'h00000005;
        #10;

        A=32'h805A6CF3;
        B=32'h00000000;
        #10;

        A=32'h805A6CF3;
        B=32'h00000100;
        #10;
        #10;

        // SLL
        A=32'h805A6CF3;
        B=32'h00000010;
        ALU_FUN=4'b0001;
        #10;

        A=32'h805A6CF3;
        B=32'h00000005;
        #10;

        A=32'h805A6CF3;
        B=32'h00000100;
        #10;
        #10;

        // SRA
        A=32'h805A6CF3;
        B=32'h00000010;
        ALU_FUN=4'b1101;
        #10;

        A=32'h705A6CF3;
        B=32'h00000005;
        #10;

        A=32'h805A6CF3;
        B=32'h00000000;
        #10;

        A=32'h805A6CF3;
        B=32'h00000100;
        #10;
        #10;

        // SLT
        A=32'h7FFFFFFF;
        B=32'h80000000;
        ALU_FUN=4'b0010;
        #10;

        A=32'h80000000;
        B=32'h00000001;
        #10;

        A=32'h00000000;
        B=32'h00000000;
        #10;

        A=32'h55555555;
        B=32'h55555555;
        #10;
        #10;

        // SLTU
        A=32'h7FFFFFFF;
        B=32'h80000000;
        ALU_FUN=4'b0011;
        #10;

        A=32'h80000000;
        B=32'h1;
        #10;

        A=32'h0;
        B=32'h0;
        #10;

        A=32'h55AA55AA;
        B=32'h55AA55AA;
        #10;
        #10;

        // LUI COPY
        A=32'h01234567;
        B=32'h76543210;
        ALU_FUN=4'b1001;
        #10;

        A=32'hFEDCBA98;
        B=32'h89ABCDEF;
        #10;
    end
endmodule
