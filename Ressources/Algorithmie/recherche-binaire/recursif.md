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
        return binarySearch(collection, middleIndex + 1, endIndex, value);
    else
        return binarySearch(collection, beginIndex, middleIndex - 1, value);
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

## Java

```java
public class BinarySearch
{
    public static <T extends Comparable<T>> int binarySearch(List<T> collection, T value)
    {
        return binarySearchRecursive(collection, 0, collection.size() - 1, value);
    }

    private static <T extends Comparable<T>> int binarySearchRecursive(List<T> collection, int beginIndex, int endIndex, T value)
    {
        if(beginIndex > endIndex)
            throw new IllegalArgumentException("La valeur n'a pas été trouvée.");

        int middleIndex = beginIndex + (endIndex - beginIndex) / 2;

        if(collection.get(middleIndex).equals(value))
            return middleIndex;
        else if(collection.get(middleIndex).compareTo(value) < 0)
            return binarySearchRecursive(collection, middleIndex + 1, endIndex, value);
        else
            return binarySearchRecursive(collection, beginIndex, middleIndex - 1, value);
    }
}
```

## JavaScript

## PHP

```php
function binarySearch(array $collection, int $beginIndex, int $endIndex, int $value): int
{
    if($beginIndex > $endIndex)
        throw new Exception("La valeur n'a pas ete trouvée.");

    $middleIndex = ($endIndex + $beginIndex) >> 1;

    if($collection[$middleIndex] == $value)
        return $middleIndex;
    elseif($collection[$middleIndex] < $value)
        return binarySearch($collection, $middleIndex + 1, $endIndex, $value);
    else
        return binarySearch($collection, $beginIndex, $middleIndex - 1, $value);
}
```

## Python

```python
def binary_search(collection : list, value : int):
    if not collection:
        raise ValueError("La valeur n'a pas ete trouvée.")

    middle_index = len(collection) // 2

    if collection[middle_index] == value:
        return middle_index
    elif collection[middle_index] < value:
        return binary_search(collection[middle_index + 1:], value) + middle_index + 1
    else:
        return binary_search(collection[:middle_index], value)
```
