### SECTION: .text


memset, memcpy: ext
rsect _src_graphics_c_1804289383

_points: ext
_player: ext
_colors: ext


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
	shl	r1, r2, 1
	ldi	r3, _points+2
	ldw	r2, r3, r4
	movens	r4, r5
	add	r5, 1
	stw	r2, r3, r5
	ldi	r2, 0
	cmp	r4, r2
	bne	__LBB0_2
	br	__LBB0_1
__LBB0_1:                               # %if.then
	ldi	r4, _player
	ldb	r4, r4
	ldi	r5, _colors
	stb	r1, r5, r4
__LBB0_2:                               # %if.end
	shl	r0, r1, 1
	ldw	r1, r3, r4
	sub	r4, 1
	stw	r1, r3, r4
	cmp	r4, r2
	bne	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               # %if.then8
	ldi	r1, _colors
	stb	r0, r1, r2
__LBB0_4:                               # %if.end11
	ldi	r0, 0
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	4
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
	beq	__LBB1_3
	br	__LBB1_1
__LBB1_1:                               # %while.body.preheader
	add	r0, 1
	ldi	r3, out
__LBB1_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldw	r3, r4
	stb	r4, r2
	ldb	r0, r2
	add	r0, 1
	cmp	r2, r1
	bne	__LBB1_2
	br	__LBB1_3
__LBB1_3:                               # %while.end
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	2
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
out>                                    # @out
	dc	57008

end.
