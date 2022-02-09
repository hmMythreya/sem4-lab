LDR r0,=a
ldr r1,[r0]
mov r2,r1,LSL #6
;mov r3,r1,LSL #3
mov r3,r1,LSL #5
add r4,r2,r3
SWI 0x011
.Data
a:.word 0x00000005