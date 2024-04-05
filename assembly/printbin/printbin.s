.arch armv8-a
.section .rodata   // read only data

// read only data must be aligned on an 8 byte boundary 
.align 3
format:  .string "%d"
                   //  .bytes 37, 100  unicdoe values for '%' and 'd'

.align 2
.global printbin
.text

printbin:
    sub sp, sp, #32  // sp must be adjusted in blocks of 16 (quad word boundary)
    str fp, [sp, #0]
    str lr, [sp, #8]
    str x19, [sp, #16]

    mov x19, x0
    cmp x19, #0     // n == 0
    bne else
    ldr x0, =format  // put the address of the string in x0
    mov x1, #0
    bl printf
    b endelse
else:
    // TODO finish as a study exercise
endelse:
    // TODO finish retruning from the function and test it
