# Test de valeur des variables

Résultat (booléen) retourné par les fonctions [empty()](https://www.php.net/manual/fr/function.empty.php), [isset()](https://www.php.net/manual/fr/function.isset.php) et [is_null()](https://www.php.net/manual/fr/function.is-null.php) de PHP.

+ **empty()** détermine si une variable est vide
+ **isset()** détermine si une variable est déclarée et est différente de _null_
+ **is_null()** détermine si une variable vaut _null_

---

|VALEUR TESTÉE|EMPTY ?|ISSET ?|IS_NULL ?|
|:--|:--:|:--:|:--:|
|$data = null;|true|false|true|
|$data = true;|false|true|false|
|$data = false;|true|true|false|
|$data = 0;|true|true|false|
|$data = 0.0;|true|true|false|
|$data = "0";|true|true|false|
|$data = "text";|false|true|false|
|$data = "\0";|false|true|false|
|$data = "";|true|true|false|
|$data = " ";|false|true|false|
|$data = [];|true|true|false|
