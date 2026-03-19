#pragma once 
#define int16_t int
#define int8_t char
#define uint16_t unsigned int
#define uint8_t unsigned char

#define KEYBOARD 0xdead
#define TTY 0xdeaf

extern volatile int _points[24];
extern volatile char _colors[24];
extern volatile char _stateReg; // 0 - player move; 1 - computer move
extern volatile char _dbg; 

char move_checker(char from, char to);
