# Recherche binaire (itérative)

Les conditions d'usage de cet algorithme :

+ La collection est triée
+ La collection est indexable (tableau, liste chaînée, ...)
+ Les éléments sont comparables entre eux
+ La taille de la collection est fixe (de préférence)

---

## C

```c
#define ARRAY_SIZE 10

int binarySearch(int collection[], int value)
{
    int begin_index = 0;
    int end_index = ARRAY_SIZE - 1;

    while(begin_index <= end_index)
    {
        int middle_index = (begin_index + end_index) / 2;

        if(collection[middle_index] == value)
            return middle_index;
        else if(collection[middle_index] < value)
            begin_index = middle_index + 1;
        else
            end_index = middle_index - 1;
    }

    return -1;
}
```

## C++

## C#

## Dart

## Go

## Java

## JavaScript

## Lua

## PHP

## Python

## Ruby

## Rust
