cmake_minimum_required(VERSION 3.0.0)
project(Calculator_Project VERSION 1.0.0)

add_library(General_Library
        MPU6050_I2C.c
        MPU6050_I2C.h
        Uart.c
        Uart.h
        Motor_ESC.c
        Motor_ESC.h)

# add_executable(General 
#         General.c
#         MPU6050_I2C.c
#         MPU6050_I2C.h
#         Uart.c
#         Uart.h
#         Motor_ESC.c
#         Motor_ESC.h
#         )

add_executable(General
                General.c)       

# target_link_libraries(calculator my_math my_print)
target_link_libraries(General pico_stdlib
                hardware_pwm hardware_clocks 
                hardware_i2c
                hardware_uart)

# target_include_directories(General PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

pico_enable_stdio_usb(General 0)
pico_enable_stdio_uart(General 1)

# create map/bin/hex file etc.
pico_add_extra_outputs(General)

# add url via pico_set_program_url
example_auto_set_url(General)