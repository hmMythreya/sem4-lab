.DATA
    a: .asciz "My name is Mythreya"
    b: .asciz "i"
.TEXT
    LDR r0,=a
    LDR r1,=b
    MOV r2,#0
    MOV r3,#0
    LDRB r4,[r1]

loop:
    ADD r2,r2,#1
    LDRB r1,[r0],#1
    CMP r4,r1
    BEQ count
    CMP r2,#11
    BEQ final
    B loop

count:
    ADD r3,r3,#1
    B loop

final:
    SWI 0x01