
import chisel3._
import chisel3.iotesters._
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

      // Run FSM once
      dut.clock.step(1)
      dut.io.axiDataIn(0).poke(1.U)
      dut.io.axiDataIn(1).poke(2.U)
      dut.io.axiDataIn(2).poke(3.U)
      dut.io.axiDataIn(3).poke(4.U)
      dut.acc.expect(0.U)

      // Run FSM for a second time
      dut.clock.step(1)
      dut.io.axiDataIn(0).poke(2.U)
      dut.io.axiDataIn(1).poke(2.U)
      dut.io.axiDataIn(2).poke(2.U)
      dut.io.axiDataIn(3).poke(2.U)
      dut.acc.expect(0.U)

      // Run FSM for a third time
      dut.clock.step(1)
      dut.io.computeDataIn.expect(4.U) // updated to expect the value of uiSum from getSad4x_inst
      dut.acc.expect(4.U)
    }
  }
}