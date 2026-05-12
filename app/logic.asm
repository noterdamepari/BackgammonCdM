### SECTION: .text
rsect _src_logic_c_1804289383

print_to_tty: ext
_amt_of_checkers: ext
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
	addsp	-2
	ssw	r4, -2                          # 2-byte Folded Spill
	sub r1, r0, r3
	ldi	r4, 1
	cmp	r2, r4
	bne	__LBB0_4
	br	__LBB0_1
__LBB0_1:                               # %if.then
	ldi	r0, -1
	cmp	r3, r4
	blt	__LBB0_3
# %bb.2:                                # %if.then
	movens	r3, r0
__LBB0_3:                               # %if.then
	br	__LBB0_10
__LBB0_4:                               # %if.else
	ldi	r2, 11
	cmp	r0, r2
	bgt	__LBB0_6
	br	__LBB0_5
__LBB0_5:                               # %if.else
	ldi	r0, -1
	cmp	r1, r2
	bgt	__LBB0_10
	br	__LBB0_6
__LBB0_6:                               # %if.end13
	movens	r3, r1
	add	r1, 24
	ldi	r2, 0
	cmp	r3, r2
	blt	__LBB0_8
# %bb.7:                                # %if.end13
	movens	r3, r1
__LBB0_8:                               # %if.end13
	ldi	r0, -1
	cmp	r1, r2
	beq	__LBB0_10
# %bb.9:                                # %if.end13
	movens	r1, r0
__LBB0_10:                              # %cleanup
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	2
	pop	fp
	rts
                                        # -- End function
zabor_rule>                             # -- Begin function zabor_rule
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-14
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r1, _player
	ldb	r1, r0
	ldi	r3, 1
	ldi	r2, 0
	cmp	r0, r2
	movens	r3, r0
	beq	__LBB1_2
# %bb.1:                                # %entry
	movens	r2, r3
__LBB1_2:                               # %entry
	ldi	r2, _amt_of_checkers
	ldsb	r3, r2, r3
	ldi	r2, 11
	cmp	r3, r2
	blt	__LBB1_43
	br	__LBB1_3
__LBB1_3:                               # %if.end
	ldb	r1, r3
	ldi	r4, 23
	ldi	r0, 1
	cmp	r3, r0
	bne	__LBB1_5
# %bb.4:                                # %if.end
	movens	r2, r4
__LBB1_5:                               # %if.end
	ssw	r4, -14                         # 2-byte Folded Spill
	ldb	r1, r0
	ldi	r2, 1
	cmp	r0, r2
	movens	r2, r4
	beq	__LBB1_7
# %bb.6:                                # %if.end
	ldi	r4, 2
__LBB1_7:                               # %if.end
	ssw	r3, -12                         # 2-byte Folded Spill
	cmp	r3, r2
	ssw	r2, -8                          # 2-byte Folded Spill
	bne	__LBB1_9
# %bb.8:                                # %if.end
	ldi	r0, 2
	ssw	r0, -8                          # 2-byte Folded Spill
__LBB1_9:                               # %if.end
	ldi	r6, 0
	ldi	r0, _colors
__LBB1_10:                              # %for.cond18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
	ldsb	r6, r0, r1
	cmp	r4, r1
	ldi	r3, 0
	bne	__LBB1_41
	br	__LBB1_11
__LBB1_11:                              # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 22
	cmp	r6, r1
	ldi	r1, -23
	bgt	__LBB1_13
# %bb.12:                               # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movens	r2, r1
__LBB1_13:                              # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r1, r1
	ldsb	r1, r0, r1
	cmp	r4, r1
	movens	r2, r3
	bne	__LBB1_41
	br	__LBB1_14
__LBB1_14:                              # %for.inc.1
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 21
	cmp	r6, r1
	ldi	r1, -22
	bgt	__LBB1_16
