main: ext               
asect 0
run: ext
default_handler: ext    # as external

# Interrupt vector table (IVT)
# Place a vector to program start and map 
# all internal exceptions to default_handler
dc run, 0              # Startup/Reset vector
dc default_handler, 0   # Unaligned SP
dc default_handler, 0   # Unaligned PC
dc default_handler, 0   # Invalid instruction
dc default_handler, 0   # Double fault
align 0x80              # Reserve space for the rest 
                        # of IVT

# Exception handlers section
rsect exc_handlers

# # This handler halts processor
default_handler>
    halt

# # Main program section
rsect run

run>                                   # -- Begin function main
    addsp -300
    jsr main

asect 0xff00
_points> ds 50 # 0xff00
_colors> ds 24 # 0xff32
_player> ds 1 # 0xff4a
_reserved> ds 1 # 0xff4b
_random> ds 2 #0xff4c,0xff4d
_amt_of_checkers> ds 2 #0xff4e, 0xff4f

end.
