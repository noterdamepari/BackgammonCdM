### SECTION: .text
rsect _src_main_c_1804289383

PrintToTTY: ext
isMoveValid: ext
move_checker: ext
get_dst: ext
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
	addsp	-22
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, __L.str
	jsr	PrintToTTY
	ldi	r0, state
	ldw	r0, r2
	ldi	r1, 7
	ldi	r5, 0
__LBB2_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r2, r3, 7
	xor r3, r2, r2
	shr	r2, r3, 8
	shr	r3, r3, 9-8
	xor r3, r2, r3
	shl	r3, r2, 8
	xor r2, r3, r2
	and r3, r1, r3
	cmp	r3, r5
	beq	__LBB2_1
	br	__LBB2_2
__LBB2_2:                               # %do.body.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmp	r3, r1
	beq	__LBB2_1
	br	__LBB2_3
__LBB2_3:                               # %do.end.i
	ldi	r4, _random
	stb	r4, r3
__LBB2_4:                               # %do.body.1.i
                                        # =>This Inner Loop Header: Depth=1
	shl	r2, r3, 7
	xor r3, r2, r2
	shr	r2, r3, 8
	shr	r3, r3, 9-8
	xor r3, r2, r3
	shl	r3, r2, 8
	xor r2, r3, r2
	and r3, r1, r3
	cmp	r3, r5
	beq	__LBB2_4
	br	__LBB2_5
__LBB2_5:                               # %do.body.1.i
                                        #   in Loop: Header=BB2_4 Depth=1
	cmp	r3, r1
	beq	__LBB2_4
	br	__LBB2_6
__LBB2_6:                               # %randomize.exit
	stw	r0, r2
	ldi	r0, _random+1
	stb	r0, r3
	ldi	r1, 2
	ldb	r4, r4
	ldb	r0, r0
	cmp	r4, r0
	ldi	r2, -10
	ssw	r0, -22                         # 2-byte Folded Spill
	movens	r1, r3
	bne	__LBB2_8
	br	__LBB2_7
__LBB2_7:                               # %if.then
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	ldi	r2, -10
	add	r2, fp, r0
	ldi	r1, 3
	stb	r0, r1, r4
	ldi	r1, 2
	stb	r0, r1, r4
	ldi	r3, 4
	movens	r4, r0
__LBB2_8:                               # %if.end
	add	r2, fp, r1
	ldi	r6, 1
	stb	r1, r6, r0
	ssw	r4, -20                         # 2-byte Folded Spill
	ssb	r4, -10
	ssw	r5, -16                         # 2-byte Folded Spill
__LBB2_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_20 Depth 2
	ldi	r0, __L.str.2
	movens	r3, r4
	jsr	PrintToTTY
	ssw	r4, -14                         # 2-byte Folded Spill
	add	r4, 48
	ldi	r1, -8528
	stb	r1, r4
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r0, in
	ldw	r0, r0
__LBB2_10:                              # %while.cond.i
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldb	r0, r1
	ssb	r1, -12
	cmp	r1, r5
	beq	__LBB2_10
	br	__LBB2_11
__LBB2_11:                              # %getc.exit
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, -97
	add r1, r0, r0
	ssb	r0, -12
	ldi	r1, 255
	and r0, r1, r0
	ldi	r1, 25
	cmp	r0, r1
	bne	__LBB2_13
	br	__LBB2_12
__LBB2_13:                              # %if.end14
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, __L.str.5
	jsr	PrintToTTY
	ldi	r0, in
	ldw	r0, r0
	ldi	r4, -12
__LBB2_14:                              # %while.cond.i87
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldb	r0, r1
	add	r4, fp, r2
	stb	r2, r6, r1
	cmp	r1, r5
	beq	__LBB2_14
	br	__LBB2_15
__LBB2_15:                              # %getc.exit90
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, -97
	add r1, r0, r1
	add	r4, fp, r0
	stb	r0, r6, r1
	ldi	r1, _player
	stb	r1, r6
	ldi	r1, -10
	add	r1, fp, r1
	lsw	r2, -14                         # 2-byte Folded Reload
	lsw	r3, -16                         # 2-byte Folded Reload
	jsr	isMoveValid
	cmp	r0, r5
	beq	__LBB2_30
	br	__LBB2_16
