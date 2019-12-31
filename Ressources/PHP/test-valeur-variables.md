# Test de valeur des variables

Résultat (booléen) retourné par les fonctions [empty()](https://www.php.net/manual/fr/function.empty.php), [isset()](https://www.php.net/manual/fr/function.isset.php) et [is_null()](https://www.php.net/manual/fr/function.is-null.php) de PHP.

+ **empty()** détermine si une variable est vide
+ **isset()** détermine si une variable est déclarée et est différente de NULL
+ **is_null()** indique si une variable vaut NULL

---

|VALEUR TESTÉE|EMPTY ?|ISSET ?|IS_NULL ?|
|:--|:--:|:--:|:--:|
|$data = NULL;|true|false|true|
|$data = true;|false|true|false|
|$data = false;|true|true|false|
|$data = 0;|true|true|false|
|$data = 0.0;|true|true|false|
|$data = "0";|true|true|false|
|$data = "\0";|false|true|false|
|$data = "";|true|true|false|
|$data = " ";|false|true|false|
|$data = [];|true|true|false|

---

## Code de vérification

```php
<?php

function show_results($data)
{
	$result = '';

	if(empty($data))
		$result .= 'TRUE ';
	else
		$result .= 'FALSE ';

	if(isset($data))
		$result .= 'TRUE ';
	else
		$result .= 'FALSE ';

	if(is_null($data))
		$result .= 'TRUE';
	else
		$result .= 'FALSE';

	return $result.'<br>';
}

$data = NULL;
echo show_results($data);

$data = true;
echo show_results($data);

$data = false;
echo show_results($data);

$data = 0;
echo show_results($data);

$data = 0.0;
echo show_results($data);

$data = "0";
echo show_results($data);

$data = "\0";
echo show_results($data);

$data = "";
echo show_results($data);

$data = " ";
echo show_results($data);

$data = [];
echo show_results($data);
?>
```
