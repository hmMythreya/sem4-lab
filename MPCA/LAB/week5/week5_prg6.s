.DATA 
    A:.WORD 5,10,15,20,25,30,35,40,45
    SUMVAL:.WORD 0,0,0
.TEXT
    LDR R0,=A
    LDR R5,=SUMVAL
    MOV R1,#0
    MOV R2,#0
    MOV R7,#0
    MOV R6,R0
LOOP: 
    CMP R7,#3
    BEQ ENDL
    LDR R4,[R0]
    ADD R1,R1,R4
    ADD R2,R2,#1
    ADD R0,R0,#12
    CMP R2,#3
    BEQ L1
    BNE LOOP

L1: ADD R5,R5,#4 
    STR R1,[R5]
    ADD R6,R6,#4
    ADD R7,R7,#1
    MOV R1,#0
    MOV R2,#0
    MOV R0,R6
    B LOOP

L2: 
    MOV R1,R0
    ADD R0,R0,#4
    B LOOP2

ENDL: 
    LDR R0,=SUMVAL
    LDR R1,[R0]
    ADD R0,R0,#4
    MOV R6,#0
    LOOP2: 
    CMP R6,#3
    ADD R6,R6,#1
    BEQ ENDL1
    CMP R0,R1
    BGT L2
      
ENDL1: 
    SWI 0X011