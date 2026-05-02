### SECTION: .text
rsect _src_ai_c_1804289383

PrintToTTY: ext
randomize: ext
is_all_in_home: ext
validate_bear_off: ext
isMoveValid: ext
move_checker: ext
zabor_rule: ext
remove_checker: ext
get_dst: ext
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
	addsp	-42
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	movens	r0, r4
	ldi	r0, __L.str
	jsr	PrintToTTY
	jsr	randomize
	ldi	r0, _player
	ldi	r1, 0
	stb	r0, r1
	ssw	r4, -34                         # 2-byte Folded Spill
	ldb	r4, r0
	cmp	r0, r1
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
	lsw	r1, -34                         # 2-byte Folded Reload
	stb	r1, r0
__LBB0_3:                               # %if.end3
	ldi	r4, 1
	ldi	r5, 2
	ldi	r0, _random
	ldb	r0, r2
	ldi	r0, _random+1
	ldb	r0, r0
	cmp	r2, r0
	ldi	r6, -12
	ssw	r0, -42                         # 2-byte Folded Spill
	ssw	r4, -28                         # 2-byte Folded Spill
	ssw	r2, -40                         # 2-byte Folded Spill
	bne	__LBB0_5
	br	__LBB0_4
__LBB0_4:                               # %if.then6
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	lsw	r2, -40                         # 2-byte Folded Reload
	add	r6, fp, r0
	ldi	r1, 3
	stb	r0, r1, r2
	ldi	r1, 2
	ssw	r1, -28                         # 2-byte Folded Spill
	stb	r0, r1, r2
	ldi	r5, 4
	movens	r2, r0
__LBB0_5:                               # %if.end12
	add	r6, fp, r1
	stb	r1, r4, r0
	ssb	r2, -12
	ldi	r2, 12
__LBB0_6:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_57 Depth 2
	cmp	r5, r4
	blt	__LBB0_42
	br	__LBB0_7
__LBB0_7:                               # %for.body.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r0, -1
	ssw	r0, -26                         # 2-byte Folded Spill
	ldi	r0, 255
	ssw	r0, -30                         # 2-byte Folded Spill
	movens	r0, r3
	ldi	r0, 0
	movens	r0, r1
	ssw	r0, -38                         # 2-byte Folded Spill
	ssw	r0, -32                         # 2-byte Folded Spill
	ssw	r5, -22                         # 2-byte Folded Spill
	br	__LBB0_9
__LBB0_10:                              # %for.cond.cleanup22
                                        #   in Loop: Header=BB0_9 Depth=2
	lsw	r1, -36                         # 2-byte Folded Reload
	add	r1, 1
	lsw	r5, -22                         # 2-byte Folded Reload
	cmp	r1, r5
	ldi	r6, -12
	beq	__LBB0_8
	br	__LBB0_9
__LBB0_9:                               # %for.body
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	add	r6, fp, r0
	ssw	r1, -36                         # 2-byte Folded Spill
	ldb	r0, r1, r0
	ssw	r0, -20                         # 2-byte Folded Spill
	ldi	r6, 0
	br	__LBB0_11
__LBB0_39:                              # %if.then83
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, 0
	ssw	r0, -32                         # 2-byte Folded Spill
	ssw	r5, -18                         # 2-byte Folded Spill
	ssw	r6, -30                         # 2-byte Folded Spill
	ssw	r4, -26                         # 2-byte Folded Spill
__LBB0_40:                              # %if.end85
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, -14
	add	r0, fp, r0
	ldi	r4, 1
	stb	r0, r4, r6
	ssb	r5, -14
	jsr	move_checker
	ldi	r2, 12
	lsw	r3, -18                         # 2-byte Folded Reload
__LBB0_41:                              # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=3
	add	r6, 1
	ldi	r0, 24
	cmp	r6, r0
	beq	__LBB0_10
	br	__LBB0_11
__LBB0_11:                              # %for.body23
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldi	r0, _colors
	ldb	r6, r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_41
	br	__LBB0_12
__LBB0_12:                              # %if.end29
                                        #   in Loop: Header=BB0_11 Depth=3
	lsw	r0, -20                         # 2-byte Folded Reload
	add r0, r6, r0
	sxt	r0, r0
	cmp	r6, r2
	ssw	r3, -18                         # 2-byte Folded Spill
	blo	__LBB0_16
	br	__LBB0_13
