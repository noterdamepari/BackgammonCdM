### SECTION: .text
rsect _src_main_c_1804289383



macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-2
	ldi	r0, 0
	ssw	r0, -2
	addsp	2
	pop	fp
	rts
                                        # -- End function
end.
