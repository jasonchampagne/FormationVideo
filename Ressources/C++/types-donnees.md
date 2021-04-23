# Types de données

> Le standard C++ garantit que : `char` <= `short` <= `int` <= `long` <= `long long`<br>

|NOM|TAILLE|VALEURS POSSIBLES|
|:--|:--|:--|
|**bool**|1 octet ou _IMP_|true / false|
|**char**|1 octet|-128 à 127|
|**short**|2 octets|-32 768 à 32 767|
|**int**|4 octets|-2 147 483 648 à 2 147 483 647|
|**long**|4 octets|-2 147 483 648 à 2 147 483 647|
|**long long**|8 octets|-9 223 372 036 854 775 808 à 9 223 372 036 854 775 807|
|**float**|||
|**double**|||
|**long double**|||

_**IMP** = taille définie par l'implémentation_

### Types non signés

|NOM|TAILLE|VALEURS POSSIBLES|
|:--|:--|:--|
|**unsigned char**|1 octet|0 à 255|
|**unsigned short**|2 octets|0 à 65 535|
|**unsigned int**|4 octets||
|**unsigned long**|4 octets||
|**unsigned long long**|8 octets||

---
[Plus de types...](https://en.cppreference.com/w/cpp/language/types)
