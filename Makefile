CLANG = ./compiler/clang-19

GREEN  = \033[1;32m
RESET  = \033[0m

all: app/main.asm app/graphics.asm
	@printf "$(GREEN)Success!$(RESET)\n"
app/main.asm: src/main.c 
	@$(CLANG) src/main.c -S -o app/main.asm
	@echo "Building main.asm..."
app/graphics.asm: src/graphics.c
	@$(CLANG) src/graphics.c -S -o app/graphics.asm
	@echo "Building graphics.asm..."
