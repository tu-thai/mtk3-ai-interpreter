# tflm-ekra8m1-mtk3

## Development environment

### Hardware

| Item            | Contents            |
| --------------- | ------------------- |
| Target board    | Renesas EK-RA8M1    |
| USB to UART TTL | USB UART board (*)  |
| Host computer   | Windows 11 computer |

(*) Tested with [FT232 USB UART board](https://www.waveshare.com/ft232-usb-uart-board-micro.htm).

### Software

| Item      | Contents                          |
| --------- | --------------------------------- |
| IDE       | e<sup>2</sup> studio 2024-04      |
| Toolchain | Arm GNU Toolchain 13.2.1.arm-13-7 |
| Terminal  | Tera Term 5.2                     |

## Software dependencies

| Item     | Contents           |
| -------- | ------------------ |
| Firmware | Renesas FSP v5.3.0 |
| RTOS     | µT-Kernel 3.00     |

## Folder structure

* `applications`: Example applications.
* `mtk3_bsp2`: µT-Kernel and its system dependencies.
* `projects`: e<sup>2</sup> studio projects.

## Cloning the repository

Run the git clone command.

```bash
$ git clone https://github.com/tu-thai/tflm-ekra8m1-mtk3.git --recurse-submodules
```

If you downloaded the repository without using the `--recurse-submodules` argument, you should run the below command to acquire the submodules.

```bash
$ git submodule update --init --recursive
```

## Importing projects to e<sup>2</sup> studio

(1) Open e<sup>2</sup> studio.

(2) Choose a workspace and click **Launch**.

(3) **File** > **Import...** > **General** > **Existing Projects into WorkSpace**.

(4) Click **Browse...** and choose the `projects` folder. Click **Select Folder**.

(5) Select the projects you want to import.

(6) Ensure that **Copy projects into workspace** is not selected.

(7) Click **Finish** to import the projects.

## Building and debugging a project with e<sup>2</sup> studio

(1) Select a project to be debugged on the **Project Explorer** view. Click
**Project** > **Build Project** to build the project.

(2) Ensure that debugger connection is established. Click **Run** >
**Run Debug Configurations...** Select the corresponding debug configuration
under the Renesas GDB Hardware Debugging group. Click **Debug** to start
debugging the project.


## Hardware connection

### Debugger

Connect the host computer to the USB Debug Port (J10) on EK-RA8M1.

### Serial outputs

#### Connect EK-RA8M1 to the USB to UART board

You can connect the USB to UART board to the host computer and use a terminal
to view the serial outputs.

Connect the RX, TX pins on the Arduino compatible connectors (J23) of EK-RA8M1
to the corresponding pins of the USB to UART board.

```txt
Arduino Compatible Connectors   USB to UART board
----------------------------|   |-----------------
                     (D0) RX|---|TX
                     (D1) TX|---|RX
                            |   |
----------------------------|   |-----------------
```

#### Configure the serial port of terminal

Configurations of the serial port are as follows.

| Item         | Value  |
| ------------ | ------ |
| Speed        | 115200 |
| Data         | 8 bit  |
| Parity       | none   |
| Stop bits    | 1 bit  |
| Flow control | none   |
