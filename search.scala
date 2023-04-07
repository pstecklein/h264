
import chisel3._
import chisel3.experimental.FixedPoint

object search extends App {
  println("[{(Generating Verilog file)}]")
  (new chisel3.stage.ChiselStage).emitVerilog(new searchTop())
}

class searchTop() extends Module {
  val io = IO(new Bundle {
    val done_charge = Input(UInt(1.W))
    val cur_data_in = Input(Vec(256, UInt(8.W)))
    val org_data_in = Input(Vec(1152, UInt(8.W)))

    val mvx_min     = Output(UInt(8.W))
    val mvy_min     = Output(UInt(8.W))
    val address_min = Output(UInt(10.W))
    val min_sad     = Output(UInt(16.W))
    val done_ldps   = Output(UInt(1.W))
  })

  val extraction_inst = Module(new extraction())
  val ctrl_unit_inst  = Module(new ctrl_unit())
  val sad16x_inst     = Module(new sad16x())
  val comparator_inst = Module(new comparator())

  io.mvx_min                    := comparator_inst.io.mvx_min
  io.mvy_min                    := comparator_inst.io.mvy_min
  io.address_min                := comparator_inst.io.address_min
  io.min_sad                    := comparator_inst.io.min_sad
  io.done_ldps                  := ctrl_unit_inst.io.done_ldps

  extraction_inst.io.pix_data   := io.org_data_in
  extraction_inst.io.mvx        := ctrl_unit_inst.io.mvx
  extraction_inst.io.mvy        := ctrl_unit_inst.io.mvy
  extraction_inst.io.address    := ctrl_unit_inst.io.address

  sad16x_inst.io.start          := ctrl_unit_inst.io.start_sad
  sad16x_inst.io.cur            := io.cur_data_in
  sad16x_inst.io.org            := extraction_inst.io.ref_data

  comparator_inst.io.sad_res    := sad16x_inst.io.out
  comparator_inst.io.start      := ctrl_unit_inst.io.start_comp

  ctrl_unit_inst.io.done_charge := io.done_charge
  ctrl_unit_inst.io.mvx_min     := comparator_inst.io.mvx_min
  ctrl_unit_inst.io.mvy_min     := comparator_inst.io.mvy_min
  ctrl_unit_inst.io.address_min := comparator_inst.io.address_min

}
