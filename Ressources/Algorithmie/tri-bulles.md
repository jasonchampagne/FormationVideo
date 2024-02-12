# Tri à bulles

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

### Version de base

```c
void bubbleSort(int collection[], int size)
{
    for(int i = size - 1 ; i >= 0 ; --i)
        for(int j = 0 ; j < i ; ++j)
            if(collection[j + 1] < collection[j])
            {
                int tempValue = collection[j + 1];
                collection[j + 1] = collection[j];
                collection[j] = tempValue;
            }
}
```

### Version optimisée

```c
void bubbleSort(int collection[], int size)
{
    for(int i = size - 1 ; i >= 0 ; --i)
    {
        bool sorted = true;

        for(int j = 0 ; j < i ; ++j)
            if(collection[j + 1] < collection[j])
            {
                int tempValue = collection[j + 1];
                collection[j + 1] = collection[j];
                collection[j] = tempValue;

                sorted = false;
            }

        if(sorted)
            return;
    }
}
```

---

## C++

### Version de base

```cpp
...
```

### Version optimisée

```cpp
...
```

---

## C#

### Version de base

```csharp
...
```

### Version optimisée

```csharp
...
```

---

## Java

### Version de base

```java
...
```

### Version optimisée

```java
...
```

---

## JavaScript

### Version de base

```javascript
...
```

### Version optimisée

```javascript
...
```

---

## PHP

### Version de base

```php
function bubbleSort(array $collection): array
{
    $size = count($collection);

    for($i = $size - 1 ; $i > 0 ; --$i)
        for($j = 0 ; $j < $i ; ++$j)
            if($collection[$j + 1] < $collection[$j])
            {
                $tempValue = $collection[$j + 1];
                $collection[$j + 1] = $collection[$j];
                $collection[$j] = $tempValue;
            }

    return $collection;
}
```

### Version optimisée

```php
...
```

---

## Python

### Version de base

```python
def bubble_sort(collection):
    size = len(collection)

    for i in range(size - 1, 0, -1):
        for j in range(i):
            if collection[j + 1] < collection[j]:
                collection[j], collection[j + 1] = collection[j + 1], collection[j]
```

### Version optimisée

```python
def bubble_sort(collection):
    size = len(collection)

    for i in range(size - 1, 0, -1):
        is_sorted = True

        for j in range(i):
            if collection[j + 1] < collection[j]:
                collection[j], collection[j + 1] = collection[j + 1], collection[j]
                is_sorted = False

        if is_sorted:
            break
```
