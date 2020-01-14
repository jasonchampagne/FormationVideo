# FlushInputBuffer

Lors de plusieurs saisies au clavier (lecture de l'entrée standard **stdin**), il est nécessaire de vider le tampon (buffer) de lecture. Par exemple, après un appel à une fonction comme **scanf()**, pensez à appeler la fonction de vidage du buffer.

> ⚠ Comme on peut le voir couramment, ne faîtes pas un **fflush(stdin)** qui est une très mauvaise habitude et peut engendrer un comportement totalement indéfini de votre programme. Cette fonction est à utiliser uniquement sur des flux de sortie.

## Fonction

```C
void flush_input_buffer(void)
{
    int c = 0;
 
    while(c != '\n' && c != EOF)
        c = getchar();
}
```

## Exemple d'utilisation

```C
char letter;
char letter2;

printf("Entrez un premier caractere : ");
scanf("%c", &letter);

flush_input_buffer();

printf("Entrez un second caractere : ");
scanf("%c", &letter2);

printf("Caracteres saisis : %c et %c\n", letter, letter2);
```
