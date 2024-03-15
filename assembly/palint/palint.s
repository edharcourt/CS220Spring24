/*
int isPalindromeInt(int n) {

     int m = 0; // stack of digits
     int tmp = n;

     while (n > 0) {
         m = m * 10 + (n % 10);  // push
         n = n / 10;             // pop
     }

     return tmp == m;
}
*/

.arch armv8-a   // tell the assembler we have a divide instruction
.global isPalindromeInt
.text

isPalindromeInt:
    sub sp, sp, -8
    str x4, [sp,8] // save r4 on the runtime stack
    mov x1, #0    // m = 0
    mov x2, x0    // tmp = n
    mov x3, #10   
while:
    cmp x0, #0
    beq endwhile
    mul x1, x1, x3 
    sdiv x4, x0, x3   // n / 10
    mul x4, x4, x3    // x4 * 10
    sub x4, x0, x4 
    add x1, x1, x4
    sdiv x0, x0, x3
    b while
endwhile:

    cmp x2, x1
    beq return1
    mov x0, #0    // return 0
    ldr x4, [sp, 8]
    add sp, sp, 8
    ret 
return1:
    mov x0, #1    // return 1
    ldr x4, [sp, 8]
    add sp, sp, 8
    ret 
