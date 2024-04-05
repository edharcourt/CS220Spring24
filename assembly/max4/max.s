
.arch armv8-a

.global max   // make function max visible outside of this file

.text
.align 2   // put instructions on a four byte boundary

/*
    int64_t max(int64_t x, int64_t y) {
        if (x > y)
            return x;
        else
            return y;
    }
*/

max:
    cmp x0, x1  // put the result of the comparison in the status register
    // bgt, bge, beq, blt, ble, bne
    bgt else
    mov x0, x1
else:
    ret