# %bb.15:                               # %for.inc.1
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 2
__LBB1_16:                              # %for.inc.1
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r1, r1
	ldsb	r1, r0, r1
	cmp	r4, r1
	ldi	r3, 2
	bne	__LBB1_41
	br	__LBB1_17
__LBB1_17:                              # %for.inc.2
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 20
	cmp	r6, r1
	ldi	r1, -21
	bgt	__LBB1_19
# %bb.18:                               # %for.inc.2
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 3
__LBB1_19:                              # %for.inc.2
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r1, r1
	ldsb	r1, r0, r1
	cmp	r4, r1
	ldi	r3, 3
	bne	__LBB1_41
	br	__LBB1_20
__LBB1_20:                              # %for.inc.3
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 19
	cmp	r6, r1
	ldi	r1, -20
	bgt	__LBB1_22
# %bb.21:                               # %for.inc.3
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 4
__LBB1_22:                              # %for.inc.3
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r1, r1
	ldsb	r1, r0, r1
	cmp	r4, r1
	ldi	r3, 4
	bne	__LBB1_41
	br	__LBB1_23
__LBB1_23:                              # %for.inc.4
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 18
	cmp	r6, r1
	ldi	r1, -19
	bgt	__LBB1_25
# %bb.24:                               # %for.inc.4
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 5
__LBB1_25:                              # %for.inc.4
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r1, r1
	ldsb	r1, r0, r1
	cmp	r4, r1
	ldi	r3, 5
	bne	__LBB1_41
	br	__LBB1_26
__LBB1_26:                              # %if.then38
                                        #   in Loop: Header=BB1_10 Depth=1
	movens	r6, r5
	add	r5, 6
	sxt	r5, r1
	lsw	r3, -12                         # 2-byte Folded Reload
	cmp	r3, r2
	beq	__LBB1_28
	br	__LBB1_27
__LBB1_27:                              # %if.then38
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r2, 12
	cmp	r1, r2
	blt	__LBB1_40
	br	__LBB1_28
__LBB1_28:                              # %get_dst.exit
                                        #   in Loop: Header=BB1_10 Depth=1
	lsw	r2, -14                         # 2-byte Folded Reload
	sub r2, r1, r1
	movens	r1, r3
	add	r3, 24
	ldi	r2, 0
	cmp	r1, r2
	blt	__LBB1_30
# %bb.29:                               # %get_dst.exit
                                        #   in Loop: Header=BB1_10 Depth=1
	movens	r1, r3
__LBB1_30:                              # %get_dst.exit
                                        #   in Loop: Header=BB1_10 Depth=1
	ldi	r1, 0
	cmp	r3, r1
	ldi	r1, -1
	beq	__LBB1_32
# %bb.31:                               # %get_dst.exit
                                        #   in Loop: Header=BB1_10 Depth=1
	sxt	r3, r1
__LBB1_32:                              # %get_dst.exit
                                        #   in Loop: Header=BB1_10 Depth=1
	cmp	r1, r2
	blt	__LBB1_40
	br	__LBB1_33
__LBB1_33:                              # %for.body48.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	add	r1, 1
	ssw	r4, -10                         # 2-byte Folded Spill
	br	__LBB1_35
__LBB1_35:                              # %for.body48
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movens	r0, r4
	movens	r5, r3
	sub	r3, 24
	ldi	r2, 23
	cmp	r5, r2
	bgt	__LBB1_37
# %bb.36:                               # %for.body48
                                        #   in Loop: Header=BB1_35 Depth=2
	movens	r5, r3
__LBB1_37:                              # %for.body48
                                        #   in Loop: Header=BB1_35 Depth=2
	movens	r3, r2
	sub	r2, 24
	ldi	r0, 23
	cmp	r3, r0
	bgt	__LBB1_39
# %bb.38:                               # %for.body48
                                        #   in Loop: Header=BB1_35 Depth=2
	movens	r3, r2
