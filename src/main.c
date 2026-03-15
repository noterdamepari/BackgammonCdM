#include "header.h"


int main(){
    _stateReg = 0; 
    for (int i = 0; i < 12; i++){
        _points[i] = i;
        _stateReg = !_stateReg;
    }
    _stateReg = 1;
    for (int i = 12; i < 20; i++){
        _points[i] = i-12;
        _stateReg = !_stateReg;
    }
}

