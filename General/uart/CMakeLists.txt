add_library(uart
src/uart.c)

target_include_directories(uart INTERFACE include)

target_link_libraries(uart pico_stdlib hardware_uart)