
import chisel3._
import chisel3.util._
import chisel3.experimental.FixedPoint

class extraction() extends Module {
  val io = IO(new Bundle {
    val pix_data = Input(Vec(1024, UInt(8.W)))
    val mvx      = Input(SInt(4.W))
    val mvy      = Input(SInt(4.W))
    val address  = Input(UInt(10.W))

    val ref_data = Output(Vec(256, UInt(8.W)))
  })

  // collect ref data from loading module
  // 32x32 len vec

  // ASSUMES width = 32
  // Given motion vector and x displacement, parse MB from memory
  //val corner = (32.U * (io.address * (io.mvy / io.mvx))) + (io.address * (io.mvx / io.mvy))
  io.ref_data := VecInit(Seq.tabulate(16)(i => io.pix_data(264.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 64.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 96.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 128.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 160.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 192.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 224.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 256.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 288.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 320.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 352.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 384.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 416.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 448.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(264.U + 480.U + i.U))
  )

}