#include "backgammon.h"

static int evaluate_move(char from, char to, char is_bear_off) {
    int score = 0;
    
    if (is_bear_off) {
        return 1000;
    }

    if (from == 12) {
        score += 50;
    }

    if (_colors[to] == 2 && _points[to + 1] > 0) {
        score += 20;
    } 

    else if (!_points[to + 1]) {
        score += 10;
    }

    return score;
}

void computer_move(unsigned char* can_remove_checker) {
    unsigned char move[2]; 
    PrintToTTY("\n--- Computer Turn ---\n");
    randomize();
    _player = 0;

    if (!(*can_remove_checker)){
        if (is_all_in_home()){
            PrintToTTY ("\nDBG: Computer now can bearing off!");
            *can_remove_checker = 1;
        } 
    }

    // _random - физический массив, который выводится на экраны
    // dice - фактический массив, который позволяет нам корректно обрабатывать дубли

    unsigned char dice[4];
    int dice_count = 0;
    int head_can_taken = 0;

    char d1 = _random[0];
    char d2 = _random[1];

    // * обрабатываем дубль
    if (d1 == d2) {
        PrintToTTY("\nRolling doubles!!");
        dice[0] = d1; dice[1] = d1; dice[2] = d1; dice[3] = d1;
        dice_count = 4;
        head_can_taken = 2;
    } else {
        dice[0] = d1; dice[1] = d2;
        dice_count = 2;
        head_can_taken = 1;
    }

    while (dice_count){    
        int bst_score = -1;
        char bst_from = -1;
        char bst_to = -1;
        int bst_dice_idx = -1;
        
        char best_is_bear_off = 0;
        int dice_for_bear_off = 0;

        for (int i = 0; i < dice_count; i++) {
            int curr = dice[i];

            for (char from = 0; from < 24; from++) {
                if (_colors[from] != 2) continue;
                
                char to = from + curr;
                char is_bear_off = 0;

                if (from >= 12) {
                    if (to >= 24) to -= 24;
                } else {
                    if (to >= 12) {
                        if (*can_remove_checker){
                            to = 24;
                            is_bear_off = 1;
                        } else continue;
                    }
                }

                move[0] = from;
                move[1] = to;

                
                if (is_bear_off) { 
                    int used_dice = validate_bear_off(from, dice, dice_count);
                    if (used_dice) {
                        int score = evaluate_move(from, to, 1);
                        if (score > bst_score) {
                            bst_score = score; bst_from = from; bst_to = to; 
                            bst_dice_idx = i; best_is_bear_off = 1;
                            dice_for_bear_off = used_dice;
                        }
                    }
                } else {

                    int score = evaluate_move(from, to, 0);
                    if (score <= bst_score) continue;
                    if (isMoveValid(move, dice, dice_count, head_can_taken)) {
                        move_checker(move);
                        if (zabor_rule()) {
                            bst_score = score; bst_from = from; bst_to = to; 
                            bst_dice_idx = i; best_is_bear_off = 0;
                        } 
                        unsigned char undomove[2] = {to, from};
                        move_checker(undomove); // Откатываем назад
                    }
                }
            }
        }

        if (bst_score == -1) {
            PrintToTTY("\nComputer passed.");
            break;
        }

        unsigned char best_move[2] = {bst_from, bst_to};
        if (best_is_bear_off){
            remove_checker(bst_from);
            for (int i = 0; i < dice_count; i++) {
                if (dice[i] == dice_for_bear_off) {
                    dice[i] = dice[dice_count - 1]; 
                    dice_count--;
                    break;
                }
            }
        } else {
            move_checker(best_move);
            if (bst_from == 12) head_can_taken--; // Сняли с головы
            int dist = get_dst(bst_from, bst_to, _player);
            for(int i = 0; i < dice_count; i++){
                if (dice[i] == dist) {
                    dice[i] = dice[dice_count - 1]; 
                    dice_count--;
                    break;
                }
            }
        }
        *(char*)TTY = bst_from + 'a';
        PrintToTTY(" -> ");
        *(char*)TTY = bst_to + 'a';
        PrintToTTY("\n");
    }
    _player = -1;
}
