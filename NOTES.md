# Verilog & Digital Design Notes

## Day 1 (Part 1) — Number Formatting & Continuous Assignment
* **Sized Literals (`<size>'<base><value>`):** `1'b1` means a 1-bit binary `1`, and `1'b0` means a 1-bit binary `0`.
* **Why specify bit-width:** Hardware describes physical wires, so specifying width prevents accidental 32-bit default mismatches.
* **`assign` statement:** Connects a signal or constant continuously like a physical wire (`assign out = in;`).

## Day 1 (Part 2) — Outputting Zero
* **Outputting Low (`1'b0`):** Just like `1'b1` drives a constant high voltage, `assign zero = 1'b0;` ties an output wire permanently to ground (logic `0`).

## Day 1 (Part 3) — Signal Direction
* **Signal Direction (`assign out = in;`):** The destination wire being driven always goes on the left side of `=`, and the source signal goes on the right side (`out <--- in`).
* **Why `in = out` is invalid:** Inputs are already driven by whatever sits outside the module, so trying to assign a value to an `input` drives the wire backward and leaves `out` disconnected.
