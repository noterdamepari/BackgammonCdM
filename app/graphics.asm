### SECTION: .text


memset, memcpy: ext
rsect _src_graphics_c_1804289383

_points: ext
_player: ext
_colors: ext
_amt_of_checkers: ext


macro movens/2
push $1
pop $2
mend

move_checker>                           # -- Begin function move_checker
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ldi	r3, 1
	ldb	r0, r3, r1
	shl	r1, r1, 1
	ldi	r2, _points+2
	ldw	r1, r2, r4
	movens	r4, r5
	add	r5, 1
	stw	r1, r2, r5
	ldi	r1, 0
	cmp	r4, r1
	bne	__LBB0_2
	br	__LBB0_1
__LBB0_1:                               # %if.then
	ldi	r4, _player
	ldb	r4, r4
	ldb	r0, r3, r3
	ldi	r5, _colors
	stb	r3, r5, r4
__LBB0_2:                               # %if.end
	ldb	r0, r3
	shl	r3, r3, 1
	ldw	r3, r2, r4
	sub	r4, 1
	stw	r3, r2, r4
	cmp	r4, r1
	bne	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               # %if.then11
	ldb	r0, r0
	ldi	r2, _colors
	stb	r0, r2, r1
__LBB0_4:                               # %if.end15
	ldi	r0, 0
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	4
	pop	fp
	rts
                                        # -- End function
remove_checker>                         # -- Begin function remove_checker
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	shl	r0, r1, 1
	ldi	r2, _points+2
	ldw	r1, r2, r3
	sub	r3, 1
	stw	r1, r2, r3
	ldi	r1, 0
	cmp	r3, r1
	bne	__LBB1_2
	br	__LBB1_1
__LBB1_1:                               # %if.then
	ldi	r2, _colors
	stb	r0, r2, r1
__LBB1_2:                               # %if.end
	ldi	r0, _player
	ldsb	r0, r0
	ldi	r1, _amt_of_checkers
	ldb	r0, r1, r2
	sub	r2, 1
	stb	r0, r1, r2
	ldi	r0, 0
	pop	fp
	rts
                                        # -- End function
PrintToTTY>                             # -- Begin function PrintToTTY
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-2
	ssw	r4, -2                          # 2-byte Folded Spill
	ldb	r0, r2
	ldi	r1, 0
	cmp	r2, r1
	beq	__LBB2_3
	br	__LBB2_1
__LBB2_1:                               # %while.body.preheader
	add	r0, 1
	ldi	r3, out
__LBB2_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldw	r3, r4
	stb	r4, r2
	ldb	r0, r2
	add	r0, 1
	cmp	r2, r1
	bne	__LBB2_2
	br	__LBB2_3
__LBB2_3:                               # %while.end
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	2
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
out>                                    # @out
	dc	57008

end.
