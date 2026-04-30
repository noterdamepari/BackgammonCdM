#include "backgammon.h"

volatile char* out = (char*)TTY;
volatile char* in = (char*)KEYBOARD;

char move_checker(unsigned char* move){
    char color = _colors[move[0]];
    if (_points[move[1]+1]++ == 0){
        _colors[move[1]] = color;
    }    
    if(--_points[move[0]+1] == 0){
        _colors[move[0]] = 0;
    }
    return 0;
}

char remove_checker(unsigned char from){
    if(--_points[from+1] == 0){
        _colors[from] = 0;
    }
    _amt_of_checkers[_player]--;
    return 0;
}

void PrintToTTY(char* string){
    while (*string){
        *out = *string;
        string++;
    }
}

unsigned char getc(){
    unsigned char chr;
    while(1) {
        chr = *in;
        if (chr >= 'a' && chr <= 'z') {
            return chr - 'a';
        }
    }
}

