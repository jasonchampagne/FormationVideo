# Recherche binaire

Les conditions d'usage de cet algorithme :

+ La collection doit est triée
+ La collection doit est indexable (tableau, liste, ...)
+ Les éléments doivent être comparables entre eux (notamment si vous utilisez des types génériques)
+ La taille de la collection doit être fixe de préférence

> **SOMMAIRE**
> + [C](#c)
> + [C++](#c-1)
> + [C#](#c-2)
> + [Java](#java)
> + [JavaScript](#javascript)
> + [PHP](#php)
> + [Python](#python)

---

## C

### Version itérative

```c
#define ARRAY_SIZE 10

int binarySearch(int collection[], const int value)
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

### Version récursive

```c
int binarySearch(int collection[], int beginIndex, int endIndex, const int value)
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

---

## C++

### Version itérative

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

### Version récursive

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

---

## C#

### Version itérative

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

### Version récursive

```csharp
public class BinarySearch
{
    public static int Search<T>(T[] collection, int beginIndex, int endIndex, const T value) where T : IComparable<T>
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

---

## Java

### Version itérative

```java
public class BinarySearch
{
    public static <T extends Comparable<T>> int search(List<T> collection, T value) throws IllegalArgumentException
    {
        int beginIndex = 0;
        int endIndex = collection.size() - 1;

        while(beginIndex <= endIndex)
        {
            int middleIndex = beginIndex + (endIndex - beginIndex) / 2;

            if(collection.get(middleIndex).equals(value))
                return middleIndex;
            else if(collection.get(middleIndex).compareTo(value) < 0)
                beginIndex = middleIndex + 1;
            else
                endIndex = middleIndex - 1;
        }

        throw new IllegalArgumentException("La valeur n'a pas été trouvée.");
    }
}
```

### Version récursive

```java
public class BinarySearch
{
    public static <T extends Comparable<T>> int search(List<T> collection, T value)
    {
        return searchRecursive(collection, 0, collection.size() - 1, value);
    }

    private static <T extends Comparable<T>> int searchRecursive(List<T> collection, int beginIndex, int endIndex, T value) throws IllegalArgumentException
    {
        if(beginIndex > endIndex)
            throw new IllegalArgumentException("La valeur n'a pas été trouvée.");

        int middleIndex = beginIndex + (endIndex - beginIndex) / 2;

        if(collection.get(middleIndex).equals(value))
            return middleIndex;
        else if(collection.get(middleIndex).compareTo(value) < 0)
            return searchRecursive(collection, middleIndex + 1, endIndex, value);
        else
            return searchRecursive(collection, beginIndex, middleIndex - 1, value);
    }
}
```

---

## JavaScript

### Version itérative

```js
class BinarySearch
{
    static search(collection, value)
    {
        let beginIndex = 0;
        let endIndex = collection.length - 1;

        while(beginIndex <= endIndex)
        {
            const middleIndex = Math.floor((beginIndex + endIndex) / 2);

            if(collection[middleIndex] === value)
                return middleIndex;
            else if(collection[middleIndex] < value)
                beginIndex = middleIndex + 1;
            else
                endIndex = middleIndex - 1;
        }

        throw new Error("La valeur n'a pas été trouvée.");
    }
}
```

### Version récursive

```js
class BinarySearch
{
    static search(collection, value)
    {
        return this.searchRecursive(collection, 0, collection.length - 1, value);
    }

    static searchRecursive(collection, beginIndex, endIndex, value)
    {
        if(beginIndex > endIndex)
            throw new Error("La valeur n'a pas été trouvée.");

        const middleIindex = Math.floor((beginIndex + endIndex) / 2);

        if(collection[middleIindex] === value)
            return middleIindex;
        else if(collection[middleIindex] < value)
            return this.searchRecursive(collection, middleIindex + 1, endIndex, value);
        else
            return this.searchRecursive(collection, beginIndex, middleIindex - 1, value);
    }
}
```

---

## PHP

### Version itérative

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

### Version récursive

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

---

## Python

### Version itérative

```python
def binary_search(collection, value):
    begin_index = 0
    end_index = len(collection) - 1

    while begin_index <= end_index:
        middle_index = (begin_index + end_index) // 2

        if collection[middle_index] == value:
            return middle_index
        elif collection[middle_index] < value:
            begin_index = middle_index + 1
        else:
            end_index = middle_index - 1

    raise ValueError("La valeur n'a pas ete trouvée.")
```

### Version récursive

```python
def binary_search(collection, value):
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
