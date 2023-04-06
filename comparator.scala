
import chisel3._
import chisel3.experimental.FixedPoint

class comparator() extends Module {
  val io = IO(new Bundle {
    val start       = Input(UInt(1.W))
    val sad_res     = Input(UInt(16.W))

    val mvx_min     = Output(UInt(8.W))
    val mvy_min     = Output(UInt(8.W))
    val address_min = Output(UInt(10.W))
    val min_sad     = Output(UInt(16.W))
  })

  val min_sad_reg = RegInit(65535.U(16.W))

  when(io.start === 1.U) {
    when(io.sad_res < min_sad_reg) {
      min_sad_reg := io.sad_res
    }
  }

  io.min_sad := min_sad_reg

  // how do we know what to output here?
  io.mvx_min     := 0.U
  io.mvy_min     := 0.U
  io.address_min := 0.U



}