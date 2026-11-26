# Verilog & Digital Design Notes

## Day 1 — Number Formatting & Continuous Assignment
* **Sized Literals (`<size>'<base><value>`):** `1'b1` means a 1-bit binary `1`, and `1'b0` means a 1-bit binary `0`.
* **Why specify bit-width:** Hardware describes physical wires, so specifying width prevents accidental 32-bit default mismatches.
* **`assign` statement:** Connects a signal or constant continuously like a physical wire (`assign out = in;`).
