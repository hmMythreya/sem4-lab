.text
	mov r0, #123
	mov r1, #456
	add r2,r0,r1
	sub r3,r1,r0
	SWI 0x011

.end