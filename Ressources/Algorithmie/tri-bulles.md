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
void bubble_sort(int collection[], int taille)
{
    for(int i = (taille - 1) ; i >= 0 ; --i)
    {
        for(int j = 0 ; j < i ; ++j)
        {
            if(collection[j + 1] < collection[j])
            {
                int temp = collection[j];
                collection[j] = collection[j + 1];
                collection[j + 1] = temp;
            }
        }
    }
}
```

### Version optimisée

```c
void bubble_sort(int collection[], int taille)
{
    for(int i = (taille - 1) ; i >= 0 ; --i)
    {
        bool sorted = true;

        for(int j = 0 ; j < i ; ++j)
        {
            if(collection[j + 1] < collection[j])
            {
                int temp = collection[j];
                collection[j] = collection[j + 1];
                collection[j + 1] = temp;

                sorted = false;
            }
        }
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
