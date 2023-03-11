
import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec

class motionEstimationCtrlTest extends AnyFreeSpec with ChiselScalatestTester {
  "Specification" in {
    test(new controller()) { dut =>
      // Set inputs
      dut.io.initAddr1.poke(0.U)
      dut.io.initAddr2.poke(0.U)
      dut.io.mbBufferWidth.poke(0.U)
      dut.io.stride.poke(0.U)
      dut.io.numRows.poke(1.U)

      dut.io.computeDataIn.poke(10.U)

      // Run FSM once
      dut.clock.step(1)
      dut.io.axiDataIn(0).poke(1.U)
      dut.io.axiDataIn(1).poke(2.U)
      dut.io.axiDataIn(2).poke(3.U)
      dut.io.axiDataIn(3).poke(4.U)
      dut.io.accOut.expect(0.U)

      // Run FSM for a second time
      dut.clock.step(1)
      dut.io.axiDataIn(0).poke(2.U)
      dut.io.axiDataIn(1).poke(2.U)
      dut.io.axiDataIn(2).poke(2.U)
      dut.io.axiDataIn(3).poke(2.U)
      dut.io.accOut.expect(0.U)

      // Run FSM for a third time
      dut.clock.step(1)

      // Run FSM for a fourth time
      dut.clock.step(1)
      dut.io.accOut.expect(10.U)

      dut.io.computeDataIn.poke(7.U)
      dut.clock.step(3)
      dut.io.accOut.expect(17.U)

      dut.io.computeDataIn.poke(5.U)
      dut.clock.step(3)
      dut.io.accOut.expect(22.U)

      dut.io.computeDataIn.poke(3.U)
      dut.clock.step(3)
      dut.io.accOut.expect(25.U)
    }
  }
}