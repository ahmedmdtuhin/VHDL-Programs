# Voting Machine Project with FSM (Xilinx Vivado)

This project implements a **Voting Machine** using the **Finite State Machine (FSM)** design methodology in VHDL. It includes both design files and testbenches for simulation and is fully compatible with **Xilinx Vivado**.

---

## 📁 Folder Structure

```
Voting_machine_project_with_FSM/
├── lab8_voting_machine.xpr              # Vivado project file
├── lab8_voting_machine.srcs/            # Source VHDL files (design + testbenches)
│   ├── sources_1/new/                   # VHDL design files
│   └── sim_1/new/                       # Testbench files for simulation
├── lab8_voting_machine.sim/             # Simulation results
├── lab8_voting_machine.cache/           # Vivado cache (auto-generated)
├── lab8_voting_machine.hw/              # Hardware-related settings
├── lab8_voting_machine.runs/            # Implementation/synthesis run files
├── lab8_voting_machine.ip_user_files/   # IP core user files
├── Certificate.jpg                      # Completion certificate (image)
├── Certificate.pdf                      # Completion certificate (PDF)
```

## 🧠 Project Highlights

- Designed using a **Finite State Machine (FSM)** approach in VHDL.
- Accepts votes using buttons/switches.
- Displays results and handles reset logic.
- Includes **testbench files** for validating FSM behavior in simulation.
- Fully verified in **Vivado Design Suite**.

---

## 🚀 How to Use This Project in Xilinx Vivado

### 🧩 Requirements
- Xilinx Vivado 2020.2 or later (Free WebPACK edition is sufficient)

### 📥 Steps

1. **Open Vivado** and go to: `File → Open Project`
2. Navigate to the repo and select: `lab8_voting_machine.xpr`
3. In the **Flow Navigator**, explore:
   - **RTL Analysis** to inspect your FSM logic
   - **Simulation → Run Simulation → Run Behavioral Simulation** to run testbench
   - **Synthesis** and **Implementation** if targeting hardware
4. To modify FSM logic or inputs:
   - Edit files in `sources_1/new/` for design
   - Edit files in `sim_1/new/` for testbench simulation

---

## 🧪 Simulation

- The folder `sim_1/new/` contains **VHDL testbenches** for verifying FSM behavior.
- Simulations are compatible with **Vivado XSIM**.

> Make sure to set the testbench file as the top module when running behavioral simulation.

---

## 🏆 Certificate

This project has been successfully completed and verified. Completion proof is included:
- `Certificate.jpg`
- `Certificate.pdf`

---

## 📄 License

This project is open for academic, learning, and demonstration purposes.

---

### 📌 Notes

- Testbenches are already included and pre-linked in the Vivado project.
- Suitable for digital design labs, final projects, or FSM/VHDL learning modules.

