`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2026 06:27:21 PM
// Design Name: 
// Module Name: xadc_uart_stream
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module xadc_uart_stream(
    input logic clk,
    input logic [7:0] ja,
    input logic TX,
    output logic RX,
    output logic [3:0] led
    );
    
    logic [6:0] daddr; //ddress of channel to be read
    logic eoc; //xadc end of conversion flag
    logic [15:0] dout; //adc data out bus
    logic drdy;
    
    logic [1:0] _drdy = 0; // delayed data ready signal for edge detection
    logic [7:0] data = 0; // stored xadc data, only the uppoermost byte
    
    xadc_wix_0 myxadc(
        .dclk_in (clk),
        .den_in (eoc), //drp enable, start a new conversion whenever the last one has ended
        .dwe_in (0),
        .daddr_in (daddr), //channel address
        .di_in (0),
        .do_out (dout), // data out
        .drdy_out (drdy), // data ready
        .eoc_out (eoc), // end of conversion
        
        .vauxn14        (ja[4]),
        .vauxp14        (ja[0]),
        
        .vn_in          (0),
        .vp_in          (0)
        );
        
    always_ff@(posedge clk) begin
        _drdy <= {_drdy[0], drdy};
    end
    
    assign daddr = 7'h1E;
    
    always_ff@(posedge clk) begin
        if(_drdy == 2'b10) begin // on negative edge
            data <= dout[15:8];
            end
    end
    
endmodule
