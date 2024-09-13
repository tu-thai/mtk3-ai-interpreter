# µT-Kernel AI Interpreter (Proof of concept)

*Combining AI and RTOS for resource constrained embedded systems.*

## Introduction

The rapid expansion of the AIoT underscores the increasing significance of
embedded systems and their fundamental real-time operating systems.
Moreover, in today's societal drive toward carbon neutrality, the need for
energy-efficient embedded systems is increasing rapidly.

A machine learning model is utilized by an AI interpreter to process data and
generate outcomes. µT-Kernel is a real-time OS for small embedded systems.
It can run on embedded systems with a very small amount of ROM and RAM.
Employing a µT-Kernel AI Interpreter enhances flexibility and scalability
compared to using a bare-metal AI interpreter. With this setup, each RTOS task
can be fine-tuned in terms of priority and periodicity, enabling developers to
meet specific real-time and energy-efficiency requirements effectively.

To showcase the capabilities of the µT-Kernel AI Interpreter, a person
detection example application is deployed on an MCU-based board. This proof of
concept would aptly demonstrate the capability of the µT-Kernel AI Interpreter
development.

![µT-Kernel AI Interpreter PoC](uT-Kernel-AI-Interpreter.png)

## Development environment

### Hardware

| Item          | Contents                                                                                                                                          |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Target board  | [Renesas EK-RA8M1](https://www.renesas.com/en/products/microcontrollers-microprocessors/ra-cortex-m-mcus/ek-ra8m1-evaluation-kit-ra8m1-mcu-group) |
| Host computer | Windows 11 computer                                                                                                                               |

### Software

| Item      | Contents                                                                                              |
| --------- | ----------------------------------------------------------------------------------------------------- |
| IDE       | [e<sup>2</sup> studio](https://www.renesas.com/en/software-tool/e-studio) 2024-07                     |
| Toolchain | [Arm GNU Toolchain](https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain) 13.2.1.arm-13-7 |
| Terminal  | [J-Link RTT Viewer](https://www.segger.com/products/debug-probes/j-link/tools/rtt-viewer/) V7.96g     |

## Software dependencies

| Item     | Contents                                                                                        |
| -------- | ----------------------------------------------------------------------------------------------- |
| Firmware | [Renesas RA FSP](https://www.renesas.com/en/software-tool/flexible-software-package-fsp) v5.3.0 |
| Library  | [LiteRT for Microcontrollers](https://ai.google.dev/edge/litert/microcontrollers/overview)      |
| RTOS     | [µT-Kernel 3.00](https://github.com/tron-forum/mtkernel_3)                                      |

## Folder structure

* `applications`: Example applications.
* `mtk3_bsp2`: µT-Kernel and its system dependencies.
* `projects`: e<sup>2</sup> studio projects.
* `RA8M1`: RA8M1 specific.
* `SEGGER_RTT`: SEGGER RTT specific.
* `tflm`: LiteRT for Microcontrollers.

## Clone the repository

Run the command git clone.

```bash
git clone https://github.com/tu-thai/tflm-ekra8m1-mtk3.git --recurse-submodules
```

If you downloaded the repository without using the `--recurse-submodules` argument, you should run the below command to acquire the submodules.

```bash
git submodule update --init --recursive
```

## Import projects to e<sup>2</sup> studio

(1) Open e<sup>2</sup> studio.

(2) Choose a workspace and click **Launch**.

(3) **File** > **Import...** > **General** > **Existing Projects into WorkSpace**.

(4) Click **Browse...** and choose the `projects` folder. Click **Select Folder**.

(5) Select the projects you want to import.

(6) Ensure that **Copy projects into workspace** is not selected.

(7) Click **Finish** to import the projects.

## Build and debug a project with e<sup>2</sup> studio

(1) Select a project to be debugged on the **Project Explorer** view. Click
**Project** > **Build Project** to build the project.

(2) Ensure that debugger connection is established. Click **Run** >
**Run Debug Configurations...** Select the corresponding debug configuration
under the Renesas GDB Hardware Debugging group. Click **Debug** to start
debugging the project.

## Setup debugging

(1) Connect the host computer to the USB Debug Port (J10) on EK-RA8M1.

(2) Launch e<sup>2</sup> studio.

(3) Select a project to be debugged on the **Project Explorer** view. Click
**Project** > **Build Project** to build the project.

(4) Click **Run** > **Run Debug Configurations...**. Select the corresponding
debug configuration under the **Renesas GDB Hardware Debugging** group. Click
**Debug** to start debugging the project.

(5) Launch J-Link RTT Viewer. Configure the connection as follow.

| Item                  | Contents                            |
| --------------------- | ----------------------------------- |
| Connection to J-Link  | USB                                 |
| Specify Target Device | R7FA8M1AH                           |
| Target Interface      | SWD                                 |
| Speed                 | 4000 kHz                            |
| RTT Control Block     | Search Range                        |
|                       | Address range: `0x22000000 0xE0000` |
