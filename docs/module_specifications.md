# Module Specifications — logic_unit

**Author:** Soliman Yehia  
**Date:** 17 Oct 2025  
**File:** rtl/logic_unit.v  
**Role:** Implements 4-bit logical operations (AND, OR, XOR, NOT)

---

## 🧩 1. Description
The `logic_unit` module performs **bitwise logic operations** on two 4-bit inputs (`a` and `b`).
It supports four operations selected by the control input `op[1:0]`:

| op[1:0] | Operation | Expression | Description |
|----------|------------|-------------|--------------|
| 00 | AND | `result = a & b` | Bitwise AND of inputs |
| 01 | OR  | `result = a | b` | Bitwise OR of inputs |
| 10 | XOR | `result = a ^ b` | Bitwise XOR of inputs |
| 11 | NOT | `result = ~a`   | Bitwise NOT of input `a` (ignores `b`) |

---

## 🔢 2. Truth Tables (Bit-level)
Each bit of the result follows these logic rules:

**AND**

| a | b | result |
|---|---|---------|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

**OR**

| a | b | result |
|---|---|---------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

**XOR**

| a | b | result |
|---|---|---------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

**NOT (on a only)**

| a | result |
|---|---------|
| 0 | 1 |
| 1 | 0 |

---

## 🧮 3. Example Calculations
| a | b | op | Operation | Result |
|---|---|----|------------|--------|
| 1010 | 0101 | 00 | AND | 0000 |
| 1010 | 0101 | 01 | OR  | 1111 |
| 1010 | 0101 | 10 | XOR | 1111 |
| 1010 | 0101 | 11 | NOT | 0101 |

---

## ⚙️ 4. Design Decisions
- The module is **purely combinational** (no clock or flip-flops).  
- Implemented using a **case statement inside `always @(*)`**.  
- The **NOT** operation ignores input `b`.  
- Default case ensures the output is zero for invalid op codes.  
- Follows **OpenCores HDL guidelines** for clear, reusable RTL.

---

## ✅ 5. Integration Notes
- Used inside `alu_4bit.v` for operation codes 010–101.  
- Output connected to top-level multiplexer.  
- No internal flags are generated — `carry` and `zero` handled at ALU level.
