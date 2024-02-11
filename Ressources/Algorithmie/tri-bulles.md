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

```cpp
...
```

### Version optimisée

```cpp
...
```

---

## C#

```csharp
...
```

### Version optimisée

```csharp
...
```

---

## Java

```java
...
```

### Version optimisée

```java
...
```

---

## JavaScript

```javascript
...
```

### Version optimisée

```javascript
...
```

---

## PHP

```php
...
```

### Version optimisée

```php
...
```

---

## Python

### Version de base

```python
...
```

### Version optimisée

```python
...
```
