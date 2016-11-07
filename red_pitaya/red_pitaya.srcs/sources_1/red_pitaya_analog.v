/**
 * $Id: red_pitaya_analog.v 964 2014-01-24 12:58:17Z matej.oblak $
 *
 * @brief Red Pitaya analog module. Connects to ADC & DAC pins.
 *
 * @Author Matej Oblak
 *
 * (c) Red Pitaya  http://www.redpitaya.com
 *
 * This part of code is written in Verilog hardware description language (HDL).
 * Please visit http://en.wikipedia.org/wiki/Verilog
 * for more details on the language used herein.
 */


/**
 * GENERAL DESCRIPTION:
 *
 * Interace module between fast ADC and DAC IC.  
 *
 *
 *                 /------------\      
 *   ADC DAT ----> | RAW -> 2's | ----> ADC DATA TO USER
 *                 \------------/
 *                       ^
 *                       |
 *                    /-----\
 *   ADC CLK -------> | PLL |
 *                    \-----/
 *                       |
 *                       ˇ
 *                 /------------\
 *   DAC DAT <---- | RAW <- 2's | <---- DAC DATA FROM USER
 *                 \------------/
 *                       |
 *                       ˇ
 *                   /-------\
 *   DAC PWM <------ |  PWM  | <------- SLOW DAC DATA FROM USER
 *                   \-------/
 *
 *
 * ADC clock is used for main clock domain, from this double clock is made which
 * is used for driving DAC IC (using DDR transfer) and PWM counters.
 *
 * ADC interface gives unsigned number format with negative slope because 
 * input amplifier. This is transfomed into 2's complement wich is more usable in
 * digital world.
 *
 * For sending data to DAC values has to be first translated from 2's format to 
 * unsigned format, where negative output amplifier gain is taken into account.
 * Interface to DAC is DDR, positive edge used for CHA and negative for CHB.
 
 * PWM in created with counter running on 2xDAC clock. Each 16 cycles of PWM_FULL
 * counts new value is taken. Upper 8 bits are used for dac_pwm_vcnt which defines
 * PWM rate of output. This repeates 16x times, where lower 16bits of input data
 * defines if ration of dac_pwm_vcnt is one cycle more.
 * 
 */





module red_pitaya_analog
(
  // ADC IC
  input    [ 16-1: 2] adc_dat_a_i        ,  //!< ADC IC CHA data connection
  input    [ 16-1: 2] adc_dat_b_i        ,  //!< ADC IC CHB data connection
  input               adc_clk_p_i        ,  //!< ADC IC clock P connection
  input               adc_clk_n_i        ,  //!< ADC IC clock N connection
  
  // DAC IC
  output   [ 14-1: 0] dac_dat_o          ,  //!< DAC IC combined data
  output              dac_wrt_o          ,  //!< DAC IC write enable
  output              dac_sel_o          ,  //!< DAC IC channel select
  output              dac_clk_o          ,  //!< DAC IC clock
  output              dac_rst_o          ,  //!< DAC IC reset
  
  // PWM DAC
  output   [  4-1: 0] dac_pwm_o          ,  //!< DAC PWM - driving RC

  // Slow ADC
  input    [  5-1: 0] vinp_i             ,  //!< voltages p
  input    [  5-1: 0] vinn_i             ,  //!< voltages n

  // user interface
  output   [ 14-1: 0] adc_dat_a_o        ,  //!< ADC CHA data
  output   [ 14-1: 0] adc_dat_b_o        ,  //!< ADC CHB data
  output              adc_clk_o          ,  //!< ADC clock
  input               adc_rst_i          ,  //!< ADC reset - active low
  output              ser_clk_o          ,  //!< fast serial clock

  input    [ 14-1: 0] dac_dat_a_i        ,  //!< DAC CHA data
  input    [ 14-1: 0] dac_dat_b_i        ,  //!< DAC CHB data

  output   [ 12-1: 0] adc_slx_a_o        ,  //!< Slow ADC CHA
  output   [ 12-1: 0] adc_slx_b_o        ,  //!< Slow ADC CHB
  output   [ 12-1: 0] adc_slx_c_o        ,  //!< Slow ADC CHC
  output   [ 12-1: 0] adc_slx_d_o        ,  //!< Slow ADC CHD

  input    [ 24-1: 0] dac_pwm_a_i        ,  //!< DAC PWM CHA
  input    [ 24-1: 0] dac_pwm_b_i        ,  //!< DAC PWM CHB
  input    [ 24-1: 0] dac_pwm_c_i        ,  //!< DAC PWM CHC
  input    [ 24-1: 0] dac_pwm_d_i        ,  //!< DAC PWM CHD
  output              dac_pwm_sync_o     ,  //!< DAC PWM sync

  output   [ 12-1: 0] adc_v_o            ,
  output   [ 12-1: 0] adc_temp_o         ,
  output   [ 12-1: 0] adc_pint_o         ,
  output   [ 12-1: 0] adc_paux_o         ,
  output   [ 12-1: 0] adc_bram_o         ,
  output   [ 12-1: 0] adc_int_o          ,
  output   [ 12-1: 0] adc_aux_o          ,
  output   [ 12-1: 0] adc_ddr_o
);





