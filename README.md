# 🔧 4-Bit ALU — Logic Unit (Verilog)

This repository contains the **Logic Unit** component of a modular 4-bit ALU project.  
It’s part of a collaborative Verilog hardware design assignment that demonstrates teamwork, version control (Git/GitHub), and clean RTL design following **OpenCores HDL guidelines**.

---

## 📁 Project Structure

```text

project-root/
├── rtl/
│   └── logic_unit.v               # RTL logic unit implementation
├── tb/
│   └── logic_unit_tb.v            # Self-checking testbench
├── docs/
│   └── module_specifications.md   # Documentation (truth table, examples, design)
└── README.md

---

## ⚙️ Logic Unit Overview

**File:** `rtl/logic_unit.v`  
**Description:** Performs 4-bit logical operations on two inputs (`a`, `b`) according to the control signal `op[1:0]`.

| op[1:0] | Operation | Expression | Notes |
|----------|------------|-------------|-------|
| 00 | AND | `result = a & b` | Bitwise AND |
| 01 | OR  | `result = a | b` | Bitwise OR |
| 10 | XOR | `result = a ^ b` | Bitwise XOR |
| 11 | NOT | `result = ~a`   | Bitwise NOT (on a only) |

---

## 🔢 Example Simulation

**Inputs:**
a = 1010
b = 0101



**Results:**
| Operation | Output |
|------------|---------|
| AND | 0000 |
| OR  | 1111 |
| XOR | 1111 |
| NOT | 0101 |

---

## 🧠 Design Notes
- Pure **combinational logic** using `always @(*)`
- Uses **case statement** for operation decoding
- No clock, reset, or storage elements
- Default output = `4'b0000` for invalid op codes
- Written following **OpenCores HDL coding conventions**

---

## 🧪 Testbench Summary
**File:** `tb/logic_unit_tb.v`

- Fully self-checking testbench  
- Includes **16 test cases** covering:
  - All-zeros input  
  - All-ones input  
  - Alternating patterns (1010 / 0101)  
  - Random values  
- Automatically prints **PASS/FAIL** for each case

---

## 👤 Author
**Name:** Soliman Yehia  
**Role:** Logic Unit Developer (RTL + Testbench + Documentation)  
**Date:** October 2025  

---

## 🌐 References
- [OpenCores HDL Guidelines](https://opencores.org)
- [GitHub Repository](https://github.com/solimansror/logic_unit)
