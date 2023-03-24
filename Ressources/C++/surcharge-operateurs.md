# Surcharge d'opérateurs

## Opérateurs compatibles avec la surcharge

|Affectation|Incrémentation<br>Décrémentation|Arithmétique|Logique|Comparaison|Accès|Spéciaux|Divers|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|`a = b`<br>`a = rvalue`<br>`a += b`<br>`a -= b`<br>`a *= b`<br>`a /= b`<br>`a %= b`<br>`a &= b`<br>`a \|= b`<br>`a ^= b`<br>`a <<= b`<br>`a >>= b`|`++a`<br>`--a`<br>`a++`<br>`a--`|`+a`<br>`-a`<br>`a + b`<br>`a - b`<br>`a * b`<br>`a / b`<br>`a % b`<br>`~a`<br>`a & b`<br>`a \| b`<br>`a ^ b`<br>`a << b`<br>`a >> b`|`!a`<br>`a && b`<br>`a \|\| b`|`a == b`<br>`a != b`<br>`a < b`<br>`a > b`<br>`a <= b`<br>`a >= b`|`a[b]`<br>`*a`<br>`&a`<br>`a->b`<br>`a.b`<br>`a->*b`<br>`a.*b`|alignof<br>const_cast<br>delete<br>dynamic_cast<br>new<br>noexcept<br>reinterpret_cast<br>sizeof<br>sizeof...<br>static_cast<br>typeid|`a(...)`<br>`a, b`<br>`(type) a`<br>`? :`|

> Source : https://en.cppreference.com/w/cpp/language/operators

## Prototypes
