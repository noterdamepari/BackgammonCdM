### SECTION: .text
rsect _src_main_c_1804289383

PrintToTTY: ext
is_all_in_home: ext
getc: ext
validate_bear_off: ext
remove_checker: ext
get_dst: ext
isMoveValid: ext
move_checker: ext
zabor_rule: ext
computer_move: ext
_random: ext
_player: ext
_amt_of_checkers: ext
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
	addsp	-24
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ssw	r0, -16                         # 2-byte Folded Spill
	ldi	r0, __L.str
	jsr	PrintToTTY
	ldi	r0, state
	ldw	r0, r2
	ldi	r1, 7
	ldi	r6, 0
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
	cmp	r3, r6
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
	cmp	r3, r6
	beq	__LBB2_4
	br	__LBB2_5
__LBB2_5:                               # %do.body.1.i
                                        #   in Loop: Header=BB2_4 Depth=1
	cmp	r3, r1
	beq	__LBB2_4
	br	__LBB2_6
__LBB2_6:                               # %randomize.exit
	ldi	r1, _random+1
	stb	r1, r3
	stw	r0, r2
	ldi	r0, _player
	ldi	r1, 1
	stb	r0, r1
	lsw	r0, -16                         # 2-byte Folded Reload
	ldb	r0, r0
	cmp	r0, r6
	bne	__LBB2_9
	br	__LBB2_7
__LBB2_7:                               # %if.then
	jsr	is_all_in_home
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB2_9
	br	__LBB2_8
__LBB2_8:                               # %if.then2
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	ldi	r0, 1
	lsw	r1, -16                         # 2-byte Folded Reload
	stb	r1, r0
__LBB2_9:                               # %if.end3
	ldi	r2, 2
	ldb	r4, r4
	ldi	r0, _random+1
	ldb	r0, r0
	cmp	r4, r0
	ldi	r5, -12
	ssw	r0, -22                         # 2-byte Folded Spill
	ldi	r1, 1
	ssw	r1, -24                         # 2-byte Folded Spill
	movens	r2, r3
	bne	__LBB2_11
	br	__LBB2_10
__LBB2_10:                              # %if.then6
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	add	r5, fp, r0
	ldi	r1, 3
	stb	r0, r1, r4
	ldi	r1, 2
	ssw	r1, -24                         # 2-byte Folded Spill
	stb	r0, r1, r4
	ldi	r3, 4
	movens	r4, r0
__LBB2_11:                              # %if.end12
	add	r5, fp, r1
	ldi	r2, 1
	stb	r1, r2, r0
	ssw	r4, -20                         # 2-byte Folded Spill
	ssb	r4, -12
	ldi	r0, __L.str.3
	ldi	r5, -8528
	movens	r3, r4
__LBB2_12:                              # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_24 Depth 2
	jsr	PrintToTTY
	ssw	r4, -18                         # 2-byte Folded Spill
	add	r4, 48
	stb	r5, r4
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	jsr	getc
	ssb	r0, -8
	ldi	r1, 25
	cmp	r0, r1
	beq	__LBB2_14
	br	__LBB2_13
__LBB2_13:                              # %if.end22.preheader
                                        #   in Loop: Header=BB2_12 Depth=1
	br	__LBB2_15
__LBB2_19:                              # %if.then35
                                        #   in Loop: Header=BB2_15 Depth=2
	ldi	r0, __L.str.8
	jsr	PrintToTTY
__LBB2_20:                              # %while.cond.backedge
                                        #   in Loop: Header=BB2_15 Depth=2
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r0, -8528
	stb	r0, r4
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	jsr	getc
	ssb	r0, -8
	ldi	r1, 25
	cmp	r0, r1
	beq	__LBB2_14
	br	__LBB2_15
__LBB2_15:                              # %if.end22
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -16                         # 2-byte Folded Reload
	ldb	r0, r0
	cmp	r0, r6
	ldi	r0, __L.str.7
	beq	__LBB2_17
# %bb.16:                               # %if.end22
                                        #   in Loop: Header=BB2_15 Depth=2
	ldi	r0, __L.str.6
__LBB2_17:                              # %if.end22
                                        #   in Loop: Header=BB2_15 Depth=2
	jsr	PrintToTTY
	ldi	r0, -8
	add	r0, fp, r5
	jsr	getc
	ldi	r1, 1
	stb	r5, r1, r0
	ldi	r1, 24
	cmp	r0, r1
	bne	__LBB2_32
	br	__LBB2_18
