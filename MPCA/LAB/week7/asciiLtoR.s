.data
    str: .asciz "MYTHREYA\n"

.text
    mov r0,#25
    mov r1,#3
    ldr r2,=str

loop:
    cmp r0,#0
    beq exit
    swi 0x204
    sub r0,r0,#1
    swi 0x206
    b loop

exit:
    swi 0x01