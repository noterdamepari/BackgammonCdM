### SECTION: .text
rsect _src_main_c_1804289383

PrintToTTY: ext
move_checker: ext
_random: ext
_stateReg: ext
_points: ext


macro movens/2
push $1
pop $2
mend

xorshift32>                             # -- Begin function xorshift32
# %bb.0:                                # %entry
	ldi	r1, state
	ldw	r1, r0
	shl	r0, r2, 7
	xor r2, r0, r0
	shr	r0, r2, 8
	shr	r2, r2, 9-8
	xor r2, r0, r0
	shl	r0, r2, 8
	xor r2, r0, r0
	stw	r1, r0
	rts
                                        # -- End function
player_move>                            # -- Begin function player_move
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, state
	ldw	r0, r2
	ldi	r1, 7
	ldi	r4, 0
__LBB1_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	shl	r2, r3, 7
	xor r3, r2, r2
	shr	r2, r3, 8
	shr	r3, r3, 9-8
	xor r3, r2, r3
	shl	r3, r2, 8
	xor r2, r3, r2
	and r3, r1, r3
	cmp	r3, r4
	beq	__LBB1_1
	br	__LBB1_2
__LBB1_2:                               # %do.body
                                        #   in Loop: Header=BB1_1 Depth=1
	cmp	r3, r1
	beq	__LBB1_1
	br	__LBB1_3
__LBB1_3:                               # %do.end
	ldi	r5, _random
	stb	r5, r3
__LBB1_4:                               # %do.body.1
                                        # =>This Inner Loop Header: Depth=1
	shl	r2, r3, 7
	xor r3, r2, r2
	shr	r2, r3, 8
	shr	r3, r3, 9-8
	xor r3, r2, r3
	shl	r3, r2, 8
	xor r2, r3, r2
	and r3, r1, r3
	cmp	r3, r4
	beq	__LBB1_4
	br	__LBB1_5
__LBB1_5:                               # %do.body.1
                                        #   in Loop: Header=BB1_4 Depth=1
	cmp	r3, r1
	beq	__LBB1_4
	br	__LBB1_6
__LBB1_6:                               # %do.end.1
	ldi	r1, _random+1
	stb	r1, r3
	stw	r0, r2
	ldi	r0, __L.str
	jsr	PrintToTTY
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	ldi	r6, in
	ldw	r6, r0
__LBB1_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldb	r0, r5
	cmp	r5, r4
	beq	__LBB1_7
	br	__LBB1_8
__LBB1_8:                               # %while.end
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	ldw	r6, r1
__LBB1_9:                               # %while.cond5
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r0
	cmp	r0, r4
	beq	__LBB1_9
	br	__LBB1_10
__LBB1_10:                              # %while.end9
	ldi	r4, _stateReg
	ldi	r1, 1
	stb	r4, r1
	ldi	r1, -97
	add r0, r1, r2
	add r5, r1, r0
	ldi	r5, 255
	and r0, r5, r0
	and r2, r5, r1
	jsr	move_checker
	stb	r4, r5
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
computer_move>                          # -- Begin function computer_move
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ldi	r0, state
	ldw	r0, r3
	ldi	r2, 7
	ldi	r1, 0
__LBB2_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r4, 7
	xor r4, r3, r3
	shr	r3, r4, 8
	shr	r4, r4, 9-8
	xor r4, r3, r4
	shl	r4, r3, 8
	xor r3, r4, r3
	and r4, r2, r4
	cmp	r4, r1
	beq	__LBB2_1
	br	__LBB2_2
__LBB2_2:                               # %do.body
                                        #   in Loop: Header=BB2_1 Depth=1
	cmp	r4, r2
	beq	__LBB2_1
	br	__LBB2_3
__LBB2_3:                               # %do.end
	ldi	r5, _random
	stb	r5, r4
__LBB2_4:                               # %do.body.1
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r4, 7
	xor r4, r3, r3
	shr	r3, r4, 8
	shr	r4, r4, 9-8
	xor r4, r3, r4
	shl	r4, r3, 8
	xor r3, r4, r3
	and r4, r2, r4
	cmp	r4, r1
	beq	__LBB2_4
	br	__LBB2_5
