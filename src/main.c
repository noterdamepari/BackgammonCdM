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

static unsigned char inline getc(){
    unsigned char chr;
    while(1) {
        chr = *in;
        if (chr >= 'a' && chr <= 'z') {
            return chr - 'a';
        }
    }
}


void player_move(unsigned char* can_remove_checker){
    unsigned char move[2]; 
    PrintToTTY("\n--- Player Turn ---\n");
    randomize();
    _player = 1;

    // _random - физический массив, который выводится на экраны
    // dice - фактический массив, который позволяет нам корректно обрабатывать дубли

    unsigned char dice[4];
    int dice_count = 0;
    int head_can_taken = 0;

    char d1 = _random[0];
    char d2 = _random[1];

    // * обрабатываем дубль
    if (d1 == d2) {
        PrintToTTY("\nRolling doubles!!");
        dice[0] = d1; dice[1] = d1; dice[2] = d1; dice[3] = d1;
        dice_count = 4;
        head_can_taken = 2;
    } else {
        dice[0] = d1; dice[1] = d2;
        dice_count = 2;
        head_can_taken = 1;
    }

    while (dice_count){
        // static unsigned char move[2];
        PrintToTTY("\nMoves left: ");
        *(char*)TTY = dice_count + '0'; 

        // * fetch coordinates
        PrintToTTY("\nfrom (z to pass): ");
        // TODO: При вводе Y - делаем вывод фишки,\ продумать когда начинать предлагать вывести фишку, сверять каждый раз?
        // Проверку делаем через can_remove_checker
        move[0] = getc();
        if (move[0] == 'z' - 'a') {
            PrintToTTY("\nPassed.\n");
            break;
        }
        PrintToTTY("\nto: ");
        move[1] = getc();
        int dbgdist = get_dst(move[0], move[1], _player);
        PrintToTTY("\n");
        *(char*)TTY = dbgdist + '0';
        PrintToTTY("\nMove validation...");
        if (isMoveValid(move, dice, dice_count, head_can_taken)){
            move_checker(move);
            if (!zabor_rule()){
                unsigned char undomove[2] = {move[1], move[0]};
                move_checker(undomove);
            } else {
                PrintToTTY("\nOk...");
                if (move[0] == 0) head_can_taken--;

                int dist = get_dst(move[0], move[1], _player);
                for(int i = 0; i < dice_count; i++){
                    if (dice[i] == dist) {
                        dice[i] = dice[dice_count - 1]; 
                        dice_count--;
                        break;
                    }
                }

                if (d1 != d2) {
                    if (_random[0] == dist) _random[0] = 0;
                    else if (_random[1] == dist) _random[1] = 0;
                } else {
                    if (dice_count == 2) _random[1] = 0;
                }
            }
        } else {
            PrintToTTY("\nInvalid\n");
        }
    }
    _player = -1;
}

char computer_move(){
    randomize();
    _player = 0;
    PrintToTTY("\n--- Computer Turn ---\n");
    _player = -1;
    return 0;
}

int main(){

    // init
    _player = 1; 
    _amt_of_checkers[1] = 12;
    _points[1] = 12;
    _colors[0] = 1;
    _player = 0;
    _amt_of_checkers[0] = 12;
    _points[13] = 12;
    _player = 1; 
    for (int i = 14; i < 19;i++){
        _points[i] = 1;
        _colors[i-1] = 1;
    }
    _points[15] = 2;
    _colors[12] = 2;
    _player = -1;
    unsigned char can_remove_checker = 0;
    // while(1){
        player_move(&can_remove_checker);
        // computer_move();
    // }
}

