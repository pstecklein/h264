
import chisel3._
import chisel3.iotesters._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec

class MecTopTest extends AnyFreeSpec with ChiselScalatestTester {
  "Specification" in {
    test(new topLevel()) { dut =>
      // Set inputs
      dut.io.initAddr1.poke(0.U)
      dut.io.initAddr2.poke(0.U)
      dut.io.mbBufferWidth.poke(0.U)
      dut.io.stride.poke(0.U)
      dut.io.numRows.poke(1.U)

      // Run FSM once
      dut.clock.step(1)
      dut.io.axiRData(0).poke(1.U)
      dut.io.axiRData(1).poke(2.U)
      dut.io.axiRData(2).poke(3.U)
      dut.io.axiRData(3).poke(4.U)
      dut.io.topAccOut.expect(0.U)

      // Run FSM for a second time
      dut.clock.step(1)
      dut.io.axiRData(0).poke(1.U)
      dut.io.axiRData(1).poke(2.U)
      dut.io.axiRData(2).poke(3.U)
      dut.io.axiRData(3).poke(4.U)
      dut.io.topAccOut.expect(0.U)

      // Run FSM for a third time
      dut.clock.step(1)
      dut.io.topAccOut.expect(0.U)

      // Run FSM for a fourth time
      dut.clock.step(1)
      dut.io.topAccOut.expect(4.U)
    }
  }
}