__LBB2_18:                              # %if.then33
                                        #   in Loop: Header=BB2_15 Depth=2
	lsw	r0, -16                         # 2-byte Folded Reload
	ldb	r0, r0
	cmp	r0, r6
	bne	__LBB2_21
	br	__LBB2_19
__LBB2_21:                              # %if.else36
                                        #   in Loop: Header=BB2_15 Depth=2
	lsb	r0, -8
	ldi	r1, -12
	add	r1, fp, r1
	lsw	r2, -18                         # 2-byte Folded Reload
	jsr	validate_bear_off
	movens	r0, r5
	cmp	r5, r6
	beq	__LBB2_20
	br	__LBB2_22
__LBB2_22:                              # %if.end42
                                        #   in Loop: Header=BB2_12 Depth=1
	lsb	r0, -8
	jsr	remove_checker
	ldi	r0, 1
	lsw	r1, -18                         # 2-byte Folded Reload
	cmp	r1, r0
	ldi	r4, _random+1
	blt	__LBB2_50
	br	__LBB2_23
__LBB2_23:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 255
	and r5, r0, r1
	movens	r6, r0
__LBB2_24:                              # %for.body
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r2, -12
	add	r2, fp, r2
	ldb	r2, r0, r2
	cmp	r2, r5
	bne	__LBB2_26
	br	__LBB2_25
__LBB2_26:                              # %if.end54
                                        #   in Loop: Header=BB2_24 Depth=2
	lsw	r2, -20                         # 2-byte Folded Reload
	lsw	r3, -22                         # 2-byte Folded Reload
	cmp	r2, r3
	beq	__LBB2_29
	br	__LBB2_27
__LBB2_29:                              # %if.else71
                                        #   in Loop: Header=BB2_24 Depth=2
	ldi	r2, 2
	lsw	r3, -18                         # 2-byte Folded Reload
	cmp	r3, r2
	movens	r4, r2
	bne	__LBB2_31
	br	__LBB2_30
__LBB2_27:                              # %if.then59
                                        #   in Loop: Header=BB2_24 Depth=2
	ldi	r3, _random
	ldb	r3, r2
	cmp	r2, r1
	movens	r3, r2
	beq	__LBB2_30
	br	__LBB2_28
__LBB2_28:                              # %if.else64
                                        #   in Loop: Header=BB2_24 Depth=2
	ldb	r4, r2
	cmp	r2, r1
	movens	r4, r2
	beq	__LBB2_30
	br	__LBB2_31
__LBB2_30:                              # %for.inc.sink.split
                                        #   in Loop: Header=BB2_24 Depth=2
	stb	r2, r6
__LBB2_31:                              # %for.inc
                                        #   in Loop: Header=BB2_24 Depth=2
	add	r0, 1
	lsw	r2, -18                         # 2-byte Folded Reload
	cmp	r2, r0
	beq	__LBB2_50
	br	__LBB2_24
__LBB2_32:                              # %if.else79
                                        #   in Loop: Header=BB2_12 Depth=1
	sxt	r0, r1
	ldi	r0, _player
	ldsb	r0, r2
	lssb	r0, -8
	jsr	get_dst
	movens	r0, r5
	ldi	r0, __L.str.9
	jsr	PrintToTTY
	add	r5, 48
	ldi	r0, -8528
	stb	r0, r5
	ldi	r0, __L.str.10
	jsr	PrintToTTY
	ldi	r5, -8
	add	r5, fp, r0
	ldi	r1, -12
	add	r1, fp, r1
	lsw	r2, -18                         # 2-byte Folded Reload
	lsw	r3, -24                         # 2-byte Folded Reload
	jsr	isMoveValid
	cmp	r0, r6
	beq	__LBB2_49
	br	__LBB2_33
__LBB2_33:                              # %if.then90
                                        #   in Loop: Header=BB2_12 Depth=1
	add	r5, fp, r0
	jsr	move_checker
	jsr	zabor_rule
	cmp	r0, r6
	bne	__LBB2_35
	br	__LBB2_34
__LBB2_35:                              # %if.else100
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, __L.str.11
	jsr	PrintToTTY
	lssb	r0, -8
	cmp	r0, r6
	ldi	r4, 1
	beq	__LBB2_37
