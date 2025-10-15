#include <stdio.h>

int blocos(int x){
    
    int somablocos = 0;
    if(x == 1){
        return 1;
    }
    if(x <= 0){
        return 0;
    }
    somablocos = x + blocos(x-1);
    return somablocos;
}

/*
somablocos = x + blocos(x-1);
CHAMOU: 5 + 4
somablocos = x + blocos(x-1);
CHAMOU: 4 + 3
somablocos = x + blocos(x-1);
CHAMOU: 3 + 2
somablocos = x + blocos(x-1); 
CHAMOU: 2 + 1
somablocos = x + blocos(x-1); 
CHAMOU: 1 + 0
*/

int main() {
    int x;
    scanf("%d",&x);
    printf("%d",blocos(x));
    return 0;
}
