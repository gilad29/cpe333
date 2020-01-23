`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 11:48:06 PM
// Design Name: 
// Module Name: pipe_reg
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


module if_id(
    input clk,
    input [31:0] ir_in, next_pc_in,
    output logic [31:0] ir_out, next_pc_out
    );
    
    always@(posedge clk) begin
        ir_out <= ir_in;
        next_pc_out <= next_pc_in;
    end
endmodule

module id_ex(
    input clk, reg_write_id, memWrite_id, memRead2_id,
    input [1:0] rf_wr_sel_id,
    input [3:0] alu_fun_id, pcSource_id,
    input [31:0] aluAin_id, aluBin_id, Jtype_id, Btype_id, next_pc_id,
    output logic reg_write_ex, memWrite_ex, memRead2_ex,
    output logic [1:0] re_wr_sel_ex,
    output logic [3:0] alu_fun_ex, pcSource_ex,
    output logic [31:0] aluAin_ex, aluBin_ex, Jtype_ex, Btype_Ex, next_pc_ex 
    );
    
    always@(posedge clk) begin
        reg_write_ex <= reg_write_id;
        memWrite_ex <= memWrite_id;
        memRead2_ex <= memRead2_id;
        re_wr_sel_ex <= rf_wr_sel_id;
        alu_fun_ex <= alu_fun_id;
        pcSource_ex <= pcSource_id;
        aluAin_ex <= aluAin_id;
        aluBin_ex <= aluBin_id;
        Jtype_ex <= Jtype_id;
        Btype_Ex <= Btype_id;
        next_pc_ex <= next_pc_id;
    end
endmodule
