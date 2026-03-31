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


module jk_flip_flop(
    input J, K, clk,
    output Q, Qbar
);

    wire d_in;
    wire q_int;
    wire qbar_int;

    assign d_in = (J & qbar_int) | (~K & q_int);

    d_flip_flop dff_jk (
        .D(d_in),
        .clk(clk),
        .Q(q_int),
        .Qbar(qbar_int)
    );

    assign Q = q_int;
    assign Qbar = qbar_int;

endmodule


module t_flip_flop(
    input T,
    input clk,
    output Q,
    output Qbar
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


module top(
    input [7:0] sw,
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