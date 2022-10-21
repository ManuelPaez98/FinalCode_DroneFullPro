#include "Motor_ESC.h"
#include <stdio.h>
#include "pico/stdlib.h"

bool direction = true;
//* Rango de 400 a 2400
int currentMillis = 400;
int servoPin1 = 0;
int servoPin2 = 1;
int servoPin3 = 2;
int servoPin4 = 3;

int main()
{
    setServo(servoPin1, currentMillis);
    setServo(servoPin2, currentMillis);
    setServo(servoPin3, currentMillis);
    setServo(servoPin4, currentMillis);

    while (true)
    {
        currentMillis += (direction) ? 1 : -1;
        if (currentMillis >= 2400)
            direction = false;
        if (currentMillis <= 400)
            direction = true;
        setMillis(servoPin1, currentMillis);
        setMillis(servoPin2, currentMillis);
        setMillis(servoPin3, currentMillis);
        sleep_ms(3);
    }
}