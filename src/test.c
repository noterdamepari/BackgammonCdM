#include "backgammon.h"
volatile char* in = (char*)KEYBOARD;

int main(){
    PrintToTTY("Decrease simulation speed\nIt will help you to find bugs\nPress any button to start: ");
    getc();
    PrintToTTY("\nWhite test start");
    _player = 1;
    for(int i = 1; i < 25; i++){
        for (int k = 1; k < 12; k++){
            _points[i] = k;
        }
    }
    PrintToTTY("\nPress any button to continue...");
    getc();
    for(int i = 1; i < 25; i++){
        for (int k = 1; k < 12; k++){
            _points[i] = 0;
        }
    }
    PrintToTTY("\nBlack test start");
    _player = 0;
    for(int i = 1; i < 25; i++){
        for (int k = 1; k < 13; k++){
            _points[i] = k;
        }
    }
    PrintToTTY("\nTests finished"); 
}