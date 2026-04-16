### SECTION: .text


memset, memcpy: ext
rsect _src_logic_c_1804289383

move_checker: ext
PrintToTTY: ext
_player: ext
_colors: ext
_points: ext


macro movens/2
push $1
pop $2
mend

get_dst>                                # -- Begin function get_dst
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	sub r1, r0, r1
	ldi	r0, _player
	ldb	r0, r0
	ldi	r2, 1
	cmp	r0, r2
	bne	__LBB0_4
	br	__LBB0_1
__LBB0_1:                               # %if.then
	ldi	r0, -1
	cmp	r1, r2
	blt	__LBB0_3
# %bb.2:                                # %if.then
	movens	r1, r0
__LBB0_3:                               # %if.then
	br	__LBB0_8
__LBB0_4:                               # %if.else
	movens	r1, r2
	add	r2, 24
	ldi	r3, 0
	cmp	r1, r3
	blt	__LBB0_6
# %bb.5:                                # %if.else
	movens	r1, r2
__LBB0_6:                               # %if.else
	ldi	r0, -1
	cmp	r2, r3
	beq	__LBB0_8
# %bb.7:                                # %if.else
	movens	r2, r0
__LBB0_8:                               # %cleanup
	pop	fp
	rts
                                        # -- End function
check_Wall>                             # -- Begin function check_Wall
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	movens	r0, r5
	addsp	-8
	jsr	move_checker
	addsp	8
	ldi	r4, 1
	ldb	r5, r4, r0
	ssb	r0, -8
	ldi	r0, -8
	add	r0, fp, r0
	ldb	r5, r1
	stb	r0, r4, r1
	ldi	r0, _player
	ldb	r0, r0
	ldi	r1, 2
	cmp	r0, r4
	ssw	r1, -10                         # 2-byte Folded Spill
	beq	__LBB1_2
# %bb.1:                                # %entry
	ssw	r4, -10                         # 2-byte Folded Spill
__LBB1_2:                               # %entry
	ldi	r1, 0
	ldi	r5, 6
	ldi	r0, _colors
	ldi	r6, 24
__LBB1_3:                               # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	ldb	r1, r0, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_4
__LBB1_4:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 22
	cmp	r1, r0
	ldi	r0, -23
	bhi	__LBB1_6
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movens	r4, r0
__LBB1_6:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	add r1, r0, r0
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_7
__LBB1_7:                               # %for.inc.1
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 21
	cmp	r1, r0
	ldi	r0, -22
	bhi	__LBB1_9
# %bb.8:                                # %for.inc.1
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 2
__LBB1_9:                               # %for.inc.1
                                        #   in Loop: Header=BB1_3 Depth=1
	add r1, r0, r0
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_10
__LBB1_10:                              # %for.inc.2
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 20
	cmp	r1, r0
	ldi	r0, -21
	bhi	__LBB1_12
# %bb.11:                               # %for.inc.2
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 3
__LBB1_12:                              # %for.inc.2
                                        #   in Loop: Header=BB1_3 Depth=1
	add r1, r0, r0
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_13
__LBB1_13:                              # %for.inc.3
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 19
	cmp	r1, r0
	ldi	r0, -20
	bhi	__LBB1_15
# %bb.14:                               # %for.inc.3
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 4
__LBB1_15:                              # %for.inc.3
                                        #   in Loop: Header=BB1_3 Depth=1
	add r1, r0, r0
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_16
__LBB1_16:                              # %for.inc.4
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 18
	cmp	r1, r0
	ldi	r0, -19
	bhi	__LBB1_18
# %bb.17:                               # %for.inc.4
                                        #   in Loop: Header=BB1_3 Depth=1
	ldi	r0, 5
__LBB1_18:                              # %for.inc.4
                                        #   in Loop: Header=BB1_3 Depth=1
	add r1, r0, r0
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldi	r2, _player
	ldb	r2, r2
	cmp	r0, r2
	bne	__LBB1_34
	br	__LBB1_19
__LBB1_19:                              # %for.cond25.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	movens	r5, r2
	ldi	r3, 23
	br	__LBB1_21
__LBB1_21:                              # %for.body29
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, _player
	ldb	r0, r0
	cmp	r0, r4
	bne	__LBB1_27
	br	__LBB1_22
__LBB1_22:                              # %if.then34
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r2, r0
	sub	r0, 24
	ldi	r4, 23
	cmp	r2, r4
	bhi	__LBB1_24
