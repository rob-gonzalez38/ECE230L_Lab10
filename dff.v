module d_flip_flop(
    input D, clk,
    output reg Q,
    output Qbar
);

    initial begin
        Q = 1'b0;
    end

    always @(posedge clk) begin
        Q <= D;
    end

    assign Qbar = ~Q;

endmodule