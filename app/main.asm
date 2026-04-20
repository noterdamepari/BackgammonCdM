### SECTION: .text


memset, memcpy: ext
rsect _src_main_c_1804289383

PrintToTTY: ext
is_all_in_home: ext
validate_bear_off: ext
remove_checker: ext
get_dst: ext
isMoveValid: ext
move_checker: ext
zabor_rule: ext
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
	addsp	-26
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ssw	r0, -16                         # 2-byte Folded Spill
	addsp	-8
	ldi	r0, __L.str
	jsr	PrintToTTY
	addsp	8
	ldi	r0, state
	ldw	r0, r2
	ldi	r1, 7
	ldi	r4, 0
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
	cmp	r3, r4
	beq	__LBB2_1
	br	__LBB2_2
__LBB2_2:                               # %do.body.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmp	r3, r1
	beq	__LBB2_1
	br	__LBB2_3
__LBB2_3:                               # %do.end.i
	ldi	r5, _random
	stb	r5, r3
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
	cmp	r3, r4
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
	cmp	r0, r4
	bne	__LBB2_9
	br	__LBB2_7
__LBB2_7:                               # %if.then
	addsp	-8
	jsr	is_all_in_home
	addsp	8
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB2_9
	br	__LBB2_8
__LBB2_8:                               # %if.then2
	addsp	-8
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	addsp	8
	ldi	r0, 1
	lsw	r1, -16                         # 2-byte Folded Reload
	stb	r1, r0
__LBB2_9:                               # %if.end3
	ldi	r2, 2
	ldi	r0, _random
	ldb	r0, r3
	ldi	r0, _random+1
	ldb	r0, r0
	cmp	r3, r0
	ldi	r4, -12
	ssw	r0, -24                         # 2-byte Folded Spill
	ldi	r1, 1
	ssw	r1, -26                         # 2-byte Folded Spill
	ssw	r3, -22                         # 2-byte Folded Spill
	bne	__LBB2_11
	br	__LBB2_10
__LBB2_10:                              # %if.then6
	addsp	-8
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	lsw	r3, -22                         # 2-byte Folded Reload
	addsp	8
	add	r4, fp, r0
	ldi	r1, 3
	stb	r0, r1, r3
	ldi	r1, 2
	ssw	r1, -26                         # 2-byte Folded Spill
	stb	r0, r1, r3
	ldi	r2, 4
	movens	r3, r0
__LBB2_11:                              # %if.end12
	add	r4, fp, r1
	movens	r2, r4
	ldi	r2, 1
	stb	r1, r2, r0
	movens	r4, r2
	ssb	r3, -12
	ldi	r5, -97
	ldi	r4, 255
	ldi	r6, 25
__LBB2_12:                              # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #     Child Loop BB2_41 Depth 2
                                        #     Child Loop BB2_26 Depth 2
	ssw	r2, -20                         # 2-byte Folded Spill
	add	r2, 48
	ssw	r2, -18                         # 2-byte Folded Spill
__LBB2_13:                              # %while.body
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_20 Depth 3
	addsp	-8
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	addsp	8
	ldi	r0, -8528
	lsw	r1, -18                         # 2-byte Folded Reload
	stb	r0, r1
	addsp	-8
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	addsp	8
	ldi	r0, in
	ldw	r0, r0
__LBB2_14:                              # %while.cond.i
                                        #   Parent Loop BB2_12 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldb	r0, r1
	add r1, r5, r1
	and r1, r4, r2
	cmp	r2, r6
	bhi	__LBB2_14
	br	__LBB2_15
__LBB2_15:                              # %getc.exit
                                        #   in Loop: Header=BB2_13 Depth=2
	ssb	r1, -8
	cmp	r2, r6
	bne	__LBB2_17
	br	__LBB2_16
__LBB2_17:                              # %if.end22
                                        #   in Loop: Header=BB2_13 Depth=2
	lsw	r0, -16                         # 2-byte Folded Reload
	ldb	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	ldi	r0, __L.str.7
	beq	__LBB2_19
# %bb.18:                               # %if.end22
                                        #   in Loop: Header=BB2_13 Depth=2
	ldi	r0, __L.str.6
__LBB2_19:                              # %if.end22
                                        #   in Loop: Header=BB2_13 Depth=2
	addsp	-8
	jsr	PrintToTTY
	addsp	8
	ldi	r0, in
	ldw	r0, r0
