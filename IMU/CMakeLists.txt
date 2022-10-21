add_executable(MPU6050_I2C
        MPU6050_I2C.c
        MPU6050_I2C.h
        )

# pull in common dependencies and additional i2c hardware support
target_link_libraries(MPU6050_I2C PUBLIC pico_stdlib hardware_i2c)

# pico_enable_stdio_usb(MPU6050_I2C 1)
# pico_enable_stdio_uart(MPU6050_I2C 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(MPU6050_I2C)

# add url via pico_set_program_url
example_auto_set_url(MPU6050_I2C)
