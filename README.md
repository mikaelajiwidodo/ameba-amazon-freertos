# Realtek's AWS Solution

- [Getting Started](#getting-started)
- [Supported Integrated Circuits (ICs)](#supported-integrated-circuits-ics)
- [Getting Started](#getting-started)

## Getting Started

For more information on FreeRTOS, refer to the [Getting Started section of FreeRTOS webpage](https://aws.amazon.com/freertos).

To directly access the **Getting Started Guide** for supported hardware platforms, click the corresponding link in the Supported Hardware section below.

For detailed documentation on FreeRTOS, refer to the [FreeRTOS User Guide](https://aws.amazon.com/documentation/freertos).

## Supported Integrated Circuits (ICs)

The following are the supported ICs with the corresponding link to the GitHub SDK.

| Chip                       | Link                                        | Supported branch link                               |
|----------------------------|---------------------------------------------|-----------------------------------------------------|
| Ameba Z2                   | https://github.com/Ameba-AIoT/ameba-rtos-z2 | https://github.com/Ameba-AIoT/ameba-amazon-freertos |
| Ameba D                    | https://github.com/Ameba-AIoT/ameba-rtos-d/ | https://github.com/Ameba-AIoT/ameba-amazon-freertos |
| Ameba Dplus / Lite / Smart | https://github.com/Ameba-AIoT/ameba-rtos    | https://github.com/Ameba-AIoT/ameba-amazon-freertos |


## Cloning
This repo uses [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to bring in dependent components.

Note: If you download the ZIP file provided by GitHub UI, you will not get the contents of the submodules. (The ZIP file is also not a valid git repository)

To clone using HTTPS:
```
git clone https://github.com/Ameba-AIoT/ameba-amazon-freertos.git --recurse-submodules
```
Using SSH:
```
git clone git@github.com:Ameba-AIoT/ameba-amazon-freertos.git --recurse-submodules
```

If you have downloaded the repo without using the `--recurse-submodules` argument, you need to run:
```
git submodule update --init --recursive
```

## Supported Hardware

For additional boards that are supported for FreeRTOS, please visit the [AWS Device Catalog](https://devices.amazonaws.com/search?kw=freertos)

The following MCU boards are supported for FreeRTOS:
1. **Realtek Ameba D** - [AmebaD](https://www.amebaiot.com/en/amebad).
    * [Getting Started Guide](https://github.com/ambiot/amazon-freertos/blob/master/AmebaD_Amazon_FreeRTOS_Getting_Started_Guide_v1.6.pdf)
    * IDEs: [IAR Embedded Workbench](https://www.iar.com/iar-embedded-workbench/partners/texas-instruments)
2. **Realtek Ameba Z2** - [AmebaZ2](https://www.amebaiot.com/en/amebaz2).
    * [Getting Started Guide](https://github.com/ambiot/amazon-freertos/blob/master/AmebaZ2_Amazon_FreeRTOS_Getting_Started_Guide_v1.0.pdf)
    * IDEs: [IAR Embedded Workbench](https://www.iar.com/iar-embedded-workbench/partners/texas-instruments)
3. **Windows Simulator** - To evaluate FreeRTOS without using MCU-based hardware, you can use the Windows Simulator.
    * Requirements: Microsoft Windows 7 or newer, with at least a dual core and a hard-wired Ethernet connection
    * [Getting Started Guide](https://docs.aws.amazon.com/freertos/latest/userguide/getting_started_windows.html)
    * IDE: [Visual Studio Community Edition](https://www.visualstudio.com/downloads/)


## Mbed TLS License
This repository uses Mbed TLS under Apache 2.0

# History link

This repository is continuing development from old repository link

https://github.com/ambiot/amazon-freertos
