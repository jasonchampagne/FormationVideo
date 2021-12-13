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
	//...
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
	//...
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

## concept

## copyright

## date

## def

## deprecated

## details

## enum

## exception

## file

## namespace

## package

## version

---

[Plus de commandes Doxygen...](https://www.doxygen.nl/manual/commands.html)
