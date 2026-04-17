### SECTION: .text


memset, memcpy: ext
rsect _src_main_c_1804289383

PrintToTTY: ext
isMoveValid: ext
move_checker: ext
_random: ext
_player: ext
_points: ext
_colors: ext


macro movens/2
push $1
pop $2
mend

xorshift16>                             # -- Begin function xorshift16
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
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
	pop	fp
	rts
                                        # -- End function
randomize>                              # -- Begin function randomize
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ldi	r0, state
	ldw	r0, r3
	ldi	r1, 7
	ldi	r2, 0
__LBB1_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r4, 7
	xor r4, r3, r3
	shr	r3, r4, 8
	shr	r4, r4, 9-8
	xor r4, r3, r4
	shl	r4, r3, 8
	xor r3, r4, r3
	and r4, r1, r4
	cmp	r4, r2
	beq	__LBB1_1
	br	__LBB1_2
__LBB1_2:                               # %do.body
                                        #   in Loop: Header=BB1_1 Depth=1
	cmp	r4, r1
	beq	__LBB1_1
	br	__LBB1_3
__LBB1_3:                               # %do.end
	ldi	r5, _random
	stb	r5, r4
__LBB1_4:                               # %do.body.1
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r4, 7
	xor r4, r3, r3
	shr	r3, r4, 8
	shr	r4, r4, 9-8
	xor r4, r3, r4
	shl	r4, r3, 8
	xor r3, r4, r3
	and r4, r1, r4
	cmp	r4, r2
	beq	__LBB1_4
	br	__LBB1_5
__LBB1_5:                               # %do.body.1
                                        #   in Loop: Header=BB1_4 Depth=1
	cmp	r4, r1
	beq	__LBB1_4
	br	__LBB1_6
__LBB1_6:                               # %do.end.1
	ldi	r1, _random+1
	stb	r1, r4
	stw	r0, r3
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	4
	pop	fp
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
	ldi	r4, 0
	cmp	r0, r4
	bne	__LBB2_8
	br	__LBB2_1
__LBB2_1:                               # %if.then
	ldi	r0, state
	ldw	r0, r3
	ldi	r1, 7
	ldi	r2, 0
__LBB2_2:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r5, 7
	xor r5, r3, r3
	shr	r3, r5, 8
	shr	r5, r5, 9-8
	xor r5, r3, r5
	shl	r5, r3, 8
	xor r3, r5, r3
	and r5, r1, r5
	cmp	r5, r2
	beq	__LBB2_2
	br	__LBB2_3
__LBB2_3:                               # %do.body.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmp	r5, r1
	beq	__LBB2_2
	br	__LBB2_4
__LBB2_4:                               # %do.end.i
	ldi	r6, _random
	stb	r6, r5
__LBB2_5:                               # %do.body.1.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r3, r5, 7
	xor r5, r3, r3
	shr	r3, r5, 8
	shr	r5, r5, 9-8
	xor r5, r3, r5
	shl	r5, r3, 8
	xor r3, r5, r3
	and r5, r1, r5
	cmp	r5, r2
	beq	__LBB2_5
	br	__LBB2_6
__LBB2_6:                               # %do.body.1.i
                                        #   in Loop: Header=BB2_5 Depth=1
	cmp	r5, r1
	beq	__LBB2_5
	br	__LBB2_7
__LBB2_7:                               # %randomize.exit
	ldi	r1, _random+1
	stb	r1, r5
	stw	r0, r3
__LBB2_8:                               # %if.end
	addsp	-8
	ldi	r0, __L.str
	jsr	PrintToTTY
	addsp	8
	addsp	-8
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	addsp	8
	ldi	r6, in
	ldw	r6, r0
__LBB2_9:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldb	r0, r5
	cmp	r5, r4
	beq	__LBB2_9
	br	__LBB2_10
__LBB2_10:                              # %getc.exit
	addsp	-8
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	addsp	8
	ldw	r6, r1
__LBB2_11:                              # %while.cond.i9
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r0
	cmp	r0, r4
	beq	__LBB2_11
	br	__LBB2_12
