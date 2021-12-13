# Commandes spéciales Doxygen

## author / authors

Indique le nom d'auteurs :

```python
##
# @author Chuck Norris
# @author Chuck Norris Jr.
#
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

Énumération (type à constantes nommées) :

```c
/**
* @enum Définit le niveau d'une alerte suivant l'erreur survenue à l'exécution
*/
enum AlertLevel
{
	SUCCESS = 0, 
	INFO = 1, 
	WARNING = 5, 
	ERROR = 6, 
	FATAL_ERROR = 7
};
```

## exception

Donne des indications sur une exception pouvant être déclenchée :

```python
##
# @brief Fait la division de deux nombres entiers
# @exception ZeroDivisionError Déclenchée si le dénominateur est nul
def division(a, b):
	# code...
	pass
```

## file

Description d'un fichier :

```cpp
/**
* @file packetstream.cpp
* Gère les paquets réseau sur le flux
*/

PacketStream::encode()
{
	// code...
}

PacketStream::write()
{
	// code...
}
```

## fn

Fonction ou méthode :

```c
/**
* @fn void print_message(const char* message)
* @brief Affiche un message à l'écran
* @param message Message à afficher
*/
void print_message(const char* message);
```

## interface

Interface :

```php
/**
* @interface IExportable exportable.php
* @brief Interface des fonctionnalités d'export d'un fichier en différents formats
*/
interface IExportable
{
	public function export(string $filename);
}
```

## namespace

Espace de nom :

```csharp
using System;

/**
* @namespace Views
* Espace des vues de l'application
*/
namespace Views
{
	class Index
	{
		// code...
	}
}
```

## package

Paquet Java :

```java
/**
* @package ChuckNorris.Util
* Utilitaires de Chuck Norris (comme s'il en avait besoin)
*/
package ChuckNorris.Util;
```

## version

Paramètre de fonction/méthode :

```c
/**
* @brief Affiche un message à l'écran
* @param author Auteur du message
* @param text Message à afficher
*/
void print_message(const char* author, const char* text);
```

---

[Plus de commandes Doxygen...](https://www.doxygen.nl/manual/commands.html)
