#include <stdio.h>

int main(void)
{
    int number = 0;

    printf("Entrez un nombre entier : ");
    scanf("%d", &number);

    printf("Valeur en octal : %o\n", number);
    printf("Valeur en hexa : %x\n", number);

    return 0;
}
