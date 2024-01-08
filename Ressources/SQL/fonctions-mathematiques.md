# Fonctions : mathématiques

> [SQL #20 - fonctions mathématiques](https://www.youtube.com/watch?v=9Y20_0MQzEE)

## MySQL

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**ABS**|Valeur absolue|`ABS(n)`|
|**ACOS**|Arc cosinus|`ACOS(n)`|
|**ASIN**|Arc sinus|`ASIN(n)`|
|**ATAN**|Arc tangente|`ATAN(n)`|
|**CEIL**|_Alias de ceiling()_|`CEIL(n)`|
|**CEILING**|Arrondi à l'entier supérieur|`CEILING(n)`|
|**CONV**|Conversion d'une base à une autre|`CONV(n, from, to)`|
|**COS**|Cosinus|`COS(n)`|
|**COT**|Cotangente|`COT(n)`|
|**DEGREES**|Conversion radians en degrés|`DEGREES(n)`|
|**EXP**|Exponentielle|`EXP(n)`|
|**FLOOR**|Arrondi à l'entier inférieur|`FLOOR(n)`|
|**LN**|_Alias de log()_|`LN(n)`|
|**LOG**|Logarithme népérien|`LOG(n)`<br>`LOG(n, base)`|
|**LOG2**|Logarithme en base 2|`LOG2(n)`|
|**LOG10**|Logarithme en base 10|`LOG10(n)`|
|**MOD<br>%<br>**|Modulo (reste de la division Euclidienne)|`MOD(n, m)`<br>`n % m`<br>`n MOD m`|
|**PI**|Valeur de PI|`PI()`|
|**POW**|Puissance|`POW(n, p)`|
|**POWER**|_Alias de pow()_|`POWER(n, p)`|
|**RADIANS**|Conversion degrés en radians|`RADIANS(n)`|
|**RAND**|Valeur aléatoire à virgule flottante|`RAND()`<br>`RAND(seed)`|
|**ROUND**|Arrondi sur décimales|`ROUND(n)`<br>`ROUND(n, decimals)`|
|**SIGN**|Signe|`SIGN(n)`|
|**SIN**|Sinus|`SIN(n)`|
|**SQRT**|Racine carrée|`SQRT(n)`|
|**TAN**|Tangente|`TAN(n)`|
|**TRUNCATE**|Troncature sur décimales|`TRUNCATE(n, decimals)`|

## Oracle Database

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**ABS**|Valeur absolue|`ABS(n)`|
|**ACOS**|Arc cosinus|`ACOS(n)`|
|**ASIN**|Arc sinus|`ASIN(n)`|
|**ATAN**|Arc tangente|`ATAN(n)`|
|**CEIL**|Arrondi à l'entier supérieur|`CEIL(n)`|
|**COS**|Cosinus|`COS(n)`|
|**EXP**|Exponentielle|`EXP(n)`|
|**FLOOR**|Arrondi à l'entier inférieur|`FLOOR(n)`|
|**LN**|Logarithme népérien|`LN(n)`|
|**LOG**|Logarithme en base|`LOG(base, n)`|
|**MOD<br>%**|Modulo (reste de la division Euclidienne)|`MOD(n, m)`<br>`n % m`|
|**POWER**|Puissance|`POWER(n, p)`|
|**ROUND**|Arrondi sur décimales|`ROUND(n)`<br>`ROUND(n, decimals)`|
|**SIGN**|Signe|`SIGN(n)`|
|**SIN**|Sinus|`SIN(n)`|
|**SQRT**|Racine carrée|`SQRT(n)`|
|**TAN**|Tangente|`TAN(n)`|
|**TRUNC**|Troncature sur décimales|`TRUNC(n)`<br>`TRUNC(n, decimals)`|

## PostgreSQL

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**ABS**|Valeur absolue|`abs(n)`|
|**ACOS**|Arc cosinus|`acos(n)`|
|**ASIN**|Arc sinus|`asin(n)`|
|**ATAN**|Arc tangente|`atan(n)`|
|**CBRT**|Racine cubique|`cbrt(n)`|
|**CEIL**|_Alias de ceiling()_|`ceil(n)`|
|**CEILING**|Arrondi à l'entier supérieur|`ceiling(n)`|
|**COS**|Cosinus|`cos(n)`|
|**COT**|Cotangente|`cot(n)`|
|**DEGREES**|Conversion radians en degrés|`degrees(n)`|
|**EXP**|Exponentielle|`exp(n)`|
|**FLOOR**|Arrondi à l'entier inférieur|`floor(n)`|
|**LN**|Logarithme népérien|`ln(n)`|
|**LOG**|Logarithme en base (10 par défaut)|`log(n)`<br>`log(base, n)`|
|**MOD<br>%**|Modulo (reste de la division Euclidienne)|`mod(n, m)`<br>`n % m`|
|**PI**|Valeur de PI|`pi()`|
|**POWER**|Puissance|`power(n, p)`|
|**RADIANS**|Conversion degrés en radians|`radians(n)`|
|**RANDOM**|Valeur aléatoire à virgule flottante|`rand()`|
|**ROUND**|Arrondi sur décimales|`round(n)`<br>`round(n, decimals)`|
|**SETSEED**|Graine pour les appels à random()|`setseed(seed)`|
|**SIGN**|Signe|`sign(n)`|
|**SIN**|Sinus|`sin(n)`|
|**SQRT**|Racine carrée|`sqrt(n)`|
|**TAN**|Tangente|`tan(n)`|
|**TRUNC**|Troncature sur décimales|`trunc(n)`<br>`trunc(n, decimals)`|

## SQLite

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**ABS**|Valeur absolue|`ABS(n)`|
|**RANDOM**|Nombre entier aléatoire (positif ou négatif)|`RANDOM()`|
|**ROUND**|Arrondi sur décimales|`ROUND(n)`<br>`ROUND(n, decimals)`|

## SQL Server

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**%**|Modulo (reste de la division Euclidienne)|`n % m`|
|**ABS**|Valeur absolue|`ABS(n)`|
|**ACOS**|Arc cosinus|`ACOS(n)`|
|**ASIN**|Arc sinus|`ASIN(n)`|
|**ATAN**|Arc tangente|`ATAN(n)`|
|**CEILING**|Arrondi à l'entier supérieur|`CEILING(n)`|
|**COS**|Cosinus|`COS(n)`|
|**COT**|Cotangente|`COT(n)`|
|**DEGREES**|Conversion radians en degrés|`DEGREES(n)`|
|**EXP**|Exponentielle|`EXP(n)`|
|**FLOOR**|Arrondi à l'entier inférieur|`FLOOR(n)`|
|**LOG**|Logarithme népérien|`LOG(n)`<br>`LOG(n, base)`|
|**LOG10**|Logarithme en base 10|`LOG10(n)`|
|**PI**|Valeur de PI|`PI()`|
|**POWER**|Puissance|`POWER(n, p)`|
|**RADIANS**|Conversion degrés en radians|`RADIANS(n)`|
|**RAND**|Valeur aléatoire à virgule flottante|`RAND()`<br>`RAND(seed)`|
|**ROUND**|Arrondi sur décimales|`ROUND(n)`<br>`ROUND(n, decimals)`|
|**SIGN**|Signe|`SIGN(n)`|
|**SIN()**|Sinus|`SIN(n)`|
|**SQRT()**|Racine carrée|`SQRT(n)`|
|**SQUARE()**|Valeur carrée|`SQUARE(n)`|
|**TAN()**|Tangente|`TAN(n)`|
