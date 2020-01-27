# Types de données

## Types numériques

|TYPE|TAILLE|LIMITE (signé)|LIMITE (non signé)|
|:--|:--|:--|:--|
|BIT(m)|1 bit|b'000000' à b'111111'|b'000000' à b'111111'|
|TINYINT(m)|1 octet|-128 à 127|0 à 255|
|BOOL/BOOLEAN|-|-|-|
|SMALLINT(m)|2 octets|-32768 à 32767|0 à 65535|
|MEDIUMINT(m)|3 octets|-8388608 à 8388607|0 à 16777215|
|INT(m)/INTEGER(m)|4 octets|-2147483648 à 2147483647|0 à 4294967295|
|BIGINT(m)|8 octets|-2<sup>63</sup> à 2<sup>63</sup>-1|0 à 2<sup>64</sup>-1|
|DECIMAL(m, d)/DEC(m, d)<br>NUMERIC(m, d)/FIXED(m, d)|8 octets|jusqu'à 65 chiffres significatifs|jusqu'à 65 chiffres significatifs|
|FLOAT(m, d)|4 octets|-1,175494351.10<sup>-38</sup> à 3,402823466.10<sup>38</sup>|1,175494351.10<sup>-38</sup> à 3,402823466.10<sup>38</sup>|

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
