#include "header.h"

char isMoveValid(unsigned char from, unsigned char to){
    if (to-from != _random[0] && to-from != _random[1] && to-from != _random[0]+_random[1]) return 0; // invalid
    if (_colors[from] != _colors[to] && !_colors[to]) return 0;
    return 1;
}
