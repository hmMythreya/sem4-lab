.DATA
	A: .WORD 23,12,16,17,5

.TEXT
	LDR R0,=A
	MOV R1,#0
	B LOOP1

LOOP1:
	LDR R2,[R0],#4
	ADD R3,R3,R2
	ADD R1,R1,#1
	CMP R1,#5
	BEQ LOOP2
	B LOOP1
LOOP2:
	SWI 0X011