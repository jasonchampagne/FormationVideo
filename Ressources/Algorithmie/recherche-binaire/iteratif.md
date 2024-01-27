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

```csharp
public class BinarySearch
{
    public static int Search<T>(T[] collection, T value) where T : IComparable<T>
    {
        int startIndex = 0;
        int endIndex = collection.Length - 1;

        while(startIndex <= endIndex)
        {
            int middleIndex = (startIndex + endIndex) / 2;

            if(collection[middleIndex].Equals(value))
                return middleIndex;
            else if(collection[middleIndex].CompareTo(value) < 0)
                startIndex = middleIndex + 1;
            else
                endIndex = middleIndex - 1;
        }

        throw new Exception("La valeur n'a pas ete trouvee.");
    }
}
```

## Dart

## Go

## Java

## JavaScript

## Lua

## PHP

```php
function binarySearch(array $collection, int $value): int
{
    $beginIndex = 0;
    $endIndex = count($collection) - 1;

    while($beginIndex <= $endIndex)
    {
        $middleIndex = ($endIndex + $beginIndex) >> 1;

        if($collection[$middleIndex] == $value)
            return $middleIndex;
        elseif($collection[$middleIndex] < $value)
            $beginIndex = $middleIndex + 1;
        else
            $endIndex = $middleIndex - 1;
    }

    throw new Exception("La valeur n'a pas ete trouvée.");
}
```

## Python

## Ruby

## Rust
