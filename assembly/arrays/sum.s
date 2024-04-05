/*
int64_t sum(int64_t vec[], int64_t n) {

    int64_t sum = 0;
    int i = 0;

    while (i < n)
        sum = sum + vec[i++];

    return sum;
}
*/
.arch armv8-a
.global sum
.align 2
.text

// we don't need to mess with the stack and the stack pointer
// because sum does not call another function and the link register
// is unmodified
sum:
    mov x2, #0   // sum = 0     caller must assume x2 and x3 are clobbered
    mov x3, #0   // i = 0
while:
    cmp x3, x1   // i < n
    bge endwhile
    lsl x4, x3, #3      // offset is i * 8   or i << 3
    add x4, x0, x4      // vec + (i * 8)
    ldr x4, [x4, #0]    // x4 = vec[i]
    add x2, x2, x4      // sum = sum + vec[i]
    add x3, x3, #1      // i++
    b while
endwhile:
    mov x0, x2          // put the return value in x0
    ret
