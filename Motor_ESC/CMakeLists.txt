add_executable(Motor_ESC 
        Motor_ESC.c
        Motor_ESC.h
        # Control_Motor_Ej.c
        )

target_link_libraries(Motor_ESC pico_stdlib hardware_pwm hardware_clocks)

# target_include_directories(Motor_ESC PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

# create map/bin/hex file etc.
pico_add_extra_outputs(Motor_ESC)

# add url via pico_set_program_url
example_auto_set_url(Motor_ESC)