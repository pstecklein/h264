
import chisel3._
import chisel3.util._
import chisel3.experimental.FixedPoint

class extraction() extends Module {
  val io = IO(new Bundle {
    val pix_data = Input(Vec(1152, UInt(8.W)))
    val mvx      = Input(UInt(8.W))
    val mvy      = Input(UInt(8.W))
    val address  = Input(UInt(10.W))

    val ref_data = Output(Vec(256, UInt(8.W)))
  })

  // collect ref data from loading module
  // 36 x 32 len vec

  // ASSUMES width = 32
  // Given motion vector and x displacement, parse MB from memory
  val corner = (32.U * (io.address * (io.mvy / io.mvx))) + (io.address * (io.mvx / io.mvy))
  io.ref_data := VecInit(Seq.tabulate(16)(i => io.pix_data(io.address + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U)) ++
      Seq.tabulate(16)(i => io.pix_data(corner + 32.U + i.U))
  )

}