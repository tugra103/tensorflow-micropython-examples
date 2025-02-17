set (IDF_TARGET esp32)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.ble
    boards/sdkconfig.240mhz
    boards/sdkconfig.spiram
    ../../../../boards/esp32/MICROLITE_SPIRAM/sdkconfig.16m
    ../../../../boards/esp32/MICROLITE_SPIRAM/sdkconfig-16m.partition
)

message (STATUS "mpconfigboard.cmake: PROJECT_DIR=${PROJECT_DIR}")

set(USER_C_MODULES
    ${CMAKE_CURRENT_LIST_DIR}/../../../micropython-modules/micropython.cmake
)

list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/../../../dependencies/tflite-micro-esp-examples/components/esp-tflite-micro)

if(NOT MICROPY_FROZEN_MANIFEST)
    set(MICROPY_FROZEN_MANIFEST ${MICROPY_PORT_DIR}/boards/manifest.py)
endif()
