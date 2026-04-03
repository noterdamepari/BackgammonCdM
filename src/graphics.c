#include "header.h"

volatile char* out1 = (char*)TTY;

char move_checker(unsigned char from, unsigned char to){
    if (_points[to]++ == 0){
        _colors[to] = _stateReg;
    }    
    if(--_points[from] == 0){
        _colors[from] = -1;
    }
    return 0;
}

void PrintToTTY(char* string){
    while (*string){
        *out1 = *string;
        string++;
    }
}

