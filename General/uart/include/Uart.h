#ifndef Uart_h
#define Uart_h

//* Constructor del archivo .c
void Config(int Baud_Rate);
void Send_Message(char* message);
int Get_Message();

#endif