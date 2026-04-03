#include "header.h"

volatile char* in = (char*)KEYBOARD;

static unsigned int state = 52679;

unsigned int xorshift16() {
    unsigned int x = state;
    x ^= x << 7;
    x ^= x >> 9;
    x ^= x << 8;
    state = x;
    return x;
}

void randomize(){
    for(int i = 0; i < 2; i++){
        unsigned int val;
        do {
            val = xorshift16() & 0x07; 
        } while (val < 1 || val > 6);
        _random[i] = (char)val;
    }
}

char player_move(char prevWasInvalid){
    if (!prevWasInvalid) randomize();
    char x,y;
    PrintToTTY("Your turn:\n");
    PrintToTTY("from: ");

    // * Получаем координаты хода
    while(!(x = *in)){
    }
    x -= 'a';
    PrintToTTY("\nto: ");
    while(!(y = *in)){
    }
    y -= 'a';

    // TODO: Проверка на валидность хода
    // _stateReg = 1;
    if (isMoveValid(x,y)){
        _stateReg = 1;
        move_checker(x,y);
        _stateReg = -1;
        return 0;
    } else {
        PrintToTTY("\nInvalid\n");
        return 1;
    }
    return 1;
}

char computer_move(){
    randomize();
    _stateReg = 0;
    PrintToTTY("\nComputer turn...\n");
    _stateReg = -1;
    return 0;
}

int main(){
    // init
    _stateReg = 1; 
    _points[1] = 11;
    _colors[1] = 1;
    _stateReg = 0;
    _points[13] = 11;
    _colors[13] = 2;
    _stateReg = -1;
    char last_failed = 0;
    while(1){
        last_failed = player_move(last_failed);
        if (last_failed == 0){
            computer_move();
            last_failed = 0;
        }
    }
}

