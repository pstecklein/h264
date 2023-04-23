
import chisel3._
import chisel3.experimental.FixedPoint


object intra4x4top extends App {
  println("[{(Generating Verilog file)}]")
  (new chisel3.stage.ChiselStage).emitVerilog(new intra4x4structural())
}

class intra4x4structural() extends Module {
  val io = IO(new Bundle {
    val in = Input()
    val out = Output()
  })
}