# Recherche binaire (récursive)

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
