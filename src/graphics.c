#include "header.h"

volatile char* out = (char*)TTY;

char move_checker(unsigned char* move){
    if (_points[move[1]+1]++ == 0){
        _colors[move[1]] = _player;
    }    
    if(--_points[move[0]+1] == 0){
        _colors[move[0]] = 0;
    }
    return 0;
}

// char remove_checker(unsigned char* move){
//     if(--_points[move[0]+1] == 0){
//         _colors[move[0]] = 0;
//     }
//     _amt_of_checkers[_player]--;
// }

void PrintToTTY(char* string){
    while (*string){
        *out = *string;
        string++;
    }
}

