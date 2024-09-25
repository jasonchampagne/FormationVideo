# Euclide (PGCD)

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
int pgcd(int a, int b)
{
    int temp = 0;

    while(b != 0)
    {
        temp = a % b;
        a = b;
        b = temp;
    }

    return a;
}
```

### Version récursive

```c
int pgcd(int a, int b)
{
    return (b == 0) ? a : pgcd(b, a % b);
}
```

---

## C++

### Version itérative

```cpp
int pgcd(int a, int b)
{
    auto temp{0};

    while(b != 0)
    {
        temp = a % b;
        a = b;
        b = temp;
    }

    return a;
}
```

### Version récursive

```cpp
int pgcd(int a, int b)
{
    return (b == 0) ? a : pgcd(b, a % b);
}
```

---

## C#

### Version itérative

```csharp
ppp
```

### Version récursive

```csharp
ppp
```

---

## Java

### Version itérative

```java
ppp
```

### Version récursive

```java
ppp
```

---

## JavaScript

### Version itérative

```js
ppp
```

### Version récursive

```js
ppp
```

---

## PHP

### Version itérative

```php
ppp
```

### Version récursive

```php
ppp
```

---

## Python

### Version itérative

```python
ppp
```

### Version récursive

```python
ppp
```
