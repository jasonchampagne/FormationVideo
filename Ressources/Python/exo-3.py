#coding:utf-8
"""
EXERCICE PYTHON #3
> Créer un programme simulant un combat qui respecte les contraintes suivantes :
    - Deux joueurs, auquels on demandera de choisir un pseudo
    - Les deux combattants démarrent avec 250 points de vie chacun
    - Le combat se déroule en 4 attaques (Joueur1, Joueur2, Joueur1 et enfin Joueur2)
    - Chaque attaque est une tentative (si elle réussit, le joueur infligera un nombre de dégâts entre 0 et 100 -
                                        si elle échoue, l'attaque est ratée, et c'est au tour de l'autre joueur)
    - À la fin du combat (les 4 attaques), on déclare le gagnant (celui à qui il reste le plus de points de vie)

> Indications :
    - Le déroulement du combat doit être logique et annoncé à l'utilisateur (affichez du texte, décrivez ce qu'il se passe)
    - Coder dans un premier temps uniquement avec des affichages/saisies, variables, opérations, conditions
    - Pour les plus avancés, vous pourrez optimiser ce code ensuite en l'adaptant avec vos connaissances (boucles, fonctions, classes, etc.)
"""

import random


random_attack = True # True = face / False = pile
random_damage = 0

print("\nLE COMBAT COMMENCE ! \n")

#-----------------------------------------------------------------------------------------------------------------------
# 1ère attaque
random_attack = random.randint(0, 1)
random_attack = bool(random_attack)

if random_attack:
    # Si l'attaque réussit
    random_damage = random.randint(0, 100)
else:
    # Si l'attaque échoue
    pass

#-----------------------------------------------------------------------------------------------------------------------
# 2ème attaque
random_attack = random.randint(0, 1)
random_attack = bool(random_attack)

if random_attack:
    # Si l'attaque réussit
    random_damage = random.randint(0, 100)
else:
    # Si l'attaque échoue
    pass

#-----------------------------------------------------------------------------------------------------------------------
# 3ème attaque
random_attack = random.randint(0, 1)
random_attack = bool(random_attack)

if random_attack:
    # Si l'attaque réussit
    random_damage = random.randint(0, 100)
else:
    # Si l'attaque échoue
    pass

#-----------------------------------------------------------------------------------------------------------------------
# 4ème attaque
random_attack = random.randint(0, 1)
random_attack = bool(random_attack)

if random_attack:
    # Si l'attaque réussit
    random_damage = random.randint(0, 100)
else:
    # Si l'attaque échoue
    pass

#-----------------------------------------------------------------------------------------------------------------------
# Résultat final
print("\nFIN DU COMBAT !\n")