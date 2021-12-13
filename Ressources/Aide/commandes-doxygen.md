# Commandes spéciales Doxygen

> Une commande commence par un `@` ou un `\`

|TAG|ALIAS|USAGE|
|--:|:--:|:--|
|**author**|authors|Nom d'un auteur|
|**copyright**|-|Texte des droits d'auteur|
|**date**|-|Date d'un fichier|
|**file**|-|Description d'un fichier|
|**version**|-|Version d'un fichier|

[Autres commandes...](https://www.doxygen.nl/manual/commands.html)

---

## Exemple pratique

```java
/**
* @file Button.java
* @author Chuck Norris
* @date 2021
*/
package myapp;

/**
* @class Bouton d'interface graphique
*/
public class Button
{
	/**
	* @var Texte du bouton
	*/
	private String value;
	
	/**
	* @var Bouton cliquable ou non ?
	*/
	private bool disabled;
	
	/**
	* @brief Créée un nouveau bouton
	* @param value Texte du bouton
	*/
	public Button(String value)
	{
		this.value = value;
		this.disabled = false;
	}
}
```
