#pragma once 
#define int16_t int
#define int8_t char
#define uint16_t unsigned int
#define uint8_t unsigned char

#define KEYBOARD 0xdeae
#define TTY 0xdeb0

extern volatile int _points[24];
extern volatile char _colors[24];
extern volatile char _stateReg; // 0 - player move; 1 - computer move
extern volatile char _dbg; 
extern volatile char _random1;
extern volatile char _random2;

char move_checker(unsigned char from, unsigned char to);
void PrintToTTY(char* string);
