module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    // D Flip-Flop
    d_flip_flop dff0 (
        .D(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .Qbar(led[1])
    );

    // JK Flip-Flop
    jk_flip_flop jkff0 (
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .Qbar(led[3])
    );

    // T Flip-Flop
    t_flip_flop tff0 (
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .Qbar(led[5])
    );

endmodule