# %bb.23:                               # %if.then34
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r2, r0
__LBB1_24:                              # %if.then34
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r0, r4
	sub	r4, 24
	ldi	r6, 23
	cmp	r0, r6
	bgt	__LBB1_26
# %bb.25:                               # %if.then34
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r0, r4
__LBB1_26:                              # %if.then34
                                        #   in Loop: Header=BB1_21 Depth=2
	ldi	r6, 24
	ldi	r0, _colors
	br	__LBB1_32
__LBB1_27:                              # %if.else47
                                        #   in Loop: Header=BB1_21 Depth=2
	add r1, r3, r0
	movens	r0, r4
	sub	r4, 24
	ldi	r6, 0
	cmp	r4, r6
	blt	__LBB1_29
# %bb.28:                               # %if.else47
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r4, r0
__LBB1_29:                              # %if.else47
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r0, r4
	add	r4, 24
	cmp	r0, r6
	blt	__LBB1_31
# %bb.30:                               # %if.else47
                                        #   in Loop: Header=BB1_21 Depth=2
	movens	r0, r4
__LBB1_31:                              # %if.else47
                                        #   in Loop: Header=BB1_21 Depth=2
	ldi	r6, _colors
	movens	r6, r0
	ldi	r6, 24
__LBB1_32:                              # %if.end60
                                        #   in Loop: Header=BB1_21 Depth=2
	ldsb	r4, r0, r0
	lsw	r4, -10                         # 2-byte Folded Reload
	cmp	r4, r0
	ldi	r4, 1
	beq	__LBB1_34
	br	__LBB1_20
__LBB1_20:                              # %for.cond25
                                        #   in Loop: Header=BB1_21 Depth=2
	add	r2, 1
	sub	r3, 1
	ldi	r0, -1
	cmp	r3, r0
	beq	__LBB1_33
	br	__LBB1_21
__LBB1_34:                              # %if.end81
                                        #   in Loop: Header=BB1_3 Depth=1
	add	r5, 1
	add	r1, 1
	cmp	r1, r6
	ldi	r0, _colors
	bne	__LBB1_3
	br	__LBB1_35
__LBB1_35:                              # %cleanup92
	addsp	-8
	ldi	r0, -8
	add	r0, fp, r0
	jsr	move_checker
	addsp	8
	movens	r4, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
	pop	fp
	rts
__LBB1_33:                              # %if.then75
	addsp	-8
	ldi	r0, __L.str
	jsr	PrintToTTY
	addsp	8
	ldi	r4, 0
	br	__LBB1_35
                                        # -- End function
isMoveValid>                            # -- Begin function isMoveValid
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-12
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ssw	r3, -10                         # 2-byte Folded Spill
	ldi	r5, __L.str.1
	ssw	r0, -8                          # 2-byte Folded Spill
	ldb	r0, r6
	ldi	r0, _colors
	ldb	r6, r0, r3
	ldi	r4, _player
	ldb	r4, r4
	cmp	r3, r4
	bne	__LBB2_23
	br	__LBB2_1
__LBB2_1:                               # %lor.lhs.false
	shl	r6, r3, 1
	ldi	r4, _points+2
	ldw	r3, r4, r3
	ldi	r4, 0
	cmp	r3, r4
	beq	__LBB2_23
	br	__LBB2_2
__LBB2_2:                               # %if.end
	ldi	r3, _player
	ldb	r3, r5
	ldi	r3, 2
	ldi	r4, 1
	cmp	r5, r4
	beq	__LBB2_4
# %bb.3:                                # %if.end
	movens	r4, r3
__LBB2_4:                               # %if.end
	lsw	r5, -8                          # 2-byte Folded Reload
	ldb	r5, r4, r4
	ldi	r5, __L.str.2
	ldsb	r4, r0, r0
	cmp	r3, r0
	beq	__LBB2_23
	br	__LBB2_5
__LBB2_5:                               # %if.end19
	sxt	r6, r0
	sxt	r4, r3
	sub r3, r0, r5
	ldi	r0, _player
	ldb	r0, r0
	ldi	r4, 1
	cmp	r0, r4
	bne	__LBB2_9
	br	__LBB2_6
__LBB2_6:                               # %if.then.i
	ldi	r0, -1
	ssw	r0, -12                         # 2-byte Folded Spill
	ldi	r0, 1
	cmp	r5, r0
	blt	__LBB2_8
# %bb.7:                                # %if.then.i
	ssw	r5, -12                         # 2-byte Folded Spill
__LBB2_8:                               # %if.then.i
	br	__LBB2_13
