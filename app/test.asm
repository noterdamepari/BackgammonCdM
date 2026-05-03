### SECTION: .text
rsect _src_test_c_1804289383

print_to_tty: ext
getc: ext
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
	ldi	r0, __L.str
	jsr	print_to_tty
	jsr	getc
	ldi	r0, __L.str.1
	jsr	print_to_tty
	ldi	r0, _player
	ldi	r1, 1
	stb	r0, r1
	ldi	r1, 2
	ldi	r5, _points
	ldi	r0, 10
	ldi	r3, 11
	ldi	r4, 50
	movens	r1, r2
__LBB0_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldi	r6, 1
	stw	r1, r5, r6
	stw	r1, r5, r2
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
	ldi	r6, 9
	stw	r1, r5, r6
	stw	r1, r5, r0
	stw	r1, r5, r3
	add	r1, 2
	cmp	r1, r4
	bne	__LBB0_1
	br	__LBB0_2
__LBB0_2:                               # %for.cond.cleanup
	ldi	r0, __L.str.2
	jsr	print_to_tty
	jsr	getc
	ldi	r0, 2
	ldi	r6, 0
__LBB0_3:                               # %for.cond15.preheader
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
	bne	__LBB0_3
	br	__LBB0_4
__LBB0_4:                               # %for.cond.cleanup12
	ldi	r0, __L.str.3
	jsr	print_to_tty
	ldi	r0, _player
	stb	r0, r6
	ldi	r2, 2
	ldi	r0, 9
	ldi	r3, 10
	ldi	r6, 11
__LBB0_5:                               # %for.cond32.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldi	r1, 1
	stw	r2, r5, r1
	ldi	r1, 2
	stw	r2, r5, r1
	ldi	r1, 3
	stw	r2, r5, r1
	ldi	r1, 4
	stw	r2, r5, r1
	ldi	r1, 5
	stw	r2, r5, r1
	ldi	r1, 6
	stw	r2, r5, r1
	ldi	r1, 7
	stw	r2, r5, r1
	ldi	r1, 8
	stw	r2, r5, r1
	stw	r2, r5, r0
	stw	r2, r5, r3
	stw	r2, r5, r6
	ldi	r1, 12
	stw	r2, r5, r1
	add	r2, 2
	cmp	r2, r4
	bne	__LBB0_5
	br	__LBB0_6
__LBB0_6:                               # %for.cond.cleanup29
	ldi	r0, __L.str.4
	jsr	print_to_tty
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

__L.str.4:                              # @.str.4
	db	10
	db	84
	db	101
	db	115
	db	116
	db	115
	db	32
	db	102
	db	105
	db	110
	db	105
	db	115
	db	104
	db	101
	db	100
	db	0

end.
