.DATA	
A: .word 1,3,5
B: .word 2,4,6
C: .word
.TEXT
LDR R5,=A
LDR R6,=B
LDR R7,=C
MOV R3, #3  ;  number of elements in array 
MOV R4, #0	
Loop: 
	LDR R1, [R5], #4
	LDR R2, [R6], #4
	MUL R0, R1, R2   ;multiple R1 And R2 And Store Result In R0 
	ADD R4, R4, R0
	STR R4, [R7], #4
        SUB R3, R3, #1
	TEQ R3, #0       ; Test For Equality
	BNE Loop
	SWI 0x11      ; Interrupt For Termination Of Program