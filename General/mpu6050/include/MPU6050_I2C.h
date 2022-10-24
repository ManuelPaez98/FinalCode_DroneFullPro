#ifndef MPU6050_I2C_h
#define MPU6050_I2C_h

//* Constructor del archivo .c
void IMU_reset();
void IMU_readAccel(int accel[3]);
void IMU_readGyro(int gyro[3]);
void Init_IMU(int vel_Read);

#endif