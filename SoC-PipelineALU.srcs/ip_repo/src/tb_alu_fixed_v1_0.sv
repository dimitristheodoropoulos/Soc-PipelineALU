`timescale 1ns / 1ps

module tb_alu_fixed_v1_0;

  reg S_AXI_ACLK;
  reg S_AXI_ARESETN;

  reg [4:0]  S_AXI_AWADDR;
  reg        S_AXI_AWVALID;
  wire       S_AXI_AWREADY;

  reg [31:0] S_AXI_WDATA;
  reg [3:0]  S_AXI_WSTRB;
  reg        S_AXI_WVALID;
  wire       S_AXI_WREADY;

  wire [1:0] S_AXI_BRESP;
  wire       S_AXI_BVALID;
  reg        S_AXI_BREADY;

  reg [4:0]  S_AXI_ARADDR;
  reg        S_AXI_ARVALID;
  wire       S_AXI_ARREADY;

  wire [31:0] S_AXI_RDATA;
  wire [1:0]  S_AXI_RRESP;
  wire       S_AXI_RVALID;
  reg        S_AXI_RREADY;

  reg [31:0] result;  // <-- Εδώ, έξω από το initial

  alu_fixed_v1_0 dut (
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_RREADY(S_AXI_RREADY)
  );

  initial S_AXI_ACLK = 0;
  always #5 S_AXI_ACLK = ~S_AXI_ACLK;

  // AXI write task
  task axi_write(input [4:0] addr, input [31:0] data);
  begin
    @(posedge S_AXI_ACLK);
    S_AXI_AWADDR = addr;
    S_AXI_AWVALID = 1;
    S_AXI_WDATA = data;
    S_AXI_WSTRB = 4'b1111;
    S_AXI_WVALID = 1;
    S_AXI_BREADY = 0;

    wait (S_AXI_AWREADY && S_AXI_WREADY);
    @(posedge S_AXI_ACLK);
    S_AXI_AWVALID = 0;
    S_AXI_WVALID = 0;
    S_AXI_BREADY = 1;

    wait (S_AXI_BVALID);
    @(posedge S_AXI_ACLK);
    S_AXI_BREADY = 0;
  end
  endtask

  // AXI read task
  task axi_read(input [4:0] addr, output [31:0] data);
  begin
    @(posedge S_AXI_ACLK);
    S_AXI_ARADDR = addr;
    S_AXI_ARVALID = 1;
    S_AXI_RREADY = 0;

    wait (S_AXI_ARREADY);
    @(posedge S_AXI_ACLK);
    S_AXI_ARVALID = 0;
    S_AXI_RREADY = 1;

    wait (S_AXI_RVALID);
    data = S_AXI_RDATA;
    @(posedge S_AXI_ACLK);
    S_AXI_RREADY = 0;
  end
  endtask

  initial begin
    S_AXI_AWADDR = 0;
    S_AXI_AWVALID = 0;
    S_AXI_WDATA = 0;
    S_AXI_WSTRB = 0;
    S_AXI_WVALID = 0;
    S_AXI_BREADY = 0;
    S_AXI_ARADDR = 0;
    S_AXI_ARVALID = 0;
    S_AXI_RREADY = 0;

    S_AXI_ARESETN = 0;
    repeat(5) @(posedge S_AXI_ACLK);
    S_AXI_ARESETN = 1;
    @(posedge S_AXI_ACLK);

    axi_write(0, 32'd15);
    axi_write(4, 32'd10);
    axi_write(8, 32'd0);

    #20;
    axi_read(12, result);
    $display("ADD Result: %d (expected 25)", result);

    axi_write(0, 32'd25);
    axi_write(4, 32'd5);
    axi_write(8, 32'd1);

    #20;
    axi_read(12, result);
    $display("SUB Result: %d (expected 20)", result);

    axi_write(0, 32'hF0F0F0F0);
    axi_write(4, 32'h0F0F0F0F);
    axi_write(8, 32'd2);

    #20;
    axi_read(12, result);
    $display("AND Result: 0x%h (expected 0x00000000)", result);

    axi_write(0, 32'hF0F0F0F0);
    axi_write(4, 32'h0F0F0F0F);
    axi_write(8, 32'd3);

    #20;
    axi_read(12, result);
    $display("OR Result: 0x%h (expected 0xFFFFFFFF)", result);

    $finish;
  end

endmodule
