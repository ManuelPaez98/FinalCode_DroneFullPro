#include <stdio.h>
#include <string.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/i2c.h"
#include "MPU6050_I2C.h"

static int addr = 0x68; //* Por defecto en el IMU (Según el Datasheet)

#define I2C i2c1
#define pin_SDA 6
#define pin_SCL 7

void IMU_reset() //* Inicializar el IMU
{
    uint8_t buf[] = {0x6B, 0x00};
    i2c_write_blocking(I2C, addr, buf, 2, false);
}

void IMU_readAccel(int accel[3])
{
    uint8_t buffer[6]; //* Para almacenar todos los datos

    uint8_t val = 0x3B;                             //* Acceder al Acelerómetro
    i2c_write_blocking(I2C, addr, &val, 1, true);   //! Verdadero para mantener el control de esclavo en la IMU
    i2c_read_blocking(I2C, addr, buffer, 6, false); //! Leer los datos en 6 Bytes

    for (int i = 0; i < 3; i++)
    {
        accel[i] = (buffer[i * 2] << 8 | buffer[(i * 2) + 1]); // ToDo -- Guardar los datos del Acelerómetro
    }
}

void IMU_readGyro(int gyro[3])
{
    uint8_t buffer[6]; //* Para almacenar todos los datos
    uint8_t val = 0x43; //* Acceder al Gyro
    i2c_write_blocking(I2C, addr, &val, 1, true);
    i2c_read_blocking(I2C, addr, buffer, 6, false);

    for (int i = 0; i < 3; i++)
    {
        gyro[i] = (buffer[i * 2] << 8 | buffer[(i * 2) + 1]); // ToDo -- Guardar los datos del Gyro
    }
}

void Init_IMU(int vel_Read)
{
    stdio_init_all();

    i2c_init(I2C, vel_Read * 1000);            //! Inicializar I2C a 400kHz - I2C rápido para el IMU
    gpio_set_function(pin_SDA, GPIO_FUNC_I2C); //* Pin 9 por defecto
    gpio_set_function(pin_SCL, GPIO_FUNC_I2C); //* Pin 10 por defecto
    gpio_pull_up(pin_SDA);
    gpio_pull_up(pin_SCL);

    bi_decl(bi_2pins_with_func(pin_SDA, pin_SCL, GPIO_FUNC_I2C));

    IMU_reset();
}

/* int main()
{

    Init_IMU(400);
    int16_t accel[3], gyro[3];

    while (1)
    {
        IMU_readAccel(accel);
        IMU_readGyro(gyro);

        printf("%d, %d, %d\n", accel[0], accel[1], accel[2]); //! Debug sencillo
        printf("%d, %d, %d\n", gyro[0], gyro[1], gyro[2]);    //! Debug sencillo

        sleep_ms(100); //* Esperar un tiempo para visualizar los datos
    }

    return 0;
} */
