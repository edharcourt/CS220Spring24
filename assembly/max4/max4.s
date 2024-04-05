.arch armv8-a
.global max4
.text
.align 2

/*
    functions must assume that registers x0 through x15 can get 
    clobbered by another function call 

    functions can assume that registers x19 - x27 are saved
    and not clobbered by the function called

*/

/*
    max(max(w,x), max(y,z))
*/

max4:
     //push x19 and lr on the stack 
     sub sp, sp, #16
     str lr, [sp, #0]   // push the link register on to ther stack
     str x19, [sp, #8]  // move x19 on to the stack
     bl max    // max(w,x), result is in x0 (calling conventions)

     mov  x19, x0  // put x0 in x19
     mov x0, x2    // put y in x0
     mov x1, x3    // put z in  x1
     bl max
     mov x1, x19
     bl max

     // pop/restore registers from the stack
     ldr x19, [sp, #8]
     ldr lr, [sp, #0]
     add  sp, sp, #16 
     ret


