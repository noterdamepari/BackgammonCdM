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
    addsp -260
    jsr main

asect 0xff00
_points> ds 48 # 0xff00
_colors> ds 24 # 0xff30
_stateReg> ds 1 # 0xff48
_dbg> ds 1 # 0xff49
_random1> ds 1 #0xff50
_random2> ds 1 #0xff51

end.
