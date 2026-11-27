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

## Day 2 — Parallel Wires & Basic Logic Gates
* **Parallel Execution:** Unlike C code that runs line by line, multiple `assign` statements in Verilog represent separate physical wires operating at the exact same time—the order you write them does not matter.
* **Bitwise Logic Gates:** Verilog uses the same bitwise operators as C (`~` for NOT, `&` for AND, `|` for OR), which synthesize directly into physical logic gates (`~(a | b)` creates a NOR gate).
* **Bitwise `~` vs. Logical `!`:**
  * `~` (Bitwise NOT) flips every individual bit and preserves the signal's bit-width (e.g., `~4'b1010` -> `4'b0101`). Always use `~` for hardware gates.
  * `!` (Logical NOT) checks if the entire value is zero or non-zero and always returns a single 1-bit `1` or `0` (e.g., `!4'b1010` -> `1'b0`).

## Day 2 (Part 2) — Internal Wires, XNOR & Vectors
* **XOR & XNOR:** `^` is bitwise XOR (`a ^ b`), and `~(a ^ b)` is XNOR (outputs `1` when both inputs match).
* **Internal Wires:** `wire w1, w2;` creates intermediate connections between gates (used in `declaring_wires` and `7458`).
* **Vectors:** `wire [2:0] vec;` bundles 3 wires (`vec[2]` = MSB, `vec[0]` = LSB); assign the whole bus (`outv = vec`) or single bits (`vec[0]`).
* **Max Unsigned Value:** An $N$-bit bus holds $0$ to $2^N - 1$ (3 bits = `0..7`; 10 bits `[9:0]` = `0..1023`).

