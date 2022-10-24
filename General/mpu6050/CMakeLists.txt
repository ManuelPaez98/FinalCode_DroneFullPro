add_library(mpu6050
src/MPU6050_I2C.c)

target_include_directories(mpu6050 INTERFACE include)

target_link_libraries(mpu6050 pico_stdlib pico_binary_info hardware_i2c)