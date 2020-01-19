# Types entiers

> L'utilisation des types en gras nécessite l'ajout de l'en-tête **stdint.h** à votre fichier source.

## Types signés

|FIXE|MINIMALE|MAXIMALE|RAPIDE|CORRESPONDANCE|
|:--|:--|:--|:--|:--|
|**int8_t**|**int_least8_t**|-|**int_fast8_t**|signed char|
|**int16_t**|**int_least16_t**|-|**int_fast16_t**|short|
|**int32_t**|**int_least32_t**|-|**int_fast32_t**|int|
|**int64_t**|**int_least64_t**|**intmax_t**|**int_fast64_t**|long long|

## Types non signés

|FIXE|MINIMALE|MAXIMALE|RAPIDE<sup>1</sup>|CORRESPONDANCE|
|:--|:--|:--|:--|:--|
|**uint8_t**|**uint_least8_t**|-|**uint_fast8_t**|unsigned char|
|**uint16_t**|**uint_least16_t**|-|**uint_fast16_t**|unsigned short|
|**uint32_t**|**uint_least32_t**|-|**uint_fast32_t**|unsigned int|
|**uint64_t**|**uint_least64_t**|**uintmax_t**|**uint_fast64_t**|unsigned long long|
