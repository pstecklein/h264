
import chisel3._
import chisel3.experimental.FixedPoint


object intra4x4top extends App {
  println("[{(Generating Verilog file)}]")
  (new chisel3.stage.ChiselStage).emitVerilog(new intra4x4structural())
}

class intra4x4structural() extends Module {
  val io = IO(new Bundle {
    val neighbor_pixels = Input(Vec(13, UInt(8.W)))
    val valid_IL        = Input(UInt(1.W))
    val valid_EH        = Input(UInt(1.W))
    val valid_AD        = Input(UInt(1.W))
    val valid_M         = Input(UInt(1.W))
    val src_pixels      = Input(Vec(16, UInt(8.W)))
    val start           = Input(UInt(1.W))

    val sad_best = Output(UInt(12.W))
    val mode_best = Output(UInt(4.W))
    val pred_blk_best = Output(Vec(16, UInt(8.W)))
    val diff_blk_best = Output(Vec(16, SInt(9.W)))
    val done = Output(UInt(1.W))
  })

  val predictor_inst  = Module(new predictor())
  val sad4x_inst      = Module(new sad4x())
  val intra_ctrl_inst = Module(new intra_ctrl())
  val intra_cmp_inst  = Module(new intra_cmp())

  io.sad_best                        := intra_cmp_inst.io.sad_best
  io.mode_best                       := intra_cmp_inst.io.mode_best
  io.pred_blk_best                   := intra_cmp_inst.io.pred_best
  io.diff_blk_best                   := intra_cmp_inst.io.diff_best
  io.done                            := intra_ctrl_inst.io.done

  intra_ctrl_inst.io.start           := io.start

  predictor_inst.io.neighbors        := io.neighbor_pixels
  predictor_inst.io.valid_IL         := io.valid_IL
  predictor_inst.io.valid_EH         := io.valid_EH
  predictor_inst.io.valid_AD         := io.valid_AD
  predictor_inst.io.valid_M          := io.valid_M
  predictor_inst.io.capture_pixel    := intra_ctrl_inst.io.capture_pix
  predictor_inst.io.capture_pixel_DC := intra_ctrl_inst.io.capture_pix_DC

  sad4x_inst.io.valid                := predictor_inst.io.valid
  sad4x_inst.io.src_pix              := io.src_pixels
  sad4x_inst.io.pred0                := predictor_inst.io.predicted_pix0
  sad4x_inst.io.pred1                := predictor_inst.io.predicted_pix1
  sad4x_inst.io.pred2                := predictor_inst.io.predicted_pix2
  sad4x_inst.io.pred3                := predictor_inst.io.predicted_pix3
  sad4x_inst.io.pred4                := predictor_inst.io.predicted_pix4
  sad4x_inst.io.pred5                := predictor_inst.io.predicted_pix5
  sad4x_inst.io.pred6                := predictor_inst.io.predicted_pix6
  sad4x_inst.io.pred7                := predictor_inst.io.predicted_pix7
  sad4x_inst.io.pred8                := predictor_inst.io.predicted_pix8

  intra_cmp_inst.io.start            := intra_ctrl_inst.io.capture_sad
  intra_cmp_inst.io.sad_res          := sad4x_inst.io.sad_seq
  intra_cmp_inst.io.db0              := sad4x_inst.io.diff0
  intra_cmp_inst.io.db1              := sad4x_inst.io.diff1
  intra_cmp_inst.io.db2              := sad4x_inst.io.diff2
  intra_cmp_inst.io.db3              := sad4x_inst.io.diff3
  intra_cmp_inst.io.db4              := sad4x_inst.io.diff4
  intra_cmp_inst.io.db5              := sad4x_inst.io.diff5
  intra_cmp_inst.io.db6              := sad4x_inst.io.diff6
  intra_cmp_inst.io.db7              := sad4x_inst.io.diff7
  intra_cmp_inst.io.db8              := sad4x_inst.io.diff8
  intra_cmp_inst.io.pred_pix0        := predictor_inst.io.predicted_pix0
  intra_cmp_inst.io.pred_pix1        := predictor_inst.io.predicted_pix1
  intra_cmp_inst.io.pred_pix2        := predictor_inst.io.predicted_pix2
  intra_cmp_inst.io.pred_pix3        := predictor_inst.io.predicted_pix3
  intra_cmp_inst.io.pred_pix4        := predictor_inst.io.predicted_pix4
  intra_cmp_inst.io.pred_pix5        := predictor_inst.io.predicted_pix5
  intra_cmp_inst.io.pred_pix6        := predictor_inst.io.predicted_pix6
  intra_cmp_inst.io.pred_pix7        := predictor_inst.io.predicted_pix7
  intra_cmp_inst.io.pred_pix8        := predictor_inst.io.predicted_pix8

}