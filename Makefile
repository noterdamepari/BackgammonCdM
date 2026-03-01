CLANG = ./compiler/clang-19
SYNC  =  ./scripts/sync.py

GREEN  = \033[1;32m
RESET  = \033[0m

all: main.asm
main.asm: compiler/raw.asm
	@$(SYNC)
	@echo "Syncthing..."
	@printf "$(GREEN)Ok$(RESET)\n"
compiler/raw.asm: src/main.c
	@$(CLANG) src/main.c -S -o compiler/raw.asm
	@echo "Building..."
