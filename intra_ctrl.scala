
import chisel3._
import chisel3.experimental.FixedPoint
import chisel3.util.Enum


class intra_ctrl() extends Module {
  val io = IO(new Bundle {
    val start          = Input(UInt(1.W))

    val capture_pix    = Output(UInt(1.W))
    val capture_pix_DC = Output(UInt(1.W))
    val capture_sad    = Output(UInt(1.W))
    val done           = Output(UInt(1.W))
  })

  io.capture_pix    := 0.U
  io.capture_pix_DC := 0.U
  io.capture_sad    := 0.U

  io.done := 0.U

  // FSM
  val idle :: predict :: calcSAD :: compare :: Nil = Enum(4)
  val state = RegInit(0.U(2.W))

  when(io.start === 1.U) {
    io.capture_pix := 1.U
    state := predict
  }.otherwise{
    when(state === predict) {
      state := calcSAD
    }.elsewhen(state === calcSAD) {
      state := compare
    }.elsewhen(state === compare) {
      io.done := 1.U
      state := idle
    }.otherwise {
      state := idle
    }
  }

}