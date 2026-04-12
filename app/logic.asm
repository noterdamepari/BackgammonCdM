### SECTION: .text
rsect _src_logic_c_1804289383

_random: ext
_colors: ext


macro movens/2
push $1
pop $2
mend

isMoveValid>                            # -- Begin function isMoveValid
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	sub r1, r0, r3
	add	r3, 1
	ldi	r2, _random
	ldsb	r2, r4
	cmp	r3, r4
	beq	__LBB0_3
	br	__LBB0_1
__LBB0_1:                               # %land.lhs.true
	ldi	r4, _random+1
	ldsb	r4, r5
	cmp	r3, r5
	beq	__LBB0_3
	br	__LBB0_2
__LBB0_2:                               # %land.lhs.true11
	ldsb	r2, r2
	ldsb	r4, r4
	add r4, r2, r4
	ldi	r2, 0
	cmp	r3, r4
	bne	__LBB0_6
	br	__LBB0_3
__LBB0_3:                               # %if.end
	ldi	r2, _colors
	ldb	r0, r2, r0
	ldb	r1, r2, r3
	cmp	r0, r3
	beq	__LBB0_5
	br	__LBB0_4
__LBB0_4:                               # %land.lhs.true27
	ldb	r1, r2, r0
	ldi	r2, 0
	cmp	r0, r2
	bne	__LBB0_6
	br	__LBB0_5
__LBB0_5:                               # %if.end32
	ldi	r2, 1
__LBB0_6:                               # %return
	movens	r2, r0
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	4
	pop	fp
	rts
                                        # -- End function
end.