__LBB2_9:                               # %if.else.i
	movens	r5, r3
	add	r3, 24
	ldi	r0, 0
	cmp	r5, r0
	blt	__LBB2_11
# %bb.10:                               # %if.else.i
	movens	r5, r3
__LBB2_11:                              # %if.else.i
	ldi	r0, -1
	ssw	r0, -12                         # 2-byte Folded Spill
	ldi	r0, 0
	cmp	r3, r0
	beq	__LBB2_13
# %bb.12:                               # %if.else.i
	ssw	r3, -12                         # 2-byte Folded Spill
__LBB2_13:                              # %get_dst.exit
	ldi	r5, __L.str.3
	lsw	r0, -12                         # 2-byte Folded Reload
	sub	r0, 7
	ldi	r3, -6
	cmp	r0, r3
	blo	__LBB2_23
	br	__LBB2_14
__LBB2_14:                              # %if.end28
	ldi	r0, _player
	ldb	r0, r0
	cmp	r0, r4
	ldi	r3, 0
	beq	__LBB2_16
# %bb.15:                               # %if.end28
	ldi	r3, 12
__LBB2_16:                              # %if.end28
	lsw	r0, -10                         # 2-byte Folded Reload
	ldi	r5, 0
	cmp	r0, r5
	bne	__LBB2_18
	br	__LBB2_17
__LBB2_17:                              # %if.end28
	ldi	r5, __L.str.4
	cmp	r3, r6
	beq	__LBB2_23
	br	__LBB2_18
__LBB2_18:                              # %for.cond.preheader
	ldi	r5, __L.str.5
	cmp	r2, r4
	blt	__LBB2_23
	br	__LBB2_19
__LBB2_19:                              # %for.body.preheader
	ldi	r6, 0
	br	__LBB2_21
__LBB2_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r0
	lsw	r3, -12                         # 2-byte Folded Reload
	cmp	r3, r0
	bne	__LBB2_20
	br	__LBB2_22
__LBB2_20:                              # %for.cond
                                        #   in Loop: Header=BB2_21 Depth=1
	add	r1, 1
	sub	r2, 1
	cmp	r2, r6
	beq	__LBB2_23
	br	__LBB2_21
__LBB2_22:                              # %if.end53
	addsp	-8
	lsw	r0, -8                          # 2-byte Folded Reload
	jsr	check_Wall
	addsp	8
	ldi	r5, __L.str.6
	cmp	r0, r6
	bne	__LBB2_24
	br	__LBB2_23
__LBB2_23:                              # %return.sink.split
	ldi	r4, 0
	addsp	-8
	movens	r5, r0
	jsr	PrintToTTY
	addsp	8
__LBB2_24:                              # %return
	movens	r4, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	12
	pop	fp
	rts
                                        # -- End function
### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	73
	db	108
	db	108
	db	101
	db	103
	db	97
	db	108
	db	32
	db	98
	db	108
	db	111
	db	99
	db	107
	db	32
	db	40
	db	54
	db	32
	db	105
	db	110
	db	32
	db	114
	db	111
	db	119
	db	41
	db	10
	db	0

__L.str.1:                              # @.str.1
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	78
	db	111
	db	116
	db	32
	db	121
	db	111
	db	117
	db	114
	db	32
	db	99
	db	104
	db	101
	db	99
	db	107
	db	101
	db	114
	db	33
	db	10
	db	0

__L.str.2:                              # @.str.2
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	80
	db	111
	db	105
	db	110
	db	116
	db	32
	db	99
	db	97
	db	112
	db	116
	db	117
	db	114
	db	101
	db	100
	db	32
	db	98
	db	121
	db	32
	db	111
	db	112
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	db	33
	db	10
	db	0

__L.str.3:                              # @.str.3
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	73
	db	110
	db	118
	db	97
	db	108
	db	105
	db	100
	db	32
	db	100
	db	105
	db	115
	db	116
	db	10
	db	0

__L.str.4:                              # @.str.4
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	72
	db	101
	db	97
	db	100
	db	32
	db	114
	db	117
	db	108
	db	101
	db	10
	db	0

__L.str.5:                              # @.str.5
	db	10
	db	69
	db	114
	db	114
	db	58
	db	32
	db	68
	db	105
	db	99
	db	101
	db	32
	db	100
	db	111
	db	101
	db	115
	db	110
	db	96
	db	116
	db	32
	db	101
	db	120
	db	105
	db	115
	db	116
	db	115
	db	10
	db	0

__L.str.6:                              # @.str.6
	db	10
	db	90
	db	97
	db	98
	db	111
	db	114
	db	10
	db	0

end.
