# Matter (previously CHIP) on AmebaLite

- [Get Ameba SDK & Amazon FreeRTOS SDK](#get-ameba-sdk--amazon-freertos-sdk)
- [Install Required Python Modules](#install-required-python-modules)
- [Enable Amazon FreeRTOS Settings](#enable-amazon-freertos-settings)
- [Build Amazon FreeRTOS library and Final Firmware](#build-amazon-freertos-library-and-final-firmware)
- [Clean Amazon FreeRTOS library and application](#clean-amazon-freertos-library-and-application)
- [Flash Image](#flash-image-using-python-script)
- [Monitor Ameba](#monitor-ameba-log-using-python-script)

## Get Ameba SDK & Amazon FreeRTOS SDK

    Tested on Ubuntu 24.04 or above

Create and enter new directory

    mkdir dev
    cd dev

Get ameba-rtos v1.1 SDK + integrated patch + aws patch, please contact our FAE to get the SDKs

Clone ameba-amazon-freertos within the ameba-rtos SDK:

    cd ameba-rtos

    git clone --recurse-submodules -b FreeRTOS-LTS-202406.xx_mbedtls-v3.6.3 https://github.com/Ameba-AIoT/ameba-amazon-freertos.git component/application/amazon/amazon-freertos

## Install Required Python Modules

Navigate to the `ameba-rtos` directory:

    cd ameba-rtos

    chmod u+x ameba.sh

    ./ameba.sh

## Enable Amazon FreeRTOS Settings

Navigate to the `amebalite_gcc_project` directory:

    cd ameba-rtos/amebalite_gcc_project/

Menuconfig for matter:
- To enable Amazon FreeRTOS, under `CONFIG APPLICATION`, navigate to `Amazon FreeRTOS Config`, and select `Enable Amazon FreeRTOS`.
- To use MbedTLS from the Amazon FreeRTOS submodule, after selecting `Enable Amazon FreeRTOS`, select `MbedTLS Amazon Defined`

```bash
python menuconfig.py
```

Navigate to `ameba-rtos/component/lwip/api/`. In `lwipopts.h`, set the following settings to 1:
```c
#define LWIP_STATS                      1
#define LWIP_COMPAT_MUTEX               1
```

Navigate to `ameba-rtos/component/ssl/mbedtls-3.6.2/include/mbedtls/`. In `mbedtls_config_legacy.h`, uncomment the following settings:
```c
#define MBEDTLS_THREADING_ALT
#define MBEDTLS_THREADING_C
```

## Build Amazon FreeRTOS library and Final Firmware

Within `amebalite_gcc_project` folder, start building the Matter libraries and the final firmware with the following command:

    python build.py -D AMAZON_EXAMPLE=example_name

    // Available example_name for build
    mqtt_mutual_auto / http_mutual_auto / device_shadow / device_defender / ota_over_mqtt / ota_over_mqtt_streams

## Clean Amazon FreeRTOS library and application

Within `amebalite_gcc_project` folder, clean the whole project with the following command:

    python build.py --clean && rm -rf build/

## Flash Image using Python script

The generated image is found in the ameba-rtos sdk `ameba-rtos/amebalite_gcc_project`, both `km4_boot_all.bin` and `km0_km4_app.bin` will be flashed.

Within `amebalite_gcc_project` folder, flash the image to the Ameba port (e.g. `/dev/ttyUSB0`).

    python flash.py -p /dev/ttyUSB0

If the app image is too large, please add the --image/-i option

    python flash.py -p /dev/ttyUSB0 -i km4_boot_all.bin 0x08000000 0x08014000 -i km0_km4_app.bin 0x08014000 0x08300000

## Monitor Ameba Log using Python script

Within `amebalite_gcc_project` folder, monitor Ameba log through the Ameba port (e.g. `/dev/ttyUSB0`).

    python monitor.py -p /dev/ttyUSB0 -b 1500000
