module t_flip_flop(
    input T, clk,
    output Q, Qbar
);

    wire d_in;
    wire q_int;
    wire qbar_int;

    assign d_in = T ^ q_int;

    d_flip_flop dff_t (
        .D(d_in),
        .clk(clk),
        .Q(q_int),
        .Qbar(qbar_int)
    );

    assign Q = q_int;
    assign Qbar = qbar_int;

endmodule