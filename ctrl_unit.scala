
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

  // start/finish signals
  io.start_sad := 0.U
  io.start_comp := 0.U
  io.done_ldps := 0.U

  // set values to center of search, update values in FSM
  io.mvx := 0.U
  io.mvy := 0.U
  io.address := 328.U

  // 17*21=357 possible MB in reference area
  val visited = RegInit(VecInit(Seq.fill(357)(false.B)))
  val curr_mid = RegInit(1153.U(11.W))

  // FSM
  val idle :: north :: calcNorth :: compareNorth :: east :: calcEast :: compareEast :: south :: calcSouth :: compareSouth :: west :: calcWest :: compareWest :: mid :: calcMid :: compareMid :: decision :: finish :: Nil = Enum(18)
  val state = RegInit(0.U(5.W))

  // Diamond
  when(io.done_charge === 0.U) {
    state := idle
  }.elsewhen(state === idle) {
    io.address := io.address_min - 32.U
    io.mvy := io.mvy_min + 1.U
    state := north
  }.elsewhen(state === north) {
    when(visited(io.address_min) === true.B) {
      io.done_ldps := 1.U
      state := finish
    }.otherwise {
      io.start_sad := 1.U
      state := calcNorth
    }
  }.elsewhen(state === calcNorth) {
    io.start_comp := 1.U
    state := compareNorth
  }.elsewhen(state === compareNorth) {
    io.address := io.address_min + 1.U
    io.mvx := io.mvx_min + 1.U
    state := east
  }.elsewhen(state === east) {
    io.start_sad := 1.U
    state := calcEast
  }.elsewhen(state === calcEast) {
    io.start_comp := 1.U
    state := compareEast
  }.elsewhen(state === compareEast) {
    io.address := io.address_min + 32.U
    io.mvy := io.mvy_min - 1.U
    state := south
  }.elsewhen(state === south) {
    io.start_sad := 1.U
    state := calcSouth
  }.elsewhen(state === calcSouth) {
    io.start_comp := 1.U
    state := compareSouth
  }.elsewhen(state === compareSouth) {
    io.address := io.address_min - 1.U
    io.mvx := io.mvx_min - 1.U
    state := west
  }.elsewhen(state === west) {
    io.start_sad := 1.U
    state := calcWest
  }.elsewhen(state === calcWest) {
    io.start_comp := 1.U
    state := compareWest
  }.elsewhen(state === compareWest) {
    state := mid
  }.elsewhen(state === mid) {
    visited(io.address_min) := true.B
    curr_mid := io.address_min
    io.start_sad := 1.U
    state := calcMid
  }.elsewhen(state === calcMid) {
    io.start_comp := 1.U
    state := compareMid
  }.elsewhen(state === compareMid) {
    state := decision
  }.elsewhen(state === decision) {
    // if address min is center then stop
    when(io.address_min === curr_mid) {
      io.done_ldps := 1.U
      state := finish
    }.otherwise {
      io.address := io.address_min - 32.U
      io.mvy := io.mvy_min + 1.U
      state := north
    }
  }.elsewhen(state === finish) {
    state := finish
  }.otherwise {
    state := idle
  }

}
