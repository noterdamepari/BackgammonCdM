Взаимодействия с матрицами происходит через посылку определенных 16-битных чисел
Сами числа формируются по принципу:
* Выбор нужного пункта:
1. Нулевой бит числа отвечает за половину поля (0-нижняя половина, 1-верхняя)
2. Остальные 12 бит (1-12) отвечают за выбор столбца (слева-направо соответственно)
* Размещение фишек также осуществляется через 16-битное число, где каждый бит отвечает, за наличие фишки на данной позиции или нет
1. Оба поля отсчитываются сверху вниз, поэтому снизу нужно формировать число с конца



    // PrintToTTY("\n--- Computer Turn ---\n");
    
    // _player = 0; // Устанавливаем игрока (Компьютер)
    // randomize();

    // // Проверяем, зашли ли все фишки в дом
    // if (!(*can_remove_checker)) {
    //     if (is_all_in_home()) {
    //         PrintToTTY("\nComputer is bearing off!\n");
    //         *can_remove_checker = 1;
    //     } 
    // }

    // unsigned char dice[4];
    // int dice_count = 0;
    // int head_can_taken = 0;

    // char d1 = _random[0];
    // char d2 = _random[1];

    // // Обработка дубля
    // if (d1 == d2) {
    //     dice[0] = d1; dice[1] = d1; dice[2] = d1; dice[3] = d1;
    //     dice_count = 4;
    //     head_can_taken = 2; // Можно снять две с головы
    // } else {
    //     dice[0] = d1; dice[1] = d2;
    //     dice_count = 2;
    //     head_can_taken = 1; // Можно снять одну с головы
    // }

    // // Основной цикл ходов ИИ
    // while (dice_count > 0) {
    //     int best_score = -1;
    //     char best_from = -1;
    //     char best_to = -1;
    //     int best_die_idx = -1;
    //     char best_is_bear_off = 0;
    //     int die_used_for_bear_off = 0;

    //     // 1. Ищем лучший ход, перебирая все кубики и все фишки
    //     for (int d = 0; d < dice_count; d++) {
    //         int die = dice[d];

    //         for (char from = 0; from < 24; from++) {
    //             // Если тут нет фишки ИИ, пропускаем
    //             _player = -1;
    //             if (_colors[from] != 2 || _points[from + 1] == 0) continue;
    //             _player = 0;

    //             // Вычисляем куда попадем (ИИ идет 12..23, потом 0..11)
    //             char to = from + die;
    //             char is_bear_off = 0;

    //             if (from >= 12) {
    //                 if (to >= 24) to -= 24; // Переход с 23 на 0
    //             } else {
    //                 // Если фишка уже в доме (0..11) и переходит за 11
    //                 if (to >= 12) {
    //                     to = 24; // Код выброса фишки из вашей архитектуры
    //                     is_bear_off = 1;
    //                 }
    //             }

    //             unsigned char move[2] = {from, to};

    //             // Проверка хода на выброс (Bear off)
    //             if (is_bear_off) {
    //                 if (!(*can_remove_checker)) continue; // Выбрасывать еще нельзя
                    
    //                 int used_die = validate_bear_off(from, dice, dice_count);
    //                 if (used_die) {
    //                     int score = evaluate_move(from, to, 1);
    //                     if (score > best_score) {
    //                         best_score = score; best_from = from; best_to = to; 
    //                         best_die_idx = d; best_is_bear_off = 1;
    //                         die_used_for_bear_off = used_die;
    //                     }
    //                 }
    //             } 
    //             // Проверка обычного хода
    //             else {
    //                 PrintToTTY("chkpnt1");
    //                 if (isMoveValid(move, dice, dice_count, head_can_taken)) {
    //                     PrintToTTY("chkpnt2");
    //                     move_checker(move);
    //                     if (zabor_rule()) {

    //                         int score = evaluate_move(from, to, 0);
    //                         if (score > best_score) {
    //                             best_score = score; best_from = from; best_to = to; 
    //                             best_die_idx = d; best_is_bear_off = 0;
    //                         }
    //                     } else {
    //                         unsigned char undomove[2] = {to, from};
    //                         move_checker(undomove); // Откатываем назад
    //                     }
    //                 }
    //             }
    //         } // конец перебора фишек
    //     } // конец перебора кубиков

    //     // 2. Если допустимых ходов нет - пропускаем остаток хода (сгорают кубики)
    //     if (best_score == -1) {
    //         PrintToTTY("\nComputer passed.");
    //         break;
    //     }

    //     // 3. Совершаем лучший найденный ход
    //     unsigned char best_move[2] = {best_from, best_to};
        
    //     if (best_is_bear_off) {
    //         remove_checker(best_from);
    //         // Удаляем использованный кубик (при bear_off он мог поменяться по старшинству)
    //         for (int i = 0; i < dice_count; i++) {
    //             if (dice[i] == die_used_for_bear_off) {
    //                 dice[i] = dice[dice_count - 1]; 
    //                 dice_count--;
    //                 break;
    //             }
    //         }
    //     } else {
    //         PrintToTTY("chkpnt3");
    //         move_checker(best_move);
    //         if (best_from == 12) head_can_taken--; // Сняли с головы

    //         // Удаляем использованный кубик
    //         int dist = get_dst(best_from, best_to, _player);
    //         for(int i = 0; i < dice_count; i++){
    //             if (dice[i] == dist) {
    //                 dice[i] = dice[dice_count - 1]; 
    //                 dice_count--;
    //                 break;
    //             }
    //         }
    //     }

    //     // Вывод на экран (небольшая задержка/индикация хода)
    //     PrintToTTY("\nCPU Move: ");
    //     *(char*)TTY = best_from + 'a';
    //     PrintToTTY(" -> ");
    //     *(char*)TTY = (best_to == 24) ? 'y' : (best_to + 'a');
    // }

    // _player = -1; // Сбрасываем игрока в нейтральное состояние