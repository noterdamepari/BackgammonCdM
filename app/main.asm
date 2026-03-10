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
	ldi	r1, _stateReg
	ldi	r0, 1
	stb	r1, r0
	ldi	r1, _points
	stw	r1, r0
	ldi	r1, _points+2
	ldi	r0, 2
	stw	r1, r0
	ldi	r1, _points+4
	ldi	r0, 3
	stw	r1, r0
	ldi	r1, _points+6
	ldi	r0, 4
	stw	r1, r0
	ldi	r1, _points+8
	ldi	r0, 5
	stw	r1, r0
	ldi	r1, _points+10
	ldi	r0, 6
	stw	r1, r0
	ldi	r1, _points+46
	ldi	r0, 7
	stw	r1, r0
	ldi	r0, 0
	rts
                                        # -- End function
end.
