#include "header.h"

volatile char* out = (char*)TTY;

char move_checker(unsigned char from, unsigned char to, int dice_count, int head_taken){
    if (_points[to+1]++ == 0){
        _colors[to] = _player;
    }    
    if(--_points[from+1] == 0){
        _colors[from] = 0;
    }
    return 0;
}

void PrintToTTY(char* string){
    while (*string){
        *out = *string;
        string++;
    }
}

