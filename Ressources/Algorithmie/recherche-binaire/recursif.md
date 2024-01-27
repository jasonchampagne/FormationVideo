# Recherche binaire (récursive)

Les conditions d'usage de cet algorithme :

+ La collection est triée
+ La collection est indexable (tableau, liste chaînée, ...)
+ Les éléments sont comparables entre eux
+ La taille de la collection est fixe (de préférence)

---

## C

```c
int binarySearch(int collection[], int beginIndex, int endIndex, int value)
{
    if(beginIndex > endIndex)
        return -1;

    int middleIndex = (beginIndex + endIndex) / 2;

    if(collection[middleIndex] == value)
        return middleIndex;
    else if(collection[middleIndex] < value)
        return binarySearchRecursive(collection, middleIndex + 1, endIndex, value);
    else
        return binarySearchRecursive(collection, beginIndex, middleIndex - 1, value);
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
int binarySearchRecursive(const std::array<int, ARRAY_SIZE>& collection, int beginIndex, int endIndex, const T& value)
{
    if(beginIndex > endIndex)
        throw value_not_found();

    int middleIndex{(beginIndex + endIndex) / 2};

    if(collection[middleIndex] == value)
        return middleIndex;
    else if(collection[middleIndex] < value)
        return binarySearchRecursive(collection, value, middleIndex + 1, endIndex);
    else
        return binarySearchRecursive(collection, value, beginIndex, middleIndex - 1);
}

template <typename T, std::size_t ARRAY_SIZE>
int binarySearch(const std::array<int, ARRAY_SIZE>& collection, const T& value)
{
    return binarySearchRecursive(collection, value, 0, ARRAY_SIZE - 1);
}
```

## C#

```csharp
public class BinarySearch
{
    public static int Search<T>(T[] collection, int beginIndex, int endIndex, T value) where T : IComparable<T>
    {
        if(beginIndex > endIndex)
            throw new Exception("La valeur n'a pas ete trouvee.");

        int middleIndex = (beginIndex + endIndex) / 2;

        if(collection[middleIndex].Equals(value))
            return middleIndex;
        else if(collection[middleIndex].CompareTo(value) < 0)
            return Search(collection, middleIndex + 1, endIndex, value);
        else
            return Search(collection, beginIndex, middleIndex - 1, value);
    }
}
```

## Dart

## Go

## Java

## JavaScript

## Lua

## PHP

## Python

## Ruby

## Rust
