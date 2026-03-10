#include "header.h"

const unsigned int mask_table[] = {
    0x0000, 0x0001, 0x0003, 0x0007, 
    0x000F, 0x001F, 0x003F, 0x007F, 
    0x00FF, 0x01FF, 0x03FF, 0x07FF, 
    0x0FFF, 0x1FFF, 0x3FFF, 0x7FFF, 
    0xFFFF
};

char move_checker(char from, char to){
    if (--_points[from] == 0)
        _colors[from] = -1;
    if (_points[to] == 0)
        _colors[to] = _stateReg;
    _points[to]++;    
    return 0;
}
