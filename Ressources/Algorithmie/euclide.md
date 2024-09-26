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
int gcd(int a, int b)
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
int gcd(int a, int b)
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
    public static int Gcd(int a, int b)
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
    public static int Gcd(int a, int b) => (b == 0) ? a : Pgcd(b, a % b);
}
```

---

## Java

### Version native

```java
import java.math.BigInteger;

public class Euclide
{
    public static void main(String[] args)
    {
        BigInteger a = new BigInteger("144");
        BigInteger b = new BigInteger("26");
        
        System.out.println("pgcd("+a+", "+b+") : " + a.gcd(b));
    }
}
```

---

## JavaScript

### Version itérative

```js
const gcd = (a, b) =>
{
    while (b !== 0) [a, b] = [b, a % b];
    return a;
};

console.log(gcd(144, 26));
```

### Version récursive

```js
const gcd = (a, b) => (b === 0) ? a : gcd(b, a % b);

console.log(gcd(144, 26));
```

---

## PHP

### Version itérative

```php
function gcd(int $a, int $b): int
{
    $temp = 0;
    
    while($b != 0)
    {
        $temp = $a % $b;
        $a = $b;
        $b = $temp;
    }
    
    return $a;
}
```

### Version récursive

```php
function gcd(int $a, int $b): int
{
    return ($b == 0) ? $a : pgcd($b, $a % $b);
}
```

---

## Python

### Version native

```python
import math

a = 144
b = 26

print(f'pgcd({a}, {b}) = {math.gcd(a, b)}')
```
