.DATA
    A: .WORD 15
.TEXT
    MOV R0,#1
    MOV R9,#0
    MOV R2,#15
loop:
    AND R3,R2,#1
    AND R9,R9,r3
    AND R0,R0,#1
    MOV R2,R2,LSR #1
    CMP R0,#5
    BNE loop
    BEQ exit
exit:
    SWI 0x11
.end