### SECTION: .text


memset, memcpy: ext
rsect _src_graphics_c_1804289383

_colors: ext
_points: ext
_amt_of_checkers: ext
_player: ext


macro movens/2
push $1
pop $2
mend

move_checker>                           # -- Begin function move_checker
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldb	r0, r2
	ldi	r1, _colors
	ldb	r2, r1, r4
	ldi	r5, 1
	ldb	r0, r5, r2
	shl	r2, r2, 1
	ldi	r3, _points+2
	ldw	r2, r3, r1
	movens	r1, r6
	add	r6, 1
	stw	r2, r3, r6
	ldi	r2, 0
	cmp	r1, r2
	bne	__LBB0_2
	br	__LBB0_1
__LBB0_1:                               # %if.then
	ldb	r0, r5, r1
	ldi	r5, _colors
	stb	r1, r5, r4
__LBB0_2:                               # %if.end
	ldb	r0, r1
	shl	r1, r1, 1
	ldw	r1, r3, r4
	sub	r4, 1
	stw	r1, r3, r4
	cmp	r4, r2
	stw	r1, r3, r4
	cmp	r4, r2
	bne	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               # %if.then14
	ldb	r0, r0
	ldi	r1, _colors
	stb	r0, r1, r2
__LBB0_4:                               # %if.end18
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
remove_checker>                         # -- Begin function remove_checker
# %bb.0:                                # %entry
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
getc>                                   # -- Begin function getc
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-2
	ssw	r4, -2                          # 2-byte Folded Spill
	ldi	r0, in
	ldw	r0, r1
	ldi	r2, -97
	ldi	r3, 255
	ldi	r4, 25
__LBB3_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r0
	add r0, r2, r0
	and r0, r3, r0
	cmp	r0, r4
	bhi	__LBB3_1
	br	__LBB3_2
__LBB3_2:                               # %if.then
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	2
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
out>                                    # @out
out>                                    # @out
	dc	57008

in>                                     # @in
	dc	57006

end.
