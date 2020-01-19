# Types de données

## Types simples

> Attention au type **char**, dont son usage ne garantit pas une occupation mémoire de 1 octet !

|Syntaxe|Occupation mémoire|Valeur MIN|Valeur MAX|
|:--:|:--:|:--:|:--:|
|char|-|-|
|signed char|1 octet|-128|127|
|int|2 octets ou 4 octets|-32 768 ou -2 147 483 648|32 767 ou 2 147 483 647|

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