__LBB2_20:                              # %while.cond.i189
                                        #   Parent Loop BB2_12 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldb	r0, r1
	add r1, r5, r1
	and r1, r4, r2
	cmp	r2, r6
	bhi	__LBB2_20
	br	__LBB2_21
__LBB2_21:                              # %getc.exit191
                                        #   in Loop: Header=BB2_13 Depth=2
	ldi	r0, -8
	add	r0, fp, r0
	ldi	r3, 1
	stb	r0, r3, r1
	ldi	r0, 24
	cmp	r2, r0
	bne	__LBB2_34
	br	__LBB2_22
__LBB2_22:                              # %if.then33
                                        #   in Loop: Header=BB2_13 Depth=2
	lsw	r0, -16                         # 2-byte Folded Reload
	ldb	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_24
	br	__LBB2_23
__LBB2_23:                              # %if.then35
                                        #   in Loop: Header=BB2_13 Depth=2
	addsp	-8
	ldi	r0, __L.str.8
	jsr	PrintToTTY
	addsp	8
	br	__LBB2_13
__LBB2_34:                              # %if.else75
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, _player
	ldsb	r0, r2
	lssb	r0, -8
	addsp	-8
	sxt	r1, r1
	jsr	get_dst
	addsp	8
	ssw	r0, -18                         # 2-byte Folded Spill
	addsp	-8
	ldi	r0, __L.str.9
	jsr	PrintToTTY
	addsp	8
	lsw	r1, -18                         # 2-byte Folded Reload
	add	r1, 48
	ldi	r0, -8528
	stb	r0, r1
	addsp	-8
	ldi	r0, __L.str.10
	jsr	PrintToTTY
	addsp	8
	ldi	r0, -8
	add	r0, fp, r0
	ldi	r1, -12
	add	r1, fp, r1
	addsp	-8
	lsw	r2, -20                         # 2-byte Folded Reload
	lsw	r3, -26                         # 2-byte Folded Reload
	jsr	isMoveValid
	addsp	8
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB2_51
	br	__LBB2_35
__LBB2_35:                              # %if.then86
                                        #   in Loop: Header=BB2_12 Depth=1
	addsp	-8
	ldi	r0, -8
	add	r0, fp, r0
	jsr	move_checker
	addsp	8
	addsp	-8
	jsr	zabor_rule
	addsp	8
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_37
	br	__LBB2_36
__LBB2_37:                              # %if.else96
                                        #   in Loop: Header=BB2_12 Depth=1
	addsp	-8
	ldi	r0, __L.str.11
	jsr	PrintToTTY
	addsp	8
	lssb	r0, -8
	ldi	r1, 0
	cmp	r0, r1
	ldi	r1, 1
	beq	__LBB2_39
# %bb.38:                               # %if.else96
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r1, 0
__LBB2_39:                              # %if.else96
                                        #   in Loop: Header=BB2_12 Depth=1
	ssw	r1, -18                         # 2-byte Folded Spill
	ldi	r1, -8
	add	r1, fp, r1
	ldi	r2, 1
	ldsb	r1, r2, r1
	ldi	r2, _player
	ldsb	r2, r2
	addsp	-8
	jsr	get_dst
	addsp	8
	lsw	r1, -20                         # 2-byte Folded Reload
	ldi	r2, 1
	cmp	r1, r2
	ldi	r3, _random
	blt	__LBB2_44
	br	__LBB2_40
__LBB2_40:                              # %for.body113.preheader
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r1, 0
__LBB2_41:                              # %for.body113
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r2, -12
	add	r2, fp, r2
	ldb	r2, r1, r2
	cmp	r0, r2
	bne	__LBB2_43
	br	__LBB2_42
__LBB2_43:                              # %for.inc124
                                        #   in Loop: Header=BB2_41 Depth=2
	add	r1, 1
	lsw	r2, -20                         # 2-byte Folded Reload
	cmp	r2, r1
	bne	__LBB2_41
	br	__LBB2_44
