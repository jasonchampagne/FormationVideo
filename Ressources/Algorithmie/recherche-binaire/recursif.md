# Recherche binaire (récursive)

Les conditions d'usage de cet algorithme :

+ La collection est triée
+ La collection est indexable (tableau, liste chaînée, ...)
+ Les éléments sont comparables entre eux
+ La taille de la collection est fixe (de préférence)

---

## C

```c
int binarySearch(int collection[], int begin_index, int end_index, int value)
{
    if(begin_index > end_index)
        return -1;

    int middle_index = (begin_index + end_index) / 2;

    if(collection[middle_index] == value)
        return middle_index;
    else if(collection[middle_index] < value)
        return binarySearchRecursive(collection, middle_index + 1, end_index, value);
    else
        return binarySearchRecursive(collection, begin_index, middle_index - 1, value);
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