//---------------------------------------------------------------------------------
//
//  ADC input registers

reg  [14-1: 0] adc_dat_a  ;
reg  [14-1: 0] adc_dat_b  ;
wire           adc_clk_in ;
wire           adc_clk    ;

IBUFDS i_clk ( .I(adc_clk_p_i), .IB(adc_clk_n_i), .O(adc_clk_in));  // differential clock input
BUFG i_adc_buf  (.O(adc_clk), .I(adc_clk_in)); // use global clock buffer

always @(posedge adc_clk) begin
   adc_dat_a <= adc_dat_a_i[16-1:2]; // lowest 2 bits reserved for 16bit ADC
   adc_dat_b <= adc_dat_b_i[16-1:2];
end
    
assign adc_dat_a_o = {adc_dat_a[14-1], ~adc_dat_a[14-2:0]}; // transform into 2's complement (negative slope)
assign adc_dat_b_o = {adc_dat_b[14-1], ~adc_dat_b[14-2:0]};
assign adc_clk_o   =  adc_clk ;





//---------------------------------------------------------------------------------
//
//  Fast DAC - DDR interface

wire  dac_clk_fb      ;
wire  dac_clk_fb_buf  ;
wire  dac_clk_out     ;
wire  dac_2clk_out    ;
wire  dac_clk         ;
wire  dac_2clk        ;
wire  dac_locked      ;
reg   dac_rst         ;
wire  ser_clk_out     ;
wire  dac_2ph_out     ;
wire  dac_2ph         ;

