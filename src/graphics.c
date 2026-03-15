#include "header.h"

char move_checker(char from, char to){
    if (--_points[from] == 0)
        _colors[from] = -1;
    if (_points[to] == 0)
        _colors[to] = _stateReg;
    _points[to]++;    
    return 0;
}
