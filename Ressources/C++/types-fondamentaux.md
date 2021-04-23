# Types fondamentaux

> La taille des données dépend de l'implémentation (utilisez l'opérateur **sizeof** pour vérifier)<br>
> Le standard C++ garantit que : `char` <= `short` <= `int` <= `long` <= `long long`

|NOM|TAILLE|VALEURS POSSIBLES|
|:--|:--:|:--|
|**bool**|1 octet ou _IMP_|true / false|
|**char**|1 octet|-128 à 127|
|**short**|2 octets|-32 768 à 32 767|
|**int**|4 octets|-2 147 483 648 à 2 147 483 647|
|**long**|4 octets|-2 147 483 648 à 2 147 483 647|
|**long long**|8 octets|-9 223 372 036 854 775 808 à 9 223 372 036 854 775 807|
|**float**|4 octets|± 1.175 x 10^-38 à ± 3.4 x 10^38|
|**double**|8 octets|± 2.225 x 10^-308 à ± 1.797 x 10^308|
|**long double**|16 octets||

|NOM|TAILLE|VALEURS POSSIBLES|
|:--|:--:|:--|
|**unsigned char**|1 octet|0 à 255|
|**unsigned short**|2 octets|0 à 65 535|
|**unsigned int**|4 octets|0 à 4 294 967 295|
|**unsigned long**|4 octets|0 à 4 294 967 295|
|**unsigned long long**|8 octets|0 à 18 446 744 073 709 551 615|

---
[Plus de types...](https://en.cppreference.com/w/cpp/language/types)
