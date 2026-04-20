#pragma once 
#define int16_t int
#define int8_t char
#define uint16_t unsigned int
#define uint8_t unsigned char

#define KEYBOARD 0xdeae
#define TTY 0xdeb0

extern volatile unsigned int _points[25]; // zero is null point, starts from 1
extern volatile char _colors[25]; // 0 - clear point, 1 - player`s point, 2 - computer`s point 
extern volatile char _player; // 1 - player move; 0 - computer move
extern volatile char _dbg; 
extern volatile char _random[4];
extern volatile char _amt_of_checkers[2];

char move_checker(unsigned char* move);
char remove_checker(unsigned char from);
void PrintToTTY(char* string);
char zabor_rule();
char isMoveValid(unsigned char* move, unsigned char* dice, int dice_count, int head_taken);
char isRemoveValid();
char is_all_in_home();
char validate_bear_off(unsigned char from, unsigned char* dice, int dice_count);
int get_dst(char from, char to, int player);
