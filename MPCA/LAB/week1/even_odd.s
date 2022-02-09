.text
	mov r1, #13
	ands r2,r1,#1
	beq even
	mov r0,#0xFF
	B finish
even:
	mov r0, #0x00
finish:
	SWI 0x011

.end