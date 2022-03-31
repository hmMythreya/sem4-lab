.DATA
    a: .word 3,4,5,6,2,3,1,5,6,-1

.TEXT
    LDR R0,=a
    LDR R1,[R0]
    MOV R4,#1

LOOP: 
    LDR R2,[R0,#4]
    CMP R2,R1
    MOVLT R1,R2
    ADD R0,R0,#4
    ADD R4,R4,#1
    CMP R4,#10
    BNE LOOP
    SWI 0X011