PLLE2_ADV
#(
   .BANDWIDTH            ( "OPTIMIZED"   ),
   .COMPENSATION         ( "ZHOLD"       ),
   .DIVCLK_DIVIDE        (  1            ),
   .CLKFBOUT_MULT        (  8            ),
   .CLKFBOUT_PHASE       (  0.000        ),
   .CLKOUT0_DIVIDE       (  8            ),
   .CLKOUT0_PHASE        (  0.000        ),
   .CLKOUT0_DUTY_CYCLE   (  0.5          ),
   .CLKOUT1_DIVIDE       (  4            ),
   .CLKOUT1_PHASE        (  0.000        ),
   .CLKOUT1_DUTY_CYCLE   (  0.5          ),
   .CLKOUT2_DIVIDE       (  4            ),
   .CLKOUT2_PHASE        ( -45.000       ),
   .CLKOUT2_DUTY_CYCLE   (  0.5          ),
   .CLKOUT3_DIVIDE       (  4            ),  // 4->250MHz, 2->500MHz
   .CLKOUT3_PHASE        (  0.000        ),
   .CLKOUT3_DUTY_CYCLE   (  0.5          ),
   .CLKIN1_PERIOD        (  8.000        ),
   .REF_JITTER1          (  0.010        )
)
i_dac_plle2
(
   // Output clocks
   .CLKFBOUT     (  dac_clk_fb     ),
   .CLKOUT0      (  dac_clk_out    ),
   .CLKOUT1      (  dac_2clk_out   ),
   .CLKOUT2      (  dac_2ph_out    ),
   .CLKOUT3      (  ser_clk_out    ),
   .CLKOUT4      (        ),
   .CLKOUT5      (        ),
   // Input clock control
   .CLKFBIN      (  dac_clk_fb_buf ),
   .CLKIN1       (  adc_clk        ),
   .CLKIN2       (  1'b0           ),
   // Tied to always select the primary input clock
   .CLKINSEL     (  1'b1           ),
   // Ports for dynamic reconfiguration
   .DADDR        (  7'h0           ),
   .DCLK         (  1'b0           ),
   .DEN          (  1'b0           ),
   .DI           (  16'h0          ),
   .DO           (        ),
   .DRDY         (        ),
   .DWE          (  1'b0           ),
   // Other control and status signals
   .LOCKED       (  dac_locked     ),
   .PWRDWN       (  1'b0           ),
   .RST          ( !adc_rst_i      )
);

BUFG i_dacfb_buf   (.O(dac_clk_fb_buf), .I(dac_clk_fb));
BUFG i_dac1_buf    (.O(dac_clk),        .I(dac_clk_out));
BUFG i_dac2_buf    (.O(dac_2clk),       .I(dac_2clk_out));
BUFG i_dac2ph_buf  (.O(dac_2ph),        .I(dac_2ph_out));
BUFG i_ser_buf     (.O(ser_clk_o),      .I(ser_clk_out));


reg  [14-1: 0] dac_dat_a  ;
reg  [14-1: 0] dac_dat_b  ;

// output registers + signed to unsigned (also to negative slope)
always @(posedge dac_clk) begin
   dac_dat_a <= {dac_dat_a_i[14-1], ~dac_dat_a_i[14-2:0]};
   dac_dat_b <= {dac_dat_b_i[14-1], ~dac_dat_b_i[14-2:0]};
   dac_rst   <= !dac_locked;
end


ODDR i_dac_clk ( .Q(dac_clk_o), .D1(1'b0), .D2(1'b1), .C(dac_2ph),  .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_wrt ( .Q(dac_wrt_o), .D1(1'b0), .D2(1'b1), .C(dac_2clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_sel ( .Q(dac_sel_o), .D1(1'b1), .D2(1'b0), .C(dac_clk ), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_rst ( .Q(dac_rst_o), .D1(dac_rst), .D2(dac_rst), .C(dac_clk ), .CE(1'b1), .R(1'b0), .S(1'b0) );

ODDR i_dac_0  ( .Q(dac_dat_o[ 0]), .D1(dac_dat_b[ 0]), .D2(dac_dat_a[ 0]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_1  ( .Q(dac_dat_o[ 1]), .D1(dac_dat_b[ 1]), .D2(dac_dat_a[ 1]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_2  ( .Q(dac_dat_o[ 2]), .D1(dac_dat_b[ 2]), .D2(dac_dat_a[ 2]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_3  ( .Q(dac_dat_o[ 3]), .D1(dac_dat_b[ 3]), .D2(dac_dat_a[ 3]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_4  ( .Q(dac_dat_o[ 4]), .D1(dac_dat_b[ 4]), .D2(dac_dat_a[ 4]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_5  ( .Q(dac_dat_o[ 5]), .D1(dac_dat_b[ 5]), .D2(dac_dat_a[ 5]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_6  ( .Q(dac_dat_o[ 6]), .D1(dac_dat_b[ 6]), .D2(dac_dat_a[ 6]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_7  ( .Q(dac_dat_o[ 7]), .D1(dac_dat_b[ 7]), .D2(dac_dat_a[ 7]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_8  ( .Q(dac_dat_o[ 8]), .D1(dac_dat_b[ 8]), .D2(dac_dat_a[ 8]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_9  ( .Q(dac_dat_o[ 9]), .D1(dac_dat_b[ 9]), .D2(dac_dat_a[ 9]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_10 ( .Q(dac_dat_o[10]), .D1(dac_dat_b[10]), .D2(dac_dat_a[10]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_11 ( .Q(dac_dat_o[11]), .D1(dac_dat_b[11]), .D2(dac_dat_a[11]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_12 ( .Q(dac_dat_o[12]), .D1(dac_dat_b[12]), .D2(dac_dat_a[12]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );
ODDR i_dac_13 ( .Q(dac_dat_o[13]), .D1(dac_dat_b[13]), .D2(dac_dat_a[13]), .C(dac_clk), .CE(1'b1), .R(dac_rst), .S(1'b0) );





//---------------------------------------------------------------------------------
//
//  Slow DAC - PWM

localparam PWM_FULL = 8'd156 ; // 100% value

reg  [ 4-1: 0] dac_pwm_bcnt   ;
reg  [16-1: 0] dac_pwm_ba     ;
reg  [16-1: 0] dac_pwm_bb     ;
reg  [16-1: 0] dac_pwm_bc     ;
reg  [16-1: 0] dac_pwm_bd     ;
reg  [ 8-1: 0] dac_pwm_vcnt   ;
reg  [ 8-1: 0] dac_pwm_vcnt_r ;
reg  [ 8-1: 0] dac_pwm_va     ;
reg  [ 8-1: 0] dac_pwm_vb     ;
reg  [ 8-1: 0] dac_pwm_vc     ;
reg  [ 8-1: 0] dac_pwm_vd     ;
reg  [ 8-1: 0] dac_pwm_va_r   ;
reg  [ 8-1: 0] dac_pwm_vb_r   ;
reg  [ 8-1: 0] dac_pwm_vc_r   ;
reg  [ 8-1: 0] dac_pwm_vd_r   ;
reg  [ 4-1: 0] dac_pwm        ;
reg  [ 4-1: 0] dac_pwm_r      ;

always @(posedge dac_2clk) begin
   if (dac_rst == 1'b1) begin
      dac_pwm_vcnt <=  8'h0 ;
      dac_pwm_bcnt <=  4'h0 ;
      dac_pwm_r    <=  4'h0 ;
   end
   else begin
      dac_pwm_vcnt <= (dac_pwm_vcnt == PWM_FULL) ? 8'h1 : (dac_pwm_vcnt + 8'd1) ;

      // additional register to improve timing
      dac_pwm_vcnt_r <= dac_pwm_vcnt;
      dac_pwm_va_r   <= (dac_pwm_va + dac_pwm_ba[0]) ; // add decimal bit to current value
      dac_pwm_vb_r   <= (dac_pwm_vb + dac_pwm_bb[0]) ;
      dac_pwm_vc_r   <= (dac_pwm_vc + dac_pwm_bc[0]) ;
      dac_pwm_vd_r   <= (dac_pwm_vd + dac_pwm_bd[0]) ;

      // make PWM duty cycle
      dac_pwm_r[0] <= (dac_pwm_vcnt_r <= dac_pwm_va_r) ;
      dac_pwm_r[1] <= (dac_pwm_vcnt_r <= dac_pwm_vb_r) ;
      dac_pwm_r[2] <= (dac_pwm_vcnt_r <= dac_pwm_vc_r) ;
      dac_pwm_r[3] <= (dac_pwm_vcnt_r <= dac_pwm_vd_r) ;


      if (dac_pwm_vcnt == PWM_FULL) begin
         dac_pwm_bcnt <= dac_pwm_bcnt + 4'h1 ;

         dac_pwm_va <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_a_i[24-1:16] : dac_pwm_va ; // new value on 16*PWM_FULL
         dac_pwm_vb <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_b_i[24-1:16] : dac_pwm_vb ;
         dac_pwm_vc <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_c_i[24-1:16] : dac_pwm_vc ;
         dac_pwm_vd <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_d_i[24-1:16] : dac_pwm_vd ;

         dac_pwm_ba <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_a_i[16-1:0] : {1'b0,dac_pwm_ba[15:1]} ; // shift right
         dac_pwm_bb <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_b_i[16-1:0] : {1'b0,dac_pwm_bb[15:1]} ; // new value on 16*PWM_FULL
         dac_pwm_bc <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_c_i[16-1:0] : {1'b0,dac_pwm_bc[15:1]} ;
         dac_pwm_bd <= (dac_pwm_bcnt == 4'hF) ? dac_pwm_d_i[16-1:0] : {1'b0,dac_pwm_bd[15:1]} ;
      end

      dac_pwm <= dac_pwm_r ; // improve timing
   end
end

assign dac_pwm_o      = dac_pwm ;
assign dac_pwm_sync_o = (dac_pwm_bcnt == 4'hF) && (dac_pwm_vcnt == (PWM_FULL-1)) ; // latch one before





//---------------------------------------------------------------------------------
//  XADC

reg  [12-1: 0] adc_a_r        ;
reg  [12-1: 0] adc_b_r        ;
reg  [12-1: 0] adc_c_r        ;
reg  [12-1: 0] adc_d_r        ;
reg  [12-1: 0] adc_v_r        ;
reg  [12-1: 0] adc_temp_r     ;
reg  [12-1: 0] adc_pint_r     ;
reg  [12-1: 0] adc_paux_r     ;
reg  [12-1: 0] adc_bram_r     ;
reg  [12-1: 0] adc_int_r      ;
reg  [12-1: 0] adc_aux_r      ;
reg  [12-1: 0] adc_ddr_r      ;

wire [ 8-1: 0] xadc_alarm     ;
wire           xadc_busy      ;
wire [ 5-1: 0] xadc_channel   ;
wire           xadc_eoc       ;
wire           xadc_eos       ;
wire [17-1: 0] xadc_vinn      ;
wire [17-1: 0] xadc_vinp      ;
wire           xadc_reset     = adc_rst_i ;

wire [16-1: 0] xadc_drp_dato  ;
wire           xadc_drp_drdy  ;
wire [ 7-1: 0] xadc_drp_addr  = {2'h0, xadc_channel};
wire           xadc_drp_clk   = adc_clk   ;
wire           xadc_drp_en    = xadc_eoc  ;
wire [16-1: 0] xadc_drp_dati  = 16'h0     ;
wire           xadc_drp_we    =  1'b0     ;

assign xadc_vinn = {vinn_i[4], 6'h0, vinn_i[3:2], 6'h0, vinn_i[1:0]}; //vn, 9,8,1,0
assign xadc_vinp = {vinp_i[4], 6'h0, vinp_i[3:2], 6'h0, vinp_i[1:0]}; //vp, 9,8,1,0

XADC #(
  // INIT_40 - INIT_42: XADC configuration registers
  .INIT_40(16'h0000), // config reg 0
  .INIT_41(16'h2f0f), // config reg 1
  .INIT_42(16'h0400), // config reg 2
  // INIT_48 - INIT_4F: Sequence Registers
//.INIT_48(16'h0900), // Sequencer channel selection // VpVn & temperature
  .INIT_48(16'h4fe0), // Sequencer channel selection // include system voltages & temperature
  .INIT_49(16'h0303), // Sequencer channel selection
//.INIT_4A(16'h0100), // Sequencer Average selection // average temperature
  .INIT_4A(16'h47e0), // Sequencer Average selection // average system voltages & temperature
  .INIT_4B(16'h0000), // Sequencer Average selection
  .INIT_4C(16'h0800), // Sequencer Bipolar selection
  .INIT_4D(16'h0303), // Sequencer Bipolar selection
  .INIT_4E(16'h0000), // Sequencer Acq time selection
  .INIT_4F(16'h0000), // Sequencer Acq time selection
  // INIT_50 - INIT_58, INIT5C: Alarm Limit Registers
  .INIT_50(16'hb5ed), // Temp alarm trigger
  .INIT_51(16'h57e4), // Vccint upper alarm limit
  .INIT_52(16'ha147), // Vccaux upper alarm limit
  .INIT_53(16'hca33), // Temp alarm OT upper
  .INIT_54(16'ha93a), // Temp alarm reset
  .INIT_55(16'h52c6), // Vccint lower alarm limit
  .INIT_56(16'h9555), // Vccaux lower alarm limit
  .INIT_57(16'hae4e), // Temp alarm OT reset
  .INIT_58(16'h5999), // VBRAM upper alarm limit
  .INIT_5C(16'h5111), // VBRAM lower alarm limit
  .INIT_59(16'h5555), // VCCPINT upper alarm limit
  .INIT_5D(16'h5111), // VCCPINT lower alarm limit
  .INIT_5A(16'h9999), // VCCPAUX upper alarm limit
  .INIT_5E(16'h91eb), // VCCPAUX lower alarm limit
  .INIT_5B(16'h6aaa), // VCCDdro upper alarm limit
  .INIT_5F(16'h6666), // VCCDdro lower alarm limit
  // Simulation attributes: Set for proper simulation behavior
  .SIM_DEVICE("7SERIES"),            // Select target device (values)
  .SIM_MONITOR_FILE("../sim_1/xadc_sim_values.txt")  // Analog simulation data file name
)
XADC_inst
(
  // ALARMS: 8-bit (each) output: ALM, OT
  .ALM        (  xadc_alarm           ),  // 8-bit output: Output alarm for temp, Vccint, Vccaux and Vccbram
  .OT         (                       ),  // 1-bit output: Over-Temperature alarm
  // STATUS: 1-bit (each) output: XADC status ports
  .BUSY       (  xadc_busy            ),  // 1-bit output: ADC busy output
  .CHANNEL    (  xadc_channel         ),  // 5-bit output: Channel selection outputs
  .EOC        (  xadc_eoc             ),  // 1-bit output: End of Conversion
  .EOS        (  xadc_eos             ),  // 1-bit output: End of Sequence
  // Analog-Input Pairs
  .VAUXN      (  xadc_vinn[15:0]      ),  // 16-bit input: N-side auxiliary analog input
  .VAUXP      (  xadc_vinp[15:0]      ),  // 16-bit input: P-side auxiliary analog input
  .VN         (  xadc_vinn[16]        ),  // 1-bit input: N-side analog input
  .VP         (  xadc_vinp[16]        ),  // 1-bit input: P-side analog input
  // CONTROL and CLOCK: 1-bit (each) input: Reset, conversion start and clock inputs
  .CONVST     (  1'b0                 ),  // 1-bit input: Convert start input
  .CONVSTCLK  (  1'b0                 ),  // 1-bit input: Convert start input
  .RESET      ( !xadc_reset           ),  // 1-bit input: Active-high reset
  // Dynamic Reconfiguration Port (DRP)
  .DO         (  xadc_drp_dato        ),  // 16-bit output: DRP output data bus
  .DRDY       (  xadc_drp_drdy        ),  // 1-bit output: DRP data ready
  .DADDR      (  xadc_drp_addr        ),  // 7-bit input: DRP address bus
  .DCLK       (  xadc_drp_clk         ),  // 1-bit input: DRP clock
  .DEN        (  xadc_drp_en          ),  // 1-bit input: DRP enable signal
  .DI         (  xadc_drp_dati        ),  // 16-bit input: DRP input data bus
  .DWE        (  xadc_drp_we          ),  // 1-bit input: DRP write enable

  .JTAGBUSY     (   ), // 1-bit output: JTAG DRP transaction in progress output
  .JTAGLOCKED   (   ), // 1-bit output: JTAG requested DRP port lock
  .JTAGMODIFIED (   ), // 1-bit output: JTAG Write to the DRP has occurred
  .MUXADDR      (   )  // 5-bit output: External MUX channel decode
);


always @(posedge xadc_drp_clk) begin
   if (xadc_drp_drdy) begin
      if (xadc_drp_addr == 7'd0 )   adc_temp_r <= xadc_drp_dato[15:4]; // temperature
      if (xadc_drp_addr == 7'd13)   adc_pint_r <= xadc_drp_dato[15:4]; // vccpint
      if (xadc_drp_addr == 7'd14)   adc_paux_r <= xadc_drp_dato[15:4]; // vccpaux
      if (xadc_drp_addr == 7'd6 )   adc_bram_r <= xadc_drp_dato[15:4]; // vccbram
      if (xadc_drp_addr == 7'd1 )   adc_int_r  <= xadc_drp_dato[15:4]; // vccint
      if (xadc_drp_addr == 7'd2 )   adc_aux_r  <= xadc_drp_dato[15:4]; // vccaux
      if (xadc_drp_addr == 7'd15)   adc_ddr_r  <= xadc_drp_dato[15:4]; // vccddr

      if (xadc_drp_addr == 7'h03)   adc_v_r <= xadc_drp_dato[15:4]; // vin
      if (xadc_drp_addr == 7'd16)   adc_b_r <= xadc_drp_dato[15:4]; // ch0 - aif1
      if (xadc_drp_addr == 7'd17)   adc_c_r <= xadc_drp_dato[15:4]; // ch1 - aif2
      if (xadc_drp_addr == 7'd24)   adc_a_r <= xadc_drp_dato[15:4]; // ch8 - aif0
      if (xadc_drp_addr == 7'd25)   adc_d_r <= xadc_drp_dato[15:4]; // ch9 - aif3
   end
end


assign adc_slx_a_o = adc_a_r    ;
assign adc_slx_b_o = adc_b_r    ;
assign adc_slx_c_o = adc_c_r    ;
assign adc_slx_d_o = adc_d_r    ;
assign adc_v_o     = adc_v_r    ;

assign adc_temp_o  = adc_temp_r ;
assign adc_pint_o  = adc_pint_r ;
assign adc_paux_o  = adc_paux_r ;
assign adc_bram_o  = adc_bram_r ;
assign adc_int_o   = adc_int_r  ;
assign adc_aux_o   = adc_aux_r  ;
assign adc_ddr_o   = adc_ddr_r  ;





endmodule

