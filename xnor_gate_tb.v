module xnor_gate_tb;
reg a, b;
wire y;
xnor_gate uut (
    .a(a),
    .b(b),
    .y(y)
 );
initial begin
    $dumpfile("tb_xnor_gate.vcd");
    $dumpvars(0, xnor_gate_tb);
    $display("a b |y");
    $monitor("%b %b |%b" ,a,b,y);
    a = 0; b = 0; #10;
    a = 0;b = 1; #10;
    a = 1;b = 0; #10;
    a = 1;b = 1; #10;
    $finish;
end
endmodule