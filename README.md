# ADT Stack (Usage Template)

Created from [CProgramTemplate](https://github.com/estsetubal-atad/CProgram_Template.git).

## Included example program

```cpp
#include <stdio.h> 
#include <stdlib.h>
#include "input.h"
#include "stack.h"

int main() {
    /* Example program code of adt stack usage */

    PtStack s = stackCreate();
    printf("Instance address = %p\n", s);
    
    printf("Pushing 1, 2 and 3...\n");
    stackPush(s, 1);
    stackPush(s, 2);
    stackPush(s, 3);

    int size;
    stackSize(s, &size);
    printf("Stack has %d elements.\n", size);

    printf("Popping until empty...\n");
    while(!stackIsEmpty(s)) {
        int a;
        stackPop(s, &a);
        printf("%d\n", a);
    }

    stackDestroy(&s);
    printf("Instance address = %p\n", s);

    return EXIT_SUCCESS;
}
```

### Example output

```console
Instance address = 0x2eac52a0
Pushing 1, 2 and 3...
Stack has 3 elements.
Popping until empty...
3
2
1
Instance address = (nil)
```