__LBB2_16:                              # %if.then19
                                        #   in Loop: Header=BB2_9 Depth=1
	add	r4, fp, r0
	movens	r0, r4
	jsr	move_checker
	lssb	r0, -12
	cmp	r0, r5
	ssw	r6, -18                         # 2-byte Folded Spill
	beq	__LBB2_18
# %bb.17:                               # %if.then19
                                        #   in Loop: Header=BB2_9 Depth=1
	ssw	r5, -18                         # 2-byte Folded Spill
__LBB2_18:                              # %if.then19
                                        #   in Loop: Header=BB2_9 Depth=1
	ldsb	r4, r6, r1
	jsr	get_dst
	lsw	r1, -14                         # 2-byte Folded Reload
	cmp	r1, r6
	ldi	r3, -10
	blt	__LBB2_23
	br	__LBB2_19
__LBB2_19:                              # %for.body.preheader
                                        #   in Loop: Header=BB2_9 Depth=1
	movens	r5, r1
__LBB2_20:                              # %for.body
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	r3, fp, r2
	ldb	r2, r1, r2
	cmp	r0, r2
	bne	__LBB2_22
	br	__LBB2_21
__LBB2_22:                              # %for.inc
                                        #   in Loop: Header=BB2_20 Depth=2
	add	r1, 1
	lsw	r2, -14                         # 2-byte Folded Reload
	cmp	r2, r1
	bne	__LBB2_20
	br	__LBB2_23
__LBB2_21:                              # %if.then37
                                        #   in Loop: Header=BB2_9 Depth=1
	lsw	r2, -18                         # 2-byte Folded Reload
	ssw	r2, -18                         # 2-byte Folded Spill
	lsw	r4, -14                         # 2-byte Folded Reload
	sub	r4, 1
	add	r3, fp, r2
	ssw	r4, -14                         # 2-byte Folded Spill
	ldb	r2, r4, r3
	stb	r2, r1, r3
	br	__LBB2_23
__LBB2_23:                              # %cleanup
                                        #   in Loop: Header=BB2_9 Depth=1
	lsw	r1, -16                         # 2-byte Folded Reload
	lsw	r2, -18                         # 2-byte Folded Reload
	add r1, r2, r1
	ssw	r1, -16                         # 2-byte Folded Spill
	lsw	r1, -20                         # 2-byte Folded Reload
	lsw	r2, -22                         # 2-byte Folded Reload
	cmp	r1, r2
	beq	__LBB2_28
	br	__LBB2_24
__LBB2_28:                              # %if.else58
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, 2
	lsw	r3, -14                         # 2-byte Folded Reload
	cmp	r3, r0
	bne	__LBB2_31
	br	__LBB2_29
__LBB2_29:                              # %if.then61
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, _random+1
	stb	r0, r5
	ldi	r0, 2
	movens	r0, r3
	br	__LBB2_31
__LBB2_24:                              # %if.then46
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r2, _random
	ldsb	r2, r1
	cmp	r0, r1
	lsw	r3, -14                         # 2-byte Folded Reload
	bne	__LBB2_26
	br	__LBB2_25
__LBB2_25:                              # %if.then50
                                        #   in Loop: Header=BB2_9 Depth=1
	stb	r2, r5
	br	__LBB2_31
__LBB2_26:                              # %if.else51
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r1, _random+1
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_31
	br	__LBB2_27
__LBB2_27:                              # %if.then55
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, _random+1
	stb	r0, r5
	br	__LBB2_31
__LBB2_30:                              # %if.else64
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, __L.str.6
	jsr	PrintToTTY
	lsw	r3, -14                         # 2-byte Folded Reload
__LBB2_31:                              # %cleanup66
                                        #   in Loop: Header=BB2_9 Depth=1
	ldi	r0, 255
	ldi	r1, _player
	stb	r1, r0
	cmp	r3, r5
	bne	__LBB2_9
	br	__LBB2_32
