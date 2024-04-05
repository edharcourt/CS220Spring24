/*
int64_t smallest(int64_t n) {
    int i = 2;
    while (n % i != 0)
        i++;
    return i;
}
*/
.arch armv8-a   // 'a' means application processor
.global smallest
.text
.align 2

smallest:
    mov x1, #2
    
while: // top of the while 
     sdiv x2, x0, x1     // q = n/i
     mul  x2, x2, x1      // q*i
     sub  x2, x0, x2
     cmp  x2, #0         // is the remainder 0
     beq endwhile
     add x1, x1, #1  
     b while     // go to top of while loop
endwhile: // and of the while loop
     mov x0, x1
     ret



