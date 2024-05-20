module clock_divider (
  input  logic clkIn,
  output logic clkOut
);

  logic [1:0] count;

  always_ff @(posedge clkIn) begin
    count <= count + 1;
    if (count == 2'b10) begin
      count  <= 0;
      clkOut <= ~clkOut;
    end
  end

endmodule