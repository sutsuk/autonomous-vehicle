`default_nettype none

module AutonomousVehicle
  (
    input  sysclk,
    input  [3:0] sw,
    input  [3:0] btn,
    output [3:0] led,
    inout  [7:0] ja,
    inout  [7:0] jb,
    inout  [7:0] jc,
    inout  [7:0] jd,
    inout  [7:0] je,
    inout  [14:0] DDR_addr,
    inout  [2:0] DDR_ba,
    inout  DDR_cas_n,
    inout  DDR_ck_n,
    inout  DDR_ck_p,
    inout  DDR_cke,
    inout  DDR_cs_n,
    inout  [3:0] DDR_dm,
    inout  [31:0] DDR_dq,
    inout  [3:0] DDR_dqs_n,
    inout  [3:0] DDR_dqs_p,
    inout  DDR_odt,
    inout  DDR_ras_n,
    inout  DDR_reset_n,
    inout  DDR_we_n,
    inout  FIXED_IO_ddr_vrn,
    inout  FIXED_IO_ddr_vrp,
    inout  FIXED_IO_mio,
    inout  FIXED_IO_ps_clk,
    inout  FIXED_IO_ps_porb,
    inout  FIXED_IO_ps_srstb
  );
  
  wire sysclk_ibuf, clk;
  IBUFG ibuf_clk(.I(sysclk), .O(sysclk_ibuf));
  BUFG buf_clk(.I(sysclk_ibuf), .O(clk));

  wire ps_clko; 
  wire [31:0] ps_gpio_i0, ps_gpio_o0, ps_gpio_i1, ps_gpio_o1;
  wire ps_nrst;
  Zynq_PS Zynq_PS_0 (
    .DDR_addr(DDR_addr), .DDR_ba(DDR_ba), .DDR_cas_n(DDR_cas_n), .DDR_ck_n(DDR_ck_n), .DDR_ck_p(DDR_ck_p), 
    .DDR_dm(DDR_dm), .DDR_dq(DDR_dq), .DDR_dqs_n(DDR_dqs_n), .DDR_dqs_p(DDR_dqs_p), .DDR_odt(DDR_odt),
    .DDR_ras_n(DDR_ras_n), .DDR_reset_n(DDR_reset_n), .DDR_we_n(DDR_we_n), 
    .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn), .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
    .FIXED_IO_mio(FIXED_IO_mio), .FIXED_IO_ps_clk(FIXED_IO_ps_clk), .FIXED_IO_ps_porb(FIXED_IO_ps_porb), .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
    .ps_clk(ps_clk), .ps_gpio_i0(ps_gpio_i0), .ps_gpio_i1(ps_gpio_i1), .ps_gpio_o0(ps_gpio_o0), .ps_gpio_o1(ps_gpio_o1), .ps_nrst(ps_nrst)
  );

  reg [31:0] ps_counter;
  reg [3:0] sw_r, btn_r;
  always @(posedge ps_clko) begin
    if (!ps_rstno) begin
      ps_counter <= 0;
    end else begin
      ps_counter <= ps_counter + 1;
    end
    if (ps_counter[15:0] == 0) begin
      sw_r <= sw;
      btn_r <= btn;
    end
  end

  assign ps_gpi01 = {12'b0, sw_r, 12'b0, btn_r};
  assign ps_gpi02 = ps_counter;

  assign led = ps_gpo01;
endmodule

`default_nettype wire
