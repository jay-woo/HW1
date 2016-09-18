module demorgan
(
  input A,
  input B,

  output nA, // Intermediate outputs
  output nB,

  output AnandB, // Final outputs
  output AnorB,
  output nAandnB,
  output nAornB
);

  not Ainv(nA, A);
  not Binv(nB, B);

  wire AandB, AorB;
  and andgate(AandB, A, B);
  or orgate(AorB, A, B);

  // Final outputs
  not AandBinv(AnandB, AandB);
  not AorBinv(AnorB, AorB);
  and andgate(nAandnB, nA, nB);
  or orgate(nAornB, nA, nB);

endmodule
