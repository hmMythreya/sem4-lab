.DATA 
    A:.WORD 5,10,15,20,25,30,35,40,45
    SUMVAL:.WORD 0,0,0
.TEXT
    LDR R0,=A
    LDR R5,=SUMVAL
    MOV R1,#0
    MOV R2,#0
    MOV R7,#0
LOOP: 
    CMP R7,#3
    BEQ ENDL
    LDR R6,[R0]
    ADD R1,R1,R6
    ADD R2,R2,#1
    ADD R0,R0,#4
    CMP R2,#3
    BEQ L1
    BNE LOOP
L1: 
    STR R1,[R5]
    ADD R5,R5,#4
    ADD R7,R7,#1
    MOV R1,#0
    MOV R2,#0
    B LOOP
ENDL:
    SWI 0X011