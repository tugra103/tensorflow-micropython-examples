set (IDF_TARGET esp32)

# this option causes the camera module to build
set(CAMERA_TYPE esp32)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.ble
    boards/sdkconfig.spiram
    ../../../../boards/esp32/MICROLITE_SPIRAM_CAM/sdkconfig.esp32cam
    ../../../../boards/esp32/MICROLITE_SPIRAM_CAM/sdkconfig.partition
)

message (STATUS "mpconfigboard.cmake: PROJECT_DIR=${PROJECT_DIR}")

set(USER_C_MODULES
    ${CMAKE_CURRENT_LIST_DIR}/../../../micropython-modules/micropython.cmake
)

list(APPEND EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/../../../dependencies/tflite-micro-esp-examples/components/esp-tflite-micro)

if(NOT MICROPY_FROZEN_MANIFEST)
    set(MICROPY_FROZEN_MANIFEST ${MICROPY_PORT_DIR}/boards/manifest.py)
endif()
