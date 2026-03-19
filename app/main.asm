### SECTION: .text
rsect _src_main_c_1804289383

move_checker: ext
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
	addsp	-12
	ssw	r4, -2                          # 2-byte Folded Spill
	ldi	r0, 0
	ssw	r0, -4
	ldi	r1, _stateReg
	stb	r1, r0
	ldi	r2, _points
	ldi	r1, 11
	stw	r2, r1
	ldi	r1, __L.str
	shr	r1, r2, 8
	ldi	r3, -8
	add	r3, fp, r3
	ldi	r4, 1
	stb	r3, r4, r2
	ssb	r1, -8
	ssw	r0, -10
	br	__LBB0_1
__LBB0_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -10
	ldi	r1, 6
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_2
__LBB0_2:                               # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, -8
	add	r0, fp, r0
	ldi	r1, 1
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -8
	or r0, r1, r0
	lsw	r1, -10
	ldb	r0, r1, r0
	ldi	r1, -8529
	stb	r1, r0
	br	__LBB0_3
__LBB0_3:                               # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB0_1
__LBB0_4:                               # %for.end
	br	__LBB0_5
__LBB0_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldi	r0, input_addr
	ldb	r0, r1
	ldi	r0, input_addr+1
	ldb	r0, r0
	shl	r0, r0, 8
	or r0, r1, r0
	ldb	r0, r0
	ssb	r0, -5
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_7
	br	__LBB0_6
__LBB0_6:                               # %while.body
                                        #   in Loop: Header=BB0_5 Depth=1
	br	__LBB0_5
__LBB0_7:                               # %while.end
	lsb	r0, -5
	ldi	r1, -97
	add r0, r1, r0
	ssb	r0, -5
	ldi	r0, __L.str.1
	shr	r0, r1, 8
	ldi	r2, -8
	add	r2, fp, r2
	ldi	r3, 1
	stb	r2, r3, r1
	ssb	r0, -8
	ldi	r0, 0
	ssw	r0, -12
	br	__LBB0_8
__LBB0_8:                               # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -12
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB0_11
	br	__LBB0_9
__LBB0_9:                               # %for.body6
                                        #   in Loop: Header=BB0_8 Depth=1
	ldi	r0, -8
	add	r0, fp, r0
	ldi	r1, 1
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -8
	or r0, r1, r0
	lsw	r1, -12
	ldb	r0, r1, r0
	ldi	r1, -8529
	stb	r1, r0
	br	__LBB0_10
__LBB0_10:                              # %for.inc8
                                        #   in Loop: Header=BB0_8 Depth=1
	lsw	r0, -12
	add	r0, 1
	ssw	r0, -12
	br	__LBB0_8
__LBB0_11:                              # %for.end10
	br	__LBB0_12
__LBB0_12:                              # %while.cond11
                                        # =>This Inner Loop Header: Depth=1
	ldi	r0, input_addr
	ldb	r0, r1
	ldi	r0, input_addr+1
	ldb	r0, r0
	shl	r0, r0, 8
	or r0, r1, r0
	ldb	r0, r0
	ssb	r0, -6
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_14
	br	__LBB0_13
__LBB0_13:                              # %while.body14
                                        #   in Loop: Header=BB0_12 Depth=1
	br	__LBB0_12
__LBB0_14:                              # %while.end15
	lsb	r0, -6
	ldi	r1, -97
	add r0, r1, r0
	ssb	r0, -6
	lssb	r0, -5
	lssb	r1, -6
	jsr	move_checker
	lsw	r0, -4
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	12
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
input_addr>                             # @input_addr
	dc	57005

### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	102
	db	114
	db	111
	db	109
	db	58
	db	32
	db	0

__L.str.1:                              # @.str.1
	db	10
	db	116
	db	111
	db	58
	db	32
	db	0

end.
