### SECTION: .text
rsect _src_main_c_1804289383

_stateReg: ext
_points: ext


macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-18
	ldi	r0, 0
	ssw	r0, -2
	ldi	r1, _stateReg
	stb	r1, r0
	ssw	r0, -4
	br	__LBB0_1
__LBB0_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -4
	ldi	r1, 11
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_2
__LBB0_2:                               # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r1, 1
	ldi	r2, _points
	stw	r1, r2, r0
	ldi	r0, _stateReg
	ssw	r0, -12                         # 2-byte Folded Spill
	ldb	r0, r1
	ldi	r0, 1
	ldi	r2, 0
	ssw	r2, -10                         # 2-byte Folded Spill
	cmp	r1, r2
	ssw	r0, -8                          # 2-byte Folded Spill
	beq	__LBB0_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -10                         # 2-byte Folded Reload
	ssw	r0, -8                          # 2-byte Folded Spill
__LBB0_10:                              # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r1, -12                         # 2-byte Folded Reload
	lsw	r0, -8                          # 2-byte Folded Reload
	stb	r1, r0
	br	__LBB0_3
__LBB0_3:                               # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB0_1
__LBB0_4:                               # %for.end
	ldi	r1, _stateReg
	ldi	r0, 1
	stb	r1, r0
	ldi	r0, 12
	ssw	r0, -6
	br	__LBB0_5
__LBB0_5:                               # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -6
	ldi	r1, 19
	cmp	r0, r1
	bgt	__LBB0_8
	br	__LBB0_6
__LBB0_6:                               # %for.body5
                                        #   in Loop: Header=BB0_5 Depth=1
	lsw	r1, -6
	movens	r1, r0
	sub	r0, 12
	shl	r1, r1, 1
	ldi	r2, _points
	stw	r1, r2, r0
	ldi	r0, _stateReg
	ssw	r0, -18                         # 2-byte Folded Spill
	ldb	r0, r1
	ldi	r0, 1
	ldi	r2, 0
	ssw	r2, -16                         # 2-byte Folded Spill
	cmp	r1, r2
	ssw	r0, -14                         # 2-byte Folded Spill
	beq	__LBB0_12
# %bb.11:                               # %for.body5
                                        #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -16                         # 2-byte Folded Reload
	ssw	r0, -14                         # 2-byte Folded Spill
__LBB0_12:                              # %for.body5
                                        #   in Loop: Header=BB0_5 Depth=1
	lsw	r1, -18                         # 2-byte Folded Reload
	lsw	r0, -14                         # 2-byte Folded Reload
	stb	r1, r0
	br	__LBB0_7
__LBB0_7:                               # %for.inc11
                                        #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB0_5
__LBB0_8:                               # %for.end13
	lsw	r0, -2
	addsp	18
	pop	fp
	rts
                                        # -- End function
end.
