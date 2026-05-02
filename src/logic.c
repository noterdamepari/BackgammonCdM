#include "backgammon.h"


int get_dst(char from, char to, int player) {
    int dst = to - from;
    if (player == 1) {
        // Игрок идет от 0 до 23
        if (dst <= 0) return -1;
        return dst;
    } else {
        // Компьютер идет 12..23, затем 0..11
        if (from < 12 && to >= 12) return -1;
        if (dst < 0) dst += 24; 
        if (dst == 0) return -1;
        return dst;
    }
}

char zabor_rule() {
    char opponent = (_player == 1) ? 2 : 1;
    char color = (_player == 1) ? 1 : 2;
    // char opp_head = (opponent == 1) ? 0 : 12;
    char opp_finish = (opponent == 2) ? 11 : 23;

    for (int i = 0; i < 24; i++) {
        int count = 0;

        for (int j = 0; j < 6; j++) {
            int idx = i + j;
            if (idx >= 24) idx -= 24;

            if (_colors[idx] == color)
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
            for (int j = 0; j <= dst; j++){
                int curr = i+6+j;
                if (curr >= 24) curr -= 24;
                if (curr >= 24) curr -= 24;
                if (_colors[curr] == opponent){
                    found = 1;
                    break;
                }
            }

            if (!found) { // check if opponent already remove chips
                if (_amt_of_checkers[!_player] < 11) { 
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
    int color = (_player == 1) ? 1 : 2;
    if (_colors[move[0]] != color || !_points[move[0]+1]){
        if (color == 1) PrintToTTY("\nErr: Not your checker!\n");
        return 0;
    } // проверяем старт, можем ли мы вообще оттуда ходить
    
    char opponent = (_player == 1) ? 2 : 1; // чекаем занято ли противником место куда идем
    if (_colors[move[1]] == opponent) {
        if (color == 1) PrintToTTY("\nErr: Point captured by opponent!\n");
        return 0;
    }
    
    int dist = get_dst(move[0], move[1], _player); // проверка на валидность по дистанции
    if (dist <= 0 || dist > 6) {
        if (color == 1) PrintToTTY("\nErr: Invalid dist\n");
        return 0;
    }

    char head_pos = (_player == 1) ? 0 : 12; // проверяем правило головы
    if (move[0] == head_pos && head_can_taken == 0) {
        if (color == 1) PrintToTTY("\nErr: Head rule\n");
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
        if (color == 1) PrintToTTY("\nErr: Dice doesn`t exists\n");
        return 0;
    } 

    return 1;
}

char is_all_in_home() {
    if (_player == 1) {
        _player = -1;
        for (int i = 1; i < 19; i++) {
            if (_colors[i-1] == 1 && _points[i] > 0){
                _player = 1;
                return 0;
            } 
        }
        _player = 1;
    } else {
        _player = -1;
        for (int i = 12; i < 24; i++) {
            if (_colors[i] == 2 && _points[i + 1] > 0){
                _player = 0;
                return 0;
            } 
        }
        for (int i = 0; i < 6; i++) {
            if (_colors[i] == 2 && _points[i + 1] > 0){
                _player = 0;
                return 0;
            } 
        }
        _player = 0;
    }
    return 1; // all in home
}

char validate_bear_off(unsigned char from, unsigned char* dice, int dice_count) {
    int color = (_player == 1) ? 1 : 2;
    if (_colors[from] != color || _points[from + 1] == 0) {
        PrintToTTY("\nErr: Not your checker!\n");
        return 0;
    }

    // get dst
    int dst = (_player == 1) ? (24 - from) : (12 - from);


    // find dice
    for (int i = 0; i < dice_count; i++) {
        if (dice[i] == dst) {
            return dst; // return dice
        }
    }

    // check checkers behind
    char checkers_behind = 0;
    int home_start = (_player == 1) ? 18 : 6;

    int player = _player;
    _player = -1;
    
    for (int i = home_start; i < from; i++) {
        if (_colors[i] == player && _points[i + 1] > 0) {
            checkers_behind = 1;
            break;
        }
    }

    _player = player;
    // senior dice rule
    if (!checkers_behind) {
        int best_dice = 7;
        for (int i = 0; i < dice_count; i++) {
            if (dice[i] > dst && dice[i] < best_dice) {
                best_dice = dice[i];
            }
        }
        if (best_dice != 7) {
            return best_dice; 
        }
    }

    PrintToTTY("\nErr: No valid dice to bear off\n");
    return 0;
}