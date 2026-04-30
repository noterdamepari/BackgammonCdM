CLANG = ./compiler/clang-19
CFLAGS = -O2

GREEN  = \033[1;32m
BLUE   = \033[1;34m
RESET  = \033[0m


all: app/main.asm app/graphics.asm app/logic.asm app/ai.asm
	@printf "$(GREEN)✔ Success! Builded with $(CFLAGS)$(RESET)\n"

app/main.asm: src/main.c 
	@$(CLANG) src/main.c -S $(CFLAGS) -o app/main.asm
	@printf " - Building $(BLUE)main.asm...$(RESET)\n"
app/graphics.asm: src/graphics.c
	@$(CLANG) src/graphics.c -S $(CFLAGS) -o app/graphics.asm
	@printf " - Building $(BLUE)graphics.asm...$(RESET)\n"
app/logic.asm: src/logic.c
	@$(CLANG) src/logic.c -S $(CFLAGS) -o app/logic.asm
	@printf " - Building $(BLUE)logic.asm...$(RESET)\n"
app/ai.asm: src/ai.c 
	@$(CLANG) src/ai.c -S $(CFLAGS) -o app/ai.asm
	@printf " - Building $(BLUE)ai.asm...$(RESET)\n"

opt2: CFLAGS = -Wall -O2
opt2: all

opt3: CFLAGS = -Wall -O3
opt3: all

clean:
	rm -f app/*.asm
	@echo "Cleaned."

.PHONY: clean
