# Surcharge d'opérateurs

## Opérateurs compatibles avec la surcharge

|Affectation|Incrémentation<br>Décrémentation|Arithmétique|Logique|Comparaison|Accès|Spéciaux|Divers|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|`a = b`<br>`a = rvalue`<br>`a += b`<br>`a -= b`<br>`a *= b`<br>`a /= b`<br>`a %= b`<br>`a &= b`<br>`a \|= b`<br>`a ^= b`<br>`a <<= b`<br>`a >>= b`|`++a`<br>`--a`<br>`a++`<br>`a--`|`+a`<br>`-a`<br>`a + b`<br>`a - b`<br>`a * b`<br>`a / b`<br>`a % b`<br>`~a`<br>`a & b`<br>`a \| b`<br>`a ^ b`<br>`a << b`<br>`a >> b`|`!a`<br>`a && b`<br>`a \|\| b`|`a == b`<br>`a != b`<br>`a < b`<br>`a > b`<br>`a <= b`<br>`a >= b`|`a[b]`<br>`*a`<br>`&a`<br>`a->b`<br>`a.b`<br>`a->*b`<br>`a.*b`|static_cast<br>dynamic_cast<br>const_cast<br>reinterpret_cast<br>new<br>delete<br>sizeof<br>sizeof...<br>typeid<br>noexcept<br>alignof|`a(...)`<br>`a, b`<br>`(type) a`<br>`? :`|

> Source : https://en.cppreference.com/w/cpp/language/operators

## Prototypes
