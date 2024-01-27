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
int binarySearch(const std::array<int, ARRAY_SIZE>& collection, const T& value)
{
    int begin_index{0};
    int end_index{ARRAY_SIZE - 1};

    while(begin_index <= end_index)
    {
        int middle_index{(begin_index + end_index) / 2};

        if(collection[middle_index] == value)
            return middle_index;
        else if(collection[middle_index] < value)
            begin_index = middle_index + 1;
        else
            end_index = middle_index - 1;
    }

    throw value_not_found();
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
