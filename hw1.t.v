`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;
  wire nA, nB, nAandnB;

  demorgan dut(A, B, nA, nB, AnandB, AnorB, nAandnB, nAornB);

  // Run sequence of test stimuli
  initial begin
    // Demorgan's #1: ~(AB) = (~A+~B)
    $display("A B | ~A ~B | ~(AB) | (~A)*(~B)");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |     %b |     %b", A, B, nA, nB, AnandB, nAornB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |     %b |     %b", A, B, nA, nB, AnandB, nAornB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |     %b |     %b", A, B, nA, nB, AnandB, nAornB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |     %b |     %b", A, B, nA, nB, AnandB, nAornB);

    // Demorgan's #2: ~(A+B) = (~A~B) 
    $display("A B | ~A ~B | ~(A*B) | ~A~B");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |      %b |    %b ", A, B, nA, nB, AnorB,  nAandnB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |      %b |    %b ", A, B, nA, nB, AnorB,  nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |      %b |    %b ", A, B, nA, nB, AnorB,  nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |      %b |    %b ", A, B, nA, nB, AnorB,  nAandnB);
  end
endmodule
