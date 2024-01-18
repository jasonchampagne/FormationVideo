# Pseudo-code

> **SOMMAIRE**
> + [Commentaires](#commentaires)
> + [Caractères d'échappement](#caractères-déchappement)
> + [Types de données](#types-de-données)
> + [Variables et constantes](#variables-et-constantes)
> + [Affichage et saisie](#affichage-et-saisie)
> + [Opérateurs](#opérateurs)
> + [Conditions](#conditions)
> + [Boucles](#boucles)

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

```
STR nom := "Alicia"
afficher("Bonjour {nom}, comment allez-vous ?")

INT age := lire("Quel âge avez-vous ? ")
```

## Opérateurs

### arithmétiques

|/|USAGE|EXEMPLE|
|:--:|:--|:--|
|`+`|Addition|`a + b`|
|`-`|Soustraction|`a - b`|
|`*`|Multiplication|`a * b`|
|`/`|Division|`a / b`|
|`%`|Modulo|`a % 2`|

### comparatifs

|/|USAGE|EXEMPLE|
|:--:|:--|:--|
|`==`|Est égal à|`nombre_elements == 20`|
|`!=`|Est différent de|`mot_de_passe != passe_session`|
|`<`|Est strictement inférieur à|`age < 18`|
|`<=`|Est inférieur ou égal à|`age <= 18`|
|`>`|Est strictement supérieur à|`solde > 0`|
|`>=`|Est supérieur ou égal à|`montant_commande >= 1_000`|

### logiques

|/|USAGE|EXEMPLE|
|:--:|:--|:--|
|`NOT`|NÉGATION|`NOT est_gratuit`|
|`AND`|ET|`est_gratuit AND est_disponible`|
|`OR`|OU|`a == 1 OR a == -1`|
|`XOR`|OU exclusif|`vrai XOR vrai`|

## Conditions

```
INT solde_compte := 1_500

// Condition simple

SI solde_compte > 0 ALORS
    afficher("Compte positif")
FIN SI

// Condition avec traitement par défaut

SI solde_compte > 0 ALORS
    afficher("Compte positif")
SINON
    afficher("Compte à découvert")
FIN SI

// Conditions imbriquées

SI solde_compte > 100_000 ALORS
    afficher("Vous êtes riches !")
SINON SI solde_compte >= 10_000 ALORS
    afficher("Vous avez de la ressource")
SINON SI solde_compte >= 5_000 ALORS
    afficher("Vous avez un peu d'argent")
SINON
    afficher("Vos revenus sont modestes")
FIN SI
```

## Boucles

```
// Boucle classique avec compteur explicite

INT i := 0

TANT QUE i < 10 FAIRE
    afficher("{i}")
    i = i + 1
FIN TANT QUE

// Boucle avec initialisation (auto-incrémentation par défaut de 1)

INT i

POUR i ALLANT DE 0 A 10 FAIRE // ou POUR i ALLANT DE 0 A 10 PAR SAUT DE 1 FAIRE
    afficher("{i}")
FIN POUR

// Boucle de parcours (auto-incrémentée)
STR nom_chaine := "FormationVidéo"

POUR CHAQUE lettre DE nom_chaine FAIRE
    afficher(lettre)
FIN POUR CHAQUE
```
