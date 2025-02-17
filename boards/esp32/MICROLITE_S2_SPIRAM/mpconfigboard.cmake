set(IDF_TARGET esp32s2)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.usb
)


set(USER_C_MODULES
    ${CMAKE_CURRENT_LIST_DIR}/../../../micropython-modules/micropython.cmake
)

list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/../../../dependencies/tflite-micro-esp-examples/components/esp-tflite-micro)

