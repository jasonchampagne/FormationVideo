# Fonctions : sécurité

> [SQL #21 - fonctions de sécurité](https://www.youtube.com/watch?v=VTkhWoQ4QPA)

## MySQL

> Algorithmes de hash disponibles : MD5, SHA-2 (224, 256, 384, 512)

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**AES_DECRYPT**|Déchiffrement AES à l'aide d'une clé|`AES_ENCRYPT(crypt_data, key)`|
|**AES_ENCRYPT**|Chiffrement AES à l'aide d'une clé|`AES_ENCRYPT(str, key)`|
|**CREATE_DIGEST**|Génération d'un hash sous forme de chaîne binaire|`CREATE_DIGEST(algorithm, str)`|
|**MD5**|Génération d'un hash MD5 (128 bits)|`MD5(str)`|
|**SHA**|Génération d'un hash SHA-1 (160 bits)|`SHA(str)`|
|**SHA1**|_Alias de sha()_|`SHA1(str)`|
|**SHA2**|Génération d'un hash SHA-2 (256 bits par défaut)|`SHA2(str, length)`|

## Oracle Database & PL/SQL

> Algorithmes de hash disponibles : MD5, SHA1, SHA256, SHA384, SHA512 

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**STANDARD_HASH**|Génération d'un hash (SHA1 par défaut)|`STANDARD_HASH(str, algorithm)`|

## PostgreSQL

> Algorithmes de hash disponibles : md5, sha1, sha224, sha256, sha384, sha512

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**DIGEST**|Génération d'un hash (via le module **pgcrypto**)|`digest(str, algorithm)`|
|**MD5**|Génération d'un hash MD5|`md5(str)`|
|**PGP_SYM_DECRYPT**|Déchiffrement avec clé PGP|`pgp_sym_decrypt(crypt_data, key)`|
|**PGP_SYM_ENCRYPT**|Chiffrement avec clé PGP|`pgp_sym_encrypt(str, key)`|

## SQLite

+ _Aucune fonction de sécurité disponible (à vous de les définir)_

## SQL Server

> Algorithmes de hash disponibles : MD2, MD4, MD5, SHA, SHA1, SHA2_256, SHA2_512  

|NOM|DESCRIPTION|USAGE|
|:--|:--|:--|
|**HASHBYTES**|Génération d'un hash|`HASHBYTES(algorithm, str)`|
