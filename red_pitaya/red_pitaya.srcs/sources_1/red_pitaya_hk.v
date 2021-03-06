/**
 * $Id: red_pitaya_hk.v 961 2014-01-21 11:40:39Z matej.oblak $
 *
 * @brief Red Pitaya house keeping.
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
 * House keeping module takes care of system identification.
 *
 *
 * This module takes care of system identification via DNA readout at startup and
 * ID register which user can define at compile time.
 *
 * Beside that it is currently also used to test expansion connector and for
 * driving LEDs.
 * 
 */





module red_pitaya_hk
(
   // LED
   output     [  8-1: 0] led_o           ,  //!< LED output

   // Expansion connector
   input      [  8-1: 0] exp_p_dat_i     ,  //!< exp. con. input data
   output reg [  8-1: 0] exp_p_dat_o     ,  //!< exp. con. output data
   output reg [  8-1: 0] exp_p_dir_o     ,  //!< exp. con. 1-output enable
   input      [  8-1: 0] exp_n_dat_i     ,  //!<
   output reg [  8-1: 0] exp_n_dat_o     ,  //!<
   output reg [  8-1: 0] exp_n_dir_o     ,  //!<

   // XADC
   input      [ 12-1: 0] adc_v_i         ,  //!< measured temperatures and voltage supplies
   input      [ 12-1: 0] adc_temp_i      ,
   input      [ 12-1: 0] adc_pint_i      ,
   input      [ 12-1: 0] adc_paux_i      ,
   input      [ 12-1: 0] adc_bram_i      ,
   input      [ 12-1: 0] adc_int_i       ,
   input      [ 12-1: 0] adc_aux_i       ,
   input      [ 12-1: 0] adc_ddr_i       ,

   // System bus
   input                 sys_clk_i       ,  //!< bus clock
   input                 sys_rstn_i      ,  //!< bus reset - active low
   input      [ 32-1: 0] sys_addr_i      ,  //!< bus address
   input      [ 32-1: 0] sys_wdata_i     ,  //!< bus write data
   input      [  4-1: 0] sys_sel_i       ,  //!< bus write byte select
   input                 sys_wen_i       ,  //!< bus write enable
   input                 sys_ren_i       ,  //!< bus read enable
   output reg [ 32-1: 0] sys_rdata_o     ,  //!< bus read data
   output reg            sys_err_o       ,  //!< bus error indicator
   output reg            sys_ack_o          //!< bus acknowledge signal

);





//---------------------------------------------------------------------------------
//
//  Simple LED logic

reg [8-1:0] led_reg;

assign led_o = led_reg;





//---------------------------------------------------------------------------------
//
//  Read device DNA

wire           dna_dout  ;
reg            dna_clk   ;
reg            dna_read  ;
reg            dna_shift ;
reg  [ 9-1: 0] dna_cnt   ;
reg  [57-1: 0] dna_value ;
reg            dna_done  ;

always @(posedge sys_clk_i) begin
   if (sys_rstn_i == 1'b0) begin
      dna_clk   <=  1'b0 ;
      dna_read  <=  1'b0 ;
      dna_shift <=  1'b0 ;
      dna_cnt   <=  9'd0 ;
      dna_value <= 57'd0 ;
      dna_done  <=  1'b0 ;
   end
   else begin
      if (!dna_done)
         dna_cnt <= dna_cnt + 1'd1 ;

      dna_clk <= dna_cnt[2] ;
      dna_read  <= (dna_cnt < 9'd10);
      dna_shift <= (dna_cnt > 9'd18);

      if ((dna_cnt[2:0]==3'h0) && !dna_done)
         dna_value <= {dna_value[57-2:0], dna_dout};

      if (dna_cnt > 9'd465)
         dna_done <= 1'b1;

   end
end

DNA_PORT #( .SIM_DNA_VALUE(57'h0823456789ABCDE) ) // Specifies a sample 57-bit DNA value for simulation
i_DNA 
(
  .DOUT  ( dna_dout   ), // 1-bit output: DNA output data.
  .CLK   ( dna_clk    ), // 1-bit input: Clock input.
  .DIN   ( 1'b0       ), // 1-bit input: User data input pin.
  .READ  ( dna_read   ), // 1-bit input: Active high load DNA, active low read input.
  .SHIFT ( dna_shift  )  // 1-bit input: Active high shift enable input.
);





//---------------------------------------------------------------------------------
//
//  Desing identification

wire [32-1: 0] id_value ;

assign id_value[31: 4] = 28'h0 ; // reserved
assign id_value[ 3: 0] =  4'h1 ; // board type   1-release1





//---------------------------------------------------------------------------------
//
//  System bus connection

always @(posedge sys_clk_i) begin
   if (sys_rstn_i == 1'b0) begin
      led_reg[7:0] <= 8'h0 ;
      exp_p_dat_o  <= 8'h0 ;
      exp_p_dir_o  <= 8'h0 ;
      exp_n_dat_o  <= 8'h0 ;
      exp_n_dir_o  <= 8'h0 ;
   end
   else begin
      if (sys_wen_i) begin
         if (sys_addr_i[19:0]==20'h10)   exp_p_dir_o  <= sys_wdata_i[8-1:0] ;
         if (sys_addr_i[19:0]==20'h14)   exp_n_dir_o  <= sys_wdata_i[8-1:0] ;
         if (sys_addr_i[19:0]==20'h18)   exp_p_dat_o  <= sys_wdata_i[8-1:0] ;
         if (sys_addr_i[19:0]==20'h1C)   exp_n_dat_o  <= sys_wdata_i[8-1:0] ;

         if (sys_addr_i[19:0]==20'h30)   led_reg[7:0] <= sys_wdata_i[8-1:0] ;
      end
   end
end





always @(*) begin
   sys_err_o <= 1'b0 ;

   casez (sys_addr_i[19:0])
     20'h00000 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {               id_value  }                          ; end
     20'h00004 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {               dna_value[31: 0] }                   ; end
     20'h00008 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-25{1'b0}}, dna_value[56:32] }                   ; end

     20'h00010 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_p_dir_o }                        ; end
     20'h00014 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_n_dir_o }                        ; end
     20'h00018 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_p_dat_o }                        ; end
     20'h0001C : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_n_dat_o }                        ; end
     20'h00020 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_p_dat_i }                        ; end
     20'h00024 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32- 8{1'b0}}, exp_n_dat_i }                        ; end

     20'h00200 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_v_i }                            ; end
     20'h00204 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_temp_i }                         ; end
     20'h00208 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_pint_i }                         ; end
     20'h0020c : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_paux_i }                         ; end
     20'h00210 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_bram_i }                         ; end
     20'h00214 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_int_i }                          ; end
     20'h00218 : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_aux_i }                          ; end
     20'h0021c : begin sys_ack_o <= 1'b1;          sys_rdata_o <= {{32-12{1'b0}}, adc_ddr_i }                          ; end

       default : begin sys_ack_o <= 1'b1;          sys_rdata_o <=  32'h0                                               ; end
   endcase
end





endmodule

