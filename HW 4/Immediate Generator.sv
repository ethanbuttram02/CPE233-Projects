Module ImmedGen ( 
    input [31:0] INSTRUCT,
    output [31:0] U-TYPE,
    output [31:0] I-TYPE,
    output [31:0] S-TYPE,
    output [31:0] B-TYPE,
    output [31:0] J-TYPE,
);

//Concatenates different portions of the INSTRUCT input into the 5 different formats
assign U-TYPE = {INSTRUCT[31:12], 12'b0};
assign I-TYPE = {20'b0, INSTRUCT[31], INSTRUCT[30:20]};
assign S-TYPE = {20'b0, INSTRUCT[31], INSTRUCT[30:25]. INSTRUCT[11:7]};
assign B-TYPE = {19'b0, INSTRUCT[31], INSTRUCT[7], INSTRUCT[30:25], INSTRUCT[11:8], 1'b0};
assign J-TYPE = {11'b0, INSTRUCT[31], INSTRUCT[19:12], INSTRUCT[20], INSTRUCT[30:21], 1'b0};

endmodule