__LBB2_5:                               # %do.body.1
                                        #   in Loop: Header=BB2_4 Depth=1
	cmp	r4, r2
	beq	__LBB2_4
	br	__LBB2_6
__LBB2_6:                               # %do.end.1
	ldi	r2, _random+1
	stb	r2, r4
	stw	r0, r3
	ldi	r4, _stateReg
	stb	r4, r1
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r0, 255
	stb	r4, r0
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	4
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r3, _stateReg
	ldi	r2, 255
	stb	r3, r2
	ldi	r0, 1
	stb	r3, r0
	ldi	r0, _points+2
	ldi	r1, 11
	stw	r0, r1
	ldi	r4, 0
	stb	r3, r4
	ldi	r0, _points+26
	stw	r0, r1
	stb	r3, r2
	jsr	player_move
	ldi	r2, state
	ldw	r2, r0
	ldi	r6, 7
__LBB3_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r4
	beq	__LBB3_1
	br	__LBB3_2
__LBB3_2:                               # %do.body.i
                                        #   in Loop: Header=BB3_1 Depth=1
	cmp	r1, r6
	beq	__LBB3_1
	br	__LBB3_3
__LBB3_3:                               # %do.end.i
	ldi	r3, _random
	stb	r3, r1
__LBB3_4:                               # %do.body.1.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r4
	beq	__LBB3_4
	br	__LBB3_5
__LBB3_5:                               # %do.body.1.i
                                        #   in Loop: Header=BB3_4 Depth=1
	cmp	r1, r6
	beq	__LBB3_4
	br	__LBB3_6
__LBB3_6:                               # %computer_move.exit
	ldi	r3, _random+1
	stb	r3, r1
	stw	r2, r0
	ldi	r5, _stateReg
	stb	r5, r4
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r0, 255
	stb	r5, r0
	jsr	player_move
	ldi	r2, state
	ldw	r2, r0
__LBB3_7:                               # %do.body.i14
                                        # =>This Inner Loop Header: Depth=1
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r4
	beq	__LBB3_7
	br	__LBB3_8
__LBB3_8:                               # %do.body.i14
                                        #   in Loop: Header=BB3_7 Depth=1
	cmp	r1, r6
	beq	__LBB3_7
	br	__LBB3_9
__LBB3_9:                               # %do.end.i24
	ldi	r3, _random
	stb	r3, r1
__LBB3_10:                              # %do.body.1.i26
                                        # =>This Inner Loop Header: Depth=1
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r4
	beq	__LBB3_10
	br	__LBB3_11
__LBB3_11:                              # %do.body.1.i26
                                        #   in Loop: Header=BB3_10 Depth=1
	cmp	r1, r6
	beq	__LBB3_10
	br	__LBB3_12
__LBB3_12:                              # %computer_move.exit37
	ldi	r3, _random+1
	stb	r3, r1
	stw	r2, r0
	ldi	r0, _stateReg
	movens	r0, r5
	stb	r5, r4
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r0, 255
	stb	r5, r0
	jsr	player_move
	movens	r4, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
in>                                     # @in
	dc	57006

state:                                  # @state
	dc	52679                           # 0xcdc7

### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	89
	db	111
	db	117
	db	114
	db	32
	db	116
	db	117
	db	114
	db	110
	db	58
	db	10
	db	0

__L.str.1:                              # @.str.1
	db	102
	db	114
	db	111
	db	109
	db	58
	db	32
	db	0

__L.str.2:                              # @.str.2
	db	10
	db	116
	db	111
	db	58
	db	32
	db	0

__L.str.3:                              # @.str.3
	db	10
	db	67
	db	111
	db	109
	db	112
	db	117
	db	116
	db	101
	db	114
	db	32
	db	116
	db	117
	db	114
	db	110
	db	46
	db	46
	db	46
	db	10
	db	0

end.