__LBB1_39:                              # %for.body48
                                        #   in Loop: Header=BB1_35 Depth=2
	movens	r4, r0
	ldsb	r2, r0, r2
	lsw	r3, -8                          # 2-byte Folded Reload
	cmp	r3, r2
	ldi	r3, 6
	ldi	r2, 1
	lsw	r4, -10                         # 2-byte Folded Reload
	beq	__LBB1_41
	br	__LBB1_34
__LBB1_34:                              # %for.cond43
                                        #   in Loop: Header=BB1_35 Depth=2
	add	r5, 1
	sub	r1, 1
	ldi	r2, 0
	cmp	r1, r2
	beq	__LBB1_40
	br	__LBB1_35
__LBB1_41:                              # %for.inc87
                                        #   in Loop: Header=BB1_10 Depth=1
	add r6, r3, r6
	add	r6, 1
	ldi	r1, 24
	cmp	r6, r1
	blt	__LBB1_10
	br	__LBB1_42
__LBB1_40:                              # %cleanup84
	ldi	r0, __L.str
	jsr	print_to_tty
	ldi	r2, 0
	br	__LBB1_42
__LBB1_42:                              # %cleanup89
	movens	r2, r0
__LBB1_43:                              # %return
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	14
	pop	fp
	rts
                                        # -- End function
is_move_valid>                          # -- Begin function is_move_valid
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-14
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ssw	r3, -10                         # 2-byte Folded Spill
	ldi	r3, _player
	ldb	r3, r4
	ldi	r3, 1
	ssw	r4, -8                          # 2-byte Folded Spill
	cmp	r4, r3
	beq	__LBB2_2
# %bb.1:                                # %entry
	ldi	r3, 2
__LBB2_2:                               # %entry
	ldb	r0, r6
	ldi	r4, _colors
	ldsb	r6, r4, r5
	cmp	r3, r5
	ldi	r5, 0
	bne	__LBB2_4
	br	__LBB2_3
__LBB2_3:                               # %lor.lhs.false
	shl	r6, r3, 1
	ldi	r5, _points+2
	ldw	r3, r5, r3
	ldi	r5, 0
	ldi	r4, 0
	cmp	r3, r4
	bne	__LBB2_5
	br	__LBB2_4
__LBB2_5:                               # %if.end12
	ldi	r3, _player
	ldb	r3, r5
	ldi	r3, 2
	ldi	r4, 1
	cmp	r5, r4
	beq	__LBB2_7
# %bb.6:                                # %if.end12
	movens	r4, r3
__LBB2_7:                               # %if.end12
	ldb	r0, r4, r0
	ldi	r4, _colors
	ldsb	r0, r4, r4
	cmp	r3, r4
	bne	__LBB2_9
	br	__LBB2_8
__LBB2_8:                               # %if.then25
	ldi	r1, __L.str.2
	ldi	r0, 1
	lsw	r2, -8                          # 2-byte Folded Reload
	cmp	r2, r0
	ldi	r0, 0
	ldi	r5, 0
	beq	__LBB2_31
	br	__LBB2_32
__LBB2_4:                               # %if.then
	ldi	r1, __L.str.1
	ldi	r0, 1
	lsw	r2, -8                          # 2-byte Folded Reload
	cmp	r2, r0
	movens	r5, r0
	beq	__LBB2_31
	br	__LBB2_32
__LBB2_31:                              # %cleanup82.sink.split
	movens	r1, r0
	jsr	print_to_tty
	movens	r5, r0
__LBB2_32:                              # %cleanup82
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	14
	pop	fp
	rts
__LBB2_9:                               # %if.end30
	ssw	r6, -14                         # 2-byte Folded Spill
	sxt	r6, r3
	sxt	r0, r6
	sub r6, r3, r4
	ldi	r0, _player
	ldb	r0, r5
	ldi	r0, 1
	cmp	r5, r0
	bne	__LBB2_13
	br	__LBB2_10
