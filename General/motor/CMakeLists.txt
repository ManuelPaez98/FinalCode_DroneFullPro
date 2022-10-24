add_library(motor
src/Motor_ESC.c)

target_include_directories(motor INTERFACE include)

target_link_libraries(motor pico_stdlib hardware_pwm hardware_clocks)