__LBB2_12:                              # %cleanup66.thread
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	br	__LBB2_32
__LBB2_32:                              # %while.end
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	22
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
	ldi	r0, __L.str.7
	jsr	PrintToTTY
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
	ldi	r3, _player
	ldi	r0, 1
	stb	r3, r0
	ldi	r1, _points+2
	ldi	r2, 12
	stw	r1, r2
	ldi	r1, _colors
	stb	r1, r0
	ldi	r6, 0
	stb	r3, r6
	ldi	r0, _points+26
	stw	r0, r2
	ldi	r0, _colors+12
	ldi	r1, 2
	stb	r0, r1
	ldi	r5, 7
__LBB4_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #     Child Loop BB4_5 Depth 2
	movens	r3, r4
	ldi	r0, 255
	stb	r3, r0
	jsr	player_move
	ldi	r1, state
	ldw	r1, r0
	movens	r1, r2
__LBB4_2:                               # %do.body.i.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r5, r1
	cmp	r1, r6
	beq	__LBB4_2
	br	__LBB4_3
__LBB4_3:                               # %do.body.i.i
                                        #   in Loop: Header=BB4_2 Depth=2
	cmp	r1, r5
	beq	__LBB4_2
	br	__LBB4_4
__LBB4_4:                               # %do.end.i.i
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r3, _random
	stb	r3, r1
__LBB4_5:                               # %do.body.1.i.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shl	r0, r1, 7
	xor r1, r0, r0
	shr	r0, r1, 8
	shr	r1, r1, 9-8
	xor r1, r0, r1
	shl	r1, r0, 8
	xor r0, r1, r0
	and r1, r5, r1
	cmp	r1, r6
	beq	__LBB4_5
	br	__LBB4_6
__LBB4_6:                               # %do.body.1.i.i
                                        #   in Loop: Header=BB4_5 Depth=2
	cmp	r1, r5
	beq	__LBB4_5
	br	__LBB4_7
__LBB4_7:                               # %computer_move.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r3, _random+1
	stb	r3, r1
	stw	r2, r0
	stb	r4, r6
	ldi	r0, __L.str.7
	jsr	PrintToTTY
	movens	r4, r3
	br	__LBB4_1
                                        # -- End function
### SECTION: .data
in>                                     # @in
	dc	57006

state:                                  # @state
	dc	57123                           # 0xdf23

### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	10
	db	45
	db	45
	db	45
	db	32
	db	80
	db	108
	db	97
	db	121
	db	101
	db	114
	db	32
	db	84
	db	117
	db	114
	db	110
	db	32
	db	45
	db	45
	db	45
	db	10
	db	0

__L.str.1:                              # @.str.1
	db	10
	db	82
	db	111
	db	108
	db	108
	db	105
	db	110
	db	103
	db	32
	db	100
	db	111
	db	117
	db	98
	db	108
	db	101
	db	115
	db	33
	db	33
	db	0

__L.str.2:                              # @.str.2
	db	10
	db	77
	db	111
	db	118
	db	101
	db	115
	db	32
	db	108
	db	101
	db	102
	db	116
	db	58
	db	32
	db	0

__L.str.3:                              # @.str.3
	db	10
	db	102
	db	114
	db	111
	db	109
	db	32
	db	40
	db	122
	db	32
	db	116
	db	111
	db	32
	db	112
	db	97
	db	115
	db	115
	db	41
	db	58
	db	32
	db	0

__L.str.4:                              # @.str.4
	db	10
	db	80
	db	97
	db	115
	db	115
	db	101
	db	100
	db	46
	db	10
	db	0

__L.str.5:                              # @.str.5
	db	10
	db	116
	db	111
	db	58
	db	32
	db	0

__L.str.6:                              # @.str.6
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

__L.str.7:                              # @.str.7
	db	10
	db	45
	db	45
	db	45
	db	32
	db	67
	db	111
	db	109
	db	112
	db	117
	db	116
	db	101
	db	114
	db	32
	db	84
	db	117
	db	114
	db	110
	db	32
	db	45
	db	45
	db	45
	db	10
	db	0

end.