__LBB2_10:                              # %if.then.i
	ldi	r3, -1
	ssw	r3, -12                         # 2-byte Folded Spill
	ldi	r3, 1
	cmp	r4, r3
	blt	__LBB2_12
# %bb.11:                               # %if.then.i
	ssw	r4, -12                         # 2-byte Folded Spill
__LBB2_12:                              # %if.then.i
	br	__LBB2_19
__LBB2_13:                              # %if.else.i
	ldi	r5, 11
	cmp	r3, r5
	bgt	__LBB2_15
	br	__LBB2_14
__LBB2_14:                              # %if.else.i
	cmp	r6, r5
	bgt	__LBB2_20
	br	__LBB2_15
__LBB2_15:                              # %if.end13.i
	movens	r4, r5
	add	r4, 24
	ldi	r3, 0
	cmp	r5, r3
	blt	__LBB2_17
# %bb.16:                               # %if.end13.i
	movens	r5, r4
__LBB2_17:                              # %if.end13.i
	ldi	r3, -1
	ssw	r3, -12                         # 2-byte Folded Spill
	ldi	r3, 0
	cmp	r4, r3
	beq	__LBB2_19
# %bb.18:                               # %if.end13.i
	ssw	r4, -12                         # 2-byte Folded Spill
__LBB2_19:                              # %get_dst.exit
	lsw	r3, -12                         # 2-byte Folded Reload
	sub	r3, 7
	ldi	r4, -7
	cmp	r3, r4
	bhi	__LBB2_21
	br	__LBB2_20
__LBB2_20:                              # %if.then39
	ldi	r1, __L.str.3
	lsw	r2, -8                          # 2-byte Folded Reload
	cmp	r2, r0
	ldi	r0, 0
	ldi	r5, 0
	beq	__LBB2_31
	br	__LBB2_32
__LBB2_21:                              # %if.end44
	ldi	r3, _player
	ldb	r3, r3
	ldi	r4, 0
	cmp	r3, r0
	movens	r4, r3
	beq	__LBB2_23
# %bb.22:                               # %if.end44
	ldi	r3, 12
__LBB2_23:                              # %if.end44
	lsw	r5, -10                         # 2-byte Folded Reload
	cmp	r5, r4
	ldi	r5, 0
	lsw	r4, -14                         # 2-byte Folded Reload
	bne	__LBB2_25
	br	__LBB2_24
__LBB2_24:                              # %if.end44
	cmp	r3, r4
	beq	__LBB2_27
	br	__LBB2_25
__LBB2_27:                              # %if.then57
	ldi	r0, 0
	ldi	r1, __L.str.4
	ldi	r2, 1
	lsw	r3, -8                          # 2-byte Folded Reload
	cmp	r3, r2
	beq	__LBB2_31
	br	__LBB2_32
__LBB2_25:                              # %for.cond.preheader
	cmp	r2, r0
	lsw	r6, -12                         # 2-byte Folded Reload
	blt	__LBB2_30
	br	__LBB2_26
__LBB2_26:                              # %for.body.preheader
	ldi	r3, 0
	br	__LBB2_29
__LBB2_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r4
	cmp	r6, r4
	beq	__LBB2_32
	br	__LBB2_28
__LBB2_28:                              # %for.cond
                                        #   in Loop: Header=BB2_29 Depth=1
	add	r1, 1
	sub	r2, 1
	cmp	r2, r3
	beq	__LBB2_30
	br	__LBB2_29
__LBB2_30:                              # %if.then72
	ldi	r2, 0
	ldi	r1, __L.str.5
	lsw	r3, -8                          # 2-byte Folded Reload
	cmp	r3, r0
	movens	r2, r0
	bne	__LBB2_32
	br	__LBB2_31
                                        # -- End function
is_all_in_home>                         # -- Begin function is_all_in_home
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r2, _player
	ldb	r2, r0
	ldi	r1, 255
	stb	r2, r1
	ldi	r2, 1
	cmp	r0, r2
	bne	__LBB3_5
	br	__LBB3_1
