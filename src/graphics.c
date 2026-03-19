#include "header.h"

char move_checker(char from, char to){
    if (_points[to]++ == 0){
        _colors[to] = _stateReg;
    }    
    if(--_points[from] == 0){
        _colors[from] = -1;
    }
    return 0;
}
