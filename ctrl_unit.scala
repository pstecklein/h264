
import chisel3._
import chisel3.experimental.FixedPoint
import chisel3.util.Enum

class ctrl_unit() extends Module {
  val io = IO(new Bundle {
    val done_charge = Input(UInt(1.W))
    val mvx_min     = Input(UInt(8.W))
    val mvy_min     = Input(UInt(8.W))
    val address_min = Input(UInt(10.W))

    val mvx         = Output(UInt(8.W))
    val mvy         = Output(UInt(8.W))
    val address     = Output(UInt(10.W))
    val start_sad   = Output(UInt(1.W))
    val start_comp  = Output(UInt(1.W))
    val done_ldps   = Output(UInt(1.W))
  })

  val mvx_curr     = RegInit(0.U(8.W))
  val mvy_curr     = RegInit(0.U(8.W))
  val address_curr = RegInit(328.U(10.W))

  // 17*21=357 possible MB in reference area
  val visited = RegInit(VecInit(Seq.fill(357)(false.B)))
  visited(address_curr) := true.B


  // FSM
  val idle :: north :: east :: south :: west :: mid :: compare :: Nil = Enum(8)
  val state = RegInit(0.U(3.W))

  // Diamond
  when(io.done_charge === 1.U) {
    state := idle
  }.elsewhen(state === idle) {
    state := north
  }.elsewhen(state === north) {
    io.mvx := 0.U
    io.mvy := 1.U
    state := east
  }.elsewhen(state === east) {
    io.mvx := 1.U
    io.mvy := 0.U
    state := west
  }.elsewhen(state === west) {
    io.mvx := 0.U
    io.mvy := 0.U
    state := south
  }.elsewhen(state === south) {
    io.mvx := 0.U
    io.mvy := 0.U
    state := mid
  }.elsewhen(state === mid) {
    io.mvx := 0.U
    io.mvy := 0.U
    state := north
    io.start_comp := 1.U
  }.elsewhen(state === compare) {
    // comparing
    // if address min is center then stop
  }.otherwise {
    state := idle
  }

}
