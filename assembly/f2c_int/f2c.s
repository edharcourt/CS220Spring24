.arch armv8-a
.global f2c
.text
.align 2

f2c:
    sub x0, x0, #32          // flexible second register
    mov x1, 5
    //mul x0, x0, x1 
    add x0, x0, x0, lsl #2   // x0 = x0 + x0*4 = x0*5
    mov x1, #9
    sdiv x0, x0, x1 
    ret