__LBB3_1:                               # %for.body.preheader
	ldi	r1, 0
	ldi	r3, _points+2
	ldi	r5, _colors
	ldi	r4, 1
	ldi	r6, 18
	movens	r1, r2
__LBB3_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldb	r2, r5, r0
	cmp	r0, r4
	bne	__LBB3_4
	br	__LBB3_3
__LBB3_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	ldw	r3, r0
	cmp	r0, r1
	movens	r1, r0
	bne	__LBB3_42
	br	__LBB3_4
__LBB3_4:                               # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	add	r3, 2
	add	r2, 1
	cmp	r2, r6
	movens	r4, r0
	beq	__LBB3_42
	br	__LBB3_2
__LBB3_5:                               # %if.else
	ldi	r0, _colors+12
	ldb	r0, r0
	ldi	r3, 2
	cmp	r0, r3
	bne	__LBB3_7
	br	__LBB3_6
__LBB3_6:                               # %land.lhs.true21
	ldi	r0, _points+26
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_7
__LBB3_7:                               # %for.inc27
	ldi	r0, _colors+13
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_9
	br	__LBB3_8
__LBB3_8:                               # %land.lhs.true21.1
	ldi	r0, _points+28
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_9
__LBB3_9:                               # %for.inc27.1
	ldi	r0, _colors+14
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_11
	br	__LBB3_10
__LBB3_10:                              # %land.lhs.true21.2
	ldi	r0, _points+30
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_11
__LBB3_11:                              # %for.inc27.2
	ldi	r0, _colors+15
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_13
	br	__LBB3_12
__LBB3_12:                              # %land.lhs.true21.3
	ldi	r0, _points+32
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_13
__LBB3_13:                              # %for.inc27.3
	ldi	r0, _colors+16
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_15
	br	__LBB3_14
__LBB3_14:                              # %land.lhs.true21.4
	ldi	r0, _points+34
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_15
__LBB3_15:                              # %for.inc27.4
	ldi	r0, _colors+17
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_17
	br	__LBB3_16
__LBB3_16:                              # %land.lhs.true21.5
	ldi	r0, _points+36
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_17
__LBB3_17:                              # %for.inc27.5
	ldi	r0, _colors+18
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_19
	br	__LBB3_18
__LBB3_18:                              # %land.lhs.true21.6
	ldi	r0, _points+38
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_19
__LBB3_19:                              # %for.inc27.6
	ldi	r0, _colors+19
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_21
	br	__LBB3_20
__LBB3_20:                              # %land.lhs.true21.7
	ldi	r0, _points+40
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_21
__LBB3_21:                              # %for.inc27.7
	ldi	r0, _colors+20
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_23
	br	__LBB3_22
__LBB3_22:                              # %land.lhs.true21.8
	ldi	r0, _points+42
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_23
__LBB3_23:                              # %for.inc27.8
	ldi	r0, _colors+21
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_25
	br	__LBB3_24
__LBB3_24:                              # %land.lhs.true21.9
	ldi	r0, _points+44
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_25
__LBB3_25:                              # %for.inc27.9
	ldi	r0, _colors+22
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_27
	br	__LBB3_26
__LBB3_26:                              # %land.lhs.true21.10
	ldi	r0, _points+46
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_27
__LBB3_27:                              # %for.inc27.10
	ldi	r0, _colors+23
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_29
	br	__LBB3_28
__LBB3_28:                              # %land.lhs.true21.11
	ldi	r0, _points+48
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r4, r0
	bne	__LBB3_42
	br	__LBB3_29
__LBB3_29:                              # %for.inc27.11
	ldi	r5, 0
	ldi	r0, _colors
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_31
	br	__LBB3_30
__LBB3_30:                              # %land.lhs.true42
	ldi	r0, _points+2
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_41
	br	__LBB3_31
