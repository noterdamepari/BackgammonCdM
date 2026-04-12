#include "header.h"

int get_dst(char from, char to) {
    int dist = to - from;
    if (_player == 1) {
        // Игрок идет от 0 до 23
        if (dist <= 0) return -1;
        return dist;
    } else {
        // Компьютер идет 12..23, затем 0..11
        if (dist < 0) dist += 24; 
        if (dist == 0) return -1;
        return dist;
    }
}

char isMoveValid(unsigned char from, unsigned char to, int dice_count, int head_taken){
    if (_colors[from] != _player || !_points[from+1]){
        PrintToTTY("\nErr: Not your checker!\n");
        return 0;
    } // проверяем старт, можем ли мы вообще оттуда ходить
    
    char opponent = (_player == 1) ? 2 : 1; // чекаем занято ли противником место куда идем
    if (_colors[to] == opponent) {
        PrintToTTY("\nErr: Point captured by opponent!\n");
        return 0;
    }
    
    int dist = get_dst(from, to); // проверка на валидность по дистанции
    if (dist <= 0 || dist > 6) {
        PrintToTTY("\nErr: Invalid dist\n");
        return 0;
    }

    char head_pos = (_player == 1) ? 0 : 12; // проверяем правило головы
    if (from == head_pos && head_taken >= 1) {
        PrintToTTY("\nErr: Head rule\n");
        // TODO: доделать исключение, если дубль
        return 0;
    } 
    // проверяем валидность хода, если не нашли кубик с длинной хода, то выходим

    char can_move = 0;
    for(int i = 0; i < dice_count; i++){
        if (_random[i] == dist) {
            can_move = 1;
            break;
        }
    }

    if (!can_move) { 
        PrintToTTY("\nErr: Dice doesn`t exists\n");
        return 0;
    }
    return 1;
}