__LBB2_24:                              # %if.else36
                                        #   in Loop: Header=BB2_12 Depth=1
	lsb	r0, -8
	addsp	-8
	ldi	r1, -12
	add	r1, fp, r1
	lsw	r2, -20                         # 2-byte Folded Reload
	jsr	validate_bear_off
	addsp	8
	ssw	r0, -18                         # 2-byte Folded Spill
	lsb	r0, -8
	addsp	-8
	jsr	remove_checker
	lsw	r2, -20                         # 2-byte Folded Reload
	addsp	8
	ldi	r0, 1
	cmp	r2, r0
	blt	__LBB2_52
	br	__LBB2_25
__LBB2_25:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 0
__LBB2_26:                              # %for.body
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r1, -12
	add	r1, fp, r1
	ldb	r1, r0, r1
	lsw	r3, -18                         # 2-byte Folded Reload
	cmp	r1, r3
	bne	__LBB2_28
	br	__LBB2_27
__LBB2_28:                              # %if.end51
                                        #   in Loop: Header=BB2_26 Depth=2
	lsw	r1, -24                         # 2-byte Folded Reload
	lsw	r3, -22                         # 2-byte Folded Reload
	cmp	r3, r1
	beq	__LBB2_31
	br	__LBB2_29
__LBB2_31:                              # %if.else68
                                        #   in Loop: Header=BB2_26 Depth=2
	ldi	r1, 2
	cmp	r2, r1
	ldi	r3, _random+1
	bne	__LBB2_33
	br	__LBB2_32
__LBB2_29:                              # %if.then56
                                        #   in Loop: Header=BB2_26 Depth=2
	lsw	r1, -18                         # 2-byte Folded Reload
	and r1, r4, r2
	ldi	r3, _random
	ldb	r3, r1
	cmp	r1, r2
	beq	__LBB2_32
	br	__LBB2_30
__LBB2_30:                              # %if.else61
                                        #   in Loop: Header=BB2_26 Depth=2
	ldi	r3, _random+1
	ldb	r3, r1
	cmp	r1, r2
	beq	__LBB2_32
	br	__LBB2_33
__LBB2_32:                              # %for.inc.sink.split
                                        #   in Loop: Header=BB2_26 Depth=2
	ldi	r2, 0
	stb	r3, r2
__LBB2_33:                              # %for.inc
                                        #   in Loop: Header=BB2_26 Depth=2
	add	r0, 1
	lsw	r2, -20                         # 2-byte Folded Reload
	cmp	r2, r0
	beq	__LBB2_52
	br	__LBB2_26
__LBB2_27:                              # %if.then48
                                        #   in Loop: Header=BB2_12 Depth=1
	sub	r2, 1
	ldi	r1, -12
	add	r1, fp, r1
	movens	r2, r3
	ldb	r1, r3, r2
	stb	r1, r0, r2
	movens	r3, r2
	br	__LBB2_52
__LBB2_36:                              # %if.then91
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, -14
	add	r0, fp, r0
	lsb	r1, -8
	ldi	r2, 1
	stb	r0, r2, r1
	ldi	r1, -8
	add	r1, fp, r1
	ldb	r1, r2, r1
	ssb	r1, -14
	addsp	-8
	jsr	move_checker
	addsp	8
	lsw	r2, -20                         # 2-byte Folded Reload
	br	__LBB2_52
__LBB2_42:                              # %if.then118
                                        #   in Loop: Header=BB2_12 Depth=1
	lsw	r3, -20                         # 2-byte Folded Reload
	sub	r3, 1
	ldi	r2, -12
	add	r2, fp, r2
	ssw	r3, -20                         # 2-byte Folded Spill
	ldb	r2, r3, r3
	stb	r2, r1, r3
	ldi	r3, _random
	br	__LBB2_44
__LBB2_44:                              # %cleanup126
                                        #   in Loop: Header=BB2_12 Depth=1
	lsw	r1, -26                         # 2-byte Folded Reload
	lsw	r2, -18                         # 2-byte Folded Reload
	sub r1, r2, r1
	ssw	r1, -26                         # 2-byte Folded Spill
	lsw	r1, -22                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	cmp	r1, r2
	beq	__LBB2_49
	br	__LBB2_45
__LBB2_49:                              # %if.else144
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 2
	lsw	r2, -20                         # 2-byte Folded Reload
	cmp	r2, r0
	bne	__LBB2_52
	br	__LBB2_50
