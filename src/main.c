#include "header.h"

volatile char* in = (char*)KEYBOARD;

static unsigned int state = 57123;

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

void inline getc(char* buf){
    while(!(*buf = *in));
    *buf -= 'a';
}

char player_move(char prevWasInvalid){
    if (!prevWasInvalid) randomize();
    char x,y;
    PrintToTTY("Your turn:\n");
    PrintToTTY("from: ");

    // * Получаем координаты хода
    getc(&x);
    PrintToTTY("\nto: ");
    getc(&y);

    // TODO: Проверка на валидность хода
    // _stateReg = 1;
    int dice_count = 2;
    int head_taken = 0;
    _player = 1;
    if (isMoveValid(x,y,dice_count,head_taken)){
        move_checker(x,y,dice_count, head_taken);
        _player = -1;
        return 0;
    } else {
        PrintToTTY("\nInvalid\n");
        _player = -1;
        return 1;
    }
    return 1;
}

char computer_move(){
    randomize();
    _player = 0;
    PrintToTTY("\nComputer turn...\n");
    _player = -1;
    return 0;
}

int main(){
    // init
    _player = 1; 
    _points[1] = 11;
    _colors[0] = 1;
    _player = 0;
    _points[13] = 11;
    _colors[12] = 2;
    _player = -1;
    char last_failed = 0;

    while(1){
        last_failed = player_move(last_failed);
        if (last_failed == 0){
            computer_move();
            last_failed = 0;
        }
    }
}

