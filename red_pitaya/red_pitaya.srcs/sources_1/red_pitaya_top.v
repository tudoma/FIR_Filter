/**
 * $Id: red_pitaya_top.v 1271 2014-02-25 12:32:34Z matej.oblak $
 *
 * @brief Red Pitaya TOP module. It connects external pins and PS part with 
 *        other application modules. 
 *
 * @Author Matej Oblak
 *
 * (c) Red Pitaya  http://www.redpitaya.com
 *
 * This part of code is written in Verilog hardware description language (HDL).
 * Please visit http://en.wikipedia.org/wiki/Verilog
 * for more details on the language used herein.
 */





module red_pitaya_top
(
   // PS connections
   inout  [54-1: 0] FIXED_IO_mio       ,
   inout            FIXED_IO_ps_clk    ,
   inout            FIXED_IO_ps_porb   ,
   inout            FIXED_IO_ps_srstb  ,
   inout            FIXED_IO_ddr_vrn   ,
   inout            FIXED_IO_ddr_vrp   ,
   inout  [15-1: 0] DDR_addr           ,
   inout  [ 3-1: 0] DDR_ba             ,
   inout            DDR_cas_n          ,
   inout            DDR_ck_n           ,
   inout            DDR_ck_p           ,
   inout            DDR_cke            ,
   inout            DDR_cs_n           ,
   inout  [ 4-1: 0] DDR_dm             ,
   inout  [32-1: 0] DDR_dq             ,
   inout  [ 4-1: 0] DDR_dqs_n          ,
   inout  [ 4-1: 0] DDR_dqs_p          ,
   inout            DDR_odt            ,
   inout            DDR_ras_n          ,
   inout            DDR_reset_n        ,
   inout            DDR_we_n           ,

   // Red Pitaya periphery
  
   // ADC
   input  [16-1: 2] adc_dat_a_i        ,  // ADC CH1
   input  [16-1: 2] adc_dat_b_i        ,  // ADC CH2
   input            adc_clk_p_i        ,  // ADC data clock
   input            adc_clk_n_i        ,  // ADC data clock
   output [ 2-1: 0] adc_clk_o          ,  // optional ADC clock source
   output           adc_cdcs_o         ,  // ADC clock duty cycle stabilizer
  
   // DAC
   output [14-1: 0] dac_dat_o          ,  // DAC combined data
   output           dac_wrt_o          ,  // DAC write
   output           dac_sel_o          ,  // DAC channel select
   output           dac_clk_o          ,  // DAC clock
   output           dac_rst_o          ,  // DAC reset
  
   // PWM DAC
   output [ 4-1: 0] dac_pwm_o          ,  // serial PWM DAC

   // XADC
   input  [ 5-1: 0] vinp_i             ,  // voltages p
   input  [ 5-1: 0] vinn_i             ,  // voltages n

   // Expansion connector
   inout  [ 8-1: 0] exp_p_io           ,
   inout  [ 8-1: 0] exp_n_io           ,


   // SATA connector
   output [ 2-1: 0] daisy_p_o          ,  // line 1 is clock capable
   output [ 2-1: 0] daisy_n_o          ,
   input  [ 2-1: 0] daisy_p_i          ,  // line 1 is clock capable
   input  [ 2-1: 0] daisy_n_i          ,

   // LED
   output [ 8-1: 0] led_o       

);





//---------------------------------------------------------------------------------
//
//  Connections to PS

wire  [  4-1: 0] fclk               ; //[0]-125MHz, [1]-250MHz, [2]-50MHz, [3]-200MHz
wire  [  4-1: 0] frstn              ;

