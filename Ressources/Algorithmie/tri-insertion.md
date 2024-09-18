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
            j--;
        }

        collection[j + 1] = value;
    }
}
```

---

## C++

```cpp
ddd
```

---

## C#

```csharp
ddd
```

---

## Java

```java
ddd
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
