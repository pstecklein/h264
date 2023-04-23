
import chisel3._
import chisel3.experimental.FixedPoint

class intra_cmp() extends Module {
  val io = IO(new Bundle {
    val start     = Input(UInt(1.W))
    val sad_res   = Input(Vec(9, UInt(12.W)))
    val db0       = Input(Vec(16, SInt(9.W)))
    val db1       = Input(Vec(16, SInt(9.W)))
    val db2       = Input(Vec(16, SInt(9.W)))
    val db3       = Input(Vec(16, SInt(9.W)))
    val db4       = Input(Vec(16, SInt(9.W)))
    val db5       = Input(Vec(16, SInt(9.W)))
    val db6       = Input(Vec(16, SInt(9.W)))
    val db7       = Input(Vec(16, SInt(9.W)))
    val db8       = Input(Vec(16, SInt(9.W)))
    val pred_pix0 = Input(Vec(16, UInt(8.W)))
    val pred_pix1 = Input(Vec(16, UInt(8.W)))
    val pred_pix2 = Input(Vec(16, UInt(8.W)))
    val pred_pix3 = Input(Vec(16, UInt(8.W)))
    val pred_pix4 = Input(Vec(16, UInt(8.W)))
    val pred_pix5 = Input(Vec(16, UInt(8.W)))
    val pred_pix6 = Input(Vec(16, UInt(8.W)))
    val pred_pix7 = Input(Vec(16, UInt(8.W)))
    val pred_pix8 = Input(Vec(16, UInt(8.W)))

    val sad_best  = Output(UInt(12.W))
    val mode_best = Output(UInt(4.W))
    val pred_best = Output(Vec(16, UInt(8.W)))
    val diff_best = Output(Vec(16, SInt(9.W)))
  })

  when(io.start === 1.U) {
    val sad_min_index = io.sad_res.zipWithIndex.reduceLeft((x,y) => Mux(x._1 < y._1, x, y))._2.U
    io.sad_best := io.sad_res(sad_min_index)
    io.mode_best := sad_min_index

    io.pred_best := Mux(sad_min_index === 0.U, io.pred_pix0,
      Mux(sad_min_index === 1.U, io.pred_pix1,
        Mux(sad_min_index === 2.U, io.pred_pix2,
          Mux(sad_min_index === 3.U, io.pred_pix3,
            Mux(sad_min_index === 4.U, io.pred_pix4,
              Mux(sad_min_index === 5.U, io.pred_pix5,
                Mux(sad_min_index === 6.U, io.pred_pix6,
                  Mux(sad_min_index === 7.U, io.pred_pix7,
                    io.pred_pix8))))))))

    io.diff_best := Mux(sad_min_index === 0.U, io.db0,
      Mux(sad_min_index === 1.U, io.db1,
        Mux(sad_min_index === 2.U, io.db2,
          Mux(sad_min_index === 3.U, io.db3,
            Mux(sad_min_index === 4.U, io.db4,
              Mux(sad_min_index === 5.U, io.db5,
                Mux(sad_min_index === 6.U, io.db6,
                  Mux(sad_min_index === 7.U, io.db7,
                    io.db8))))))))

  }.otherwise{
    io.sad_best := 4095.U
    io.mode_best := 0.U
    for (i <- 0 until 16) {
      io.pred_best(i) := 0.U
    }
    for (i <- 0 until 16) {
      io.diff_best(i) := 0.U
    }
  }
}