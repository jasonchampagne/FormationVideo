# Surcharge d'opérateurs

## Opérateurs compatibles avec la surcharge

|Affectation|Incrémentation<br>Décrémentation|Arithmétique|Logique|Comparaison|Accès|Divers|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|`a = b`<br>`a = <rvalue>`<br>`a += b`<br>`a -= b`<br>`a *= b`<br>`a /= b`<br>`a %= b`<br>`a &= b`<br>`a \|= b`<br>`a ^= b`<br>`a <<= b`<br>`a >>= b`|`++a`<br>`--a`<br>`a++`<br>`a--`|`+a`<br>`-a`<br>`a + b`<br>`a - b`<br>`a * b`<br>`a / b`<br>`a % b`<br>`~a`<br>`a & b`<br>`a \| b`<br>`a ^ b`<br>`a << b`<br>`a >> b`|`!a`<br>`a && b`<br>`a \|\| b`|`a == b`<br>`a != b`<br>`a < b`<br>`a > b`<br>`a <= b`<br>`a >= b`|`a[b]`<br>`*a`<br>`&a`<br>`a->b`<br>`a.b`<br>`a->*b`<br>`a.*b`|`a(<args>)`<br>`a, b`<br>`(<type>) a`<br>`<type>()`<br>`a ? b : c`|

> Source : https://en.cppreference.com/w/cpp/language/operators

## Prototypes
