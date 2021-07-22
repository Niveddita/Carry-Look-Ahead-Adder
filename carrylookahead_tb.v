`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 22:19:12
// Design Name: 
// Module Name: carrylookahead_tb
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


module carrylookahead_tb(
    );
    reg [3:0] A1,B1;
    reg cin1;
    wire [3:0] S1;
    wire cout1;
    CarryLookAhead uut(.A(A1),.B(B1),.cin(cin1),.S(S1),.cout(cout1));
    initial
    begin
    A1=4'b0110;B1=4'b1100;cin1=0;#20;
    A1=4'b1111;B1=4'b1011;cin1=1;#20;
    $finish;
end
endmodule
