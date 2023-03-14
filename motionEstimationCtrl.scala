
import chisel3._
import chisel3.util._

object motionEstimationCtrl extends App {
  println("[{(Generating Verilog file)}]")
  (new chisel3.stage.ChiselStage).emitVerilog(new controller())
}

class controller() extends Module {
  val io = IO(new Bundle {
    val computeSize   = Input(UInt(5.W))
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
    val accOut        = Output(UInt(32.W))
  })

  // defaults
  io.axiAddr    := 0.U
  io.axiAWrFlag := 0.U
  io.axiDataOut := VecInit(Seq.fill(4)(0.U(16.W)))
  io.accOut     := 0.U

  // registered
  val shift     = RegInit(0.U(2.W))
  val acc       = RegInit(0.U(32.W))
  val row       = RegInit(0.U(32.W))
  val vec1_reg  = RegInit(VecInit(Seq.fill(4)(0.U(16.W))))
  val vec2_reg  = RegInit(VecInit(Seq.fill(4)(0.U(16.W))))

  // FSM
  val idle :: fetch1 :: fetch2 :: process :: calc :: done :: Nil = Enum(6)
  val state = RegInit(0.U(3.W))

  // State Machine
  when(state === idle) {
    io.axiAddr := (io.mbBufferWidth * row) + io.initAddr1 + shift
    state      := fetch1
  }.elsewhen(state === fetch1) {
    vec1_reg   := io.axiDataIn
    io.axiAddr := (io.stride * row) + io.initAddr2 + shift
    state      := fetch2
  }.elsewhen(state === fetch2) {
    vec2_reg   := io.axiDataIn
    state      := process
  }.elsewhen(state === process) {
    state      := calc
  }.elsewhen(state === calc) {
    acc        := acc + io.computeDataIn

    // Possible updates
    // io.axiAddr, shift, row, state
    when((io.computeSize === 16.U && shift >= 3.U) || (io.computeSize === 8.U && shift >= 1.U) || (io.computeSize === 4.U)) {
      io.axiAddr := (io.mbBufferWidth * row) + io.initAddr1
      shift      := 0.U
      when((row + 1.U) < io.numRows) {
        row      := row + 1.U
        state    := fetch1
      }.otherwise {
        state    := done
      }
    }.otherwise {
      shift      := shift + 1.U
      io.axiAddr := (io.mbBufferWidth * row) + io.initAddr1 + shift + 1.U
      state      := fetch1
    }

  }.otherwise {
    state        := idle
  }

  io.accOut      := acc
  io.vec1        := vec1_reg
  io.vec2        := vec2_reg
  io.axiDataOut  := vec1_reg

}
