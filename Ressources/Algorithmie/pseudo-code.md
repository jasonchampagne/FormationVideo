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
> + [Procédures et fonctions](#procédures-et-fonctions)
> + [Structures](#structures)
> + [Classes](#classes)

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
|`GENERIC`|Type générique|-|
|`INT`|Entier|`452`, `100_000`, `-3`|
|`REAL`|Nombre à virgule flottante|`3.14`, `-126.019`|
|`STR`|Chaîne de caractères|`"Bienvenue sur FormationVidéo"`, `"Ah !"`|

## Variables et constantes

+ Nommage d'une variable : `prix` ou `prix_vente`
+ Nommage d'une constante : `TVA` ou `NOMBRE_JOUEURS`
+ Nommage d'une collection (tableau, liste, ...) : `joueurs[x]` où `x` est la capacité de stockage

```
//-----------------------------------------------
// Déclaration d'une variable ou d'une constante
//-----------------------------------------------
STR nom_joueur := "Marc MARTIN"
REAL TVA := 20.0
BOOL est_gratuit

//------------------------------------------------------------------------
// Changement de valeur d'un variable ou constante (nouvelle affectation)
//------------------------------------------------------------------------
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

//------------------
// Condition simple
//------------------
SI solde_compte > 0 ALORS
    afficher("Compte positif")
FIN SI

//--------------------------------------
// Condition avec traitement par défaut
//--------------------------------------
SI solde_compte > 0 ALORS
    afficher("Compte positif")
SINON
    afficher("Compte à découvert")
FIN SI

//-----------------------
// Conditions imbriquées
//-----------------------
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
//------------------------------------------
// Boucle classique avec compteur explicite
//------------------------------------------
INT i := 0

TANT QUE i < 10 FAIRE
    afficher(i)
    i = i + 1
FIN TANT QUE

//------------------------------------------------------------------
// Boucle avec initialisation (auto-incrémentation par défaut de 1)
//------------------------------------------------------------------
INT i

POUR i ALLANT DE 0 A 10 FAIRE // ou POUR i ALLANT DE 0 A 10 PAR SAUT DE 1 FAIRE
    afficher(i)
FIN POUR

//-----------------------------------------------------
// Boucle de parcours de collection (auto-incrémentée)
//-----------------------------------------------------
STR nom_chaine := "FormationVidéo"

POUR CHAQUE lettre DE nom_chaine FAIRE
    afficher(lettre)
FIN POUR CHAQUE
```

## Procédures et fonctions

```
//---------------------------------------------------
// Quand elle ne renvoie pas de résultat (procédure)
//---------------------------------------------------
PROCEDURE afficher_message(STR message)
    afficher(message)
FIN PROCEDURE

//-------------------------------------------
// Quand elle renvoie un résultat (fonction)
//-------------------------------------------
FONCTION somme_entiers(INT a, INT b) -> INT
    retourner a + b
FIN FONCTION
```

## Structures

```
//------------------------
// Définir des structures
//------------------------
STRUCTURE Monnaie
    INT or
    INT argent
    INT cuivre
FIN STRUCTURE

STRUCTURE Joueur
    STR nom
    INT niveau
    MONNAIE argent
FIN STRUCTURE

//------------------------------------
// Déclarer et utiliser une structure
//------------------------------------
Monnaie m := {2, 50, 0}
Joueur j := {"Huguette", 1, m}

afficher(j.nom)
afficher("Il est au niveau {j.niveau}")
```

## Classes

```
//-------------------------
// Définition d'une classe
//-------------------------
CLASSE Position2D
    METHODES
        CONSTRUCTEUR Position2D(INT x, INT y)
            Position2D.x = x
            Position2D.y = y
        FIN CONSTRUCTEUR

        FONCTION x()
            RETOURNER Position2D.x
        FIN FONCTION
    FIN METHODES

    ATTRIBUTS
        INT x
        INT y
    FIN ATTRIBUTS
FIN CLASSE

//----------------------------
// Instanciation d'une classe
//----------------------------
Position2D pos := Position2D(145, 23)
afficher("Position en X : {pos.x()}")
```
