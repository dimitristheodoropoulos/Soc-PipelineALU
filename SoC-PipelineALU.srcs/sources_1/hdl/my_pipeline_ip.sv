`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025
// Design Name: AXI4-Stream Pipeline
// Module Name: my_pipeline_ip
// Project Name: SoC-PipelineALU
// Target Devices: All FPGA
// Tool Versions: Vivado 2025.1+
// Description: 
//   Configurable AXI4-Stream pipeline with backpressure support
//   Features:
//   - Parameterizable width and depth
//   - Optional pipeline enable
//   - Valid signal propagation
//   - TLAST support (optional)
// 
// Parameters:
//   TDATA_WIDTH : Data width (default 32)
//   DEPTH       : Pipeline stages (default 3)
//   USE_TLAST   : Enable TLAST signal (0/1)
// 
// Dependencies: none
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module my_pipeline_ip_v1_0 #(
    parameter integer TDATA_WIDTH = 32,
    parameter integer DEPTH = 3,
    parameter integer USE_TLAST = 0
) (
    input  wire                  aclk,
    input  wire                  aresetn,

    // AXI4-Stream Slave Interface
    input  wire [TDATA_WIDTH-1:0] s_axis_tdata,
    input  wire                  s_axis_tvalid,
    output wire                  s_axis_tready,
    input  wire                  s_axis_tlast,
    
    // AXI4-Stream Master Interface
    output wire [TDATA_WIDTH-1:0] m_axis_tdata,
    output wire                  m_axis_tvalid,
    input  wire                  m_axis_tready,
    output wire                  m_axis_tlast
);

    // ===========================================
    // Internal Pipeline Registers
    // ===========================================
    reg [TDATA_WIDTH-1:0] pipeline_data [0:DEPTH-1];
    reg [DEPTH-1:0]       pipeline_valid;
    reg [DEPTH-1:0]       pipeline_tlast;
    
    // ===========================================
    // Control Signals
    // ===========================================
    wire can_advance = (DEPTH == 1) ? m_axis_tready : pipeline_valid[DEPTH-1] ? m_axis_tready : 1'b1;
    wire accept_data = s_axis_tvalid && s_axis_tready;

    // ===========================================
    // TLAST Handling (conditional generate)
    // ===========================================
    generate if (USE_TLAST) begin
        // Pipeline for TLAST
        always @(posedge aclk) begin
            if (!aresetn) begin
                pipeline_tlast <= {DEPTH{1'b0}};
            end else if (can_advance) begin
                for (int i = DEPTH-1; i > 0; i--)
                    pipeline_tlast[i] <= pipeline_tlast[i-1];
                pipeline_tlast[0] <= s_axis_tlast;
            end
        end
        assign m_axis_tlast = pipeline_tlast[DEPTH-1];
    end else begin
        assign m_axis_tlast = 1'b0;
        always @(*) pipeline_tlast = {DEPTH{1'b0}};
    end endgenerate

    // ===========================================
    // Main Pipeline Logic
    // ===========================================
    always @(posedge aclk) begin
        if (!aresetn) begin
            pipeline_valid <= {DEPTH{1'b0}};
            for (int i = 0; i < DEPTH; i++)
                pipeline_data[i] <= {TDATA_WIDTH{1'b0}};
        end else if (can_advance) begin
            // Data pipeline
            for (int i = DEPTH-1; i > 0; i--)
                pipeline_data[i] <= pipeline_data[i-1];
            pipeline_data[0] <= s_axis_tdata;
            
            // Valid pipeline
            for (int i = DEPTH-1; i > 0; i--)
                pipeline_valid[i] <= pipeline_valid[i-1];
            pipeline_valid[0] <= s_axis_tvalid && s_axis_tready;
        end
    end

    // ===========================================
    // Output Assignments
    // ===========================================
    assign s_axis_tready = can_advance;
    assign m_axis_tdata  = pipeline_data[DEPTH-1];
    assign m_axis_tvalid = pipeline_valid[DEPTH-1];

endmodule