__LBB3_31:                              # %for.inc49
	ldi	r0, _colors+1
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_33
	br	__LBB3_32
__LBB3_32:                              # %land.lhs.true42.1
	ldi	r0, _points+4
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_41
	br	__LBB3_33
__LBB3_33:                              # %for.inc49.1
	ldi	r0, _colors+2
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_35
	br	__LBB3_34
__LBB3_34:                              # %land.lhs.true42.2
	ldi	r0, _points+6
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_41
	br	__LBB3_35
__LBB3_35:                              # %for.inc49.2
	ldi	r0, _colors+3
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_37
	br	__LBB3_36
__LBB3_36:                              # %land.lhs.true42.3
	ldi	r0, _points+8
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_41
	br	__LBB3_37
__LBB3_37:                              # %for.inc49.3
	ldi	r0, _colors+4
	ldb	r0, r0
	cmp	r0, r3
	bne	__LBB3_39
	br	__LBB3_38
__LBB3_38:                              # %land.lhs.true42.4
	ldi	r0, _points+10
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_41
	br	__LBB3_39
__LBB3_39:                              # %for.inc49.4
	ldi	r0, _colors+5
	ldb	r0, r0
	cmp	r0, r3
	movens	r5, r4
	movens	r2, r0
	bne	__LBB3_42
	br	__LBB3_40
__LBB3_40:                              # %land.lhs.true42.5
	ldi	r0, _points+12
	ldw	r0, r0
	ldi	r4, 0
	cmp	r0, r4
	movens	r2, r0
	beq	__LBB3_42
	br	__LBB3_41
__LBB3_41:                              # %cleanup51
	movens	r5, r4
	movens	r5, r0
__LBB3_42:                              # %return
	ldi	r1, _player
	stb	r1, r4
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
validate_bear_off>                      # -- Begin function validate_bear_off
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-12
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	movens	r2, r3
	ldi	r6, _player
	ldb	r6, r4
	ldi	r2, 1
	cmp	r4, r2
	beq	__LBB4_2
# %bb.1:                                # %entry
	ldi	r2, 2
__LBB4_2:                               # %entry
	ldi	r4, _colors
	ldsb	r0, r4, r5
	cmp	r2, r5
	bne	__LBB4_4
	br	__LBB4_3
__LBB4_3:                               # %lor.lhs.false
	shl	r0, r2, 1
	ldi	r4, _points+2
	ldw	r2, r4, r2
	ldi	r4, 0
	cmp	r2, r4
	bne	__LBB4_5
	br	__LBB4_4
__LBB4_5:                               # %if.end
	ldb	r6, r5
	ldi	r2, 24
	ldi	r4, 1
	cmp	r5, r4
	beq	__LBB4_7
# %bb.6:                                # %if.end
	ldi	r2, 12
__LBB4_7:                               # %if.end
	ssw	r0, -10                         # 2-byte Folded Spill
	sub r2, r0, r2
	ssw	r2, -8                          # 2-byte Folded Spill
	cmp	r3, r4
	blt	__LBB4_12
	br	__LBB4_8
__LBB4_8:                               # %for.body.preheader
	ldi	r0, 0
	movens	r1, r6
	movens	r3, r2
	br	__LBB4_10
__LBB4_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldb	r6, r4
	lsw	r5, -8                          # 2-byte Folded Reload
	cmp	r5, r4
	bne	__LBB4_9
	br	__LBB4_11
__LBB4_9:                               # %for.cond
                                        #   in Loop: Header=BB4_10 Depth=1
	add	r6, 1
	sub	r2, 1
	cmp	r2, r0
	beq	__LBB4_12
	br	__LBB4_10
__LBB4_12:                              # %for.end
	ldi	r0, _player
	ldb	r0, r4
	ldi	r2, 18
	ldi	r5, 1
	cmp	r4, r5
	beq	__LBB4_14
# %bb.13:                               # %for.end
	ldi	r2, 6
