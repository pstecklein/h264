
import chisel3._
import chisel3.experimental.FixedPoint
import chisel3.util.Enum

class ctrl_unit() extends Module {
  val io = IO(new Bundle {
    val done_charge = Input(UInt(1.W))
    val mvx_min     = Input(SInt(4.W))
    val mvy_min     = Input(SInt(4.W))
    val address_min = Input(UInt(11.W))

    val mvx         = Output(SInt(4.W))
    val mvy         = Output(SInt(4.W))
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
  io.mvx := 0.S
  io.mvy := 0.S
  io.address := 264.U

  // 17x17=289 possible MB in reference area
  val visited = RegInit(VecInit(Seq.fill(512)(false.B)))
  val curr_mid = RegInit(0.U(10.W))

  // FSM
  val idle :: north :: calcNorth :: compareNorth :: east :: calcEast :: compareEast :: south :: calcSouth :: compareSouth :: west :: calcWest :: compareWest :: mid :: calcMid :: compareMid :: decision :: finish :: Nil = Enum(18)
  val state = RegInit(0.U(5.W))

  // Diamond
  when(io.done_charge === 0.U) {
    state := idle
  }.elsewhen(state === idle) {
    state := north
  }.elsewhen(state === north) {
    when(visited(io.address_min) === true.B) {
      io.done_ldps := 1.U
      state := finish
    }.otherwise {
      io.address := io.address_min - 32.U
      io.mvy := io.mvy_min + 1.S
      state := calcNorth
    }
  }.elsewhen(state === calcNorth) {
    io.start_sad := 1.U
    io.start_comp := 1.U
    state := compareNorth
  }.elsewhen(state === compareNorth) {
    state := east
  }.elsewhen(state === east) {
    io.address := io.address_min + 1.U
    io.mvx := io.mvx_min + 1.S
    state := calcEast
  }.elsewhen(state === calcEast) {
    io.start_sad := 1.U
    io.start_comp := 1.U
    state := compareEast
  }.elsewhen(state === compareEast) {
    state := south
  }.elsewhen(state === south) {
    io.address := io.address_min + 32.U
    io.mvy := io.mvy_min - 1.S
    state := calcSouth
  }.elsewhen(state === calcSouth) {
    io.start_sad := 1.U
    io.start_comp := 1.U
    state := compareSouth
  }.elsewhen(state === compareSouth) {
    state := west
  }.elsewhen(state === west) {
    io.address := io.address_min - 1.U
    io.mvx := io.mvx_min - 1.S
    state := calcWest
  }.elsewhen(state === calcWest) {
    io.start_sad := 1.U
    io.start_comp := 1.U
    state := compareWest
  }.elsewhen(state === compareWest) {
    state := mid
  }.elsewhen(state === mid) {
    visited(io.address_min) := true.B
    curr_mid := io.address_min
    state := calcMid
  }.elsewhen(state === calcMid) {
    io.start_sad := 1.U
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
      state := north
    }
  }.elsewhen(state === finish) {
    state := finish
  }.otherwise {
    state := idle
  }

}
