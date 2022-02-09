MOV r1,#5
MOV r2,#1
B fact
fact:
	MUL r2,r1,r2
	SUB r1,#1
	CMP r1,#1
	BNE fact
	SWI 0X011

.END