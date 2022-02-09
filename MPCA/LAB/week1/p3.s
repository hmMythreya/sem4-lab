.text
	mov r0,#0
	cmp r0,#0
	moveq r1,#1
	beq finish
	movmi r1,#3
	bmi finish
	mov r1,#2

finish:
	SWI 0x011

.end