__LBB0_13:                              # %if.then35
                                        #   in Loop: Header=BB0_11 Depth=3
	movens	r0, r5
	sub	r5, 24
	ldi	r1, 23
	cmp	r0, r1
	bgt	__LBB0_15
# %bb.14:                               # %if.then35
                                        #   in Loop: Header=BB0_11 Depth=3
	movens	r0, r5
__LBB0_15:                              # %if.then35
                                        #   in Loop: Header=BB0_11 Depth=3
	br	__LBB0_21
__LBB0_16:                              # %if.else43
                                        #   in Loop: Header=BB0_11 Depth=3
	cmp	r0, r2
	movens	r0, r5
	blt	__LBB0_21
	br	__LBB0_17
__LBB0_17:                              # %if.then47
                                        #   in Loop: Header=BB0_11 Depth=3
	lsw	r0, -34                         # 2-byte Folded Reload
	ldb	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_41
	br	__LBB0_18
__LBB0_18:                              # %if.then57
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, -8
	add	r0, fp, r0
	ldi	r1, 24
	stb	r0, r4, r1
	ssb	r6, -8
	ldi	r0, 255
	and r6, r0, r0
	ldi	r1, -12
	add	r1, fp, r1
	lsw	r2, -22                         # 2-byte Folded Reload
	jsr	validate_bear_off
	lsw	r3, -18                         # 2-byte Folded Reload
	ldi	r2, 12
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_41
	br	__LBB0_19
__LBB0_19:                              # %if.then57
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r1, 999
	lsw	r5, -26                         # 2-byte Folded Reload
	cmp	r5, r1
	bgt	__LBB0_41
	br	__LBB0_20
__LBB0_20:                              # %if.then65
                                        #   in Loop: Header=BB0_11 Depth=3
	ssw	r4, -32                         # 2-byte Folded Spill
	ssw	r0, -38                         # 2-byte Folded Spill
	ldi	r0, 24
	movens	r0, r3
	ssw	r6, -30                         # 2-byte Folded Spill
	ldi	r0, 1000
	ssw	r0, -26                         # 2-byte Folded Spill
	br	__LBB0_41
__LBB0_21:                              # %if.else68
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, -8
	add	r0, fp, r0
	stb	r0, r4, r5
	ssb	r6, -8
	ldi	r1, -12
	add	r1, fp, r1
	lsw	r2, -22                         # 2-byte Folded Reload
	lsw	r3, -28                         # 2-byte Folded Reload
	jsr	isMoveValid
	lsw	r3, -18                         # 2-byte Folded Reload
	ldi	r2, 12
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_41
	br	__LBB0_22
__LBB0_22:                              # %if.then73
                                        #   in Loop: Header=BB0_11 Depth=3
	cmp	r6, r2
	ldi	r0, 80
	beq	__LBB0_24
# %bb.23:                               # %if.then73
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, 0
__LBB0_24:                              # %if.then73
                                        #   in Loop: Header=BB0_11 Depth=3
	sxt	r5, r1
	ssw	r1, -24                         # 2-byte Folded Spill
	add	r1, 1
	shl	r1, r3, 1
	ldi	r2, _points
	ldw	r3, r2, r4
	ldi	r2, 0
	cmp	r4, r2
	bne	__LBB0_28
	br	__LBB0_25
__LBB0_28:                              # %if.else.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r2, _points
	add r3, r2, r3
	ldw	r3, r3
	ldi	r2, 2
	cmp	r3, r2
	ldi	r2, 1
	blo	__LBB0_30
	br	__LBB0_29
__LBB0_29:                              # %if.then24.i
                                        #   in Loop: Header=BB0_11 Depth=3
	sub	r0, 60
	lsw	r3, -24                         # 2-byte Folded Reload
	br	__LBB0_31
__LBB0_25:                              # %if.then8.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r2, 255
	and r5, r2, r3
	ldi	r2, 6
	cmp	r3, r2
	ldi	r3, 100
	ldi	r2, 1
	blo	__LBB0_27
# %bb.26:                               # %if.then8.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r3, 60
__LBB0_27:                              # %if.then8.i
                                        #   in Loop: Header=BB0_11 Depth=3
	add r3, r0, r0
	lsw	r3, -24                         # 2-byte Folded Reload
	br	__LBB0_31
__LBB0_30:                              # %if.else25.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r3, 10
	or r0, r3, r0
	lsw	r3, -24                         # 2-byte Folded Reload
