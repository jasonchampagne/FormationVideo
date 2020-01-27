# Types de données

## Types numériques

|TYPE|TAILLE|LIMITE (signé)|LIMITE (non signé)|
|:--|:--|:--|:--|
|BIT(m)|1 bit|b'000000' à b'111111'|b'000000' à b'111111'|
|TINYINT(m)|1 octet|-128 à 127|0 à 255|
|BOOL/BOOLEAN|-|-|-|
|SMALLINT(m)|2 octets|-32768 à 32767|0 à 65535|

> **NOTE** : Le type BOOLEAN est équivalent à un TINYINT(1)

---

## Types pour les chaînes

|TYPE|TAILLE|LIMITE (signé)|LIMITE (non signé)|
|:--|:--|:--|:--|
|-|-|-|-|

---

## Types pour les dates

|TYPE|TAILLE|LIMITE|
|:--|:--|:--|
|DATE|3 octets|1000-01-01 à 9999-12-31|
|TIME|3 octets|00:00:00 à 23:59:59|
|DATETIME|8 octets|1000-01-01 00:00:00 à 9999-12-31 23:59:59|
|YEAR|1 octet|1901 à 2155|
|TIMESTAMP|4 octets|19700101000000 à 20380119031407|
