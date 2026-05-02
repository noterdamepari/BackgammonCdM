CLANG = ./compiler/clang-19
COCAS = ./.env/bin/cocas
CFLAGS = -O2

GREEN  = \033[1;32m
BLUE   = \033[1;34m
RESET  = \033[0m

SRCS := $(wildcard src/*.c)
ASM := $(SRCS:src/%.c=app/%.asm)

all: build
	@printf "$(GREEN)✔ Success!$(RESET) Builded with $(CFLAGS) to $(BLUE)build/app.img$(RESET)\n"

build: $(ASM)
	@printf " - Linking to $(BLUE)build/app.img...$(RESET)\n"
	@$(COCAS) -t cdm16 -o build/app.img \
	app/ai.asm \
	app/graphics.asm \
	app/logic.asm \
	app/main.asm

compile: $(ASM)
	@printf "$(GREEN)✔ Success!$(RESET) Project compiled\n"

app/%.asm: src/%.c
	@printf " - Compiling $(BLUE)$<...$(RESET)\n"
	@$(CLANG) -c $< -S $(CFLAGS) -o $@

opt2: CFLAGS = -Wall -O2
opt2: all

opt3: CFLAGS = -Wall -O3
opt3: all

clean:
	rm -f app/*.asm
	@echo "Cleaned."

.PHONY: clean