__LBB0_31:                              # %if.end28.i
                                        #   in Loop: Header=BB0_11 Depth=3
	cmp	r3, r2
	blt	__LBB0_35
	br	__LBB0_32
__LBB0_32:                              # %if.end41.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r2, _colors-1
	ldb	r3, r2, r2
	movens	r0, r4
	add	r4, 50
	ldi	r3, 2
	cmp	r2, r3
	beq	__LBB0_34
# %bb.33:                               # %if.end41.i
                                        #   in Loop: Header=BB0_11 Depth=3
	movens	r0, r4
__LBB0_34:                              # %if.end41.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, 255
	and r5, r0, r0
	ldi	r2, 22
	cmp	r0, r2
	movens	r4, r0
	bhi	__LBB0_37
	br	__LBB0_35
__LBB0_35:                              # %land.lhs.true45.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r2, _colors
	ldb	r1, r2, r1
	movens	r0, r4
	add	r4, 50
	ldi	r2, 2
	cmp	r1, r2
	beq	__LBB0_37
# %bb.36:                               # %land.lhs.true45.i
                                        #   in Loop: Header=BB0_11 Depth=3
	movens	r0, r4
__LBB0_37:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_11 Depth=3
	ldi	r0, -8
	add	r0, fp, r0
	jsr	move_checker
	jsr	zabor_rule
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB0_40
	br	__LBB0_38
__LBB0_38:                              # %evaluate_move.exit
                                        #   in Loop: Header=BB0_11 Depth=3
	lsw	r0, -26                         # 2-byte Folded Reload
	cmp	r4, r0
	ble	__LBB0_40
	br	__LBB0_39
__LBB0_8:                               # %for.cond.cleanup
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r0, -1
	lsw	r1, -26                         # 2-byte Folded Reload
	cmp	r1, r0
	beq	__LBB0_42
	br	__LBB0_43
__LBB0_43:                              # %if.end99
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, -16
	add	r2, fp, r0
	stb	r0, r4, r3
	lsw	r0, -30                         # 2-byte Folded Reload
	ssw	r0, -30                         # 2-byte Folded Spill
	ssb	r0, -16
	ldi	r5, 255
	lsw	r0, -32                         # 2-byte Folded Reload
	and r0, r5, r0
	ldi	r1, 0
	cmp	r0, r1
	movens	r3, r5
	ssw	r5, -18                         # 2-byte Folded Spill
	beq	__LBB0_53
	br	__LBB0_44
__LBB0_44:                              # %if.then103
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r0, -30                         # 2-byte Folded Reload
	ldi	r1, 255
	and r0, r1, r0
	jsr	remove_checker
	lsw	r5, -22                         # 2-byte Folded Reload
	cmp	r5, r4
	lsw	r3, -38                         # 2-byte Folded Reload
	blt	__LBB0_49
	br	__LBB0_45
__LBB0_45:                              # %for.body110.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r0, 0
__LBB0_46:                              # %for.body110
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	r6, fp, r1
	ldb	r1, r0, r1
	cmp	r3, r1
	bne	__LBB0_48
	br	__LBB0_47
__LBB0_48:                              # %for.inc120
                                        #   in Loop: Header=BB0_46 Depth=2
	add	r0, 1
	lsw	r5, -22                         # 2-byte Folded Reload
	cmp	r5, r0
	bne	__LBB0_46
	br	__LBB0_49
__LBB0_53:                              # %if.else146
                                        #   in Loop: Header=BB0_6 Depth=1
	add	r2, fp, r0
	jsr	move_checker
	ldi	r0, _player
	ldsb	r0, r2
	sxt	r5, r1
	lsw	r5, -30                         # 2-byte Folded Reload
	sxt	r5, r0
	jsr	get_dst
	ldi	r1, 255
	and r5, r1, r1
	ldi	r2, 12
	cmp	r1, r2
	movens	r4, r1
	beq	__LBB0_55
# %bb.54:                               # %if.else146
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r1, 0
__LBB0_55:                              # %if.else146
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r2, -22                         # 2-byte Folded Reload
	cmp	r2, r4
	blt	__LBB0_60
	br	__LBB0_56
__LBB0_56:                              # %for.body162.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, 0
__LBB0_57:                              # %for.body162
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	r6, fp, r3
	ldb	r3, r2, r3
	cmp	r0, r3
	bne	__LBB0_59
	br	__LBB0_58
