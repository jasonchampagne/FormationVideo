# Pseudo-code

> **SOMMAIRE**
> + [Commentaires](#commentaires)
> + [Caractères d'échappement](#caractères-déchappement)
> + [Types de données](#types-de-données)
> + [Variables et constantes](#variables-et-constantes)
> + [Affichage et saisie](#affichage-et-saisie)

---

## Commentaires

```
// Commentaire sur une seule ligne

//
Commentaire écrit sur
plusieurs lignes...
//
```

## Caractères d'échappement

+ Retour à la ligne : `\n`
+ Tabulation : `\t`

## Types de données

|TYPE|USAGE|EXEMPLES|
|:--:|:--|:--|
|`BOOL`|Boléen|`vrai`, `faux`, `V`, `F`|
|`CHAR`|Caractère|`'A'`, `'%'`|
|`INT`|Entier|`452`, `100_000`, `-3`|
|`REAL`|Nombre à virgule flottante|`3.14`, `-126.019`|
|`STR`|Chaîne de caractères|`"Bienvenue sur FormationVidéo"`, `"Ah !"`|

## Variables et constantes

+ Nommage d'une variable : `prix` ou `prix_vente`
+ Nommage d'une constante : `TVA` ou `NOMBRE_JOUEURS`
+ Nommage d'une collection (tableau, liste, ...) : `joueurs[x]` où `x` est la capacité de stockage

```
// Déclaration d'une variable ou d'une constante
STR nom_joueur := "Marc MARTIN"
REAL TVA := 20.0
BOOL est_gratuit

// Changement de valeur d'un variable ou constante (nouvelle affectation après déclaration et initialisation)
TVA = 19.6
est_gratuit = vrai
```

## Affichage et saisie
