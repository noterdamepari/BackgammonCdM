#include "header.h"

volatile char* in = (char*)KEYBOARD;

void randomize(){
    // TODO: рандомайзер
}

char player_move(){
    // TODO: тут мы рандомим чиселки через сделанный нами рандомайзер
    char x,y;
    PrintToTTY("Your turn:\n");
    PrintToTTY("from: ");

    // waiting for a move
    while(!(x = *in)){
    }
    x -= 'a';
    PrintToTTY("\nto: ");
    // waiting for a move
    while(!(y = *in)){
    }
    y -= 'a';

    // TODO: Проверка на валидность хода
    if (y-x > _random1+_random2) { // если игрок превысил допустимое расстояние для хода
        PrintToTTY("\nYour move is invalid!\n");
        return 1; // move is invalid
    }
    move_checker(x,y);
    return 0;
}

void computer_move(){
    PrintToTTY("\nComputer turn...\n");
}

int main(){
    _stateReg = 0; 
    _points[0] = 11;
    _random1 = 5;
    _random2 = 2;
    char tmp = 1;
    while(tmp) tmp = player_move();
    computer_move();
}