__LBB0_59:                              # %for.inc173
                                        #   in Loop: Header=BB0_57 Depth=2
	add	r2, 1
	lsw	r3, -22                         # 2-byte Folded Reload
	cmp	r3, r2
	bne	__LBB0_57
	br	__LBB0_60
__LBB0_47:                              # %if.then115
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r5, -22                         # 2-byte Folded Reload
	sub	r5, 1
	add	r6, fp, r1
	ldb	r1, r5, r2
	stb	r1, r0, r2
	br	__LBB0_49
__LBB0_49:                              # %cleanup122
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r0, -42                         # 2-byte Folded Reload
	lsw	r1, -40                         # 2-byte Folded Reload
	cmp	r1, r0
	beq	__LBB0_52
	br	__LBB0_50
__LBB0_52:                              # %if.else140
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, 2
	cmp	r5, r2
	ldi	r1, _random+1
	beq	__LBB0_64
	br	__LBB0_65
__LBB0_50:                              # %if.then128
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r1, _random
	ldsb	r1, r0
	cmp	r3, r0
	movens	r5, r2
	beq	__LBB0_64
	br	__LBB0_51
__LBB0_51:                              # %if.else133
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r1, _random+1
	ldsb	r1, r0
	cmp	r3, r0
	movens	r5, r2
	beq	__LBB0_64
	br	__LBB0_65
__LBB0_58:                              # %if.then167
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r4, -22                         # 2-byte Folded Reload
	sub	r4, 1
	add	r6, fp, r3
	ssw	r4, -22                         # 2-byte Folded Spill
	ldb	r3, r4, r4
	stb	r3, r2, r4
	ldi	r4, 1
	br	__LBB0_60
__LBB0_60:                              # %cleanup175
                                        #   in Loop: Header=BB0_6 Depth=1
	lsw	r2, -28                         # 2-byte Folded Reload
	sub r2, r1, r2
	ssw	r2, -28                         # 2-byte Folded Spill
	lsw	r1, -42                         # 2-byte Folded Reload
	lsw	r2, -40                         # 2-byte Folded Reload
	cmp	r2, r1
	beq	__LBB0_63
	br	__LBB0_61
__LBB0_63:                              # %if.else193
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, 2
	lsw	r5, -22                         # 2-byte Folded Reload
	cmp	r5, r2
	ldi	r1, _random+1
	bne	__LBB0_65
	br	__LBB0_64
__LBB0_61:                              # %if.then181
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, _random
	ldsb	r2, r1
	cmp	r0, r1
	movens	r2, r1
	lsw	r5, -22                         # 2-byte Folded Reload
	movens	r5, r2
	beq	__LBB0_64
	br	__LBB0_62
__LBB0_62:                              # %if.else186
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r2, _random+1
	ldsb	r2, r1
	cmp	r0, r1
	movens	r2, r1
	movens	r5, r2
	beq	__LBB0_64
	br	__LBB0_65
__LBB0_64:                              # %cleanup206.sink.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r0, 0
	stb	r1, r0
	movens	r2, r5
__LBB0_65:                              # %cleanup206
                                        #   in Loop: Header=BB0_6 Depth=1
	ldi	r0, 97
	movens	r0, r1
	lsw	r0, -30                         # 2-byte Folded Reload
	add r0, r1, r0
	ldi	r1, -8528
	stb	r1, r0
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	lsw	r0, -18                         # 2-byte Folded Reload
	ldi	r1, 97
	add r0, r1, r0
	ldi	r1, -8528
	stb	r1, r0
	ldi	r0, __L.str.5
	jsr	PrintToTTY
	ldi	r0, 0
	cmp	r5, r0
	ldi	r2, 12
	bne	__LBB0_6
	br	__LBB0_66
__LBB0_42:                              # %cleanup206.thread
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	br	__LBB0_66
__LBB0_66:                              # %while.end
	ldi	r0, 255
	ldi	r1, _player
	stb	r1, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	42
	pop	fp
	rts
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
	db	67
	db	111
	db	109
	db	112
	db	117
	db	116
	db	101
	db	114
	db	32
	db	112
	db	97
	db	115
	db	115
	db	101
	db	100
	db	46
	db	0

__L.str.4:                              # @.str.4
	db	32
	db	45
	db	62
	db	32
	db	0

__L.str.5:                              # @.str.5
	db	10
	db	0

end.
