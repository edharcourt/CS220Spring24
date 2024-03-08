# Homework 6 

## Day of the Week
Create a directory in your repo named `hw6`. Implement the day of week 
function below by 
converting it into assembly ARMv8 language. Put the function in 
a file named `dow.s`.  Include a header file `dow.h`.

Do this translation from C to assembly on your own. You will need to do 
this on an exam. While being able to analyze the output of the compiler 
is important it doesn't develop your skill at writing assembly. 

```
#include "dow.h"

/*
 *  y0 = y - (14 - m)/12
 *  x = y0 + y0/4 - y0/100 + y0/400
 *  m0 = m + 12 * ((14 - m) / 12) - 2
 *  d0 = (d + x + (31 * m0) / 12) % 7
 *
 *  On which day did Feb 14, 2000 fall?
 *
 *  y0 = 2000 - 1 = 1999
 *  x = 1999 + 1999 / 4 - 1999 / 100 + 1999 / 400 = 2483
 *  m0 = 2 + 12(1) - 2 = 12
 *  d0 = (14 + 2483 + (31*12)/12) % 7 = 2528 % 7 = 1 (Monday)
 */

int dow(int m, int d, int y) {
    int y0 = y - (14 - m) / 12;
    int x = y0 + y0 / 4 - y0 / 100 + y0 / 400;
    int m0 = m + 12 * ((14 - m)/12) - 2;
    int d0 = (d + x + (31 * m0) / 12) % 7;
    return d0;
}
```


Write a main function `main.c` that takes the month, day,
and year as *command line arguments* and calls the assembly version of
`dow` and prints the day of the week. See [Command Line Arguments](https://diveintosystems.org/book/C2-C_depth/advanced_cmd_line_args.html#_c_cmd_line_args_). 

Here is a sample run of the program. If the executable was named `dow` then ...  

```
dow 2 14 2000 
Monday
```

Include a `makefile` for the project that builds and executes the homework 
for the above example.
