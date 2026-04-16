#include "header.h"


int get_dst(char from, char to, int player) {
    int dst = to - from;
    if (player == 1) {
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

char zabor_rule() {
    char opponent = (_player == 1) ? 2 : 1;
    // char opp_head = (opponent == 1) ? 0 : 12;
    char opp_finish = (opponent == 2) ? 11 : 23;

    for (int i = 0; i < 24; i++) {
        int count = 0;

        for (int j = 0; j < 6; j++) {
            int idx = i + j;
            if (idx >= 24) idx -= 24;

            if (_colors[idx] == _player)
                count++;
            else
                break;
        }

        if (count == 6) {
            // dbg
            PrintToTTY("\nfind ");
            *(char*)TTY = i + 'a';
            //
            char dst = get_dst(i+6, opp_finish, 0);
            char found = 0;
            // trying to find opponent chip ahead
            for (int j = 0; j < dst; j++){
                int curr = i+j;
                if (curr >= 24) curr -= 24;
                if (_colors[curr] == opponent){
                    found = 1;
                    break;
                }
            }

            if (!found) { // check if opponent already remove chips
                if (_amt_of_checkers[!_player] < 12) { 
                    found = 1;
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
    
    int dist = get_dst(move[0], move[1], _player); // проверка на валидность по дистанции
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