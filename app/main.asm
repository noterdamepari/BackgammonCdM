### SECTION: .text
rsect _src_main_c_1804289383

PrintToTTY: ext
move_checker: ext
_random1: ext
_random2: ext
_stateReg: ext
_points: ext


macro movens/2
push $1
pop $2
mend

randomize>                              # -- Begin function randomize
# %bb.0:                                # %entry
	rts
                                        # -- End function
player_move>                            # -- Begin function player_move
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, __L.str
	jsr	PrintToTTY
	ldi	r0, __L.str.1
	jsr	PrintToTTY
	ldi	r6, in
	ldw	r6, r0
	ldi	r4, 0
__LBB1_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldb	r0, r5
	cmp	r5, r4
	beq	__LBB1_1
	br	__LBB1_2
__LBB1_2:                               # %while.end
	ldi	r0, __L.str.2
	jsr	PrintToTTY
	ldw	r6, r1
__LBB1_3:                               # %while.cond2
                                        # =>This Inner Loop Header: Depth=1
	ldb	r1, r0
	cmp	r0, r4
	beq	__LBB1_3
	br	__LBB1_4
__LBB1_4:                               # %while.end6
	ldi	r2, -97
	add r0, r2, r1
	add r5, r2, r0
	sxt	r0, r2
	sxt	r1, r3
	sub r3, r2, r2
	ldi	r3, _random1
	ldsb	r3, r3
	ldi	r5, _random2
	ldsb	r5, r5
	add r5, r3, r3
	cmp	r2, r3
	ble	__LBB1_6
	br	__LBB1_5
__LBB1_5:                               # %if.then
	ldi	r0, __L.str.3
	jsr	PrintToTTY
	ldi	r4, 1
	br	__LBB1_7
__LBB1_6:                               # %if.end
	ldi	r2, 255
	and r0, r2, r0
	and r1, r2, r1
	jsr	move_checker
__LBB1_7:                               # %cleanup
	movens	r4, r0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	6
	pop	fp
	rts
                                        # -- End function
computer_move>                          # -- Begin function computer_move
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	0
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	addsp	0
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-2
	ssw	r4, -2                          # 2-byte Folded Spill
	ldi	r0, _stateReg
	ldi	r4, 0
	stb	r0, r4
	ldi	r0, _points
	ldi	r1, 11
	stw	r0, r1
	ldi	r0, _random1
	ldi	r1, 5
	stb	r0, r1
	ldi	r0, _random2
	ldi	r1, 2
	stb	r0, r1
__LBB3_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	jsr	player_move
	cmp	r0, r4
	bne	__LBB3_1
	br	__LBB3_2
__LBB3_2:                               # %while.end
	ldi	r0, __L.str.4
	jsr	PrintToTTY
	ldi	r0, 0
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	2
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
in>                                     # @in
	dc	57006

### SECTION: .rodata.str1.1
__L.str:                                # @.str
	db	89
	db	111
	db	117
	db	114
	db	32
	db	116
	db	117
	db	114
	db	110
	db	58
	db	10
	db	0

__L.str.1:                              # @.str.1
	db	102
	db	114
	db	111
	db	109
	db	58
	db	32
	db	0

__L.str.2:                              # @.str.2
	db	10
	db	116
	db	111
	db	58
	db	32
	db	0

__L.str.3:                              # @.str.3
	db	10
	db	89
	db	111
	db	117
	db	114
	db	32
	db	109
	db	111
	db	118
	db	101
	db	32
	db	105
	db	115
	db	32
	db	105
	db	110
	db	118
	db	97
	db	108
	db	105
	db	100
	db	33
	db	10
	db	0

__L.str.4:                              # @.str.4
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
	db	116
	db	117
	db	114
	db	110
	db	46
	db	46
	db	46
	db	10
	db	0

end.