# %bb.36:                               # %if.else100
                                        #   in Loop: Header=BB2_12 Depth=1
	movens	r6, r4
__LBB2_37:                              # %if.else100
                                        #   in Loop: Header=BB2_12 Depth=1
	add	r5, fp, r1
	ldi	r2, 1
	movens	r2, r5
	ldsb	r1, r5, r1
	ldi	r2, _player
	ldsb	r2, r2
	jsr	get_dst
	lsw	r1, -18                         # 2-byte Folded Reload
	cmp	r1, r5
	movens	r1, r5
	ldi	r3, -12
	blt	__LBB2_42
	br	__LBB2_38
__LBB2_38:                              # %for.body117.preheader
                                        #   in Loop: Header=BB2_12 Depth=1
	movens	r6, r1
__LBB2_39:                              # %for.body117
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	r3, fp, r2
	ldb	r2, r1, r2
	cmp	r0, r2
	bne	__LBB2_41
	br	__LBB2_40
__LBB2_41:                              # %for.inc128
                                        #   in Loop: Header=BB2_39 Depth=2
	add	r1, 1
	cmp	r5, r1
	bne	__LBB2_39
	br	__LBB2_42
__LBB2_34:                              # %if.then95
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, -14
	add	r0, fp, r0
	lsb	r1, -8
	ldi	r2, 1
	stb	r0, r2, r1
	add	r5, fp, r1
	ldb	r1, r2, r1
	ssb	r1, -14
	jsr	move_checker
	br	__LBB2_50
__LBB2_25:                              # %if.then51
                                        #   in Loop: Header=BB2_12 Depth=1
	lsw	r2, -18                         # 2-byte Folded Reload
	sub	r2, 1
	ldi	r1, -12
	add	r1, fp, r1
	ssw	r2, -18                         # 2-byte Folded Spill
	ldb	r1, r2, r2
	stb	r1, r0, r2
	br	__LBB2_50
__LBB2_40:                              # %if.then122
                                        #   in Loop: Header=BB2_12 Depth=1
	sub	r5, 1
	add	r3, fp, r2
	ldb	r2, r5, r3
	stb	r2, r1, r3
	br	__LBB2_42
__LBB2_42:                              # %cleanup130
                                        #   in Loop: Header=BB2_12 Depth=1
	lsw	r1, -24                         # 2-byte Folded Reload
	sub r1, r4, r1
	ssw	r1, -24                         # 2-byte Folded Spill
	lsw	r1, -20                         # 2-byte Folded Reload
	lsw	r2, -22                         # 2-byte Folded Reload
	cmp	r1, r2
	ssw	r5, -18                         # 2-byte Folded Spill
	beq	__LBB2_47
	br	__LBB2_43
__LBB2_47:                              # %if.else148
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 2
	cmp	r5, r0
	ldi	r0, _random+1
	bne	__LBB2_50
	br	__LBB2_48
__LBB2_48:                              # %if.then151
                                        #   in Loop: Header=BB2_12 Depth=1
	stb	r0, r6
	ldi	r0, 2
	ssw	r0, -18                         # 2-byte Folded Spill
	br	__LBB2_50
__LBB2_43:                              # %if.then136
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r2, _random
	ldsb	r2, r1
	cmp	r0, r1
	ldi	r3, _random+1
	bne	__LBB2_45
	br	__LBB2_44
__LBB2_44:                              # %if.then140
                                        #   in Loop: Header=BB2_12 Depth=1
	stb	r2, r6
	br	__LBB2_50
__LBB2_45:                              # %if.else141
                                        #   in Loop: Header=BB2_12 Depth=1
	ldsb	r3, r1
	cmp	r0, r1
	bne	__LBB2_50
	br	__LBB2_46
__LBB2_46:                              # %if.then145
                                        #   in Loop: Header=BB2_12 Depth=1
	stb	r3, r6
	br	__LBB2_50
__LBB2_49:                              # %if.else155
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, __L.str.12
	jsr	PrintToTTY
__LBB2_50:                              # %if.end157
                                        #   in Loop: Header=BB2_12 Depth=1
	lsw	r4, -18                         # 2-byte Folded Reload
	cmp	r4, r6
	ldi	r0, __L.str.3
	ldi	r5, -8528
	bne	__LBB2_12
	br	__LBB2_51
