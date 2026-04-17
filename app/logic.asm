### SECTION: .text


memset, memcpy: ext
rsect _src_logic_c_1804289383

PrintToTTY: ext
_player: ext
_colors: ext
_points: ext
_random: ext


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
isMoveValid>                            # -- Begin function isMoveValid
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ssw	r3, -8                          # 2-byte Folded Spill
	ldi	r5, __L.str
	ldi	r4, _colors
	ldb	r0, r4, r3
	ldi	r6, _player
	ldb	r6, r6
	cmp	r3, r6
	bne	__LBB1_22
	br	__LBB1_1
__LBB1_1:                               # %lor.lhs.false
	shl	r0, r3, 1
	ldi	r6, _points+2
	ldw	r3, r6, r3
	ldi	r6, 0
	cmp	r3, r6
	beq	__LBB1_22
	br	__LBB1_2
__LBB1_2:                               # %if.end
	ldi	r3, _player
	ldb	r3, r6
	ldi	r3, 2
	ldi	r5, 1
	cmp	r6, r5
	beq	__LBB1_4
# %bb.3:                                # %if.end
	movens	r5, r3
__LBB1_4:                               # %if.end
	ldsb	r1, r4, r4
	ldi	r5, __L.str.1
	cmp	r3, r4
	ldi	r6, 0
	beq	__LBB1_22
	br	__LBB1_5
__LBB1_5:                               # %if.end16
	sxt	r0, r3
	sxt	r1, r1
	sub r1, r3, r5
	ldi	r1, _player
	ldb	r1, r1
	ldi	r4, 1
	cmp	r1, r4
	bne	__LBB1_9
	br	__LBB1_6
__LBB1_6:                               # %if.then.i
	ldi	r1, -1
	ssw	r1, -10                         # 2-byte Folded Spill
	ldi	r1, 1
	cmp	r5, r1
	blt	__LBB1_8
# %bb.7:                                # %if.then.i
	ssw	r5, -10                         # 2-byte Folded Spill
__LBB1_8:                               # %if.then.i
	br	__LBB1_13
__LBB1_9:                               # %if.else.i
	movens	r5, r1
	add	r1, 24
	cmp	r5, r6
	blt	__LBB1_11
# %bb.10:                               # %if.else.i
	movens	r5, r1
__LBB1_11:                              # %if.else.i
	ldi	r3, -1
	ssw	r3, -10                         # 2-byte Folded Spill
	cmp	r1, r6
	beq	__LBB1_13
# %bb.12:                               # %if.else.i
	ssw	r1, -10                         # 2-byte Folded Spill
__LBB1_13:                              # %get_dst.exit
	ldi	r5, __L.str.2
	lsw	r1, -10                         # 2-byte Folded Reload
	sub	r1, 7
	ldi	r3, -6
	cmp	r1, r3
	blo	__LBB1_22
	br	__LBB1_14
__LBB1_14:                              # %if.end23
	ldi	r1, _player
	ldb	r1, r1
	cmp	r1, r4
	beq	__LBB1_16
# %bb.15:                               # %if.end23
	ldi	r6, 12
__LBB1_16:                              # %if.end23
	lsw	r1, -8                          # 2-byte Folded Reload
	cmp	r1, r4
	blt	__LBB1_18
	br	__LBB1_17
__LBB1_17:                              # %if.end23
	ldi	r5, __L.str.3
	cmp	r6, r0
	beq	__LBB1_22
	br	__LBB1_18
__LBB1_18:                              # %for.cond.preheader
	ldi	r5, __L.str.4
	cmp	r2, r4
	blt	__LBB1_22
	br	__LBB1_19
__LBB1_19:                              # %for.body.preheader
	ldi	r0, _random
	ldi	r3, 0
	br	__LBB1_21
__LBB1_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldsb	r0, r1
	lsw	r6, -10                         # 2-byte Folded Reload
	cmp	r6, r1
	beq	__LBB1_23
	br	__LBB1_20
__LBB1_20:                              # %for.cond
                                        #   in Loop: Header=BB1_21 Depth=1
	add	r0, 1
	sub	r2, 1
	cmp	r2, r3
	beq	__LBB1_22
	br	__LBB1_21
__LBB1_22:                              # %return.sink.split
	ldi	r4, 0
	addsp	-8
	movens	r5, r0
	jsr	PrintToTTY
	addsp	8
__LBB1_23:                              # %return
	movens	r4, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
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

__L.str.1:                              # @.str.1
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

__L.str.2:                              # @.str.2
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

__L.str.3:                              # @.str.3
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

__L.str.4:                              # @.str.4
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

end.
