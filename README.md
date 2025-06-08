# SoC-PipelineALU: Custom Pipelined Arithmetic Logic Unit (ALU)

This repository presents the hardware design for a System-on-Chip (SoC) project centered around a custom pipelined Arithmetic Logic Unit (ALU). The design is optimized for high-speed digital processing and is targeted for implementation on Xilinx FPGAs, leveraging the Vivado design suite.

## Project Overview

This project demonstrates expertise in digital hardware design, SoC architecture, and FPGA development. Key elements include:

* **Custom Pipelined ALU Core (`alu_fixed_v1_0.v`):** A custom-designed 32-bit Arithmetic Logic Unit (ALU) engineered with pipelining stages to maximize throughput and computational efficiency. This ALU performs a comprehensive set of operations including **addition, subtraction, multiplication, bitwise AND, and bitwise OR**. It provides status flags for **zero, negative, and overflow** conditions.
* **AXI4-Lite Control Interface:** The ALU is designed with an AXI4-Lite slave interface, allowing software (or other AXI masters) to configure operands, select operations, and read results and status flags through memory-mapped registers (e.g., for `reg_a`, `reg_b`, `opcode`, `result`, `status`).
* **Configurable AXI4-Stream Pipeline IP (`my_pipeline_ip_v1_0.v`):** A generic and configurable AXI4-Stream pipeline module, demonstrating robust handling of data streams with backpressure support. This IP is parameterizable for data width and pipeline depth, and includes optional TLAST signal support, making it suitable for integrating various data-intensive processing elements within an SoC.
* **SoC Integration & Vivado Design:** The custom ALU and the AXI4-Stream pipeline are integrated as key components within a larger SoC architecture, highlighting robust interfacing and system-level design capabilities. The top-level design (`design_1_wrapper.v`) manages clock and reset inputs, connecting the various IP blocks.
* **Xilinx FPGA Target:** The entire design is developed for synthesis and implementation on Xilinx FPGAs, validating practical application on leading hardware platforms.
* **Vivado Design Suite:** Xilinx Vivado is exclusively used for the RTL design, synthesis, and implementation phases, highlighting proficiency in industry-standard FPGA development tools.

## Repository Structure

The repository is structured to provide clear access to the essential hardware design files:

* `./SoC-PipelineALU.srcs/`: Contains the core Vivado project source files, including the custom ALU (`alu_fixed_v1_0.v`), the AXI4-Stream pipeline (`my_pipeline_ip_v1_0.v`), block designs (`.bd`), and pin assignment/timing constraints (`.xdc`). The top-level wrapper module (`design_1_wrapper.v`) will also be found here.
* `./design_1_wrapper.xsa`: The Xilinx Shell Archive (XSA) file, representing the finalized hardware platform generated from Vivado. This file serves as the definitive hardware definition, ready for further system integration or software development.
* `./.gitignore`: Configured to exclude all Vivado and Vitis build artifacts, temporary files, and other generated content, ensuring a clean and manageable repository focused on source design files.

## Getting Started (Local Setup)

To explore and replicate this hardware design:

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/dimitristheodoropoulos/SoC-PipelineALU.git](https://github.com/dimitristheodoropoulos/SoC-PipelineALU.git)
    cd SoC-PipelineALU
    ```
2.  **Xilinx Vivado Installation:** Ensure you have Xilinx Vivado (version 2023.2 or compatible) installed on your system.
3.  **Open Vivado Project:** Navigate to the main Vivado project directory (which contains your `.xpr` file, or the parent directory of `SoC-PipelineALU.srcs` if the project is built around those sources) and open the `.xpr` file in Vivado. From here, you can proceed with synthesis, implementation, and bitstream generation.

## Future Development / Extensibility

The `design_1_wrapper.xsa` file provides a robust foundation for extending this project into embedded software development. This hardware platform, with its standard AXI interfaces, is prepared for seamless integration with embedded software toolchains, such as Xilinx Vitis. This enables the development of bare-metal applications or real-time operating system (RTOS) solutions for interacting with and exercising the custom ALU and pipeline, opening pathways for complex control, data processing, and IoT applications leveraging the custom hardware.



## Contact

For any questions, collaboration opportunities, or further discussion regarding this project, please feel free to reach out:

* **Dimitris Theodoropoulos**
* GitHub: [dimitristheodoropoulos](https://github.com/dimitristheodoropoulos)
* Email: [dimitris.theodoropoulos@gmail.com]
