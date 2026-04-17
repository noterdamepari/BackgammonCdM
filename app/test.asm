### SECTION: .text


memset, memcpy: ext
rsect _src_test_c_1804289383

PrintToTTY: ext
_player: ext
_points: ext


macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	addsp	-8
	ldi	r0, __L.str
	jsr	PrintToTTY
	addsp	8
	ldi	r0, in
	ldw	r0, r0
	ldi	r2, -97
	ldi	r3, 255
	ldi	r6, 25
__LBB0_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldb	r0, r1
	add r1, r2, r1
	and r1, r3, r1
	cmp	r1, r6
	bhi	__LBB0_1
	br	__LBB0_2
__LBB0_2:                               # %getc.exit
	addsp	-8
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	addsp	8
	ldi	r0, _player
	ldi	r1, 1
	stb	r0, r1
	ldi	r1, 2
	ldi	r5, _points
	ldi	r0, 11
	ldi	r4, 50
	movens	r1, r2
__LBB0_3:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldi	r3, 1
	stw	r1, r5, r3
	stw	r1, r5, r2
	ldi	r3, 3
	stw	r1, r5, r3
	ldi	r3, 4
	stw	r1, r5, r3
	ldi	r3, 5
	stw	r1, r5, r3
	ldi	r3, 6
	stw	r1, r5, r3
	ldi	r3, 7
	stw	r1, r5, r3
	ldi	r3, 8
	stw	r1, r5, r3
	ldi	r3, 9
	stw	r1, r5, r3
	ldi	r3, 10
	stw	r1, r5, r3
	stw	r1, r5, r0
	add	r1, 2
	cmp	r1, r4
	bne	__LBB0_3
	br	__LBB0_4
__LBB0_4:                               # %for.cond.cleanup
	addsp	-8
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	addsp	8
	ldi	r0, in
	ldw	r0, r0
	ldi	r2, -97
	ldi	r3, 255
__LBB0_5:                               # %while.cond.i54
                                        # =>This Inner Loop Header: Depth=1
	ldb	r0, r1
	add r1, r2, r1
	and r1, r3, r1
	cmp	r1, r6
	bhi	__LBB0_5
	br	__LBB0_6
__LBB0_6:                               # %for.cond15.preheader.preheader
	ldi	r0, 2
	ldi	r6, 0
__LBB0_7:                               # %for.cond15.preheader
                                        # =>This Inner Loop Header: Depth=1
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	stw	r0, r5, r6
	add	r0, 2
	cmp	r0, r4
	bne	__LBB0_7
	br	__LBB0_8
__LBB0_8:                               # %for.cond.cleanup12
	addsp	-8
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	addsp	8
	ldi	r0, _player
	stb	r0, r6
	ldi	r1, 2
	ldi	r0, 9
	ldi	r2, 10
	ldi	r3, 11
__LBB0_9:                               # %for.cond32.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldi	r6, 1
	stw	r1, r5, r6
	ldi	r6, 2
	stw	r1, r5, r6
	ldi	r6, 3
	stw	r1, r5, r6
	ldi	r6, 4
	stw	r1, r5, r6
	ldi	r6, 5
	stw	r1, r5, r6
	ldi	r6, 6
	stw	r1, r5, r6
	ldi	r6, 7
	stw	r1, r5, r6
	ldi	r6, 8
	stw	r1, r5, r6
	stw	r1, r5, r0
	stw	r1, r5, r2
	stw	r1, r5, r3
	add	r1, 2
	cmp	r1, r4
	bne	__LBB0_9
	br	__LBB0_10
__LBB0_10:                              # %for.cond.cleanup29
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
in>                                     # @in
	dc	57006

### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	68
	db	101
	db	99
	db	114
	db	101
	db	97
	db	115
	db	101
	db	32
	db	115
	db	105
	db	109
	db	117
	db	108
	db	97
	db	116
	db	105
	db	111
	db	110
	db	32
	db	115
	db	112
	db	101
	db	101
	db	100
	db	10
	db	73
	db	116
	db	32
	db	119
	db	105
	db	108
	db	108
	db	32
	db	104
	db	101
	db	108
	db	112
	db	32
	db	121
	db	111
	db	117
	db	32
	db	116
	db	111
	db	32
	db	102
	db	105
	db	110
	db	100
	db	32
	db	98
	db	117
	db	103
	db	115
	db	10
	db	80
	db	114
	db	101
	db	115
	db	115
	db	32
	db	97
	db	110
	db	121
	db	32
	db	98
	db	117
	db	116
	db	116
	db	111
	db	110
	db	32
	db	116
	db	111
	db	32
	db	115
	db	116
	db	97
	db	114
	db	116
	db	58
	db	32
	db	0

__L.str.1:                              # @.str.1
	db	10
	db	87
	db	104
	db	105
	db	116
	db	101
	db	32
	db	116
	db	101
	db	115
	db	116
	db	32
	db	115
	db	116
	db	97
	db	114
	db	116
	db	0

__L.str.2:                              # @.str.2
	db	10
	db	80
	db	114
	db	101
	db	115
	db	115
	db	32
	db	97
	db	110
	db	121
	db	32
	db	98
	db	117
	db	116
	db	116
	db	111
	db	110
	db	32
	db	116
	db	111
	db	32
	db	99
	db	111
	db	110
	db	116
	db	105
	db	110
	db	117
	db	101
	db	46
	db	46
	db	46
	db	0

__L.str.3:                              # @.str.3
	db	10
	db	66
	db	108
	db	97
	db	99
	db	107
	db	32
	db	116
	db	101
	db	115
	db	116
	db	32
	db	115
	db	116
	db	97
	db	114
	db	116
	db	0

end.
