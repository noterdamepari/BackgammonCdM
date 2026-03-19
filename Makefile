CLANG = ./compiler/clang-19

GREEN  = \033[1;32m
RESET  = \033[0m

CFLAGS = -O0

all: app/main.asm app/graphics.asm
	@printf "$(GREEN)Success! Builded with $(CFLAGS)$(RESET)\n"

dbg: CFLAGS = -Wall -O0
dbg: all

opt: CFLAGS = -O2
opt: all

app/main.asm: src/main.c 
	@$(CLANG) src/main.c -S $(CFLAGS) -o app/main.asm
	@echo "Building main.asm..."
app/graphics.asm: src/graphics.c
	@$(CLANG) src/graphics.c -S $(CFLAGS) -o app/graphics.asm
	@echo "Building graphics.asm..."

clean:
	rm -f app/*.asm

.PHONY: clean
