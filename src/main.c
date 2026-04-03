#include "header.h"

volatile char* in = (char*)KEYBOARD;

static unsigned int state = 52679;

unsigned int xorshift32() {
    unsigned int x = state;
    x ^= x << 7;
    x ^= x >> 9;
    x ^= x << 8;
    state = x;
    return x;
}

char player_move(){
    // TODO: тут мы рандомим чиселки через сделанный нами рандомайзер
    for(int i = 0; i < 2; i++){
        unsigned int val;
        do {
            val = xorshift32() & 0x07; 
        } while (val < 1 || val > 6); // Нам не нужны 0 и 7
        _random[i] = (char)val;
    }
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
    _stateReg = 1;
    move_checker(x,y);
    _stateReg = -1;
    return 0;
}

void computer_move(){
    for(int i = 0; i < 2; i++){
        unsigned int val;
        do {
            val = xorshift32() & 0x07; 
        } while (val < 1 || val > 6); // Нам не нужны 0 и 7
        _random[i] = (char)val;
    }
    _stateReg = 0;
    PrintToTTY("\nComputer turn...\n");
    _stateReg = -1;
}

int main(){
    _stateReg = -1;
    _stateReg = 1; 
    _points[1] = 11;
    _stateReg = 0;
    _points[13] = 11;
    _stateReg = -1;
    char tmp = 1;
    while(tmp) tmp = player_move();
    tmp = 1;
    computer_move();
    while(tmp) tmp = player_move();
    tmp = 1;
    computer_move();
    while(tmp) tmp = player_move();
}

