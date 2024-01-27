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
    int beginIndex = 0;
    int endIndex = ARRAY_SIZE - 1;

    while(beginIndex <= endIndex)
    {
        int middleIndex = (beginIndex + endIndex) / 2;

        if(collection[middleIndex] == value)
            return middleIndex;
        else if(collection[middleIndex] < value)
            beginIndex = middleIndex + 1;
        else
            endIndex = middleIndex - 1;
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
    int beginIndex{0};
    int endIndex{ARRAY_SIZE - 1};

    while(beginIndex <= endIndex)
    {
        int middleIndex{(beginIndex + endIndex) / 2};

        if(collection[middleIndex] == value)
            return middleIndex;
        else if(collection[middleIndex] < value)
            beginIndex = middleIndex + 1;
        else
            endIndex = middleIndex - 1;
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
