# Types fondamentaux

> La taille des données dépend de l'implémentation (utilisez l'opérateur **sizeof** pour vérifier)<br>
> Le standard C++ garantit que : `char` <= `short` <= `int` <= `long` <= `long long`

|NOM|TAILLE|VALEURS POSSIBLES|
|:--|:--:|:--|
|**bool**|1 octet|true / false|

|NOM|TAILLE|VALEUR MIN|VALEUR MAX|
|:--|:--:|:--|:--|
|**char**|1 octet|-128|127|
|**short**|2 octets|-32 768|32 767|
|**int**|4 octets|-2 147 483 648|2 147 483 647|
|**long**|4 octets|-2 147 483 648|2 147 483 647|
|**long long**|8 octets|-9 223 372 036 854 775 808|9 223 372 036 854 775 807|
|**float**|4 octets|±1.17554e-38|±3.40282e+38|
|**double**|8 octets|±2.22507e-308|±1.79769e+308|
|**long double**|16 octets|±3.3621e-4932|±1.18973e+4932|

|NOM|TAILLE|VALEUR MIN|VALEUR MAX|
|:--|:--:|:--|:--|
|**unsigned char**|1 octet|0 |255|
|**unsigned short**|2 octets|0|65 535|
|**unsigned int**|4 octets|0|4 294 967 295|
|**unsigned long**|4 octets|0|4 294 967 295|
|**unsigned long long**|8 octets|0|18 446 744 073 709 551 615|

---
[Plus de types...](https://en.cppreference.com/w/cpp/language/types)
