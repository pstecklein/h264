
import chisel3._
import chisel3.experimental.FixedPoint

class sad16x() extends Module {
  val io = IO(new Bundle {
    val start = Input(UInt(1.W))
    val org = Input(Vec(256, UInt(8.W)))
    val cur = Input(Vec(256, UInt(8.W)))
    val out = Output(UInt(16.W))
  })

  when(io.start === 1.U) {
    io.out := io.org.zip(io.cur).map { case (a, b) => Mux(a >= b, a - b, b - a) }.reduce(_ + _)
  }.otherwise {
    io.out := 65535.U
  }
}