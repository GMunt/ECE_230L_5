// Implement top level module
module top (
    input [7:0] sw,
    output [5:0] led
);

    light (
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .star_light(led[0])
    );
    
    adder (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    full_adder lsb_inst (
        .A(sw[4]),
        .B(sw[6]),
        .Y(led[3])
        // Might need to add Cout here...
    );
    
    full_adder msb_inst (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(lsb_inst.Cout), // Unsure if this line will work properly
        .Y(led[4]),
        .Cout(led[5])
    );
    
endmodule