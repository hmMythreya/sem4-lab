.DATA
	ARRAY: .WORD 17,20,6,25,1
	SEARCH: .WORD 5
	RESULT: .WORD 0

.TEXT
	LDR R0,=ARRAY
	LDR R1,=SEARCH
	LDR R5,=RESULT
	MOV R2,#0

LDR R4,[R1]
LOOP1:
	CMP R2,#5
	BEQ FINISH
	LDR R3,[R0],#4
	CMP R3,R4
	BEQ FOUND
	ADD R2,R2,#1
	B LOOP1

FOUND:
	MOV R6,#0
	STR R6,[R5]
	B END	

FINISH:
	MOV R6,#1
	STR R6,[R5]
	B END

END:
	SWI 0X011
	
	
	
	
