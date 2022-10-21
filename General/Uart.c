#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/uart.h"
#include <string.h>

#define UART_ID uart1
// #define BAUD_RATE 115200

#define UART_TX_PIN 4
#define UART_RX_PIN 5

void Config(int Baud_Rate)
{
    uart_init(UART_ID, Baud_Rate);
    gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
    gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);

    int Uart_Interrup = UART1_IRQ;

    // Habilitar la interrupción
    irq_set_exclusive_handler(Uart_Interrup, Get_Message);
    irq_set_enabled(Uart_Interrup, true);
    uart_set_irq_enables(UART_ID, true, false);
}

void Send_Message(char *message)
{
    uart_puts(UART_ID, message);
}

// RX función de interrupción
int Get_Message()
{
    int chars_rxed = 0;
    uint8_t ch = 0;

    while (uart_is_readable(UART_ID))
    {
        ch = uart_getc(UART_ID);
        // if (uart_is_writable(UART_ID))
        // {
        //     ch++;
        //     uart_putc(UART_ID, ch);
        // }
        chars_rxed++;
    }
    return ch;
}