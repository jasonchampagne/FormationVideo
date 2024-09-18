# Tri par insertion

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
void insertionSort(int collection[], int size)
{
    for(int i = 1 ; i < size ; ++i)
    {
        int value = collection[i];
        int j = i - 1;

        while(j >= 0 && collection[j] > value)
        {
            collection[j + 1] = collection[j];
            --j;
        }

        collection[j + 1] = value;
    }
}
```

---

## C++

```cpp
template <typename T, std::size_t ARRAY_SIZE>
void insertionSort(std::array<T, ARRAY_SIZE>& collection)
{
    for(std::size_t i = 1 ; i < ARRAY_SIZE ; ++i)
    {
        T value = collection[i];
        std::size_t j = i - 1;

        while(j >= 0 && collection[j] > value)
        {
            collection[j + 1] = collection[j];
            --j;
        }
        collection[j + 1] = value;
    }
}
```

---

## C#

```csharp
public class InsertionSort
{
    public static void Sort<T>(T[] collection) where T : IComparable<T>
    {
        int size = collection.Length;

        for(int i = 1 ; i < size ; ++i)
        {
            T value = collection[i];
            int j = i - 1;

            while(j >= 0 && collection[j].CompareTo(value) > 0)
            {
                collection[j + 1] = collection[j];
                --j;
            }

            collection[j + 1] = value;
        }
    }
}
```

---

## Java

```java
public class InsertionSort
{
    public static <T extends Comparable<T>> void sort(T[] collection)
    {
        int size = collection.length;

        for(int i = 1 ; i < size ; ++i)
        {
            T value = collection[i];
            int j = i - 1;

            while(j >= 0 && collection[j].compareTo(value) > 0)
            {
                collection[j + 1] = collection[j];
                --j;
            }

            collection[j + 1] = value;
        }
    }
}
```

---

## JavaScript

```js
ddd
```

---

## PHP

```php
ddd
```

---

## Python

```python
ddd
```
