`timescale 1ns / 1ps

module tb_my_pipeline_ip_v1_0;

  // Παραμετροποίηση
  localparam TDATA_WIDTH = 32;

  // Σήματα
  reg                  aclk;
  reg                  aresetn;

  reg  [TDATA_WIDTH-1:0] s_axis_tdata;
  reg                   s_axis_tvalid;
  wire                  s_axis_tready;
  reg                   s_axis_tlast;

  wire [TDATA_WIDTH-1:0] m_axis_tdata;
  wire                  m_axis_tvalid;
  reg                   m_axis_tready;
  wire                  m_axis_tlast;

  // Instantiate DUT
  my_pipeline_ip_v1_0 #(
    .TDATA_WIDTH(TDATA_WIDTH),
    .DEPTH(3),
    .USE_TLAST(1)
  ) dut (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tlast(s_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tlast(m_axis_tlast)
  );

  // Clock generation: 10ns period (100 MHz)
  initial aclk = 0;
  always #5 aclk = ~aclk;

  // Test stimulus
  initial begin
    // Αρχικοποίηση σημάτων
    aresetn = 0;
    s_axis_tdata = 0;
    s_axis_tvalid = 0;
    s_axis_tlast = 0;
    m_axis_tready = 1; // πάντα έτοιμος να διαβάσει

    // Reset για 20ns
    #20;
    aresetn = 1;

    // Περίοδος αναμονής για σταθεροποίηση
    #10;

    // Στείλε 3 δεδομένα με valid και tlast
    send_data(32'd123, 0);
    send_data(32'd456, 0);
    send_data(32'd789, 1);

    // Περίμενε να περάσουν όλα
    #50;

    $finish;
  end

  // Task για αποστολή δεδομένων με handshake valid/ready
  task send_data(input [TDATA_WIDTH-1:0] data, input bit last);
    begin
      @(posedge aclk);
      s_axis_tdata <= data;
      s_axis_tvalid <= 1;
      s_axis_tlast <= last;
      wait (s_axis_tready == 1);
      @(posedge aclk);
      s_axis_tvalid <= 0;
      s_axis_tlast <= 0;
    end
  endtask

  // Προβολή εξόδου (προαιρετικό, για παρακολούθηση)
  always @(posedge aclk) begin
    if (m_axis_tvalid && m_axis_tready) begin
      $display("Time %0t: Output data = %d, TLAST = %b", $time, m_axis_tdata, m_axis_tlast);
    end
  end

endmodule
