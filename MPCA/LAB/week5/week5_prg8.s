.DATA
A: .asciz "123458"
SUM: .WORD 0
.TEXT
LDR R0,=A
MOV R5,#0
LDR R3,=SUM

LOOP:
CMP R5,#6
BEQ ENDL
LDRB R4, [R0], #1
SUB R4,R4,#48
ADD R6,R6,R4
ADD R5,R5,#1
B LOOP

ENDL: STR R6,[R3] 
      SWI 0X011