__LBB2_50:                              # %if.then147
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 0
	ldi	r1, _random+1
	stb	r1, r0
	ldi	r0, 2
	movens	r0, r2
	br	__LBB2_52
__LBB2_45:                              # %if.then132
                                        #   in Loop: Header=BB2_12 Depth=1
	ldsb	r3, r1
	cmp	r0, r1
	lsw	r2, -20                         # 2-byte Folded Reload
	bne	__LBB2_47
	br	__LBB2_46
__LBB2_46:                              # %if.then136
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 0
	stb	r3, r0
	br	__LBB2_52
__LBB2_47:                              # %if.else137
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r1, _random+1
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_52
	br	__LBB2_48
__LBB2_48:                              # %if.then141
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 0
	ldi	r1, _random+1
	stb	r1, r0
	br	__LBB2_52
__LBB2_51:                              # %if.else151
                                        #   in Loop: Header=BB2_12 Depth=1
	addsp	-8
	ldi	r0, __L.str.12
	jsr	PrintToTTY
	addsp	8
	lsw	r2, -20                         # 2-byte Folded Reload
__LBB2_52:                              # %if.end153
                                        #   in Loop: Header=BB2_12 Depth=1
	ldi	r0, 0
	cmp	r2, r0
	bne	__LBB2_12
	br	__LBB2_53
__LBB2_16:                              # %if.then21
	addsp	-8
	ldi	r0, __L.str.5
	jsr	PrintToTTY
	addsp	8
	br	__LBB2_53
__LBB2_53:                              # %while.end
	ldi	r0, _player
	stb	r0, r4
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	26
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
	ldi	r0, __L.str.13
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
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r3, _player
	ldi	r0, 1
	stb	r3, r0
	ldi	r2, _amt_of_checkers+1
	ldi	r1, 11
	stb	r2, r1
	ldi	r2, _points+2
	stw	r2, r1
	ldi	r2, _colors
	stb	r2, r0
	ldi	r6, 0
	stb	r3, r6
	ldi	r0, _amt_of_checkers
	stb	r0, r1
	ldi	r0, _points+26
	stw	r0, r1
	ldi	r0, _colors+12
	ldi	r1, 2
	stb	r0, r1
	ldi	r0, 255
	stb	r3, r0
	ssb	r6, -7
	ldi	r4, 7
	ldi	r5, _player
__LBB4_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	addsp	-8
	ldi	r0, -7
	add	r0, fp, r0
	jsr	player_move
	addsp	8
	ldi	r0, _amt_of_checkers+1
	ldb	r0, r0
	cmp	r0, r6
	bne	__LBB4_3
	br	__LBB4_2
__LBB4_2:                               # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	addsp	-8
	ldi	r0, __L.str.14
	jsr	PrintToTTY
	addsp	8
__LBB4_3:                               # %if.end
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
	and r1, r4, r1
	cmp	r1, r6
	beq	__LBB4_4
	br	__LBB4_5
__LBB4_5:                               # %do.body.i.i
                                        #   in Loop: Header=BB4_4 Depth=2
	cmp	r1, r4
	beq	__LBB4_4
	br	__LBB4_6
__LBB4_6:                               # %do.end.i.i
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r2, _random
	stb	r2, r1
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
	and r1, r4, r1
	cmp	r1, r6
	beq	__LBB4_7
	br	__LBB4_8
__LBB4_8:                               # %do.body.1.i.i
                                        #   in Loop: Header=BB4_7 Depth=2
	cmp	r1, r4
	beq	__LBB4_7
	br	__LBB4_9
__LBB4_9:                               # %computer_move.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	ldi	r2, _random+1
	stb	r2, r1
	ldi	r1, state
	stw	r1, r0
	stb	r5, r6
	addsp	-8
	ldi	r0, __L.str.13
	jsr	PrintToTTY
	addsp	8
	ldi	r0, 255
	stb	r5, r0
	ldi	r0, _amt_of_checkers
	ldb	r0, r0
	cmp	r0, r6
	bne	__LBB4_1
	br	__LBB4_10
__LBB4_10:                              # %if.then2
                                        #   in Loop: Header=BB4_1 Depth=1
	addsp	-8
	ldi	r0, __L.str.15
	jsr	PrintToTTY
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

__L.str.14:                             # @.str.14
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

__L.str.15:                             # @.str.15
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
