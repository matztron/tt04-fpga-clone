// see: https://github.com/TinyTapeout/tt04-verilog-demo/blob/main/src/tt_um_seven_segment_seconds.v
module tt_um_top (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

// instance of inverter
inverter inv_I(
    .in(ui_in[0]),
    .out(uo_out[0])
);
    
endmodule