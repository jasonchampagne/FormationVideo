# Types de données

## Types simples

> Attention au type **char**, dont son usage ne garantit pas une occupation mémoire de 1 octet !

### Signés

|Syntaxe|Occupation mémoire|Valeur MIN|Valeur MAX|
|:--:|:--:|:--:|:--:|
|char|-|-|-|
|signed char|1 octet|-128|127|
|short|2 octets|-32 768|32 767|
|int|2 octets ou 4 octets|-32 768 ou -2 147 483 648|32 767 ou 2 147 483 647|
|long|4 octets|-2 147 483 648|2 147 483 647|
|long long|8 octets|-9 223 372 036 854 780 000|9 223 372 036 854 780 000|
|float|4 octets|-3,4.10<sup>38</sup>|3,4.10<sup>38</sup>|
|double|8 octets|-1,7.10<sup>308</sup>|1,7.10<sup>308</sup>|
|long double|10 octets|-1,1.10<sup>4932</sup>|1,1.10<sup>4932</sup>|

### Non signés

|Syntaxe|Occupation mémoire|Valeur MIN|Valeur MAX|
|:--:|:--:|:--:|:--:|
|unsigned char|1 octet|0|255|
|unsigned int|2 octets ou 4 octets|0|65 635 ou 4 294 967 295|

---

## Types étendus

> L'utilisation de ces types nécessite l'ajout de l'en-tête **stdint.h** à votre fichier source. De plus, étant optionnels, il n'y a aucune garantie de leur portabilité.

### Signés

|Fixe|Minimale|Maximale|Rapide|Correspondance|
|:--:|:--:|:--:|:--:|:--:|
|int8_t|int_least8_t|-|int_fast8_t|signed char|
|int16_t|int_least16_t|-|int_fast16_t|short|
|int32_t|int_least32_t|-|int_fast32_t|int|
|int64_t|int_least64_t|intmax_t|int_fast64_t|long long|

### Non signés

|Fixe|Minimale|Maximale|Rapide|Correspondance|
|:--:|:--:|:--:|:--:|:--:|
|uint8_t|uint_least8_t|-|uint_fast8_t|unsigned char|
|uint16_t|uint_least16_t|-|uint_fast16_t|unsigned short|
|uint32_t|uint_least32_t|-|uint_fast32_t|unsigned int|
|uint64_t|uint_least64_t|uintmax_t|uint_fast64_t|unsigned long long|
