`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 21:42:05
// Design Name: 
// Module Name: CarryLookAhead
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


module CarryLookAhead(
    input [3:0] A,
    input [3:0] B,
    input cin,
    output reg [3:0] S,
    output reg cout
    );
    reg p0,p1,p2,p3,c1,c2,c3,g0,g1,g2,g3;
    always@( A or B or cin)
    begin
    p0=A[0]^B[0];
    p1=A[1]^B[1];
    p2=A[2]^B[2];
    p3=A[3]^B[3];
    g0=A[0]&B[0];
    g1=A[1]&B[1];
    g2=A[2]&B[2];
    g3=A[3]&B[3];
    c1=g0|(p0&cin);
    c2=g1|(p1&c1);
    c3=g2|(p2&c2);
    S[0]=p0^cin;
    S[1]=p1^c1;
    S[2]=p2^c2;
    S[3]=p3^c3;
    cout=g3|(p3&c3);
    end
endmodule
