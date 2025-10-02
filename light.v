module light(
    // Declare downstairs and upstairs input
    input downstairs, upstairs,
    // Declare stair light output
    output star_light
);

    // Enter logic equation here
    assign star_light = downstairs ^ upstairs;
    // downstairs XOR upstairs
endmodule