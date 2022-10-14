# Surcharge des opérateurs

## Prototypes

```cpp
// Arithmétique
T operator+(const T& a, const T& b);
T operator-(const T& a, const T& b);
T operator*(const T& a, const T& b);
T operator/(const T& a, const T& b);
T operator%(const T& a, const T& b);

// Comparaison
bool operator==(const T& a, const T& b);
bool operator!=(const T& a, const T& b);
bool operator<(const T& a, const T& b);
bool operator>(const T& a, const T& b);
bool operator<=(const T& a, const T& b);
bool operator>=(const T& a, const T& b);

// Flux
std::ostream& operator<<(std::ostream& os, const T& a);
```

## Exemples d'implémentation

```cpp
struct Point
{
  int x;
  int y
};

bool operator==(const Point& p1, const Point& p2)
{
  return (p1.x == p2.x && p1.y == p2.y);
}

std::ostream& operator<<(std::ostream& os, const Point& p)
{
    return os << "(" << p.x << ", " << p.x << ")";
}
```
