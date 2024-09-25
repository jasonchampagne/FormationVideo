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

### Version native

```cpp
#include <iostream>
#include <numeric>


int main()
{
    auto n1{144};
    auto n2{26};

    std::cout << "pgcd(" << n1 << ", " << n2 << ") = " << std::gcd(n1, n2) << std::endl;

    return 0;
}
```

---

## C#

### Version itérative

```csharp
public class Euclide
{
    public static int Pgcd(int a, int b)
    {
        int temp;

        while(b != 0)
        {
            temp = a % b;
            a = b;
            b = temp;
        }

        return a;
    }
}
```

### Version récursive

```csharp
public class Euclide
{
    public static int Pgcd(int a, int b) => (b == 0) ? a : Pgcd(b, a % b);
}
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