wire             ps_sys_clk         ;
wire             ps_sys_rstn        ;
wire  [ 32-1: 0] ps_sys_addr        ;
wire  [ 32-1: 0] ps_sys_wdata       ;
wire  [  4-1: 0] ps_sys_sel         ;
wire             ps_sys_wen         ;
wire             ps_sys_ren         ;
wire  [ 32-1: 0] ps_sys_rdata       ;
wire             ps_sys_err         ;
wire             ps_sys_ack         ;

  
red_pitaya_ps i_ps
(
  .FIXED_IO_mio       (  FIXED_IO_mio                ),
  .FIXED_IO_ps_clk    (  FIXED_IO_ps_clk             ),
  .FIXED_IO_ps_porb   (  FIXED_IO_ps_porb            ),
  .FIXED_IO_ps_srstb  (  FIXED_IO_ps_srstb           ),
  .FIXED_IO_ddr_vrn   (  FIXED_IO_ddr_vrn            ),
  .FIXED_IO_ddr_vrp   (  FIXED_IO_ddr_vrp            ),
  .DDR_addr           (  DDR_addr                    ),
  .DDR_ba             (  DDR_ba                      ),
  .DDR_cas_n          (  DDR_cas_n                   ),
  .DDR_ck_n           (  DDR_ck_n                    ),
  .DDR_ck_p           (  DDR_ck_p                    ),
  .DDR_cke            (  DDR_cke                     ),
  .DDR_cs_n           (  DDR_cs_n                    ),
  .DDR_dm             (  DDR_dm                      ),
  .DDR_dq             (  DDR_dq                      ),
  .DDR_dqs_n          (  DDR_dqs_n                   ),
  .DDR_dqs_p          (  DDR_dqs_p                   ),
  .DDR_odt            (  DDR_odt                     ),
  .DDR_ras_n          (  DDR_ras_n                   ),
  .DDR_reset_n        (  DDR_reset_n                 ),
  .DDR_we_n           (  DDR_we_n                    ),

  .fclk_clk_o      (  fclk               ),
  .fclk_rstn_o     (  frstn              ),

   // system read/write channel
  .sys_clk_o       (  ps_sys_clk         ),  // system clock
  .sys_rstn_o      (  ps_sys_rstn        ),  // system reset - active low
  .sys_addr_o      (  ps_sys_addr        ),  // system read/write address
  .sys_wdata_o     (  ps_sys_wdata       ),  // system write data
  .sys_sel_o       (  ps_sys_sel         ),  // system write byte select
  .sys_wen_o       (  ps_sys_wen         ),  // system write enable
  .sys_ren_o       (  ps_sys_ren         ),  // system read enable
  .sys_rdata_i     (  ps_sys_rdata       ),  // system read data
  .sys_err_i       (  ps_sys_err         ),  // system error indicator
  .sys_ack_i       (  ps_sys_ack         ),  // system acknowledge signal

   // SPI master
  .spi_ss_o        (                     ),  // select slave 0
  .spi_ss1_o       (                     ),  // select slave 1
  .spi_ss2_o       (                     ),  // select slave 2
  .spi_sclk_o      (                     ),  // serial clock
  .spi_mosi_o      (                     ),  // master out slave in
  .spi_miso_i      (  1'b0               ),  // master in slave out

   // SPI slave
  .spi_ss_i        (  1'b1               ),  // slave selected
  .spi_sclk_i      (  1'b0               ),  // serial clock
  .spi_mosi_i      (  1'b0               ),  // master out slave in
  .spi_miso_o      (                     )   // master in slave out

);





//---------------------------------------------------------------------------------
//
//  Analog peripherials 

// ADC clock duty cycle stabilizer is enabled
assign adc_cdcs_o = 1'b1 ;

// generating ADC clock is disabled
assign adc_clk_o = 2'b10;
//ODDR i_adc_clk_p ( .Q(adc_clk_o[0]), .D1(1'b1), .D2(1'b0), .C(fclk[0]), .CE(1'b1), .R(1'b0), .S(1'b0));
//ODDR i_adc_clk_n ( .Q(adc_clk_o[1]), .D1(1'b0), .D2(1'b1), .C(fclk[0]), .CE(1'b1), .R(1'b0), .S(1'b0));


wire             ser_clk     ;
wire             adc_clk     ;
reg              adc_rstn    ;
wire  [ 14-1: 0] adc_a       ;
wire  [ 14-1: 0] adc_b       ;
reg   [ 14-1: 0] dac_a       ;
reg   [ 14-1: 0] dac_b       ;
wire  [ 24-1: 0] dac_pwm_a   ;
wire  [ 24-1: 0] dac_pwm_b   ;
wire  [ 24-1: 0] dac_pwm_c   ;
wire  [ 24-1: 0] dac_pwm_d   ;
wire  [ 12-1: 0] adc_slx_a   ;
wire  [ 12-1: 0] adc_slx_b   ;
wire  [ 12-1: 0] adc_slx_c   ;
wire  [ 12-1: 0] adc_slx_d   ;
wire  [ 12-1: 0] adc_v       ;
wire  [ 12-1: 0] adc_temp    ;
wire  [ 12-1: 0] adc_pint    ;
wire  [ 12-1: 0] adc_paux    ;
wire  [ 12-1: 0] adc_bram    ;
wire  [ 12-1: 0] adc_int     ;
wire  [ 12-1: 0] adc_aux     ;
wire  [ 12-1: 0] adc_ddr     ;


wire  [ 14-1: 0] data_adc_a  ;  // Datenbus für ADC A
wire  [ 14-1: 0] data_adc_b  ;  // Datenbus für ADC B

wire  [ 14-1: 0] data_dac_a  ;  // Datenbus für DAC A
wire  [ 14-1: 0] data_dac_b  ;  // Datenbus für DAC B

red_pitaya_analog i_analog
(
  // ADC IC
  .adc_dat_a_i        (  adc_dat_a_i      ),  // CH 1
  .adc_dat_b_i        (  adc_dat_b_i      ),  // CH 2
  .adc_clk_p_i        (  adc_clk_p_i      ),  // data clock
  .adc_clk_n_i        (  adc_clk_n_i      ),  // data clock
  
  // DAC IC
  .dac_dat_o          (  dac_dat_o        ),  // combined data
  .dac_wrt_o          (  dac_wrt_o        ),  // write enable
  .dac_sel_o          (  dac_sel_o        ),  // channel select
  .dac_clk_o          (  dac_clk_o        ),  // clock
  .dac_rst_o          (  dac_rst_o        ),  // reset
  
  // PWM DAC
  .dac_pwm_o          (  dac_pwm_o        ),  // serial PWM DAC

  // Slow ADC
  .vinp_i             (  vinp_i           ),  // voltages p
  .vinn_i             (  vinn_i           ),  // voltages n

  // user interface
  .adc_dat_a_o        (  data_adc_a       ),  // adc_a            ),  // ADC CH1
  .adc_dat_b_o        (  data_adc_b       ),  // adc_b            ),  // ADC CH2
  .adc_clk_o          (  adc_clk          ),  // ADC received clock
  .adc_rst_i          (  adc_rstn         ),  // reset - active low
  .ser_clk_o          (  ser_clk          ),  // fast serial clock

  .dac_dat_a_i        (  data_dac_a       ),  //dac_a            ),  // DAC CH1
  .dac_dat_b_i        (  data_dac_b       ),  //dac_b            ),  // DAC CH2

  .adc_slx_a_o        (  adc_slx_a        ),  // slow ADC CH1
  .adc_slx_b_o        (  adc_slx_b        ),  // slow ADC CH2
  .adc_slx_c_o        (  adc_slx_c        ),  // slow ADC CH3
  .adc_slx_d_o        (  adc_slx_d        ),  // slow ADC CH4

  .dac_pwm_a_i        (  dac_pwm_a        ),  // slow DAC CH1
  .dac_pwm_b_i        (  dac_pwm_b        ),  // slow DAC CH2
  .dac_pwm_c_i        (  dac_pwm_c        ),  // slow DAC CH3
  .dac_pwm_d_i        (  dac_pwm_d        ),  // slow DAC CH4
  .dac_pwm_sync_o     (                   ),  // slow DAC sync

  .adc_v_o            (  adc_v            ),
  .adc_temp_o         (  adc_temp         ),
  .adc_pint_o         (  adc_pint         ),
  .adc_paux_o         (  adc_paux         ),
  .adc_bram_o         (  adc_bram         ),
  .adc_int_o          (  adc_int          ),
  .adc_aux_o          (  adc_aux          ),
  .adc_ddr_o          (  adc_ddr          )
);

always @(posedge adc_clk) begin
   adc_rstn <= frstn[0] ;
end





//---------------------------------------------------------------------------------
//
//  system bus decoder & multiplexer
//  it breaks memory addresses into 8 regions

wire                sys_clk    = ps_sys_clk      ;
wire                sys_rstn   = ps_sys_rstn     ;
wire  [    32-1: 0] sys_addr   = ps_sys_addr     ;
wire  [    32-1: 0] sys_wdata  = ps_sys_wdata    ;
wire  [     4-1: 0] sys_sel    = ps_sys_sel      ;
wire  [     8-1: 0] sys_wen    ;
wire  [     8-1: 0] sys_ren    ;
wire  [(8*32)-1: 0] sys_rdata  ;
wire  [ (8*1)-1: 0] sys_err    ;
wire  [ (8*1)-1: 0] sys_ack    ;
reg   [     8-1: 0] sys_cs     ;

always @(sys_addr) begin
   sys_cs = 8'h0 ;
   case (sys_addr[22:20])
      3'h0, 3'h1, 3'h2, 3'h3, 3'h4, 3'h5, 3'h6, 3'h7 : 
         sys_cs[sys_addr[22:20]] = 1'b1 ; 
   endcase
end

assign sys_wen = sys_cs & {8{ps_sys_wen}}  ;
assign sys_ren = sys_cs & {8{ps_sys_ren}}  ;


assign ps_sys_rdata = {32{sys_cs[ 0]}} & sys_rdata[ 0*32+31: 0*32] |
                      {32{sys_cs[ 1]}} & sys_rdata[ 1*32+31: 1*32] |
                      {32{sys_cs[ 2]}} & sys_rdata[ 2*32+31: 2*32] |
                      {32{sys_cs[ 3]}} & sys_rdata[ 3*32+31: 3*32] |
                      {32{sys_cs[ 4]}} & sys_rdata[ 4*32+31: 4*32] | 
                      {32{sys_cs[ 5]}} & sys_rdata[ 5*32+31: 5*32] |
                      {32{sys_cs[ 6]}} & sys_rdata[ 6*32+31: 6*32] |
                      {32{sys_cs[ 7]}} & sys_rdata[ 7*32+31: 7*32] ; 

assign ps_sys_err   = sys_cs[ 0] & sys_err[  0] |
                      sys_cs[ 1] & sys_err[  1] |
                      sys_cs[ 2] & sys_err[  2] |
                      sys_cs[ 3] & sys_err[  3] |
                      sys_cs[ 4] & sys_err[  4] | 
                      sys_cs[ 5] & sys_err[  5] |
                      sys_cs[ 6] & sys_err[  6] |
                      sys_cs[ 7] & sys_err[  7] ; 

assign ps_sys_ack   = sys_cs[ 0] & sys_ack[  0] |
                      sys_cs[ 1] & sys_ack[  1] |
                      sys_cs[ 2] & sys_ack[  2] |
                      sys_cs[ 3] & sys_ack[  3] |
                      sys_cs[ 4] & sys_ack[  4] | 
                      sys_cs[ 5] & sys_ack[  5] |
                      sys_cs[ 6] & sys_ack[  6] |
                      sys_cs[ 7] & sys_ack[  7] ; 


// region 1 connections
assign sys_rdata[ 1*32+31: 1*32] = 32'h0;
assign sys_err[1] = {1{1'b0}} ;
assign sys_ack[1] = {1{1'b1}} ;
// region 2 connections
assign sys_rdata[ 2*32+31: 2*32] = 32'h0;
assign sys_err[2] = {1{1'b0}} ;
assign sys_ack[2] = {1{1'b1}} ;
// region 3 connections
assign sys_rdata[ 3*32+31: 3*32] = 32'h0;
assign sys_err[3] = {1{1'b0}} ;
assign sys_ack[3] = {1{1'b1}} ;
// region 4 connections
assign sys_rdata[ 4*32+31: 4*32] = 32'h0;
assign sys_err[4] = {1{1'b0}} ;
assign sys_ack[4] = {1{1'b1}} ;
// region 5 connections
assign sys_rdata[ 5*32+31: 5*32] = 32'h0;
assign sys_err[5] = {1{1'b0}} ;
assign sys_ack[5] = {1{1'b1}} ;
// region 6 connections
assign sys_rdata[ 6*32+31: 6*32] = 32'h0;
assign sys_err[6] = {1{1'b0}} ;
assign sys_ack[6] = {1{1'b1}} ;
// region 7 connections
assign sys_rdata[ 7*32+31: 7*32] = 32'h0;
assign sys_err[7] = {1{1'b0}} ;
assign sys_ack[7] = {1{1'b1}} ;





//---------------------------------------------------------------------------------
//
//  House Keeping

wire  [  8-1: 0] exp_p_in     ;
wire  [  8-1: 0] exp_p_out    ;
wire  [  8-1: 0] exp_p_dir    ;
wire  [  8-1: 0] exp_n_in     ;
wire  [  8-1: 0] exp_n_out    ;
wire  [  8-1: 0] exp_n_dir    ;

red_pitaya_hk i_hk
(
  // LED
  .led_o           (  led_o                      ),  // LED output

  // Expansion connector
  .exp_p_dat_i     (  exp_p_in                   ),  // input data
  .exp_p_dat_o     (  exp_p_out                  ),  // output data
  .exp_p_dir_o     (  exp_p_dir                  ),  // 1-output enable
  .exp_n_dat_i     (  exp_n_in                   ),
  .exp_n_dat_o     (  exp_n_out                  ),
  .exp_n_dir_o     (  exp_n_dir                  ),

  .adc_v_i         (  adc_v                      ),  // measured temperatures and voltage supplies
  .adc_temp_i      (  adc_temp                   ),
  .adc_pint_i      (  adc_pint                   ),
  .adc_paux_i      (  adc_paux                   ),
  .adc_bram_i      (  adc_bram                   ),
  .adc_int_i       (  adc_int                    ),
  .adc_aux_i       (  adc_aux                    ),
  .adc_ddr_i       (  adc_ddr                    ),

   // System bus
  .sys_clk_i       (  sys_clk                    ),  // clock
  .sys_rstn_i      (  sys_rstn                   ),  // reset - active low
  .sys_addr_i      (  sys_addr                   ),  // address
  .sys_wdata_i     (  sys_wdata                  ),  // write data
  .sys_sel_i       (  sys_sel                    ),  // write byte select
  // region 0 connections
  .sys_wen_i       (  sys_wen[0]                 ),  // write enable
  .sys_ren_i       (  sys_ren[0]                 ),  // read enable
  .sys_rdata_o     (  sys_rdata[ 0*32+31: 0*32]  ),  // read data
  .sys_err_o       (  sys_err[0]                 ),  // error indicator
  .sys_ack_o       (  sys_ack[0]                 )   // acknowledge signal
);



genvar GV ;

generate
for( GV = 0 ; GV < 8 ; GV = GV + 1)
begin : exp_iobuf
  IOBUF i_iobufp (.O(exp_p_in[GV]), .IO(exp_p_io[GV]), .I(exp_p_out[GV]), .T(!exp_p_dir[GV]) );
  IOBUF i_iobufn (.O(exp_n_in[GV]), .IO(exp_n_io[GV]), .I(exp_n_out[GV]), .T(!exp_n_dir[GV]) );
end
endgenerate





//---------------------------------------------------------------------------------
//
//  Daisy chain
//  (external connections only)

red_pitaya_daisy i_daisy
(
   // SATA connector
  .daisy_p_o       (  daisy_p_o                  ),  // line 1 is clock capable
  .daisy_n_o       (  daisy_n_o                  ),
  .daisy_p_i       (  daisy_p_i                  ),  // line 1 is clock capable
  .daisy_n_i       (  daisy_n_i                  ),

   // Data
  .ser_clk_i       (  ser_clk                    )   // high speed serial
);

////////////////////////////////////////////////////////////////////////////////////////
//                                                                                    //
//      Initialization MATLAB HDL CODER                                               //      
//                                                                                    //
//      IN1:  data_adc_a     IN2:    data_adc_b              line 234/235             //
//                                                                                    //              
//      OUT1: data_dac_a     OUT2:   data_dac_b              line 240/241             //
//                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////


endmodule

