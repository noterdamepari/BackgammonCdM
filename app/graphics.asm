### SECTION: .text
rsect _src_graphics_c_1804289383

_points: ext
_colors: ext
_stateReg: ext


macro movens/2
push $1
pop $2
mend

move_checker>                           # -- Begin function move_checker
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-2
                                        # kill: def $r2 killed $r1
                                        # kill: def $r2 killed $r0
	ssb	r0, -1
	ssb	r1, -2
	lssb	r0, -1
	shl	r0, r1, 1
	ldi	r2, _points
	ldw	r1, r2, r0
	sub	r0, 1
	stw	r1, r2, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_2
	br	__LBB0_1
__LBB0_1:                               # %if.then
	lssb	r1, -1
	ldi	r2, _colors
	ldi	r0, 255
	stb	r1, r2, r0
	br	__LBB0_2
__LBB0_2:                               # %if.end
	lssb	r0, -2
	shl	r0, r0, 1
	ldi	r1, _points
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               # %if.then6
	ldi	r0, _stateReg
	ldb	r0, r0
	lssb	r1, -2
	ldi	r2, _colors
	stb	r1, r2, r0
	br	__LBB0_4
__LBB0_4:                               # %if.end9
	lssb	r0, -2
	shl	r0, r1, 1
	ldi	r2, _points
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	ldi	r0, 0
	addsp	2
	pop	fp
	rts
                                        # -- End function
end.
