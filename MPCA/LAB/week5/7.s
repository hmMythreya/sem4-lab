;	Write a program in ARM7TDMI-ISA to find   the ROWSUM of a matrix.

Ldr R10,=A
Ldr R11,=c
Mov R3,#9 
Mov R0,#0 
Loop:
Ldr R1,[R10],#4
add r2,r1,r2
add r0,r0,#1
cmp r0,#3
streq r2,[r11],#4
moveq r0,#0
Sub R3,R3,#1
Teq R3,#0
Bne Loop
Swi 0x11
A: .word 1,2,3,4,5,6,7,8,9
c: .word 0,0,0