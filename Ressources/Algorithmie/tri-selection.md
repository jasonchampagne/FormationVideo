# Tri par sélection (ou extraction)

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

```c
void selectionSort(int collection[], const int size)
{
    for(int i = 0 ; i < size - 1 ; ++i)
    {
        int min_index = i;

        for(int j = i + 1 ; j < size ; ++j)
            if(collection[j] < collection[min_index])
                min_index = j;

        if(min_index != i)
        {
            int temp = collection[min_index];
            collection[min_index] = collection[i];
            collection[i] = temp;
        }
    }
}
```

---

## C++

```cpp
template <typename T, std::size_t ARRAY_SIZE>
void selectionSort(std::array<T, ARRAY_SIZE>& collection)
{
    for(size_t i = 0 ; i < ARRAY_SIZE - 1 ; ++i)
    {
        size_t min_index{i};

        for(size_t j = i + 1 ; j < ARRAY_SIZE ; ++j)
            if(collection[j] < collection[min_index])
                min_index = j;

        if(min_index != i)
        {
            auto temp{collection[min_index]};
            collection[min_index] = collection[i];
            collection[i] = temp;
        }
    }
}
```

---

## C#

```csharp
public class SelectionSort
{
    public static void Sort<T>(T[] collection) where T : IComparable<T>
    {
        int size = collection.Length;

        for(int i = 0 ; i < size - 1 ; ++i)
        {
            int min_index = i;

            for(int j = i + 1 ; j < size ; ++j)
                if(collection[j].CompareTo(collection[min_index]) < 0)
                    min_index = j;

            if(min_index != i)
            {
                T temp = collection[min_index];
                collection[min_index] = collection[i];
                collection[i] = temp;
            }
        }
    }
}
```

---

## Java

```java
public class SelectionSort
{
    public static <T extends Comparable<T>> void sort(T[] collection)
    {
        final int size = collection.length;

        for(int i = 0 ; i < size - 1 ; ++i)
        {
            int min_index = i;

            for(int j = i + 1 ; j < size ; ++j)
                if(collection[j].compareTo(collection[min_index]) < 0)
                    min_index = j;

            if(min_index != i)
            {
                T temp = collection[min_index];
                collection[min_index] = collection[i];
                collection[i] = temp;
            }
        }
    }
}
```

---

## JavaScript

```js
function selectionSort(collection)
{
    const size = collection.length;

    for(let i = 0 ; i < size - 1 ; ++i)
    {
        let min_index = i;

        for(let j = i + 1 ; j < size ; ++j)
            if(collection[j] < collection[min_index])
                min_index = j;

        if(min_index != i)
        {
            let temp = collection[min_index];
            collection[min_index] = collection[i];
            collection[i] = temp;
        }
    }
}
```

---

## PHP

```php
function selectionSort(array &$collection): void
{
    $size = count($collection);

    for($i = 0 ; $i < $size - 1 ; ++$i)
    {
        $min_index = $i;

        for($j = $i + 1 ; $j < $size ; ++$j)
            if($collection[$j] < $collection[$min_index])
                $min_index = $j;

        if($min_index != $i)
        {
            $temp = $collection[$min_index];
            $collection[$min_index] = $collection[$i];
            $collection[$i] = $temp;
        }
    }
}
```

---

## Python

```python
def selection_sort(collection):
    size = len(collection)

    for i in range(size - 1):
        min_index = i

        for j in range(i + 1, size):
            if collection[j] < collection[min_index]:
                min_index = j

        if min_index != i:
            collection[min_index], collection[i] = collection[i], collection[min_index]
```
