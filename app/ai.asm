### SECTION: .text
rsect _src_ai_c_1804289383

PrintToTTY: ext
randomize: ext
is_all_in_home: ext
validate_bear_off: ext
isMoveValid: ext
move_checker: ext
zabor_rule: ext
_player: ext
_random: ext
_colors: ext
_points: ext


macro movens/2
push $1
pop $2
mend

computer_move>                          # -- Begin function computer_move
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-30
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	movens	r0, r4
	ldi	r0, __L.str
	jsr	PrintToTTY
	jsr	randomize
	ldi	r0, _player
	ldi	r6, 0
	stb	r0, r6
	ssw	r4, -28                         # 2-byte Folded Spill
	ldb	r4, r0
	cmp	r0, r6
	bne	__LBB0_3
	br	__LBB0_1
__LBB0_1:                               # %if.then
	jsr	is_all_in_home
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_3
	br	__LBB0_2
__LBB0_2:                               # %if.then2
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	ldi	r0, 1
	lsw	r1, -28                         # 2-byte Folded Reload
	stb	r1, r0
__LBB0_3:                               # %if.end3
	ldi	r1, 1
	ldi	r2, 2
	ldi	r0, _random
	ldb	r0, r4
	ldi	r0, _random+1
	ldb	r0, r0
	cmp	r4, r0
	ldi	r3, -12
	ssw	r1, -22                         # 2-byte Folded Spill
	ssw	r2, -18                         # 2-byte Folded Spill
	bne	__LBB0_5
	br	__LBB0_4
__LBB0_4:                               # %if.then6
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	ldi	r3, -12
	add	r3, fp, r0
	ldi	r1, 3
	stb	r0, r1, r4
	ldi	r1, 2
	ssw	r1, -22                         # 2-byte Folded Spill
	stb	r0, r1, r4
	ldi	r0, 4
	ssw	r0, -18                         # 2-byte Folded Spill
	movens	r4, r0
__LBB0_5:                               # %if.end12
	add	r3, fp, r1
	ldi	r2, 1
	stb	r1, r2, r0
	ssb	r4, -12
	ldi	r0, 255
	ldi	r1, -1
	ssw	r1, -20                         # 2-byte Folded Spill
	ssw	r0, -26                         # 2-byte Folded Spill
	movens	r6, r1
	ssw	r0, -24                         # 2-byte Folded Spill
	br	__LBB0_7
__LBB0_6:                               # %for.cond.cleanup
                                        #   in Loop: Header=BB0_7 Depth=1
	lsw	r1, -20                         # 2-byte Folded Reload
	add	r1, 48
	ldi	r0, -8528
	movens	r0, r4
	stb	r4, r1
	ldi	r5, __L.str.3
	movens	r5, r0
	jsr	PrintToTTY
	ldi	r0, 97
	movens	r0, r1
	lsw	r0, -26                         # 2-byte Folded Reload
	add r0, r1, r0
	stb	r4, r0
	movens	r5, r0
	jsr	PrintToTTY
	lsw	r0, -24                         # 2-byte Folded Reload
	ldi	r1, 97
	add r0, r1, r0
	stb	r4, r0
	movens	r5, r0
	jsr	PrintToTTY
	ldi	r3, -12
	ldi	r0, -1
	ssw	r0, -20                         # 2-byte Folded Spill
	ldi	r0, 255
	ssw	r0, -26                         # 2-byte Folded Spill
	movens	r6, r1
	ssw	r0, -24                         # 2-byte Folded Spill
__LBB0_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	add	r3, fp, r0
	ssw	r1, -30                         # 2-byte Folded Spill
	ldb	r0, r1, r0
	ssw	r0, -16                         # 2-byte Folded Spill
	br	__LBB0_9
__LBB0_31:                              # %if.else.i
                                        #   in Loop: Header=BB0_9 Depth=2
	shl	r0, r0, 1
	ldi	r2, _points
	ldw	r0, r2, r2
	movens	r1, r0
	add	r0, 10
	ldi	r3, 0
	cmp	r2, r3
	beq	__LBB0_33
# %bb.32:                               # %if.else.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movens	r1, r0
__LBB0_33:                              # %if.else.i
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r3, -20                         # 2-byte Folded Reload
__LBB0_34:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	cmp	r0, r3
	movens	r6, r1
	bgt	__LBB0_36
# %bb.35:                               # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r1, -26                         # 2-byte Folded Reload
__LBB0_36:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	cmp	r0, r3
	movens	r4, r2
	bgt	__LBB0_38
# %bb.37:                               # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r2, -24                         # 2-byte Folded Reload
__LBB0_38:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	cmp	r0, r3
	bgt	__LBB0_40
# %bb.39:                               # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	movens	r3, r0
__LBB0_40:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	ssw	r2, -24                         # 2-byte Folded Spill
	ssw	r1, -26                         # 2-byte Folded Spill
	ssw	r0, -20                         # 2-byte Folded Spill
__LBB0_41:                              # %if.end85
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, -14
	add	r0, fp, r0
	ldi	r1, 1
	stb	r0, r1, r6
	ssb	r4, -14
	jsr	move_checker
	ldi	r3, -12
__LBB0_42:                              # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=2
	add	r6, 1
	ldi	r0, 24
	cmp	r6, r0
	beq	__LBB0_8
	br	__LBB0_9
