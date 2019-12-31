# Test de valeur des variables

Résultat (booléen) retourné par les fonctions [empty()](https://www.php.net/manual/fr/function.empty.php), [isset()](https://www.php.net/manual/fr/function.isset.php) et [is_null()](https://www.php.net/manual/fr/function.is-null.php) de PHP.

+ **empty()** détermine si une variable est vide
+ **isset()** détermine si une variable est déclarée et est différente de NULL
+ **is_null()** indique si une variable vaut NULL

|VALEUR TESTÉE|EMPTY ?|ISSET ?|IS_NULL ?|
|:--|:--:|:--:|:--:|
|var $data;|true|false|true|
|$data = NULL;|true|false|true|
|$data = true;|false|true|false|
