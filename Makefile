CLANG = ./compiler/clang-19

GREEN  = \033[1;32m
RESET  = \033[0m

CFLAGS = -O0

all: app/main.asm app/graphics.asm app/logic.asm app/test.asm
	@printf "$(GREEN)Success! Builded with $(CFLAGS)$(RESET)\n"

dbg: CFLAGS = -Wall -O0
dbg: all

opt: CFLAGS = -Wall -O2
opt: all

dbgopt: CFLAGS = -Wall -O2
dbgopt: all

dbgmaxopt: CFLAGS = -Wall -O3
dbgmaxopt: all

app/main.asm: src/main.c 
	@$(CLANG) src/main.c -S $(CFLAGS) -o app/main.asm
	@echo "Building main.asm..."
app/graphics.asm: src/graphics.c
	@$(CLANG) src/graphics.c -S $(CFLAGS) -o app/graphics.asm
	@echo "Building graphics.asm..."
app/logic.asm: src/logic.c
	@$(CLANG) src/logic.c -S $(CFLAGS) -o app/logic.asm
	@echo "Building logic.asm..."
app/test.asm: src/test.c
	@$(CLANG) src/test.c -S $(CFLAGS) -o app/test.asm
	@echo "Building test.asm..."

clean:
	rm -f app/*.asm

.PHONY: clean
