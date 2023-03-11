
import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec

class getSad4xTest extends AnyFreeSpec with ChiselScalatestTester {
  "Specification" in {
    test(new getSad4x()) { dut =>
      dut.io.org(0).poke(1.U)
      dut.io.org(1).poke(2.U)
      dut.io.org(2).poke(3.U)
      dut.io.org(3).poke(4.U)

      dut.io.cur(0).poke(2.U)
      dut.io.cur(1).poke(2.U)
      dut.io.cur(2).poke(2.U)
      dut.io.cur(3).poke(2.U)

      // inital out value
      dut.io.out.expect(0.U)

      // after first clock cycle
      dut.clock.step(1)
      dut.io.out.expect(4.U)
    }
  }
}
