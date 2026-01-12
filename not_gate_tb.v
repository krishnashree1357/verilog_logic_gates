module tb_not_gate;
  reg a;
  wire y;

  not_gate uut (
    .a(a),
    .y(y)
  );

  initial begin
    $dumpfile("tb_not_gate.vcd");
    $dumpvars(0, tb_not_gate);
    $display("a | y");
    $monitor("%b | %b", a, y);

    a = 0; #10;
    a = 1; #10;

    $finish;
  end
endmodule