__LBB2_14:                              # %if.then21
	ldi	r0, __L.str.5
	jsr	PrintToTTY
	br	__LBB2_51
__LBB2_51:                              # %while.end
	ldi	r0, _player
	ldi	r1, 255
	stb	r0, r1
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	24
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, _player
	ldi	r1, 1
	stb	r0, r1
	ldi	r3, _amt_of_checkers+1
	ldi	r2, 11
	stb	r3, r2
	ldi	r3, _points+2
	stw	r3, r2
	ldi	r3, _colors
	stb	r3, r1
	ldi	r5, 0
	stb	r0, r5
	ldi	r1, _amt_of_checkers
	stb	r1, r2
	ldi	r1, _points+26
	stw	r1, r2
	ldi	r1, _colors+12
	ldi	r2, 2
	stb	r1, r2
	ldi	r1, 255
	stb	r0, r1
	ssb	r5, -7
	ssb	r5, -8
	ldi	r6, __L.str.13
	ldi	r4, __L.str.14
__LBB3_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldi	r0, -7
	add	r0, fp, r0
	jsr	player_move
	ldi	r0, _amt_of_checkers+1
	ldb	r0, r0
	cmp	r0, r5
	movens	r6, r0
	beq	__LBB3_3
	br	__LBB3_2
__LBB3_2:                               # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	ldi	r0, -8
	add	r0, fp, r0
	jsr	computer_move
	ldi	r0, _amt_of_checkers
	ldb	r0, r0
	cmp	r0, r5
	movens	r4, r0
	bne	__LBB3_1
	br	__LBB3_3
__LBB3_3:                               # %while.end
	jsr	PrintToTTY
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
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
	db	68
	db	66
	db	71
	db	58
	db	32
	db	97
	db	108
	db	108
	db	32
	db	99
	db	104
	db	101
	db	99
	db	107
	db	101
	db	114
	db	115
	db	32
	db	105
	db	110
	db	32
	db	104
	db	111
	db	109
	db	101
	db	10
	db	110
	db	111
	db	119
	db	32
	db	121
	db	111
	db	117
	db	32
	db	98
	db	101
	db	97
	db	114
	db	32
	db	111
	db	102
	db	102
	db	32
	db	116
	db	104
	db	101
	db	109
	db	0

__L.str.2:                              # @.str.2
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

__L.str.3:                              # @.str.3
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

__L.str.4:                              # @.str.4
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

__L.str.5:                              # @.str.5
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

__L.str.6:                              # @.str.6
	db	10
	db	116
	db	111
	db	58
	db	32
	db	40
	db	121
	db	32
	db	116
	db	111
	db	32
	db	98
	db	101
	db	97
	db	114
	db	32
	db	111
	db	102
	db	102
	db	41
	db	32
	db	0

__L.str.7:                              # @.str.7
	db	10
	db	116
	db	111
	db	58
	db	32
	db	0

__L.str.8:                              # @.str.8
	db	89
	db	111
	db	117
	db	32
	db	99
	db	97
	db	110
	db	110
	db	111
	db	116
	db	32
	db	98
	db	101
	db	97
	db	114
	db	32
	db	111
	db	102
	db	102
	db	32
	db	110
	db	111
	db	119
	db	0

__L.str.9:                              # @.str.9
	db	10
	db	68
	db	66
	db	71
	db	32
	db	68
	db	73
	db	83
	db	84
	db	32
	db	45
	db	32
	db	0

__L.str.10:                             # @.str.10
	db	10
	db	77
	db	111
	db	118
	db	101
	db	32
	db	118
	db	97
	db	108
	db	105
	db	100
	db	97
	db	116
	db	105
	db	111
	db	110
	db	46
	db	46
	db	46
	db	0

__L.str.11:                             # @.str.11
	db	10
	db	79
	db	107
	db	46
	db	46
	db	46
	db	0

__L.str.12:                             # @.str.12
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

__L.str.13:                             # @.str.13
	db	10
	db	80
	db	108
	db	97
	db	121
	db	101
	db	114
	db	32
	db	119
	db	105
	db	110
	db	33
	db	0

__L.str.14:                             # @.str.14
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
	db	119
	db	105
	db	110
	db	33
	db	0

end.
