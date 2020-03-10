# Fonctions : sécurité

## [MySQL](https://dev.mysql.com/doc/)

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**MD5()**|Hashage MD5 (128 bits)|`MD5(str)`|
|**SHA()**|Hashage SHA-1 (160 bits)|`SHA(str)`|
|**SHA1**|_Alias de sha()_|`SHA1(str)`|
|**SHA2()**|Hashage SHA-2 (256 par défaut, sinon 224, 384 ou 512 bits)|`SHA2(str, length)`|

## [Oracle Database](https://docs.oracle.com/cd/B19306_01/index.htm)

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**STANDARD_HASH()**|Hashage MD5, SHA1, SHA256, SHA384 ou SHA512|`STANDARD_HASH(str, algorithm)`|

## [PostgreSQL](https://docs.postgresql.fr/)

> Fonctions fournies avec le module **pgcrypto**

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**DIGEST()**|Hachage md5, sha1, sha224, sha256, sha384 ou sha512|`digest(str, algorithm)`|
|**MD5()**|Hashage MD5|`md5(str)`|

## [SQLite](https://sqlite.org/docs.html)

+ _Aucune fonction de sécurité disponible (à vous de les définir)_

## [SQL Server (Microsoft)](https://docs.microsoft.com/fr-fr/sql)

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**HASHBYTES()**|Hachage MD2, MD4, MD5, SHA, SHA1 ou SHA2|`HASHBYTES(algorithm, str)`|