__LBB4_14:                              # %for.end
	ldb	r0, r4
	ssw	r4, -12                         # 2-byte Folded Spill
	ldi	r5, 255
	stb	r0, r5
	lsw	r0, -10                         # 2-byte Folded Reload
	cmp	r0, r2
	bls	__LBB4_20
	br	__LBB4_15
__LBB4_15:                              # %for.body36.preheader
	ldi	r4, _colors
	add r2, r4, r4
	sub r0, r2, r0
	shl	r2, r2, 1
	ldi	r6, _points+2
	add r2, r6, r6
	lsw	r2, -12                         # 2-byte Folded Reload
	and r2, r5, r5
	ssw	r5, -10                         # 2-byte Folded Spill
__LBB4_16:                              # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ldb	r4, r2
	cmp	r2, r5
	bne	__LBB4_18
	br	__LBB4_17
__LBB4_17:                              # %land.lhs.true
                                        #   in Loop: Header=BB4_16 Depth=1
	ldw	r6, r2
	ldi	r5, 0
	cmp	r2, r5
	lsw	r5, -10                         # 2-byte Folded Reload
	bne	__LBB4_19
	br	__LBB4_18
__LBB4_18:                              # %for.inc47
                                        #   in Loop: Header=BB4_16 Depth=1
	add	r4, 1
	add	r6, 2
	sub	r0, 1
	ldi	r2, 0
	cmp	r0, r2
	beq	__LBB4_20
	br	__LBB4_16
__LBB4_20:                              # %if.then52
	ldi	r0, _player
	lsw	r2, -12                         # 2-byte Folded Reload
	stb	r0, r2
	ldi	r0, 1
	cmp	r3, r0
	blt	__LBB4_28
	br	__LBB4_21
__LBB4_21:                              # %for.body58.preheader
	ldi	r5, 7
	ldi	r0, 0
	movens	r5, r4
	lsw	r6, -8                          # 2-byte Folded Reload
	br	__LBB4_23
__LBB4_23:                              # %for.body58
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r2
	cmp	r5, r2
	blt	__LBB4_25
# %bb.24:                               # %for.body58
                                        #   in Loop: Header=BB4_23 Depth=1
	movens	r2, r4
__LBB4_25:                              # %for.body58
                                        #   in Loop: Header=BB4_23 Depth=1
	cmp	r6, r2
	blt	__LBB4_27
# %bb.26:                               # %for.body58
                                        #   in Loop: Header=BB4_23 Depth=1
	movens	r5, r4
__LBB4_27:                              # %for.body58
                                        #   in Loop: Header=BB4_23 Depth=1
	add	r1, 1
	sub	r3, 1
	cmp	r3, r0
	movens	r4, r5
	beq	__LBB4_22
	br	__LBB4_23
__LBB4_22:                              # %for.cond.cleanup57
	ldi	r0, 7
	cmp	r4, r0
	beq	__LBB4_28
	br	__LBB4_29
__LBB4_4:                               # %if.then
	ldi	r4, 0
	ldi	r0, __L.str.1
	jsr	print_to_tty
	br	__LBB4_29
__LBB4_11:                              # %cleanup.thread
	lsw	r4, -8                          # 2-byte Folded Reload
	br	__LBB4_29
__LBB4_19:                              # %cleanup49
	ldi	r0, _player
	lsw	r1, -12                         # 2-byte Folded Reload
	stb	r0, r1
	br	__LBB4_28
__LBB4_28:                              # %if.end83
	ldi	r0, __L.str.6
	jsr	print_to_tty
	ldi	r4, 0
__LBB4_29:                              # %cleanup88
	sxt	r4, r0
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
	db	69
	db	114
	db	114
	db	58
	db	32
	db	78
	db	111
	db	32
	db	118
	db	97
	db	108
	db	105
	db	100
	db	32
	db	100
	db	105
	db	99
	db	101
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
	db	10
	db	0

end.
