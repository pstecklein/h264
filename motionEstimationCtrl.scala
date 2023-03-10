
import chisel3._
import chisel3.util._
import chisel3.experimental.FixedPoint


object motionEstimationCtrl extends App {
  println("[{(Generating Verilog file)}]")
  (new chisel3.stage.ChiselStage).emitVerilog(new controller())
}

class controller() extends Module {
  val io = IO(new Bundle {
    val initAddr1     = Input(UInt(64.W))
    val initAddr2     = Input(UInt(64.W))
    val mbBufferWidth = Input(UInt(32.W))
    val stride        = Input(UInt(32.W))
    val numRows       = Input(UInt(32.W))
    val computeDataIn = Input(UInt(32.W))
    // Begin AXI interface
    val axiDataIn     = Input(Vec(4, UInt(16.W)))
    val axiAddr       = Output(UInt(64.W))
    val axiAWrFlag    = Output(UInt(1.W))
    val axiDataOut    = Output(Vec(4, UInt(16.W)))
    // End AXI Interface
    val vec1          = Output(Vec(4, UInt(16.W)))
    val vec2          = Output(Vec(4, UInt(16.W)))
  })

  // Create instance of getSad4x
  val getSad4x_inst = Module(new getSad4x())

  // Connect inputs and outputs of getSad4x
  getSad4x_inst.io.org := io.vec1
  getSad4x_inst.io.cur := io.vec2
  io.computeDataIn := getSad4x_inst.io.out

  // defaults
  io.axiAddr    := 0.U
  io.axiAWrFlag := 0.U
  io.axiDataOut := VecInit(Seq.fill(4)(0.U(16.W)))
  io.vec1       := VecInit(Seq.fill(4)(0.U(16.W)))
  io.vec2       := VecInit(Seq.fill(4)(0.U(16.W)))

  // registered
  val acc = RegInit(0.U(32.W))
  val row = RegInit(0.U(32.W))

  // FSM
  val idle :: fetch1 :: fetch2 :: process :: done :: Nil = Enum(5)
  val state = RegInit(0.U(3.W))

  // State Machine
  when(state === idle) {
    io.axiAddr := (io.mbBufferWidth * row) + io.initAddr1
    state := fetch1
  }.elsewhen(state === fetch1) {
    io.vec1 := io.axiDataIn
    io.axiAddr := (io.stride * row) + io.initAddr2
    state := fetch2
  }.elsewhen(state === fetch2) {
    io.vec2 := io.axiDataIn
    state := process
  }.elsewhen(state === process) {
    acc := acc + io.computeDataIn
    io.axiAddr := (io.mbBufferWidth * row) + io.initAddr1
    when(row < io.numRows) {
      state := fetch1
    }.otherwise{
      state := done
    }
  }

}