__LBB0_9:                               # %for.body23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, _colors
	ldb	r6, r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_10
__LBB0_10:                              # %if.end29
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r0, -16                         # 2-byte Folded Reload
	add r0, r6, r0
	sxt	r0, r4
	ldi	r0, 12
	cmp	r6, r0
	blo	__LBB0_14
	br	__LBB0_11
__LBB0_11:                              # %if.end49.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	movens	r4, r0
	sub	r0, 24
	ldi	r1, 23
	cmp	r4, r1
	bgt	__LBB0_13
# %bb.12:                               # %if.end49.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	movens	r4, r0
__LBB0_13:                              # %if.end49.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r5, -8
	add	r5, fp, r1
	ldi	r2, 1
	stb	r1, r2, r0
	ssb	r6, -8
	movens	r0, r4
	br	__LBB0_24
__LBB0_14:                              # %if.end49
                                        #   in Loop: Header=BB0_9 Depth=2
	cmp	r4, r0
	movens	r4, r0
	ldi	r5, -8
	blt	__LBB0_16
# %bb.15:                               # %if.end49
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, 24
__LBB0_16:                              # %if.end49
                                        #   in Loop: Header=BB0_9 Depth=2
	add	r5, fp, r1
	ldi	r2, 1
	stb	r1, r2, r0
	ssb	r6, -8
	ldi	r0, 12
	cmp	r4, r0
	blt	__LBB0_24
	br	__LBB0_17
__LBB0_24:                              # %if.else67
                                        #   in Loop: Header=BB0_9 Depth=2
	add	r5, fp, r0
	add	r3, fp, r1
	lsw	r2, -18                         # 2-byte Folded Reload
	lsw	r3, -22                         # 2-byte Folded Reload
	jsr	isMoveValid
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_41
	br	__LBB0_25
__LBB0_25:                              # %if.then72
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, -8
	add	r0, fp, r0
	jsr	move_checker
	jsr	zabor_rule
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_41
	br	__LBB0_26
__LBB0_26:                              # %if.then77
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, 12
	cmp	r6, r0
	ldi	r1, 50
	beq	__LBB0_28
# %bb.27:                               # %if.then77
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r1, 0
__LBB0_28:                              # %if.then77
                                        #   in Loop: Header=BB0_9 Depth=2
	sxt	r4, r0
	ldi	r2, _colors
	ldb	r0, r2, r2
	add	r0, 1
	ldi	r3, 2
	cmp	r2, r3
	bne	__LBB0_31
	br	__LBB0_29
__LBB0_29:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_9 Depth=2
	shl	r0, r2, 1
	ldi	r3, _points
	ldw	r2, r3, r2
	ldi	r3, 0
	cmp	r2, r3
	beq	__LBB0_31
	br	__LBB0_30
__LBB0_30:                              # %if.then12.i
                                        #   in Loop: Header=BB0_9 Depth=2
	add	r1, 20
	movens	r1, r0
	lsw	r3, -20                         # 2-byte Folded Reload
	br	__LBB0_34
__LBB0_17:                              # %if.then53
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r0, -28                         # 2-byte Folded Reload
	ldb	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_42
	br	__LBB0_18
__LBB0_18:                              # %if.end56
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, 255
	and r6, r0, r0
	add	r3, fp, r1
	lsw	r2, -18                         # 2-byte Folded Reload
	jsr	validate_bear_off
	ldi	r3, -12
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_42
	br	__LBB0_19
__LBB0_19:                              # %if.then60
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r0, 1000
	lsw	r1, -20                         # 2-byte Folded Reload
	cmp	r1, r0
	movens	r6, r0
	blt	__LBB0_21
# %bb.20:                               # %if.then60
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r0, -26                         # 2-byte Folded Reload
__LBB0_21:                              # %if.then60
                                        #   in Loop: Header=BB0_9 Depth=2
	ldi	r1, 1000
	lsw	r2, -20                         # 2-byte Folded Reload
	cmp	r2, r1
	ldi	r1, 24
	blt	__LBB0_23
# %bb.22:                               # %if.then60
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r1, -24                         # 2-byte Folded Reload
__LBB0_23:                              # %if.then60
                                        #   in Loop: Header=BB0_9 Depth=2
	ssw	r1, -24                         # 2-byte Folded Spill
	ssw	r0, -26                         # 2-byte Folded Spill
	ldi	r0, 1000
	ssw	r0, -20                         # 2-byte Folded Spill
	br	__LBB0_42
__LBB0_8:                               # %for.cond.cleanup22
                                        #   in Loop: Header=BB0_7 Depth=1
	lsw	r1, -30                         # 2-byte Folded Reload
	add	r1, 1
	lsw	r0, -18                         # 2-byte Folded Reload
	cmp	r1, r0
	ldi	r6, 0
	beq	__LBB0_6
	br	__LBB0_7
                                        # -- End function
### SECTION: .rodata.str1.1
__L.str:                                # @.str
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

__L.str.1:                              # @.str.1
	db	10
	db	68
	db	66
	db	71
	db	58
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
	db	110
	db	111
	db	119
	db	32
	db	99
	db	97
	db	110
	db	32
	db	98
	db	101
	db	97
	db	114
	db	105
	db	110
	db	103
	db	32
	db	111
	db	102
	db	102
	db	33
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
	db	0

end.
