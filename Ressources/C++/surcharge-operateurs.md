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

bool operator==(const Point& a, const Point& b)
{
  return (a.x == b.x && a.y == b.y);
}
```
