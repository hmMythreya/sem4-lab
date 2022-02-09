.text
	mov r0, #10
	mov r1, #5
	cmp r0,r1
	beq equ
	sub r2,r1,r0
	b finish

equ:
	add r2,r0,r1
finish:
	SWI 0x011