#include "header.h"


int get_dst(char from, char to) {
    int dst = to - from;
    if (_player == 1) {
        // Игрок идет от 0 до 23
        if (dst <= 0) return -1;
        return dst;
    } else {
        // Компьютер идет 12..23, затем 0..11
        if (dst < 0) dst += 24; 
        if (dst == 0) return -1;
        return dst;
    }
}

char zabor_rule(){
    char opponent = (_player == 1) ? 2 : 1;

    for (int i = 0; i < 24; i++) {
        int count = 0;

        // считаем подряд 6 точек
        for (int j = 0; j < 6; j++) {
            int idx = i + j;
            if (idx >= 24) idx -= 24;

            if (_colors[idx] == _player)
                count++;
            else
                break;
        }

        if (count == 6) {
            int found = 0;

            for (int k = 0; k < 24; k++) {
                int idx;

                if (_player == 1){
                    idx = i + 6 + k;
                    if (idx >= 24) idx -= 24;
                    if (idx >= 24) idx -= 24;
                }
                else{
                    idx = i - 1 - k;
                    if (idx < 0) idx += 24;
                    if (idx < 0) idx += 24;
                }
                if (_colors[idx] == opponent) {
                    found = 1;
                    break;
                }
            }
            if (!found) {
                PrintToTTY("\nErr: Illegal block (6 in row)\n");
                return 0;
            }
        }
    }
    return 1;
}

char isMoveValid(unsigned char* move, unsigned char* dice, int dice_count, int head_can_taken){
    if (_colors[move[0]] != _player || !_points[move[0]+1]){
        PrintToTTY("\nErr: Not your checker!\n");
        return 0;
    } // проверяем старт, можем ли мы вообще оттуда ходить
    
    char opponent = (_player == 1) ? 2 : 1; // чекаем занято ли противником место куда идем
    if (_colors[move[1]] == opponent) {
        PrintToTTY("\nErr: Point captured by opponent!\n");
        return 0;
    }
    
    int dist = get_dst(move[0], move[1]); // проверка на валидность по дистанции
    if (dist <= 0 || dist > 6) {
        PrintToTTY("\nErr: Invalid dist\n");
        return 0;
    }

    char head_pos = (_player == 1) ? 0 : 12; // проверяем правило головы
    if (move[0] == head_pos && head_can_taken == 0) {
        PrintToTTY("\nErr: Head rule\n");
        return 0;
    } 
    // проверяем валидность хода, если не нашли кубик с длинной хода, то выходим

    char can_move = 0;
    for(int i = 0; i < dice_count; i++){
        if (dice[i] == dist) {
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


char isRemoveValid();
// TODO: Вывод фишек