#include "header.h"

char* input_addr = (char*)KEYBOARD;

int main(){
    char x,y;
    _stateReg = 0; 
    _points[0] = 11;
    char* str = "from: ";
    for (int i = 0; i < 7; i++){
        *(char*)TTY = str[i];
    }

    // waiting for a move
    while(!(x = *input_addr)){
    }
    x -= 'a';
    str = "\nto: ";
    for (int i = 0; i < 6; i++){    // char* str = "from: ";
        *(char*)TTY = str[i];
    }

    // waiting for a move
    while(!(y = *input_addr)){
    }
    y -= 'a';
    move_checker(x,y);
}

