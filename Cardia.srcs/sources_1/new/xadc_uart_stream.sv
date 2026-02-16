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
    input logic RX,
    output logic TX,
    output logic [3:0] led
    );
    
    //Wires fo XADC
    logic [6:0] daddr; //ddress of channel to be read
    logic eoc; //xadc end of conversion flag
    logic [15:0] dout; //adc data out bus
    logic drdy;
    logic [1:0] _drdy = 0; // delayed data ready signal for edge detection
    logic [7:0] data = 0; // stored xadc data, only the uppoermost byte
    
    //Wires for UART
    logic [7:0] rx_data; //Received byte
    logic rx_ready; //Pulse when byte received
    logic [7:0] tx_data = 8'd0;
    logic tx_start = 1'b0;
    
    //Instantiate IP's
    xadc_wiz_0 myxadc(
        .dclk_in (clk),
        .den_in (eoc), //drp enable, start a new conversion whenever the last one has ended
        .dwe_in (1'b0),
        .daddr_in (daddr), //channel address
        .di_in (16'd0),
        .do_out (dout), // data out
        .drdy_out (drdy), // data ready
        .eoc_out (eoc), // end of conversion
        
        .vauxn14        (ja[4]),
        .vauxp14        (ja[0]),
        
        .vn_in          (1'b0),
        .vp_in          (1'b0)
        );
        
   UART_IP_0 myuart(
        .sys_clk (clk),
        .TX (TX),
        .RX(RX),
        .TxD_par (rx_data),
        .TxD_ready (rx_ready),
        .RxD_par (tx_data),
        .RxD_start (tx_start)
        );
                      
  //Logic      
    always_ff@(posedge clk) begin
        _drdy <= {_drdy[0], drdy};
    end
    
    assign daddr = 7'h1E;
    
    wire drdy_fall = (_drdy == 2'b10);

    // latch data when DRDY falls
    always_ff @(posedge clk) begin
        if (drdy_fall) begin
            data <= dout[15:8];
        end
    end
    
    // LED debug
    // led0 toggles on every captured sample
    always_ff @(posedge clk) begin
        if (drdy_fall) led[0] <= ~led[0];
    end
    assign led[1] = |data;     // on if data != 0
    assign led[2] = data[7];
    assign led[3] = data[6];
    
    // ============================================================
    // UART streaming: send "HH\r\n" at a safe rate
    // ============================================================

    // hex nibble -> ASCII
    function automatic logic [7:0] hexchar(input logic [3:0] nib);
        begin
            if (nib < 4'd10) hexchar = 8'h30 + nib;          // '0'
            else             hexchar = 8'h41 + (nib - 4'd10);// 'A'
        end
    endfunction

    // Fixed wait (no busy pin): 10 bits per byte
    localparam int CLK_FREQ      = 125_000_000;
    localparam int BAUD          = 115_200;
    localparam int CLKS_PER_BIT  = CLK_FREQ / BAUD;
    localparam int CLKS_PER_BYTE = CLKS_PER_BIT * 10;

    // Downsample so we don't try to print every XADC conversion
    localparam int PRINT_DIV = 5000;   // adjust: smaller=faster prints, bigger=slower
    int sample_div = 0;

    logic       kick_print = 1'b0;
    logic [7:0] latched    = 8'h00;

    always_ff @(posedge clk) begin
        kick_print <= 1'b0;
        if (drdy_fall) begin
            if (sample_div == PRINT_DIV-1) begin
                sample_div  <= 0;
                latched     <= data;      // print latest captured byte
                kick_print  <= 1'b1;
            end else begin
                sample_div <= sample_div + 1;
            end
        end
    end

    typedef enum logic [2:0] {S_IDLE, S_HI, S_LO, S_CR, S_LF, S_WAIT} state_t;
    state_t state = S_IDLE;

    logic [31:0] wait_cnt = 0;
    state_t      next_state = S_IDLE;

    always_ff @(posedge clk) begin
        tx_start <= 1'b0; // default (pulse)

        case (state)
            S_IDLE: begin
                if (kick_print) begin
                    state <= S_HI;
                end
            end

            S_HI: begin
                tx_data    <= hexchar(latched[7:4]);
                tx_start   <= 1'b1;
                wait_cnt   <= 0;
                next_state <= S_LO;
                state      <= S_WAIT;
            end

            S_LO: begin
                tx_data    <= hexchar(latched[3:0]);
                tx_start   <= 1'b1;
                wait_cnt   <= 0;
                next_state <= S_CR;
                state      <= S_WAIT;
            end

            S_CR: begin
                tx_data    <= 8'h0D;
                tx_start   <= 1'b1;
                wait_cnt   <= 0;
                next_state <= S_LF;
                state      <= S_WAIT;
            end

            S_LF: begin
                tx_data    <= 8'h0A;
                tx_start   <= 1'b1;
                wait_cnt   <= 0;
                next_state <= S_IDLE;
                state      <= S_WAIT;
            end

            S_WAIT: begin
                if (wait_cnt >= CLKS_PER_BYTE-1) begin
                    state <= next_state;
                end else begin
                    wait_cnt <= wait_cnt + 1;
                end
            end

            default: state <= S_IDLE;
        endcase
    end

    
endmodule
