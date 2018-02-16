// bcd.v

// Generated using ACDS version 13.0sp1 232 at 2017.10.31.21:08:17

`timescale 1 ps / 1 ps
module bcd (
		input  wire       clk_clk,                    //                  clk.clk
		input  wire       reset_reset_n,              //                reset.reset_n
		output wire [7:0] bcd_io_bcd_io_pinout_en,    // bcd_io_bcd_io_pinout.en
		output wire [7:0] bcd_io_bcd_io_pinout_bcd,   //                     .bcd
		output wire       bcd_io_error_conduit_error  // bcd_io_error_conduit.error
	);

	wire         master_0_master_waitrequest;                                        // master_0_master_translator:av_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_writedata;                                          // master_0:master_writedata -> master_0_master_translator:av_writedata
	wire  [31:0] master_0_master_address;                                            // master_0:master_address -> master_0_master_translator:av_address
	wire         master_0_master_write;                                              // master_0:master_write -> master_0_master_translator:av_write
	wire         master_0_master_read;                                               // master_0:master_read -> master_0_master_translator:av_read
	wire  [31:0] master_0_master_readdata;                                           // master_0_master_translator:av_readdata -> master_0:master_readdata
	wire   [3:0] master_0_master_byteenable;                                         // master_0:master_byteenable -> master_0_master_translator:av_byteenable
	wire         master_0_master_readdatavalid;                                      // master_0_master_translator:av_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_translator_avalon_universal_master_0_waitrequest;   // BCD_IO_avalon_slave_translator:uav_waitrequest -> master_0_master_translator:uav_waitrequest
	wire   [2:0] master_0_master_translator_avalon_universal_master_0_burstcount;    // master_0_master_translator:uav_burstcount -> BCD_IO_avalon_slave_translator:uav_burstcount
	wire  [31:0] master_0_master_translator_avalon_universal_master_0_writedata;     // master_0_master_translator:uav_writedata -> BCD_IO_avalon_slave_translator:uav_writedata
	wire  [31:0] master_0_master_translator_avalon_universal_master_0_address;       // master_0_master_translator:uav_address -> BCD_IO_avalon_slave_translator:uav_address
	wire         master_0_master_translator_avalon_universal_master_0_lock;          // master_0_master_translator:uav_lock -> BCD_IO_avalon_slave_translator:uav_lock
	wire         master_0_master_translator_avalon_universal_master_0_write;         // master_0_master_translator:uav_write -> BCD_IO_avalon_slave_translator:uav_write
	wire         master_0_master_translator_avalon_universal_master_0_read;          // master_0_master_translator:uav_read -> BCD_IO_avalon_slave_translator:uav_read
	wire  [31:0] master_0_master_translator_avalon_universal_master_0_readdata;      // BCD_IO_avalon_slave_translator:uav_readdata -> master_0_master_translator:uav_readdata
	wire         master_0_master_translator_avalon_universal_master_0_debugaccess;   // master_0_master_translator:uav_debugaccess -> BCD_IO_avalon_slave_translator:uav_debugaccess
	wire   [3:0] master_0_master_translator_avalon_universal_master_0_byteenable;    // master_0_master_translator:uav_byteenable -> BCD_IO_avalon_slave_translator:uav_byteenable
	wire         master_0_master_translator_avalon_universal_master_0_readdatavalid; // BCD_IO_avalon_slave_translator:uav_readdatavalid -> master_0_master_translator:uav_readdatavalid
	wire         bcd_io_avalon_slave_translator_avalon_anti_slave_0_waitrequest;     // BCD_IO:avmm_waitrequest -> BCD_IO_avalon_slave_translator:av_waitrequest
	wire  [31:0] bcd_io_avalon_slave_translator_avalon_anti_slave_0_writedata;       // BCD_IO_avalon_slave_translator:av_writedata -> BCD_IO:avmm_writedata
	wire   [2:0] bcd_io_avalon_slave_translator_avalon_anti_slave_0_address;         // BCD_IO_avalon_slave_translator:av_address -> BCD_IO:avmm_address
	wire         bcd_io_avalon_slave_translator_avalon_anti_slave_0_write;           // BCD_IO_avalon_slave_translator:av_write -> BCD_IO:avmm_write
	wire         bcd_io_avalon_slave_translator_avalon_anti_slave_0_read;            // BCD_IO_avalon_slave_translator:av_read -> BCD_IO:avmm_read
	wire  [31:0] bcd_io_avalon_slave_translator_avalon_anti_slave_0_readdata;        // BCD_IO:avmm_readdata -> BCD_IO_avalon_slave_translator:av_readdata
	wire         rst_controller_reset_out_reset;                                     // rst_controller:reset_out -> [BCD_IO:rstn, BCD_IO_avalon_slave_translator:reset]
	wire         master_0_master_reset_reset;                                        // master_0:master_reset_reset -> rst_controller:reset_in0
	wire         rst_controller_001_reset_out_reset;                                 // rst_controller_001:reset_out -> master_0_master_translator:reset

	bcd_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (clk_clk),                       //          clk.clk
		.clk_reset_reset      (~reset_reset_n),                //    clk_reset.reset
		.master_address       (master_0_master_address),       //       master.address
		.master_readdata      (master_0_master_readdata),      //             .readdata
		.master_read          (master_0_master_read),          //             .read
		.master_write         (master_0_master_write),         //             .write
		.master_writedata     (master_0_master_writedata),     //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),    //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)    // master_reset.reset
	);

	BCD_Avalon_Top bcd_io (
		.clk              (clk_clk),                                                        //         clock.clk
		.avmm_address     (bcd_io_avalon_slave_translator_avalon_anti_slave_0_address),     //  avalon_slave.address
		.avmm_waitrequest (bcd_io_avalon_slave_translator_avalon_anti_slave_0_waitrequest), //              .waitrequest
		.avmm_read        (bcd_io_avalon_slave_translator_avalon_anti_slave_0_read),        //              .read
		.avmm_readdata    (bcd_io_avalon_slave_translator_avalon_anti_slave_0_readdata),    //              .readdata
		.avmm_write       (bcd_io_avalon_slave_translator_avalon_anti_slave_0_write),       //              .write
		.avmm_writedata   (bcd_io_avalon_slave_translator_avalon_anti_slave_0_writedata),   //              .writedata
		.rstn             (~rst_controller_reset_out_reset),                                //    reset_sink.reset_n
		.enable_pinout    (bcd_io_bcd_io_pinout_en),                                        // BCD_IO_Pinout.en
		.bcd_pinout       (bcd_io_bcd_io_pinout_bcd),                                       //              .bcd
		.error            (bcd_io_error_conduit_error)                                      // error_conduit.error
	);

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (32),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) master_0_master_translator (
		.clk                      (clk_clk),                                                            //                       clk.clk
		.reset                    (rst_controller_001_reset_out_reset),                                 //                     reset.reset
		.uav_address              (master_0_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount           (master_0_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read                 (master_0_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write                (master_0_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest          (master_0_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid        (master_0_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable           (master_0_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata             (master_0_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata            (master_0_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock                 (master_0_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess          (master_0_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address               (master_0_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest           (master_0_master_waitrequest),                                        //                          .waitrequest
		.av_byteenable            (master_0_master_byteenable),                                         //                          .byteenable
		.av_read                  (master_0_master_read),                                               //                          .read
		.av_readdata              (master_0_master_readdata),                                           //                          .readdata
		.av_readdatavalid         (master_0_master_readdatavalid),                                      //                          .readdatavalid
		.av_write                 (master_0_master_write),                                              //                          .write
		.av_writedata             (master_0_master_writedata),                                          //                          .writedata
		.av_burstcount            (1'b1),                                                               //               (terminated)
		.av_beginbursttransfer    (1'b0),                                                               //               (terminated)
		.av_begintransfer         (1'b0),                                                               //               (terminated)
		.av_chipselect            (1'b0),                                                               //               (terminated)
		.av_lock                  (1'b0),                                                               //               (terminated)
		.av_debugaccess           (1'b0),                                                               //               (terminated)
		.uav_clken                (),                                                                   //               (terminated)
		.av_clken                 (1'b1),                                                               //               (terminated)
		.uav_response             (2'b00),                                                              //               (terminated)
		.av_response              (),                                                                   //               (terminated)
		.uav_writeresponserequest (),                                                                   //               (terminated)
		.uav_writeresponsevalid   (1'b0),                                                               //               (terminated)
		.av_writeresponserequest  (1'b0),                                                               //               (terminated)
		.av_writeresponsevalid    ()                                                                    //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) bcd_io_avalon_slave_translator (
		.clk                      (clk_clk),                                                            //                      clk.clk
		.reset                    (rst_controller_reset_out_reset),                                     //                    reset.reset
		.uav_address              (master_0_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount           (master_0_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read                 (master_0_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write                (master_0_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest          (master_0_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid        (master_0_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable           (master_0_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata             (master_0_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata            (master_0_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock                 (master_0_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess          (master_0_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address               (bcd_io_avalon_slave_translator_avalon_anti_slave_0_address),         //      avalon_anti_slave_0.address
		.av_write                 (bcd_io_avalon_slave_translator_avalon_anti_slave_0_write),           //                         .write
		.av_read                  (bcd_io_avalon_slave_translator_avalon_anti_slave_0_read),            //                         .read
		.av_readdata              (bcd_io_avalon_slave_translator_avalon_anti_slave_0_readdata),        //                         .readdata
		.av_writedata             (bcd_io_avalon_slave_translator_avalon_anti_slave_0_writedata),       //                         .writedata
		.av_waitrequest           (bcd_io_avalon_slave_translator_avalon_anti_slave_0_waitrequest),     //                         .waitrequest
		.av_begintransfer         (),                                                                   //              (terminated)
		.av_beginbursttransfer    (),                                                                   //              (terminated)
		.av_burstcount            (),                                                                   //              (terminated)
		.av_byteenable            (),                                                                   //              (terminated)
		.av_readdatavalid         (1'b0),                                                               //              (terminated)
		.av_writebyteenable       (),                                                                   //              (terminated)
		.av_lock                  (),                                                                   //              (terminated)
		.av_chipselect            (),                                                                   //              (terminated)
		.av_clken                 (),                                                                   //              (terminated)
		.uav_clken                (1'b0),                                                               //              (terminated)
		.av_debugaccess           (),                                                                   //              (terminated)
		.av_outputenable          (),                                                                   //              (terminated)
		.uav_response             (),                                                                   //              (terminated)
		.av_response              (2'b00),                                                              //              (terminated)
		.uav_writeresponserequest (1'b0),                                                               //              (terminated)
		.uav_writeresponsevalid   (),                                                                   //              (terminated)
		.av_writeresponserequest  (),                                                                   //              (terminated)
		.av_writeresponsevalid    (1'b0)                                                                //              (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS        (1),
		.OUTPUT_RESET_SYNC_EDGES ("deassert"),
		.SYNC_DEPTH              (2),
		.RESET_REQUEST_PRESENT   (0)
	) rst_controller (
		.reset_in0  (master_0_master_reset_reset),    // reset_in0.reset
		.clk        (clk_clk),                        //       clk.clk
		.reset_out  (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req  (),                               // (terminated)
		.reset_in1  (1'b0),                           // (terminated)
		.reset_in2  (1'b0),                           // (terminated)
		.reset_in3  (1'b0),                           // (terminated)
		.reset_in4  (1'b0),                           // (terminated)
		.reset_in5  (1'b0),                           // (terminated)
		.reset_in6  (1'b0),                           // (terminated)
		.reset_in7  (1'b0),                           // (terminated)
		.reset_in8  (1'b0),                           // (terminated)
		.reset_in9  (1'b0),                           // (terminated)
		.reset_in10 (1'b0),                           // (terminated)
		.reset_in11 (1'b0),                           // (terminated)
		.reset_in12 (1'b0),                           // (terminated)
		.reset_in13 (1'b0),                           // (terminated)
		.reset_in14 (1'b0),                           // (terminated)
		.reset_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS        (1),
		.OUTPUT_RESET_SYNC_EDGES ("deassert"),
		.SYNC_DEPTH              (2),
		.RESET_REQUEST_PRESENT   (0)
	) rst_controller_001 (
		.reset_in0  (~reset_reset_n),                     // reset_in0.reset
		.clk        (clk_clk),                            //       clk.clk
		.reset_out  (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req  (),                                   // (terminated)
		.reset_in1  (1'b0),                               // (terminated)
		.reset_in2  (1'b0),                               // (terminated)
		.reset_in3  (1'b0),                               // (terminated)
		.reset_in4  (1'b0),                               // (terminated)
		.reset_in5  (1'b0),                               // (terminated)
		.reset_in6  (1'b0),                               // (terminated)
		.reset_in7  (1'b0),                               // (terminated)
		.reset_in8  (1'b0),                               // (terminated)
		.reset_in9  (1'b0),                               // (terminated)
		.reset_in10 (1'b0),                               // (terminated)
		.reset_in11 (1'b0),                               // (terminated)
		.reset_in12 (1'b0),                               // (terminated)
		.reset_in13 (1'b0),                               // (terminated)
		.reset_in14 (1'b0),                               // (terminated)
		.reset_in15 (1'b0)                                // (terminated)
	);

endmodule