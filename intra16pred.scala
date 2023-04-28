
import chisel3._
import chisel3.experimental.FixedPoint

class intra16pred() extends Module {
  val io = IO(new Bundle {
    val start        = Input(Bool())
    val Hpix         = Input(Vec(16, UInt(8.W)))
    val Vpix         = Input(Vec(16, UInt(8.W)))
    val valid_H      = Input(Bool())
    val valid_V      = Input(Bool())

    val mode_V_data  = Output(Vec(16,  UInt(8.W)))
    val mode_H_data  = Output(UInt(8.W))
    val mode_DC_data = Output(UInt(8.W))
  })

  val mode_V_pix  = VecInit(Seq.fill(16)(0.U(8.W)))
  val mode_H_pix  = VecInit(Seq.fill(16)(0.U(8.W)))
  val mode_DC_val = RegInit(0.U)

  val mode_H_itr  = RegInit(0.U)

  when(io.start){
    val mode_V_pix  = io.Hpix
    val mode_H_pix  = io.Vpix
    val mode_DC_val = (io.Hpix.reduce(_ + _) + io.Vpix.reduce(_ + _)) >> 4
  }

  io.mode_V_data  := mode_V_pix
  io.mode_H_data  := mode_H_pix(mode_H_itr)
  io.mode_DC_data := mode_DC_val

}