#include <stdio.h>

char inverte(char *string, int length){
    if(length >= 0){
        printf("%c",string[length]);
        inverte(string,length-1);
    }
}

int main() {
    char string[10];
    printf("Escreva uma string:");
    scanf("%s",&string);
    inverte(string,10);
    return 0;
}
