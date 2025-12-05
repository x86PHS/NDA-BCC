#include <stdio.h>

float multiplicador(int a,int b){
    int produto = 0;
    if(b > 0){
        produto = a + multiplicador(a,b-1);
    }
    
    return produto;
}

int main() {
    float a,b;
    printf("A:");
    scanf("%f",&a);
    printf("B:");
    scanf("%f",&b);
    printf("%.1f * %.1f : %.1f",a,b,multiplicador(a,b));
    return 0;
}
