set(IDF_TARGET esp32s3)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.usb
    boards/sdkconfig.ble
    boards/ESP32_GENERIC_S3/sdkconfig.board
    ../../../../boards/esp32/MICROLITE_S3/sdkconfig-8m.partition
)


set(USER_C_MODULES
    ${CMAKE_CURRENT_LIST_DIR}/../../../micropython-modules/micropython.cmake
)

list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/../../../dependencies/tflite-micro-esp-examples/components/esp-tflite-micro)