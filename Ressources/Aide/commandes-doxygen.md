# Commandes spéciales Doxygen

## author / authors

Indique le nom d'auteurs :

```python
##
# @author Chuck Norris
# @author Chuck Norris Jr.
##
print("Hello World !")
```

## brief / short

Courte description :

```java
/**
* @brief Charge une partie sauvegardée
*/
public void loadData(String filename)
{
	// code...
}
```

## bug

Présence d'un bogue :

```java
/**
* @brief Charge une partie sauvegardée
* @bug Fait planter l'application si le nom du fichier contient des accents
*/
public void loadData(String filename)
{
	// code...
}
```

## class

Classe :

```php
/**
* @class SQLEngine sqlengine.php
* @brief Moteur de connexion à une base de données SQL
*/
class SQLEngine
{
	// code...
}
```

## copyright

Droits d'auteur :

```c
/**
* @copyright Copyright 2021 Norris - Tous droits réservés
*/
#include <stdio.h>

int main(void)
{
	// code...
	return 0;
}
```

## date

Date d'écriture/publication :

```java
/**
* @author Chuck Norris
* @date 23-04-2015
*/
public class App
{
	// code...
}
```

## def

Définition d'une macro (préprocesseur) :

```c
/**
* @def STORAGE_MAX_ITEMS
* Nombre d'objets maximum dans l'inventaire
*/
#define STORAGE_MAX_ITEMS 50
```

## deprecated

Élément obsolète ou dépréciée :

```php
/**
* @brief Se connecte à une base de données MySQL
* @deprecated Utiliser connect_with_PDO() à la place
*/
public function connect_with_mysql()
{
	// code...
}
```

## details

Longue description :

```csharp
/**
* @brief Vérifie si un fichier média peut-être écrasé
* @details Vérifie le niveau de permission du fichier pour enregistrer une nouvelle version de ce dernier
*/
public bool IsWritableMediaFile(MediaFile &f)
{
	// code...
}
```

## enum

## exception

## file

## namespace

## package

## version

---

[Plus de commandes Doxygen...](https://www.doxygen.nl/manual/commands.html)
