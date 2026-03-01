# BackgammonCdM
#### 🛠 Требования
1. bash
2. python3
3. make
4. Cdm Processors vscode extension


В репозитории не хватает компилятора для установки скачайте: `https://github.com/leadpogrommer/llvm-project-cdm/releases/tag/cdm-ver-1.5` и переместите бинарник в папку compiler.  

#### Настройка
1. `python3 -m venv .env`
2. Активируйте виртуальное окружение и скачайте девкит командой `pip install cdm-devkit`
3. Скачайте расширение Cdm Processors для Vscode
4. В настройках укажите пути до cocas и cocoemu-server, пути можно узнать с помощью команды `which`

Сборка осуществляется командой `make`
