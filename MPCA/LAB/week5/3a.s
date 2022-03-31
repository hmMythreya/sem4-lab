Ldr R10,=A
Ldr R11,=B
Mov R3,#9 ;count Of Numbers
Mov R0,#0 ;acts As Acc
Loop:
Ldr R1,[R10],#4
Ldr R2,[R11],#4
Mla R0,R1,R2,R0 ; R0 = (r1 * R2) + R0 , Multiply-Accumulate Instruction
Sub R3,R3,#1
Teq R3,#0
Bne Loop
Swi 0x11
A: .word 1,2,3,4,5,6,7,8,9
B: .word 1,2,3,4,5,6,7,8,9