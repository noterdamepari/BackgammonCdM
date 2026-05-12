#include "backgammon.h"

static unsigned int state = 44257;

unsigned int xorshift16() {
    unsigned int x = state;
    x ^= x << 7;
    x ^= x >> 9;
    x ^= x << 8;
    state = x;
    return x;
}

void randomize(){
    for(int i = 0; i < 2; i++){
        unsigned int val;
        do {
            val = xorshift16() & 0x07; 
        } while (val < 1 || val > 6);
        _random[i] = (char)val;
    }
}



void player_move(unsigned char* can_remove_checker){
    unsigned char move[2]; 
    print_to_tty("\n--- Player Turn ---\n");
    randomize();
    _player = 1;

    if (!(*can_remove_checker)){
        if (is_all_in_home()){
            print_to_tty ("\nDBG: all checkers in home\nnow you bear off them");
            *can_remove_checker = 1;
        } 
    }

    // _random - physical array, which you can see on displays
    // dice - actual array, which help us with doubles

    unsigned char dice[4];
    int dice_count = 0;
    int head_can_taken = 0;

    char d1 = _random[0];
    char d2 = _random[1];

    if (d1 == d2) {
        print_to_tty("\nRolling doubles!!");
        dice[0] = d1; dice[1] = d1; dice[2] = d1; dice[3] = d1;
        dice_count = 4;
        head_can_taken = 2;
    } else {
        dice[0] = d1; dice[1] = d2;
        dice_count = 2;
        head_can_taken = 1;
    }

    while (dice_count){
        print_to_tty("\nMoves left: ");
        *(char*)TTY = dice_count + '0'; 

        // * fetch coordinates
        print_to_tty("\nfrom (z to pass): ");
        move[0] = getc();
        if (move[0] == 'z' - 'a') {
            print_to_tty("\nPassed.\n");
            break;
        }

        if (*can_remove_checker) print_to_tty("\nto: (y to bear off) ");
        else print_to_tty("\nto: ");
        move[1] = getc();

        if (move[1] == 24){
            if (!(*can_remove_checker)){
                print_to_tty("You cannot bear off now");
                continue;
            } else{
                int used_dice = validate_bear_off(move[0], dice, dice_count);
                if(!used_dice) continue;
                remove_checker(move[0]);
                for(int i = 0; i < dice_count; i++){
                    if (dice[i] == used_dice) {
                        dice[i] = dice[--dice_count]; 
                        break;
                    }
                }
                if (d1 != d2) {
                    if (_random[0] == used_dice) _random[0] = 0;
                    else if (_random[1] == used_dice) _random[1] = 0;
                } else if (dice_count == 2) _random[1] = 0;
            }
        } else {
            // normal move, when can_remove_checker down
            print_to_tty("\nMove validation...");

            if (is_move_valid(move, dice, dice_count, head_can_taken)){
                move_checker(move);
                if (!zabor_rule()){
                    unsigned char undomove[2] = {move[1], move[0]};
                    move_checker(undomove);
                } else {
                    print_to_tty("\nOk...");
                    if (move[0] == 0) head_can_taken--;

                    int dist = get_dst(move[0], move[1], _player);
                    for(int i = 0; i < dice_count; i++){
                        if (dice[i] == dist) {
                            dice[i] = dice[dice_count - 1]; 
                            dice_count--;
                            break;
                        }
                    }

                    if (d1 != d2) {
                        if (_random[0] == dist) _random[0] = 0;
                        else if (_random[1] == dist) _random[1] = 0;
                    } else if (dice_count == 2) _random[1] = 0;
                }
            } else {
                print_to_tty("\nInvalid\n");
            }
        }
    }
    _player = -1;
}


int main(){

    // init
    _player = 1; 
    _amt_of_checkers[1] = 11;
    _points[1] = 11;
    _colors[0] = 1;
    _player = 0;
    _amt_of_checkers[0] = 11;
    _points[13] = 11;
    _colors[12] = 2;
    _player = -1;
    unsigned char rmv_chck = 0;
    unsigned char ai_rmv_chck = 0;

    // game loop
    while(1){
        player_move(&rmv_chck);
        if (!_amt_of_checkers[1]) {
            print_to_tty("\nPlayer win!");
            break;
        }
        computer_move(&ai_rmv_chck);
        if (!_amt_of_checkers[0]) {
            print_to_tty("\nComputer win!");
            break;
        }
    }

}

