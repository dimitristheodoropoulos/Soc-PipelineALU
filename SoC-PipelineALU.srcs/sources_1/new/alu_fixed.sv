`timescale 1ns / 1ps

module alu_fixed_v1_0 #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5,  // Αυξημένο σε 5 bits για να καλύψει 5 registers
    parameter SUPPORT_ADD = 1,
    parameter SUPPORT_SUB = 1,
    parameter SUPPORT_MUL = 1,
    parameter SUPPORT_AND = 1, // Νέος παράμετρος
    parameter SUPPORT_OR  = 1  // Νέος παράμετρος
)(
    // AXI Clock and Reset
    input  wire                 S_AXI_ACLK,
    input  wire                 S_AXI_ARESETN,

    // AXI4-Lite Slave Write Address Channel
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input  wire                 S_AXI_AWVALID,
    output wire                 S_AXI_AWREADY,

    // AXI4-Lite Slave Write Data Channel
    input  wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1:0] S_AXI_WSTRB,
    input  wire                 S_AXI_WVALID,
    output wire                 S_AXI_WREADY,

    // AXI4-Lite Slave Write Response Channel
    output wire [1:0]           S_AXI_BRESP,
    output wire                 S_AXI_BVALID,
    input  wire                 S_AXI_BREADY,

    // AXI4-Lite Slave Read Address Channel
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input  wire                 S_AXI_ARVALID,
    output wire                 S_AXI_ARREADY,

    // AXI4-Lite Slave Read Data Channel
    output wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output wire [1:0]           S_AXI_RRESP,
    output wire                 S_AXI_RVALID,
    input  wire                 S_AXI_RREADY
);

    //=================================================
    // AXI4-Lite Internal Signals
    //=================================================
    reg                 axi_bvalid;
    reg [1:0]           axi_bresp;
    reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
    reg [1:0]           axi_rresp;
    reg                 axi_rvalid;

    //=================================================
    // Register Definitions (32-bit)
    //=================================================
    reg [31:0] reg_a = 0;      // Operand A (0x00)
    reg [31:0] reg_b = 0;      // Operand B (0x04)
    reg [2:0]  opcode = 0;     // Operation code (0x08) - Αυξήθηκε σε 3 bits για περισσότερες πράξεις
    reg [31:0] result = 0;     // ALU result (0x0C)
    reg [2:0]  status = 0;     // Status flags (0x10) [2:overflow, 1:zero, 0:negative]

    //=================================================
    // ALU Operation Codes - Τώρα 3-bit opcodes
    //=================================================
    localparam OP_ADD = 3'b000;
    localparam OP_SUB = 3'b001;
    localparam OP_MUL = 3'b010;
    localparam OP_AND = 3'b011; // Νέος opcode
    localparam OP_OR  = 3'b100; // Νέος opcode

    //=================================================
    // AXI <-> Register Mapping
    //=================================================
    localparam ADDR_REG_A    = 0;  // 0x00
    localparam ADDR_REG_B    = 4;  // 0x04
    localparam ADDR_OPCODE   = 8;  // 0x08
    localparam ADDR_RESULT   = 12; // 0x0C
    localparam ADDR_STATUS   = 16; // 0x10

    //=================================================
    // ALU Core Logic
    //=================================================
    always @(*) begin
        // Signed versions for arithmetic
        automatic reg signed [31:0] A_s = reg_a;
        automatic reg signed [31:0] B_s = reg_b;
        automatic reg signed [63:0] mul_result;

        // Default values
        result = 0;
        status = 0;
        
        case (opcode)
            OP_ADD: if (SUPPORT_ADD) begin
                result = reg_a + reg_b;
                // Overflow detection for signed addition
                if ((A_s > 0 && B_s > 0 && result[31] == 1) || 
                    (A_s < 0 && B_s < 0 && result[31] == 0)) 
                    status[2] = 1; 
            end
            OP_SUB: if (SUPPORT_SUB) begin
                result = reg_a - reg_b;
                // Overflow detection for signed subtraction
                if ((A_s > 0 && B_s < 0 && result[31] == 1) || 
                    (A_s < 0 && B_s > 0 && result[31] == 0)) 
                    status[2] = 1;
            end
            OP_MUL: if (SUPPORT_MUL) begin
                mul_result = A_s * B_s;
                result = mul_result[31:0];  // Keep lower 32 bits
                status[2] = |mul_result[63:32];  // Overflow if any upper bits set
            end
            OP_AND: if (SUPPORT_AND) begin // Νέα πράξη AND
                result = reg_a & reg_b;
                status[2] = 0; // No overflow for bitwise operations
            end
            OP_OR: if (SUPPORT_OR) begin   // Νέα πράξη OR
                result = reg_a | reg_b;
                status[2] = 0; // No overflow for bitwise operations
            end
            default: result = 0; // Unknown opcode, default to 0
        endcase
        
        // Set status flags
        status[1] = (result == 0);      // Zero flag
        status[0] = result[31];         // Negative flag
    end

    //=================================================
    // AXI Ready/Valid Signals - Simplified Always Ready
    //=================================================
    // S_AXI_AWREADY: Always ready to accept write address
    assign S_AXI_AWREADY = 1'b1; 
    // S_AXI_WREADY: Always ready to accept write data
    assign S_AXI_WREADY  = 1'b1; 
    // S_AXI_ARREADY: Always ready to accept read address
    assign S_AXI_ARREADY = 1'b1; 

    // AXI Read Data Channel (Outputs directly from internal regs)
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // AXI Write Response Channel
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;

    //=================================================
    // AXI Registers Update Logic
    //=================================================
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            // Reset all internal AXI state signals
            axi_bvalid <= 1'b0;
            axi_bresp  <= 2'b0;
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0;
            axi_rdata  <= 0;
            // Also reset ALU registers
            reg_a      <= 0;
            reg_b      <= 0;
            opcode     <= 0;
            // result and status are combinational, don't need explicit reset here
        end else begin
            // --- Write Transaction Logic ---
            // If AWVALID and WVALID are high (and we are always ready), then process write
            // and assert BVALID in the next cycle.
            if (S_AXI_AWVALID && S_AXI_WVALID && ~axi_bvalid) begin // Check if a new transaction starts and no pending BVALID
                // Register write logic
                case (S_AXI_AWADDR) // Use S_AXI_AWADDR directly as we're always ready
                    ADDR_REG_A:  reg_a  <= S_AXI_WDATA;
                    ADDR_REG_B:  reg_b  <= S_AXI_WDATA;
                    ADDR_OPCODE: opcode <= S_AXI_WDATA[2:0]; // Τώρα διαβάζει 3 bits για τον opcode
                    default: ; // Ignore writes to read-only or invalid registers
                endcase
                axi_bvalid <= 1'b1; // Assert BVALID for one cycle
                axi_bresp  <= 2'b0; // OKAY response
            end else if (axi_bvalid && S_AXI_BREADY) begin
                // Master has accepted the write response, de-assert BVALID
                axi_bvalid <= 1'b0;
            end else if (axi_bvalid && ~S_AXI_BREADY) begin
                // If BVALID is asserted but master is not ready, keep BVALID high
                axi_bvalid <= 1'b1;
            end else begin
                // No write transaction or no pending BVALID, keep low
                axi_bvalid <= 1'b0;
            end


            // --- Read Transaction Logic ---
            // If ARVALID is high (and we are always ready), then process read
            // and assert RVALID in the next cycle.
            if (S_AXI_ARVALID && ~axi_rvalid) begin // Check if a new transaction starts and no pending RVALID
                // Register read logic: prepare data for output
                case (S_AXI_ARADDR) // Use S_AXI_ARADDR directly as we're always ready
                    ADDR_REG_A:    axi_rdata <= reg_a;
                    ADDR_REG_B:    axi_rdata <= reg_b;
                    ADDR_OPCODE:   axi_rdata <= {29'b0, opcode}; // Τώρα διαβάζει 3 bits για τον opcode
                    ADDR_RESULT:   axi_rdata <= result;
                    ADDR_STATUS:   axi_rdata <= {29'b0, status};
                    default:       axi_rdata <= 32'hDEADBEEF; // Debug value for invalid address
                endcase
                axi_rvalid <= 1'b1; // Assert RVALID for one cycle
                axi_rresp  <= 2'b0; // OKAY response
            end else if (axi_rvalid && S_AXI_RREADY) begin
                // Master has accepted the read data, de-assert RVALID
                axi_rvalid <= 1'b0;
            end else if (axi_rvalid && ~S_AXI_RREADY) begin
                // If RVALID is asserted but master is not ready, keep RVALID high
                axi_rvalid <= 1'b1;
            end else begin
                // No read transaction or no pending RVALID, keep low
                axi_rvalid <= 1'b0;
            end
        end
    end

endmodule