__LBB2_12:                              # %getc.exit12
	ldi	r1, _player
	ldi	r2, 1
	stb	r1, r2
	ldi	r1, -97
	add r0, r1, r0
	add r5, r1, r1
	ldi	r2, 255
	and r1, r2, r5
	and r0, r2, r6
	addsp	-8
	ldi	r2, 2
	movens	r5, r0
	movens	r6, r1
	movens	r4, r3
	jsr	isMoveValid
	addsp	8
	cmp	r0, r4
	beq	__LBB2_14
	br	__LBB2_13
__LBB2_13:                              # %if.then2
	addsp	-8
	ldi	r2, 2
	movens	r5, r0
	movens	r6, r1
	movens	r4, r3
	jsr	move_checker
	addsp	8
	br	__LBB2_15
__LBB2_14:                              # %if.else
	addsp	-8
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	addsp	8
	ldi	r4, 1
__LBB2_15:                              # %cleanup
	ldi	r0, _player
	ldi	r1, 255
	stb	r0, r1
	movens	r4, r0
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
	ldw	r0, r2
	ldi	r1, 7
	ldi	r4, 0
__LBB3_1:                               # %do.body.i
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
	beq	__LBB3_1
	br	__LBB3_2
__LBB3_2:                               # %do.body.i
                                        #   in Loop: Header=BB3_1 Depth=1
	cmp	r3, r1
	beq	__LBB3_1
	br	__LBB3_3
__LBB3_3:                               # %do.end.i
	ldi	r5, _random
	stb	r5, r3
__LBB3_4:                               # %do.body.1.i
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
	beq	__LBB3_4
	br	__LBB3_5
__LBB3_5:                               # %do.body.1.i
                                        #   in Loop: Header=BB3_4 Depth=1
	cmp	r3, r1
	beq	__LBB3_4
	br	__LBB3_6
__LBB3_6:                               # %randomize.exit
	ldi	r1, _random+1
	stb	r1, r3
	stw	r0, r2
	ldi	r5, _player
	stb	r5, r4
	addsp	-8
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	addsp	8
	ldi	r0, 255
	stb	r5, r0
	movens	r4, r0
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
	ldi	r2, _player
	ldi	r4, 1
	stb	r2, r4
	ldi	r0, _points+2
	ldi	r1, 11
	stw	r0, r1
	ldi	r0, _colors
	stb	r0, r4
	ldi	r5, 0
	stb	r2, r5
	ldi	r0, _points+26
	stw	r0, r1
	ldi	r0, _colors+12
	ldi	r1, 2
	stb	r0, r1
	ldi	r6, 7
__LBB4_1:                               # %while.cond.sink.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	ldi	r0, 255
	stb	r2, r0
	addsp	-8
	movens	r5, r0
	jsr	player_move
	addsp	8
	cmp	r0, r5
	beq	__LBB4_3
	br	__LBB4_2
__LBB4_2:                               # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsp	-8
	movens	r4, r0
	jsr	player_move
	addsp	8
	cmp	r0, r5
	bne	__LBB4_2
	br	__LBB4_3
__LBB4_3:                               # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, state
	ldw	r0, r0
__LBB4_4:                               # %do.body.i.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r5
	beq	__LBB4_4
	br	__LBB4_5
__LBB4_5:                               # %do.body.i.i
                                        #   in Loop: Header=BB4_4 Depth=2
	cmp	r1, r6
	beq	__LBB4_4
	br	__LBB4_6
__LBB4_6:                               # %do.end.i.i
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r2, _random
	stb	r2, r1
	ldi	r2, _player
__LBB4_7:                               # %do.body.1.i.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r6, r1
	cmp	r1, r5
	beq	__LBB4_7
	br	__LBB4_8
__LBB4_8:                               # %do.body.1.i.i
                                        #   in Loop: Header=BB4_7 Depth=2
	cmp	r1, r6
	beq	__LBB4_7
	br	__LBB4_9
__LBB4_9:                               # %computer_move.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r3, _random+1
	stb	r3, r1
	ldi	r1, state
	stw	r1, r0
	stb	r2, r5
	addsp	-8
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	ldi	r2, _player
	addsp	8
	br	__LBB4_1
                                        # -- End function
### SECTION: .data
in>                                     # @in
	dc	57006

state:                                  # @state
	dc	57123                           # 0xdf23

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
	db	73
	db	110
	db	118
	db	97
	db	108
	db	105
	db	100
	db	10
	db	0

__L.str.4:                              # @.str.4
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
