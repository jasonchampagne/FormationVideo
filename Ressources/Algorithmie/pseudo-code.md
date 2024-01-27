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
|`BOOLEEN`|Boléen|`vrai`, `faux`, `V`, `F`|
|`CARACTERE`|Caractère|`'A'`, `'%'`|
|`GENERIQUE`|Type générique|-|
|`ENTIER`|Entier|`452`, `100_000`, `-3`|
|`FLOTTANT`|Nombre à virgule flottante|`3.14`, `-126.019`|
|`CHAINE`|Chaîne de caractères|`"Bienvenue sur FormationVidéo"`, `"Ah !"`|

## Variables et constantes

+ Nommage d'une variable : `prix` ou `prix_vente`
+ Nommage d'une constante : `TVA` ou `NOMBRE_JOUEURS`
+ Nommage d'une collection (tableau, liste, ...) : `<TYPE_DONNEE>[x] joueurs` où `x` est le nombre fixé d'éléments

```
//-----------------------------------------------
// Déclaration d'une variable ou d'une constante
//-----------------------------------------------
CHAINE nom_joueur := "Marc MARTIN"
FLOTTANT TVA := 20.0
BOOLEEN est_gratuit

//----------------------------------------
// Déclaration d'un tableau
//----------------------------------------
ENTIER[10] entiers
BOOLEEN[3] valeurs := {V, F, F}

//------------------------------------------------------------------------
// Changement de valeur d'un variable ou constante (nouvelle affectation)
//------------------------------------------------------------------------
TVA = 19.6
est_gratuit = vrai
```

## Affichage et saisie

```
CHAINE nom := "Alicia"
afficher("Bonjour {nom}, comment allez-vous ?")

ENTIER age := lire("Quel âge avez-vous ? ")
afficher("Vous avez {age} ans.")
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
|`PAS`|NÉGATION|`PAS gratuit`|
|`ET`|ET|`est_gratuit ET est_disponible`|
|`OU`|OU|`a == 1 OU a == -1`|
|`OUX`|OU exclusif|`vrai OUX vrai`|

## Conditions

```
ENTIER solde_compte := 1_500

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
ENTIER i := 0

TANT QUE i < 10 FAIRE
    afficher(i)
    i = i + 1
FIN TANT QUE

//------------------------------------------------------------------
// Boucle avec initialisation (auto-incrémentation par défaut de 1)
//------------------------------------------------------------------
ENTIER i

POUR i ALLANT DE 0 A 10 FAIRE // ou POUR i ALLANT DE 0 A 10 PAR SAUT DE 1 FAIRE
    afficher(i)
FIN POUR

//-----------------------------------------------------
// Boucle de parcours de collection (auto-incrémentée)
//-----------------------------------------------------
CHAINE nom_chaine := "FormationVidéo"

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
    ENTIER or
    ENTIER argent
    ENTIER cuivre
FIN STRUCTURE

STRUCTURE Joueur
    CHAINE nom
    ENTIER niveau
    Monnaie argent
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
    FONCTION Position2D(ENTIER x, ENTIER y) // Constructeur
        _x = x
        _y = y
    FIN FONCTION

    FONCTION x() -> ENTIER
        RETOURNER _x
    FIN FONCTION

    FONCTION STATIQUE test()
        afficher("Test !")
    FIN FONCTION STATIQUE

    // Attributs d'instance (préfixés par un tiret du bas)
    ENTIER _x
    ENTIER _y

    // Attribut(s) de classe
    STR nom_classe := "Position2D"
FIN CLASSE

// Usage avec instance
Position2D pos := Position2D(145, 23)
afficher("Position en X : {pos.x()}")

// Usage statique
Position2D.test()
```
