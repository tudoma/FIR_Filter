/**
 * $Id: red_pitaya_daisy.v 964 2014-01-24 12:58:17Z matej.oblak $
 *
 * @brief Red Pitaya daisy chain communication module.
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
 * Connection of multiple boards can be done with this module.
 *
 *
 *             /------\
 *             | SER  |
 *   RX -----> |  ->  | ------+---------> RX
 *             | PAR  |       |
 *             \------/       |
 *                         /------\
 *  SERIAL                 | TEST |     PARALLEL
 *                         \------/
 *             /------\       |
 *             | PAR  |       |
 *   TX <----- |  ->  | <-----+---------- TX
 *             | SER  |
 *             \------/
 *
 *
 * To communicate with other boards with some basic data transfer daisy chain 
 * module can be used. Connection is made via fast serial lines with separate
 * clock and data. Module consists from multiple submodules.
 *
 * TX submodule serialize parallel data, which can be selected with tx_cfg_sel
 * switch. There is option for user data, training or manual value, loopback...
 *
 * RX submodule de-serialize input data and when in training mode looks for
 * predefined value.
 *
 * Testing submodule creates random values which can be selected to be used by TX
 * module. Then after some time check received values and compares if they are
 * the same.
 * 
 */





module red_pitaya_daisy
(
   // SATA connector
   output     [  2-1: 0] daisy_p_o       ,  //!< TX data and clock [1]-clock, [0]-data
   output     [  2-1: 0] daisy_n_o       ,  //!< TX data and clock [1]-clock, [0]-data
   input      [  2-1: 0] daisy_p_i       ,  //!< RX data and clock [1]-clock, [0]-data
   input      [  2-1: 0] daisy_n_i       ,  //!< RX data and clock [1]-clock, [0]-data

   // Parallel data
   input                 ser_clk_i          //!< high speed serial clock, used for TX
);





//---------------------------------------------------------------------------------
//
//  Transmiter

wire           txs_clk       ;
wire           txs_dat       ;

OBUFDS #(.IOSTANDARD ("DIFF_SSTL18_I"), .SLEW ("FAST")) i_OBUF_clk
(
  .O  ( daisy_p_o[1]  ),
  .OB ( daisy_n_o[1]  ),
  .I  ( txs_clk       )
);

OBUFDS #(.IOSTANDARD ("DIFF_SSTL18_I"), .SLEW ("FAST")) i_OBUF_dat
(
  .O  ( daisy_p_o[0]  ),
  .OB ( daisy_n_o[0]  ),
  .I  ( txs_dat       )
);





//---------------------------------------------------------------------------------
//
//  Reciever

wire           rxs_clk          ;
wire           rxs_dat          ;

IBUFGDS #(.IOSTANDARD ("DIFF_SSTL18_I")) i_IBUFGDS_clk
(
  .I  ( daisy_p_i[1]  ),
  .IB ( daisy_n_i[1]  ),
  .O  ( rxs_clk       )
);

IBUFDS #(.DIFF_TERM ("FALSE"), .IOSTANDARD ("DIFF_SSTL18_I")) i_IBUFDS_dat
(
  .I  ( daisy_p_i[0]  ),
  .IB ( daisy_n_i[0]  ),
  .O  ( rxs_dat       )
);





// loopback to avoid DRC issues caused by IBUFs with unconnected outputs
assign txs_clk = rxs_clk;
assign txs_dat = rxs_dat;





endmodule

