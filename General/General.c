#include <stdio.h>
#include "pico/stdlib.h"

#include "MPU6050_I2C.h"
#include "Uart.h"
#include "Motor_ESC.h"

bool direction = true;
//* Rango de 400 a 2400
int currentMillis = 400;
int servoPin1 = 0;
int servoPin2 = 1;
int servoPin3 = 2;
int servoPin4 = 3;

int16_t accel[3], gyro[3];

int main()
{
    stdio_init_all();

    //* Iniciar Sensor Inercial
    Init_IMU(400);

    //* Iniciar proceso de los motores
    setServo(servoPin1, currentMillis);
    setServo(servoPin2, currentMillis);
    setServo(servoPin3, currentMillis);
    setServo(servoPin4, currentMillis);

    while (true)
    {
        //* Modificar valor de los PWM para los motores
        setMillis(servoPin1, currentMillis);
        setMillis(servoPin2, currentMillis);
        setMillis(servoPin3, currentMillis);
        currentMillis += 10; //* Modifificar valor del PWM
        if (currentMillis > 2400)
        {
            currentMillis = 400; //* Reset para cuando llega al 100%
        }

        //* Leer y obtener los datos del IMU
        IMU_readAccel(accel);
        IMU_readGyro(gyro);

        //* Enviar datos del IMU por medio de Uart y Radio Frecuencia
        for (int i = 0; i < 3; i++)
        {
            Send_Message(accel[i]); //! Debug sencillo
        }
        for (int i = 0; i < 3; i++)
        {
            Send_Message(gyro[i]); //! Debug sencillo
        }

        sleep_ms(10); //* Esperar un tiempo para visualizar los datos
    }

    return 0;
}
