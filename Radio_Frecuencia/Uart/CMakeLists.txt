# add_executable(Uart
#         Uart_Example.c
#         Uart.c
#         Uart.h
#         )

# pull in common dependencies and additional i2c hardware support
add_library(Final-Script Uart.h Uart.c)

target_link_libraries(Final-Script pico_stdlib hardware_i2c)

target_include_directories(Final-Script PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")


# pico_enable_stdio_usb(Uart 0)
# pico_enable_stdio_uart(Uart 1)

# # create map/bin/hex file etc.
# pico_add_extra_outputs(Uart)

# # add url via pico_set_program_url
# example_auto_set_url(Uart)
