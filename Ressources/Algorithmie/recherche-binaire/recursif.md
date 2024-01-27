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

```cpp
class value_not_found : public std::exception
{
    public:
        const char* what() const noexcept override
        {
            return "La valeur n'a pas ete trouvee.";
        }
};

template <typename T, std::size_t ARRAY_SIZE>
int binarySearchRecursive(const std::array<int, ARRAY_SIZE>& collection, const T& value, int begin_index, int end_index)
{
    if(begin_index > end_index)
        throw value_not_found();

    int middle_index{(begin_index + end_index) / 2};

    if(collection[middle_index] == value)
        return middle_index;
    else if(collection[middle_index] < value)
        return binarySearchRecursive(collection, value, middle_index + 1, end_index);
    else
        return binarySearchRecursive(collection, value, begin_index, middle_index - 1);
}

template <typename T, std::size_t ARRAY_SIZE>
int binarySearch(const std::array<int, ARRAY_SIZE>& collection, const T& value)
{
    return binarySearchRecursive(collection, value, 0, ARRAY_SIZE - 1);
}
```

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
